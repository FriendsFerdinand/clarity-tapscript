
(define-constant TapLeaf 0x5461704c656166)
(define-constant TapTweak 0x546170547765616b)

(define-constant default-version u192)

(define-read-only (get-tapscript-tweak (compressed-pubkey (buff 33)) (version (buff 1)) (script (buff 128)))
  (let (
    (x-only-pubkey (x-only compressed-pubkey))
    (tapleaf (get-tap-leaf (unwrap-panic (as-max-len? (concat version script) u128))))
    (tap-tweak (get-tap-tweak (unwrap-panic (as-max-len? (concat x-only-pubkey tapleaf) u128))))
    ;; tweaked key should include PARITY so it's a compressed pubkey
    (tweaked-point (contract-call? .point tweak-pubkey-hex tap-tweak compressed-pubkey))
    (tweaked-key (point-to-compressed-pubkey tweaked-point))
    (x-only-tweaked-key (x-only tweaked-key))
    (tweak-key-parity (read-parity-bit tweaked-key))
    (c-bit (get-control-bit version tweak-key-parity))
    (cblock (concat c-bit x-only-pubkey))
  )
    { tweaked-pubkey: x-only-tweaked-key, cblock: cblock }
  )
)

;; TODO: GENERATE CBLOCK


;; pubkey: 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa
;; version: 0xc0
;; script: 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc
(define-read-only (test-me)
  (let (
    (version 0xc0)
    (script 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc)
    (pubkey 0x031340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)
    (x-only-pubkey (x-only pubkey))
    
    (tapleaf (get-tap-leaf (unwrap-panic (as-max-len? (concat version script) u128))))
    (tap-tweak (get-tap-tweak (unwrap-panic (as-max-len? (concat x-only-pubkey tapleaf) u128))))
    ;; (tweaked-key (contract-call? .point tweak-pubkey-hex tap-tweak compressed-pubkey))
    (tweaked-key 0x032fff4d7278bb2ab1c7c7b768f264c8a0d4113312e4d55b19f2af85e7a0af0682)
    (x-only-tweaked-key (x-only tweaked-key))
    (tweak-key-parity (read-parity-bit tweaked-key))
    (c-bit (get-control-bit version tweak-key-parity))
    (cblock (concat c-bit x-only-pubkey))
  )
    ;; (get-tapscript-tweak 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa 0xc0 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc)
    { tweaked-pubkey: x-only-tweaked-key, cblock: cblock }
  )
)

(define-read-only (point-to-compressed-pubkey (point (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
  (let (
    (x-only (contract-call? .point uint256-to-hex (get x point)))
    (y-parity (if (> (mod (get i3 (get y point)) u2) u0) 0x03 0x02))
    )
    (concat y-parity x-only)
  )
)

(define-read-only (x-only (pubkey (buff 33)))
  (unwrap-panic (as-max-len? (unwrap-panic (slice? pubkey u1 u33)) u32))
)

(define-read-only (read-parity-bit (pubkey (buff 33)))
  (unwrap-panic (as-max-len? (unwrap-panic (slice? pubkey u0 u1)) u1))
)

(define-read-only (get-control-bit (version (buff 1)) (parity-bit (buff 1)))
  (if (is-eq parity-bit 0x02)
    version
    (unwrap-panic (slice? (unwrap-panic (to-consensus-buff? (+ (buff-to-uint-be version) u1))) u16 u17)) )
)

;; (define-read-only (test-me-1)
;;   (get-tweaked-key 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa 0xc0 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc)
;; )

(define-read-only (get-tap-leaf (data (buff 128)))
  (tagged-hash TapLeaf data)
)

(define-read-only (get-tap-tweak (data (buff 128)))
  (tagged-hash TapTweak data)
)

(define-read-only (tagged-hash (tag (buff 32)) (m (buff 1024)))
  (sha256 (concat (concat (sha256 tag) (sha256 tag)) m))
)

(define-read-only (tweak-pubkey
    (pubkey (buff 33))
    (target (buff 32))
    )
    
    u0
)
