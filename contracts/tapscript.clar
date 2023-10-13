
(define-constant TapLeaf 0x5461704c656166)

(define-read-only (test-me)
  (get-tap-leaf 0xc0 0x275157935888201340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afaac)
)

(define-read-only (get-tap-leaf (version (buff 1)) (data (buff 128)))
  (tagged-hash TapLeaf (concat version data))
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
