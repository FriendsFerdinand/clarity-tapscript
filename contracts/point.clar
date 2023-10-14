(define-constant p-hex 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f)
(define-constant p-uint256 (tuple (i0 u18446744073709551615) (i1 u18446744073709551615) (i2 u18446744073709551615) (i3 u18446744069414583343)))
(define-constant p-uint512 (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u18446744073709551615) (i5 u18446744073709551615) (i6 u18446744073709551615) (i7 u18446744069414583343)))
(define-constant iter-buff-256 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
(define-constant iter-uint-256
  (list u255 u254 u253 u252 u251 u250 u249 u248 u247 u246 u245 u244 u243 u242 u241 u240 u239 u238 u237 u236 u235 u234 u233 u232 u231 u230 u229 u228 u227 u226 u225 u224 u223 u222 u221 u220 u219 u218 u217 u216 u215 u214 u213 u212 u211 u210 u209 u208 u207 u206 u205 u204 u203 u202 u201 u200 u199 u198 u197 u196 u195 u194 u193 u192 u191 u190 u189 u188 u187 u186 u185 u184 u183 u182 u181 u180 u179 u178 u177 u176 u175 u174 u173 u172 u171 u170 u169 u168 u167 u166 u165 u164 u163 u162 u161 u160 u159 u158 u157 u156 u155 u154 u153 u152 u151 u150 u149 u148 u147 u146 u145 u144 u143 u142 u141 u140 u139 u138 u137 u136 u135 u134 u133 u132 u131 u130 u129 u128 u127 u126 u125 u124 u123 u122 u121 u120 u119 u118 u117 u116 u115 u114 u113 u112 u111 u110 u109 u108 u107 u106 u105 u104 u103 u102 u101 u100 u99 u98 u97 u96 u95 u94 u93 u92 u91 u90 u89 u88 u87 u86 u85 u84 u83 u82 u81 u80 u79 u78 u77 u76 u75 u74 u73 u72 u71 u70 u69 u68 u67 u66 u65 u64 u63 u62 u61 u60 u59 u58 u57 u56 u55 u54 u53 u52 u51 u50 u49 u48 u47 u46 u45 u44 u43 u42 u41 u40 u39 u38 u37 u36 u35 u34 u33 u32 u31 u30 u29 u28 u27 u26 u25 u24 u23 u22 u21 u20 u19 u18 u17 u16 u15 u14 u13 u12 u11 u10 u9 u8 u7 u6 u5 u4 u3 u2 u1 u0))

(define-constant iter-uint-256-test
  (list
  u255 u254 u253 u252 u251 u250 u249 u248 u247 u246 u245 u244 u243 u242 u241 u240 u239 u238 u237 u236 u235 u234 u233 u232 u231 u230 u229 u228 u227 u226 u225 u224 u223 u222 u221 u220 u219 u218 u217 u216 u215 u214 u213 u212 u211 u210 u209 u208 u207 u206 u205 u204 u203 u202 u201 u200 u199 u198 u197 u196 u195 u194 u193 u192 u191 u190 u189 u188 u187 u186 u185 u184 u183 u182 u181 u180 u179 u178 u177 u176 u175 u174 u173 u172 u171 u170 u169 u168 u167 u166 u165 u164 u163 u162 u161 u160 u159 u158 u157 u156 u155 u154 u153 u152 u151 u150 u149 u148 u147 u146 u145 u144 u143 u142 u141 u140 u139 u138 u137 u136 u135 u134 u133 u132 u131 u130 u129 u128 u127 u126 u125 u124 u123 u122 u121 u120 u119 u118 u117 u116 u115 u114 u113 u112 u111 u110 u109 u108 u107 u106 u105 u104 u103 u102 u101 u100 u99 u98 u97 u96 u95 u94 u93 u92 u91 u90 u89 u88 u87 u86 u85 u84 u83 u82 u81 u80 u79 u78 u77 u76 u75 u74 u73 u72 u71 u70 u69 u68 u67 u66 u65 u64 u63 u62 u61 u60 u59 u58 u57 u56 u55 u54 u53 u52 u51 u50 u49 u48 u47 u46 u45 u44 u43 u42 u41 u40 u39 u38 u37 u36 u35 u34 u33 u32 u31 u30 u29 u28 u27 u26 u25 u24 u23 u22 u21 u20 u19 u18 u17 u16 u15 u14 u13 u12 u11 u10 u9 u8 u7 u6 u5 u4 u3 u2 u1 u0))


(define-constant uint256-zero (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0)))
(define-constant uint256-one (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u1)))
(define-constant uint256-four (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u4)))
(define-constant uint256-seven (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u7)))
(define-constant uint768-seven (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u0) (i5 u0) (i6 u0) (i7 u0) (i8 u0) (i9 u0) (i10 u0) (i11 u7)))

