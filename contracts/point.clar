(define-constant p-hex 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
(define-constant p-uint256 (tuple (i0 u18446744073709551615) (i1 u18446744073709551615) (i2 u18446744073709551615) (i3 u18446744069414583343)))
(define-constant uint256-one (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u1)))
(define-constant uint256-seven (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u7)))

(define-read-only (test-me)
  (let (
      (x (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798)))
      (x_3 (unwrap-panic (contract-call? .uint256-lib uint512-uint256-mul (unwrap-panic (contract-call? .uint256-lib uint256-mul x x)) x)))
    )
    (unwrap-panic (contract-call? .uint256-lib bignum-to-hex
      (unwrap-panic (contract-call? .uint256-lib uint1024-uint256-add x_3 uint256-seven))
    ))
  )
)


;; (a*b % m) is the same as (a mod m) (b mod m)
(define-read-only (get-y (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (let (
      (x_1 (unwrap-panic (contract-call? .uint256-lib uint256-mul-mod x x p-uint256)))
      (x_2
        (unwrap-panic
          (contract-call? .uint256-lib uint256-mul-mod 
            (unwrap-panic (contract-call? .uint256-lib uint256-mod x p-uint256))
            (unwrap-panic (contract-call? .uint256-lib uint256-mod x p-uint256))
            p-uint256
          )
        )
      )
    )
    { x_1: x_1, x_2: x_2 }
    ;; (contract-call? .uint256-lib uint256-mul-mod )
    ;; (contract-call? .uint256-lib uint256-to-hex (unwrap-panic (contract-call? .uint256-lib uint256-mul-mod x_2 x p-uint256)))
  )
)