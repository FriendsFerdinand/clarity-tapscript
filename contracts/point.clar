(define-constant p-hex 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
(define-constant p-uint256 (tuple (i0 u18446744073709551615) (i1 u18446744073709551615) (i2 u18446744073709551615) (i3 u18446744069414583343)))
(define-constant uint256-one (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u1)))
(define-constant uint768-seven (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 u0) (i9 u0) (i10 u0) (i11 u7)))

(define-read-only (test-me)
  (let (
      (x (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798)))
      (x_3 (unwrap-panic (contract-call? .uint256-lib uint512-uint256-mul (unwrap-panic (contract-call? .uint256-lib uint256-mul x x)) x)))
      (x_3_plus_7 (unwrap-panic (contract-call? .uint256-lib uint768-add x_3 uint768-seven)))
    )
    ;; (unwrap-panic (contract-call? .uint256-lib uint256-to-hex
    ;;   (unwrap-panic (contract-call? .uint256-lib uint256-mod
    ;;     (unwrap-panic (contract-call? .uint256-lib uint1024-to-uint256-overflow x_3_plus_7))
    ;;     p-uint256
    ;;   ))
    ;; ))
    (contract-call? .uint256-lib bignum-to-hex
      (unwrap-panic (contract-call? .uint256-lib uint768-mod x_3_plus_7 (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 (get i0 p-uint256)) (i9 (get i1 p-uint256)) (i10 (get i2 p-uint256)) (i11 (get i3 p-uint256)))))
    )
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