(define-constant p-hex 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
(define-constant p-uint256 (tuple (i0 u18446744073709551615) (i1 u18446744073709551615) (i2 u18446744073709551615) (i3 u18446744069414583343)))
(define-constant uint256-one (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u1)))
(define-constant uint768-seven (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 u0) (i9 u0) (i10 u0) (i11 u7)))

;; Point X:  1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa
;; Point Y:  121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622
;; 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798

(define-read-only (test-me)
  (let (
      (x (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798)))
      (y (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8)))
      (y_2 (unwrap-panic (contract-call? .uint256-lib uint256-mul y y)))
      (y_2_mod_p (unwrap-panic (contract-call? .uint256-lib uint768-mod
            (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 (get i0 y_2)) (i5 (get i1 y_2)) (i6 (get i2 y_2)) (i7 (get i3 y_2)) (i8 (get i4 y_2)) (i9 (get i5 y_2)) (i10 (get i6 y_2)) (i11 (get i7 y_2)))
            (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 (get i0 p-uint256)) (i9 (get i1 p-uint256)) (i10 (get i2 p-uint256)) (i11 (get i3 p-uint256)))
          )))
      (x_3 (unwrap-panic (contract-call? .uint256-lib uint512-uint256-mul
              (unwrap-panic (contract-call? .uint256-lib uint256-mul x x))
              x
            )))
      (x_3_plus_7 (unwrap-panic (contract-call? .uint256-lib uint768-add x_3 uint768-seven)))
      (y_2_from_x 
        (unwrap-panic (contract-call? .uint256-lib uint768-mod x_3_plus_7 (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 (get i0 p-uint256)) (i9 (get i1 p-uint256)) (i10 (get i2 p-uint256)) (i11 (get i3 p-uint256)))))
      )
    ) 
      (asserts! (unwrap-panic (contract-call? .uint256-lib uint768-is-eq y_2_mod_p y_2_from_x)) (err u1))
      (ok true)
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