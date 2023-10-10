(define-constant p-hex 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f)
(define-constant p-uint256 (tuple (i0 u18446744073709551615) (i1 u18446744073709551615) (i2 u18446744073709551615) (i3 u18446744069414583343)))
(define-constant p-uint512 (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0) (i4 u18446744073709551615) (i5 u18446744073709551615) (i6 u18446744073709551615) (i7 u18446744069414583343)))
(define-constant iter-buff-256 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
(define-constant iter-uint-256
  (list u255 u254 u253 u252 u251 u250 u249 u248 u247 u246 u245 u244 u243 u242 u241 u240 u239 u238 u237 u236 u235 u234 u233 u232 u231 u230 u229 u228 u227 u226 u225 u224 u223 u222 u221 u220 u219 u218 u217 u216 u215 u214 u213 u212 u211 u210 u209 u208 u207 u206 u205 u204 u203 u202 u201 u200 u199 u198 u197 u196 u195 u194 u193 u192 u191 u190 u189 u188 u187 u186 u185 u184 u183 u182 u181 u180 u179 u178 u177 u176 u175 u174 u173 u172 u171 u170 u169 u168 u167 u166 u165 u164 u163 u162 u161 u160 u159 u158 u157 u156 u155 u154 u153 u152 u151 u150 u149 u148 u147 u146 u145 u144 u143 u142 u141 u140 u139 u138 u137 u136 u135 u134 u133 u132 u131 u130 u129 u128 u127 u126 u125 u124 u123 u122 u121 u120 u119 u118 u117 u116 u115 u114 u113 u112 u111 u110 u109 u108 u107 u106 u105 u104 u103 u102 u101 u100 u99 u98 u97 u96 u95 u94 u93 u92 u91 u90 u89 u88 u87 u86 u85 u84 u83 u82 u81 u80 u79 u78 u77 u76 u75 u74 u73 u72 u71 u70 u69 u68 u67 u66 u65 u64 u63 u62 u61 u60 u59 u58 u57 u56 u55 u54 u53 u52 u51 u50 u49 u48 u47 u46 u45 u44 u43 u42 u41 u40 u39 u38 u37 u36 u35 u34 u33 u32 u31 u30 u29 u28 u27 u26 u25 u24 u23 u22 u21 u20 u19 u18 u17 u16 u15 u14 u13 u12 u11 u10 u9 u8 u7 u6 u5 u4 u3 u2 u1 u0)
)
(define-constant iter-test
  (list
    ;; u2
    u1
    u0
  )
)
;; (define-constant iter-buff-256 0x000000)
(define-constant uint256-one (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u1)))
(define-constant uint256-zero (tuple (i0 u0) (i1 u0) (i2 u0) (i3 u0)))
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

