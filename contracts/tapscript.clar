
(define-constant TapLeaf 0x5461704c656166)
(define-constant TapTweak 0x546170547765616b)

(define-read-only (get-tapscript-tweak (compressed-pubkey (buff 33)) (version (buff 1)) (script (buff 128)))
  (let (
    (x_only-pubkey (unwrap-panic (slice? compressed-pubkey u1 u33)))
    (tapleaf (get-tap-leaf (unwrap-panic (as-max-len? (concat version script) u128))))
    (tap-tweak (get-tap-tweak (unwrap-panic (as-max-len? (concat x_only-pubkey tapleaf) u128))))
    (tweaked-key (contract-call? .point tweak-pubkey-hex tap-tweak compressed-pubkey))
  )
    tweaked-key
  )
)

;; TODO: GENERATE CBLOCK


;; pubkey: 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa
;; version: 0xc0
;; script: 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc
(define-read-only (test-me)
  (get-tapscript-tweak 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa 0xc0 0x519fb620bed0d5dada5f4ccf61024ba8500fc9bd95af04ff34fe0d5a5ddc37cc)
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