;; for secp256k1

;; Gx = 55066263022277343669578718895168534326250603453777594175500187360389116729240 (0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798)
;; Gy = 32670510020758816978083085130507043184471273380659243275938904335757337482424 (0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8)
(define-constant Gx (tuple (i0 u8772561819708210092) (i1 u6170039885052185351) (i2 u188021827762530521) (i3 u6481385041966929816)))
(define-constant Gy (tuple (i0 u5204712524664259685) (i1 u6747795201694173352) (i2 u18237243440184513561) (i3 u11261198710074299576)))

;; Point X:  1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa
;; Point Y:  121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622
;; X: 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798
;; Y: 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8

(define-read-only (is-zero-point (p (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))) 
    (and (unwrap-panic (contract-call? .uint256-lib uint256-is-zero (get x p)))
    (unwrap-panic (contract-call? .uint256-lib uint256-is-zero (get y p)))))

(define-read-only (uint256-is-eq (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256-is-eq a b)))

(define-read-only (uint256> (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256> a b)))

(define-read-only (uint256< (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256< a b)))

(define-read-only (uint256-is-zero (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256-is-zero a)))

(define-read-only (uint256-div (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))) 
    (unwrap-panic (contract-call? .uint256-lib uint256-div a b)))

(define-read-only (uint256-mul-mod-short (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b uint) 
                            (m (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256-mul-mod-short a b m)))

(define-read-only (uint256-mul-short (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b uint))
    (unwrap-panic (contract-call? .uint256-lib uint256-mul-short a b)))

(define-read-only (uint256-mul-mod (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) 
                            (m (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256-mul-mod a b m)))

(define-read-only (uint256-mul (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))) 
    (unwrap-panic (contract-call? .uint256-lib uint256-mul a b)))

(define-read-only (uint256-add (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))) 
    (unwrap-panic (contract-call? .uint256-lib uint256-add a b)))

(define-read-only (uint256-mod (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))) 
    (unwrap-panic (contract-call? .uint256-lib uint256-mod a b)))

(define-read-only (uint256-sub (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
    (unwrap-panic (contract-call? .uint256-lib uint256-sub a b)))

(define-read-only (uint512-mod (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint)))
                            (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint))))
    (let (
      (result (unwrap-panic (contract-call? .uint256-lib uint512-mod a b)))
    )
      {
        i0: (get i4 result),
        i1: (get i5 result),
        i2: (get i6 result),
        i3: (get i7 result),
      }
    )
)

(define-read-only (uint256-sub-mod (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                                   (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (if (uint256< a b)
          (uint256-mod (uint256-sub p-uint256 (uint256-sub a b)) p-uint256)
          (uint256-mod (uint256-sub a b) p-uint256))
)

(define-read-only (hex-to-uint256 (hex (buff 32)))
  (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 hex))
)

(define-read-only (uint256-to-hex (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (unwrap-panic (contract-call? .uint256-lib uint256-to-hex a))
)

(define-read-only (uint512-to-hex (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint))))
  (unwrap-panic (contract-call? .uint256-lib uint512-to-hex a))
)

(define-read-only (uint512-to-uint256-overflow (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint))))
  (unwrap-panic (contract-call? .uint256-lib uint512-to-uint256-overflow a))
)


(define-read-only (uint768-to-uint256-overflow (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint) (i8 uint) (i9 uint) (i10 uint) (i11 uint))))
  (unwrap-panic (contract-call? .uint256-lib uint768-to-uint256-overflow a))
)

(define-read-only (uint768-mod
  (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint) (i8 uint) (i9 uint) (i10 uint) (i11 uint)))
  (b (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint) (i4 uint) (i5 uint) (i6 uint) (i7 uint) (i8 uint) (i9 uint) (i10 uint) (i11 uint)))
  )
  (unwrap-panic (contract-call? .uint256-lib uint768-mod a b))
)