(define-private (mod-inverse-iter
                  (s uint)
                  (acc (tuple
                    (gcd (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (x-coeff (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (y-coeff (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (last-x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (last-y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (number (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    )
                  ))
  (let (
    (quotient (unwrap-panic (contract-call? .uint256-lib uint256-euclid (get modulus acc) (get number acc))))
    (temp-x (get x-coeff acc))
    (temp-y (get y-coeff acc))
    (x-coeff u1)
    )
    {
      gcd: p-uint256,
      x-coeff: (get q quotient),
      y-coeff: (get r quotient),
      last-x: p-uint256,
      last-y: p-uint256,
      number: p-uint256,
      modulus: p-uint256
    }
  )
)

(define-read-only (mod-inverse
                    (number (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  (fold mod-inverse-iter iter-uint-256
    {
      gcd: uint256-zero,
      x-coeff: uint256-zero,
      y-coeff: uint256-one,
      last-x: uint256-one,
      last-y: uint256-one,
      number: number,
      modulus: modulus
    })
)


(define-read-only (uint256-check-bit (a (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (b uint))
  (unwrap-panic (contract-call? .uint256-lib uint256-check-bit a b))
)

(define-private (mod-inverse-fermat-iter
                  (s uint)
                  (acc (tuple
                    ;; (pos uint)
                    (base (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (exponent (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (result (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    )
                  ))
  (let (
    ;; (pos (get pos acc))
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
          ;; pos: s,
          base: base,
          exponent: exponent,
          result: mod-result,
          modulus: modulus,
        }
      )
      {
        ;; pos: s,
        base: base,
        exponent: exponent,
        result: result,
        modulus: modulus,
      }
    )
  )
)

(define-read-only (mod-inverse-fermat
                    (base (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (exponent (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
                    (modulus (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))))
  
  (let (
    ;; if base >= modulus
    (base-mod (uint256-mod base p-uint256)))
    (get result (fold mod-inverse-fermat-iter iter-uint-256
      {
        base: base-mod,
        exponent: exponent,
        result: uint256-one,
        modulus: modulus
      }))
  )
)

(define-read-only (get-slope-hex
                    (p1-hex (tuple (x (buff 32)) (y (buff 32))))
                    (p2-hex (tuple (x (buff 32)) (y (buff 32)))))
  (let ((p1 (tuple
              (x (hex-to-uint256 (get x p1-hex)))
              (y (hex-to-uint256 (get y p1-hex)))))
        (p2 (tuple
              (x (hex-to-uint256 (get x p2-hex)))
              (y (hex-to-uint256 (get y p2-hex))))))
    (get-slope p1 p2)
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
      (y2-y1
        (if (uint256< y2 y1)
          (uint256-mod (uint256-sub p-uint256 (uint256-sub y2 y1)) p-uint256)
          (uint256-mod (uint256-sub y2 y1) p-uint256) )
      )
      (x2-x1
        (if (uint256< x2 x1)
          (uint256-mod (uint256-sub p-uint256 (uint256-sub x2 x1)) p-uint256)
          (uint256-mod (uint256-sub x2 x1) p-uint256) )
      )
      (x2-x1**minus1
        (mod-inverse-fermat
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

(define-read-only (debugging)
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
    (slope (get-slope p1 p2))
  )
    ;; (asserts! (is-eq (uint256-to-hex (get x p-result)) 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020) (err "problem!"))
    ;; (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777) (err "problem!"))
    (ok {
        slope: (uint256-to-hex slope),
        ;; y: (uint256-to-hex (get y p-result))
        })
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
          (mod-inverse-fermat
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
    ;; (slope
    ;;   (get-slope p1 p2)
    ;;   ;; (hex-to-uint256 0xad1589867f29e80f90ce55fda04121824d65d375ffeefe68e6448f160b9586bc)
    ;; )
    (slope_2 (uint512-mod (uint256-mul slope slope) p-uint512))
    (p1x+p2x (uint256-add x1 x2))
    (x3
      (if (uint256< slope_2 p1x+p2x)
        (uint256-mod (uint256-sub p-uint256 (uint256-sub slope_2 p1x+p2x)) p-uint256)
        (uint256-mod (uint256-sub slope_2 p1x+p2x) p-uint256) ))
    (m_x1-x3 (if (uint256< x1 x3)
        (uint512-mod (uint256-mul slope (uint256-mod (uint256-sub p-uint256 (uint256-sub x1 x3)) p-uint256)) p-uint512)
        (uint512-mod (uint256-mul slope (uint256-mod (uint256-sub x1 x3) p-uint256)) p-uint512) ))
    (y3 (uint256-mod (uint256-sub m_x1-x3 y1) p-uint256))
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

;; add differing points
(define-read-only (sum-test-1)
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

(define-read-only (sum-test-3)
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
    ;; (asserts! (is-eq (uint256-to-hex (get x p-result)) 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020) (err "problem!"))
    ;; (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777) (err "problem!"))
    (ok {
        x: (uint256-to-hex (get x p-result)),
        y: (uint256-to-hex (get y p-result)) })
  )
)

;; add same points
;; slope is : 0x9cbf21601d33e7fd52b9dcc0cd78e995423240c6e1613f686f4c2c6109d0c64f
(define-read-only (sum-test-2)
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

(define-read-only (add-points-test-1)
  (let (
    (p1 (tuple (x (hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa))
               (y (hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622))))
    (p2 (tuple (x (hex-to-uint256 0x79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798))
               (y (hex-to-uint256 0x483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8))))
    (slope
      (get-slope p1 p2)
      ;; (hex-to-uint256 0xad1589867f29e80f90ce55fda04121824d65d375ffeefe68e6448f160b9586bc)
    )
    (p3 (point-add p1 p2 slope))
  )
    {
      x: (uint256-to-hex (get x p3)),
      y: (uint256-to-hex (get y p3))
    }
  )
)

(define-read-only (loop-bits-256
    (i uint)
    (acc 
      (tuple
        (result (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
        (point (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
        (scalar (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
        (count uint)
        (results (list 256 (tuple (x (buff 32)) (y (buff 32)))))
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
            results: (unwrap-panic (as-max-len? (append (get results acc) (tuple (x (uint256-to-hex (get x double_r))) (y (uint256-to-hex (get y double_r))) )) u256))
          }
        )
        {
          result: double_r,
          point: (get point acc),
          scalar: (get scalar acc),
          count: (get count acc),
          results: (unwrap-panic (as-max-len? (append (get results acc) (tuple (x (uint256-to-hex (get x double_r))) (y (uint256-to-hex (get y double_r))) )) u6))
        }
      )
    )
)


(define-read-only (scalar-mul
  (scalar (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))
  (a (tuple (x (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint))) (y (tuple (i0 uint) (i1 uint) (i2 uint) (i3 uint)))))
  )
  (let (
    (scalar-uint256 u0)
  )
    (fold loop-bits-256 iter-test { result: (tuple (x uint256-zero) (y uint256-zero)),  point: a, scalar: scalar, count: u0, results: (list) })
  )
)

(define-read-only (test-txG-1)
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
    ;; (asserts! (is-eq (uint256-to-hex (get x p-result)) 0x33347485512e02596bc77c80c01dd1c1a2d96befe939422a6fda04669ec82020) (err "problem!"))
    ;; (asserts! (is-eq (uint256-to-hex (get y p-result)) 0x0d6243f43c748faf25b2f05639b2cbe954f8603271a61395ad4180c93a5d9777) (err "problem!"))
    (ok {
        result-x: (uint256-to-hex (get x (get result p-result))),
        result-y: (uint256-to-hex (get y (get result p-result))),
        point-x: (uint256-to-hex (get x (get point p-result))),
        point-y: (uint256-to-hex (get y (get point p-result))),
        scalar: (uint256-to-hex (get scalar p-result)),
        count: (get count p-result),
        ALL: (get results p-result),
        })
  )
)



(define-read-only (test-me)
  (let (
      (x (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x1340a0cdc67100268fd325ff41ddc736e7fc2b078526758633e0c2d260fd1afa)))
      (y (unwrap-panic (contract-call? .uint256-lib hex-to-uint256 0x121352dc1ba32ce746c38f4c18eae7a3a9ff7f06002e9c12ecb259e05da9b622)))
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