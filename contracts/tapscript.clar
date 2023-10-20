
(define-constant TapLeaf 0x5461704c656166)
(define-constant TapTweak 0x546170547765616b)

(define-constant default-version u192)

(define-read-only (get-tapscript-scriptpubkey (compressed-pubkey (buff 33)) (version (buff 1)) (script (buff 128)))
  (concat 0x5120 (get-tapscript-tweak compressed-pubkey version script))
)

(define-read-only (get-tapscript-tweak (compressed-pubkey (buff 33)) (version (buff 1)) (script (buff 128)))
  (let (
    (x-only-pubkey (x-only compressed-pubkey))
    (tapleaf (get-tap-leaf (unwrap-panic (as-max-len? (concat version script) u128))))
    (tap-tweak (get-tap-tweak (unwrap-panic (as-max-len? (concat x-only-pubkey tapleaf) u128))))
    ;; tweaked key should include PARITY so it's a compressed pubkey
    (tweaked-point (contract-call? .point tweak-pubkey-hex tap-tweak compressed-pubkey))
    (tweaked-key (point-to-compressed-pubkey tweaked-point))
  )
    (x-only tweaked-key)))

(define-read-only (point-to-compressed-pubkey (point (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
  (let (
    (x-only (contract-call? .point uint256-to-hex (get x point)))
    (y-parity (if (> (bit-and (get i3 (get y point)) u1) u0) 0x03 0x02))
    )
    (concat y-parity x-only)))

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

(define-read-only (get-tap-leaf (data (buff 128)))
  (tagged-hash TapLeaf data)
)

(define-read-only (get-tap-tweak (data (buff 128)))
  (tagged-hash TapTweak data)
)

(define-read-only (tagged-hash (tag (buff 32)) (m (buff 1024)))
  (sha256 (concat (concat (sha256 tag) (sha256 tag)) m))
)