(define-read-only (uint256-check-bit (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (b uint))
  (unwrap-panic (contract-call? .uint256-lib uint256-check-bit a b))
)

(define-private (square-and-multiply-iter
                  (s uint)
                  (acc (tuple
                    (base (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (exponent (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (result (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    )
                  ))
  (let (
    (base (get base acc))
    (exponent (get exponent acc))
    (modulus (get modulus acc))
    (result (uint512-mod
              (uint256-mul (get result acc) (get result acc))
              (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 (get i0 modulus)) (i5 (get i1 modulus)) (i6 (get i2 modulus)) (i7 (get i3 modulus)))
            ))
    )
    (if (> (uint256-check-bit exponent s) u0)
      (let (
        (mod-result
          (uint512-mod
            (uint256-mul
              result
              base)
            (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 (get i0 modulus)) (i5 (get i1 modulus)) (i6 (get i2 modulus)) (i7 (get i3 modulus)))
          )))
        {
          base: base,
          exponent: exponent,
          result: mod-result,
          modulus: modulus,
        }
      )
      {
        base: base,
        exponent: exponent,
        result: result,
        modulus: modulus,
      }
    )
  )
)

(define-read-only (square-and-multiply
                    (base (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (exponent (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  
  (let (
    ;; if base >= modulus
    (base-mod (if (uint256> base p-uint256) (uint256-mod base p-uint256) base)))
    (get result (fold square-and-multiply-iter iter-uint-256
      {
        base: base-mod,
        exponent: exponent,
        result: uint256-one,
        modulus: modulus
      }))
  )
)

(define-read-only (mod-sqrt (base (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (p (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (let ((exponent (uint256-div (uint256-add p uint256-one) uint256-four)))
    (square-and-multiply base exponent p-uint256)
  )
)

(define-read-only (get-slope
                    (p1 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
                    (p2 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
  (let (
      (y1 (get y p1))
      (y2 (get y p2))
      (x1 (get x p1))
      (x2 (get x p2))
      (y2-y1 (uint256-sub-mod y2 y1))
      (x2-x1 (uint256-sub-mod x2 x1))
      (x2-x1**minus1
        (square-and-multiply
          x2-x1
          (uint256-sub
            p-uint256
            (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u2))
          )
          p-uint256
        )
      )
      (slope (uint512-mod (uint256-mul y2-y1 x2-x1**minus1) p-uint512))
    )
    slope
  )
)

(define-read-only (get-tangent-slope (p1 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
  (let (
    (num
      (uint512-mod 
        (uint256-mul
          (uint512-mod (uint256-mul (get x p1) (get x p1)) p-uint512)
          (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u3))
        )
        p-uint512
      )
    )
    (den 
          (square-and-multiply
            (uint512-mod
              (uint256-mul
                (get y p1)
                (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u2)) )
            p-uint512
            )
            (uint256-sub
              p-uint256
              (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u2))
            )
            p-uint256
          )
      )
    )
    (uint512-mod (uint256-mul num den) p-uint512)
  )
)

(define-read-only (point-add
  (p1 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
  (p2 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
  (slope (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
  )
  (let (
    (x1 (get x p1))
    (x2 (get x p2))
    (y1 (get y p1))
    (y2 (get y p2))
    (slope_2 (uint512-mod (uint256-mul slope slope) p-uint512))
    (x3 (uint256-sub-mod (uint256-sub-mod slope_2 x1) x2))
    (m_x1-x3 (uint512-mod (uint256-mul slope (uint256-sub-mod x1 x3))  p-uint512))
    (y3 (uint256-mod (uint256-sub-mod m_x1-x3 y1) p-uint256))
    )
    {
      x: x3,
      y: y3,
    }
  )
)

(define-read-only (ecc-add (p1 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
                        (p2 (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
(if (is-zero-point p1)
    (ok p2)
    (if (is-zero-point p2)
        (ok p1)
        (if (and (uint256-is-eq (get x p1) (get x p2)) (uint256-is-eq (get y p1) (get y p2)))
            (if (uint256-is-zero (get y p1))
                (ok (tuple (x uint256-zero) (y uint256-zero)))
                (ok (point-add p1 p2 (get-tangent-slope p1) ))
            )
            (if (uint256-is-eq (get x p1) (get x p2))
                (ok (tuple (x uint256-zero) (y uint256-zero)))
                (ok (point-add p1 p2 (get-slope p1 p2)))
            )
            ))))

(define-read-only (loop-bits-256
    (i uint)
    (acc 
      (tuple
        (result (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
        (point (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
        (scalar (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
        (count uint)
        (double_rs (list 257 (tuple (x (buff 32)) (y (buff 32)))))
        (add (list 257 (tuple (x (buff 32)) (y (buff 32)))))
      )
    )
  )
    (let (
      (double_r (unwrap-panic (ecc-add (get result acc) (get result acc))))
    )
      (if (> (uint256-check-bit (get scalar acc) i) u0)
        (let (
          (last-add (unwrap-panic (ecc-add double_r (get point acc))))
        )
          {
            result: last-add,
            point: (get point acc),
            scalar: (get scalar acc),
            count: (+ u1 (get count acc)),
            double_rs: (unwrap-panic (as-max-len? (append (get double_rs acc) (tuple (x (uint256-to-hex (get x double_r))) (y (uint256-to-hex (get y double_r))) )) u257)),
            add: (unwrap-panic (as-max-len? (append (get add acc) (tuple (x (uint256-to-hex (get x last-add))) (y (uint256-to-hex (get y last-add))) )) u257))
          }
        )
        {
          result: double_r,
          point: (get point acc),
          scalar: (get scalar acc),
          count: (get count acc),
          double_rs: (unwrap-panic (as-max-len? (append (get double_rs acc) (tuple (x (uint256-to-hex (get x double_r))) (y (uint256-to-hex (get y double_r))) )) u257)),
          add: (unwrap-panic (as-max-len? (append (get  add acc) (tuple (x (uint256-to-hex (get x double_r))) (y (uint256-to-hex (get y double_r))) )) u257)),
        }
      )
    )
)

(define-read-only (scalar-mul
  (scalar (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
  (a (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))) )
  (fold loop-bits-256 iter-uint-256 {
    result: (tuple (x uint256-zero) (y uint256-zero)),
    point: a,
    scalar: scalar,
    count: u0,
    double_rs: (list),
    add: (list)
    })
)


(define-read-only (txG
  (scalar (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (fold loop-bits-256 iter-uint-256-test {
    result: (tuple (x uint256-zero) (y uint256-zero)),
    point: (tuple (x Gx) (y Gy)),
    scalar: scalar,
    count: u0,
    double_rs: (list),
    add: (list)
    })
)


;; 0x02, even
;; 0x03, odd
(define-read-only (get-y-from-xpubkey (even bool) (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (let (
      (x_3 (uint512-mod (uint256-mul (uint512-mod (uint256-mul x x) p-uint512) x) p-uint512))
      (x_3_plus_7 (uint256-mod (uint256-add x_3 uint256-seven) p-uint256))
      (x_3_plus_7_mod_p (uint256-mod x_3_plus_7 p-uint256))
      (y (mod-sqrt x_3_plus_7_mod_p p-uint256))
    )
    (if (and even (not (> (mod (get i3 y) u2) u0)))
      y
      (uint256-sub p-uint256 y)
    )
  )
)

(define-read-only (get-y-from-x-only (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (let (
      (x_3 (uint512-mod (uint256-mul (uint512-mod (uint256-mul x x) p-uint512) x) p-uint512))
      (x_3_plus_7 (uint256-mod (uint256-add x_3 uint256-seven) p-uint256))
      (x_3_plus_7_mod_p (uint256-mod x_3_plus_7 p-uint256))
      (y (mod-sqrt x_3_plus_7_mod_p p-uint256))
    )
    (if (> (mod (get i3 y) u2) u0)
      (uint256-sub p-uint256 y)
      y
    )
  )
)

(define-read-only (get-y-from-compressed-pubkey (compressed-pubkey (buff 33)))
  (let  (
    (even (if (is-eq 0x02 (unwrap-panic (slice? compressed-pubkey u0 u1))) true false))
    (x (hex-to-uint256 (unwrap-panic (as-max-len? (unwrap-panic (slice? compressed-pubkey u1 u33)) u32))))
  )
    (get-y-from-xpubkey even x)
  )
)

(define-read-only (from-compressed (compressed-pubkey (buff 33)))
  {
    x: (hex-to-uint256 (unwrap-panic (as-max-len? (unwrap-panic (slice? compressed-pubkey u1 u33)) u32))),
    y: (get-y-from-compressed-pubkey compressed-pubkey)
  }
)

;; (define-read-only (test-get-y-from-xpubkey-1)
;;   (let (
;;     (seckey (hex-to-uint256 0x0a7d01d1c2e1592a02ea7671bb79ecd31d8d5e660b008f4b10e67787f4f24712))
;;     (compressed-pubkey 0x021340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)
;;     (even (if (is-eq 0x02 (unwrap-panic (slice? compressed-pubkey u0 u1))) true false))
;;     (x (hex-to-uint256 (unwrap-panic (as-max-len? (unwrap-panic (slice? compressed-pubkey u1 u33)) u32))))
;;     (y (get-y-from-xpubkey even x))
;;     (pubkey-from-seckey (txG seckey))
;;   )
;;     ;; (asserts! (uint256-is-eq x (get x pubkey-from-seckey)) (err "problem x!"))
;;     ;; (asserts! (uint256-is-eq y (get y pubkey-from-seckey)) (err "problem y!"))

;;     (ok {
;;         x-from-seckey: (uint256-to-hex (get x pubkey-from-seckey)),
;;         y-from-seckey: (uint256-to-hex (get y pubkey-from-seckey)),
;;         x-from-xpubkey: (uint256-to-hex x),
;;         y-from-xpubkey: (uint256-to-hex y),
;;          })
;;   )
;; )

(define-read-only (tweak-pubkey-hex (taptweak (buff 32)) (compressed-pubkey (buff 33)))
  (tweak-pubkey (hex-to-uint256 taptweak) (from-compressed compressed-pubkey))
)

(define-read-only (tweak-pubkey
  (tweak (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
  (pubkey (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))))
  (let ((tweak-point (get result (txG tweak))))
    (unwrap-panic (ecc-add tweak-point pubkey))
  )
)

(define-read-only (test-tweak-pubkey-1)
  (let (
    (tweak (hex-to-uint256 0x0000000000000000000000000000000000000000000000000000000000000002))
    (pubkey (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)) (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (tweaked-point (tweak-pubkey tweak pubkey))
  )

  (asserts! (is-eq (uint256-to-hex (get x tweaked-point)) 0xc9e2a87dfb567263856a23277435e860359c5b480f7ce4108790b9300e2668c2) (err "problem!"))
  (asserts! (is-eq (uint256-to-hex (get y tweaked-point)) 0x434b4967fb4fd4f94d9049329a35c571c43d0875bb5f3f7ca672b756a72eeff0) (err "problem!"))

  (ok {
        x: (uint256-to-hex (get x tweaked-point)),
        y: (uint256-to-hex (get y tweaked-point)),
         })
  )
)

(define-read-only (test-tweak-pubkey-2)
  (let (
    (tweak (hex-to-uint256 0x0000000000000000000000000000000000000000000000000000000000000003))
    (pubkey (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)) (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (tweaked-point (tweak-pubkey tweak pubkey))
  )

  (asserts! (is-eq (uint256-to-hex (get x tweaked-point)) 0x0b3c76063853eb11c5d90905c45d2f1e4abf72d2bb61835c23caa5b6315a3890) (err "problem!"))
  (asserts! (is-eq (uint256-to-hex (get y tweaked-point)) 0xbad5bdfedfa3fa5b932c93006b05bae9030a1b24d40e5d113de1b7badc79be67) (err "problem!"))

  (ok {
        x: (uint256-to-hex (get x tweaked-point)),
        y: (uint256-to-hex (get y tweaked-point)),
         })
  )
)

(define-read-only (test-tweak-pubkey-3)
  (let (
    (tweak (hex-to-uint256 0x0000000000000000000000000000000000000000000000000000000000000004))
    (pubkey (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)) (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (tweaked-point (tweak-pubkey tweak pubkey))
  )

  (asserts! (is-eq (uint256-to-hex (get x tweaked-point)) 0x33fb6ce81682690c9d14ed297dc630f315f1d4d54826b10dbb2343e8d4d67b00) (err "problem!"))
  (asserts! (is-eq (uint256-to-hex (get y tweaked-point)) 0xe4ade2a8d403e6275ae2fbd8aff527ab7278b004ab94be887b132f9b4f8c44d9) (err "problem!"))

  (ok {
        x: (uint256-to-hex (get x tweaked-point)),
        y: (uint256-to-hex (get y tweaked-point)),
         })
  )
)

(define-read-only (test-tweak-pubkey-4)
  (let (
    (tweak (hex-to-uint256 0x0000000000000000000000000000000000000000000000000000000000000005))
    (pubkey (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)) (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (tweaked-point (tweak-pubkey tweak pubkey))
  )

  (asserts! (is-eq (uint256-to-hex (get x tweaked-point)) 0xd3b810e96a40b541bcb22256a8c9344f7b8cde64229d146725035df12bc760d5) (err "problem!"))
  (asserts! (is-eq (uint256-to-hex (get y tweaked-point)) 0xcb06aaa20495653ece0c1b6d5c4fbe885913b34efa6104eac9165434682fa330) (err "problem!"))

  (ok {
        x: (uint256-to-hex (get x tweaked-point)),
        y: (uint256-to-hex (get y tweaked-point)),
         })
  )
)

(define-read-only (debug-test-tweak-pubkey-1)
  (let (
    (tweak (hex-to-uint256 0x45f3b51eeac2e7610fa7902abfce05c3f6a9f3599fa5cc004b269bb9c10baf28))
    (tweak-point (get result (txG tweak)))
    ;; (tweak-point (tuple (x (hex-to-uint256 0x1634e9b9bbfbda67b81f8c7c1e4c35ceb3fb113d42ae5cb92bc30d572f2b08b4)) (y (hex-to-uint256 0xb0277922a1f80f43b06f08d1fc571c7d41f8dc09ab63f7ae109b255421da6a71))))
    (pubkey (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)) (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (tweaked-point (unwrap-panic (ecc-add tweak-point pubkey)))
  )

  ;; (asserts! (is-eq (uint256-to-hex (get x tweaked-point)) 0xaf5e6479a4af8f0745649554245110d1b408baed0f48feb49437f86ede2ddbdf) (err "problem!"))
  ;; (asserts! (is-eq (uint256-to-hex (get y tweaked-point)) 0x23d9bc8164816e41c89a7d2195f373ba17895be899b07df9011ac8b6847dfb31) (err "problem!"))

  (ok {
        tweak-x: (uint256-to-hex (get x tweak-point)),
        tweak-y: (uint256-to-hex (get y tweak-point)),
        x: (uint256-to-hex (get x tweaked-point)),
        y: (uint256-to-hex (get y tweaked-point)),
         })
  )
)

(define-read-only (test-txG-1)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u2)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xc6047f9441ed7d6d3045406e95c07cd85c778e4b8cef3ca7abac09b95c709ee5) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x1ae168fea63dc339a3c58419466ceaeef7f632653266d0e1236431a950cfe52a) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
        ;; point-x: (uint256-to-hex (get x (get point p-result))),
        ;; point-y: (uint256-to-hex (get y (get point p-result))),
        ;; scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-txG-2)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u3)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xf9308a019258c31049344f85f89d5229b531c845836f99b08601f113bce036f9) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x388f7b0f632de8140fe337e62a37f3566500a99934c2231b6cb9fd7584b8e672) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
      })
  )
)

(define-read-only (test-txG-3)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u4)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xe493dbf1c10d80f3581e4904930b1404cc6c13900ee0758474fa94abe8c4cd13) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x51ed993ea0d455b75642e2098ea51448d967ae33bfbdfe40cfe97bdc47739922) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
      })
  )
)

(define-read-only (test-txG-4)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u7)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0x5cbdf0646e5db4eaa398f365f2ea7a0e3d419b7e0330e39ce92bddedcac4f9bc) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x6aebca40ba255960a3178d6d861a54dba813d0b813fde7b5a5082628087264da) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
      })
  )
)

(define-read-only (test-txG-5)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u15)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xd7924d4f7d43ea965a465ae3095ff41131e5946f3c85f79e44adbcf8e27e080e) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x581e2872a86c72a683842ec228cc6defea40af2bd896d3a5c504dc9ff6a26b58) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
        })
  )
)

(define-read-only (test-txG-6)
  (let (
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u15)))
    (p-result (get result (txG scalar)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xd7924d4f7d43ea965a465ae3095ff41131e5946f3c85f79e44adbcf8e27e080e) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x581e2872a86c72a683842ec228cc6defea40af2bd896d3a5c504dc9ff6a26b58) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x p-result)),
        result-y: (uint256-to-hex (get y p-result)),
        ;; point-x: (uint256-to-hex (get x (get point p-result))),
        ;; point-y: (uint256-to-hex (get y (get point p-result))),
        ;; scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-txG-7)
  (let (
    (scalar (hex-to-uint256 0x45f3b51eeac2e7610fa7902abfce05c3f6a9f3599fa5cc004b269bb9c10baf28))
    (p-result (txG scalar))
  )
    ;; (asserts! (is-eq (uint256-to-hex (get x (get result p-result))) 0xd7924d4f7d43ea965a465ae3095ff41131e5946f3c85f79e44adbcf8e27e080e) (err "problem!"))
    ;; (asserts! (is-eq (uint256-to-hex (get y (get result p-result))) 0x581e2872a86c72a683842ec228cc6defea40af2bd896d3a5c504dc9ff6a26b58) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        count: (get count p-result),
        DOUBLE_RS: (get double_rs p-result),
        ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-scalar-mul-1)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u2)))
    (p-result (scalar-mul scalar p1))
  )
    (asserts! (is-eq (uint256-to-hex (get x (get result p-result))) 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y (get result p-result))) 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-scalar-mul-2)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u3)))
    (p-result (scalar-mul scalar p1))
  )
    (asserts! (is-eq (uint256-to-hex (get x (get result p-result))) 0xf4c23089accadbcfd8742eec537507cd0ca860bd7d4714dfa88713756487bdd7) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y (get result p-result))) 0x27e0b00f0435e520e3810e74dc32caa9aff6143930003ad468a0298147c68183) (err "problem!"))

    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-scalar-mul-3)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u16)))
    (p-result (scalar-mul scalar p1))
  )
    (asserts! (is-eq (uint256-to-hex (get x (get result p-result))) 0x3c00b0943b4462e513f6265f725c5a946896f3d059771a243ccb182af00087dd) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y (get result p-result))) 0x0a716018b57502aeb3e14eb7d5a662453e684b33c09b92f4568b71a1bd7ef3bd) (err "problem!"))

    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-read-only (test-scalar-mul-4)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (scalar (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u15)))
    (p-result (scalar-mul scalar p1))
  )
    (asserts! (is-eq (uint256-to-hex (get x (get result p-result))) 0x62476d7c1a0644fea3d46c8fbf58b4d26ca6e669e9a45dab460ceb1686bd6c23) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y (get result p-result))) 0x57c9d6f1d140492e6321db21e4436ee830d884bdfacba90bd2b48a0e72c05a67) (err "problem!"))

    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        ;; count: (get count p-result),
        ;; DOUBLE_RS: (get double_rs p-result),
        ;; ADDS: (get add p-result),
        })
  )
)

(define-public (run-scalar-tests)
  (begin
    (try! (test-scalar-mul-1))
    (try! (test-scalar-mul-2))
    (try! (test-scalar-mul-3))
    (try! (test-scalar-mul-4))
    (ok true)
  )
)

;; add differing points #1
(define-read-only (test-sum-1)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (p2
      (tuple
        (x (hex-to-uint256 0x79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798))
        (y (hex-to-uint256 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8))
      )
    )
    (p-result (unwrap-panic (ecc-add p1 p2)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xdf0e99b655223a8414d76c0f0a379eb280c1b562f7acd096e33d1a35bed97ad4) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0xd068ddeb8543af2b7b16b730f9a2f25943d5a89bb8943a431fa6ee8e4c970d68) (err "problem!"))
    (ok {
        x: (uint256-to-hex (get x p-result)),
        y: (uint256-to-hex (get y p-result)) })
  )
)

;; add differing points #2
(define-read-only (test-sum-3)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020))
        (y (hex-to-uint256 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777))
      )
    )
    (p2
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (p-result (unwrap-panic (ecc-add p1 p2)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0xf4c23089accadbcfd8742eec537507cd0ca860bd7d4714dfa88713756487bdd7) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x27e0b00f0435e520e3810e74dc32caa9aff6143930003ad468a0298147c68183) (err "problem!"))
    (ok {
        x: (uint256-to-hex (get x p-result)),
        y: (uint256-to-hex (get y p-result)) })
  )
)

;; add same points
;; slope is : 0x9cbf21601d33e7fd52b9dcc0cd78e995423240c6e1613f686f4c2c6109d0c64f
(define-read-only (test-sum-2)
  (let (
    (p1
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (p2
      (tuple
        (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
        (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))
      )
    )
    (p-result (unwrap-panic (ecc-add p1 p2)))
  )
    (asserts! (is-eq (uint256-to-hex (get x p-result)) 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020) (err "problem!"))
    (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777) (err "problem!"))
    (ok {
        x: (uint256-to-hex (get x p-result)),
        y: (uint256-to-hex (get y p-result)) })
  )
)

