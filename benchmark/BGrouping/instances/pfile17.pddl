;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance113583)
  (:domain mt-block-grouping)
  (:objects
    b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 - block
  )

  (:init
    (= (x b31) 5)
	(= (y b31) 4)
	(= (x b5) 6)
	(= (y b5) 1)
	(= (x b4) 1)
	(= (y b4) 9)
	(= (x b34) 3)
	(= (y b34) 5)
	(= (x b33) 7)
	(= (y b33) 5)
	(= (x b27) 5)
	(= (y b27) 8)
	(= (x b30) 2)
	(= (y b30) 8)
	(= (x b8) 6)
	(= (y b8) 4)
	(= (x b16) 4)
	(= (y b16) 5)
	(= (x b15) 2)
	(= (y b15) 7)
	(= (x b10) 3)
	(= (y b10) 9)
	(= (x b1) 6)
	(= (y b1) 8)
	(= (x b28) 1)
	(= (y b28) 5)
	(= (x b26) 4)
	(= (y b26) 1)
	(= (x b21) 1)
	(= (y b21) 2)
	(= (x b18) 6)
	(= (y b18) 8)
	(= (x b3) 9)
	(= (y b3) 10)
	(= (x b6) 1)
	(= (y b6) 1)
	(= (x b19) 2)
	(= (y b19) 11)
	(= (x b25) 4)
	(= (y b25) 9)
	(= (x b35) 2)
	(= (y b35) 5)
	(= (x b2) 4)
	(= (y b2) 11)
	(= (x b17) 3)
	(= (y b17) 8)
	(= (x b22) 10)
	(= (y b22) 4)
	(= (x b11) 9)
	(= (y b11) 2)
	(= (x b23) 10)
	(= (y b23) 3)
	(= (x b24) 6)
	(= (y b24) 5)
	(= (x b9) 6)
	(= (y b9) 10)
	(= (x b20) 4)
	(= (y b20) 9)
	(= (x b32) 1)
	(= (y b32) 9)
	(= (x b14) 9)
	(= (y b14) 1)
	(= (x b7) 1)
	(= (y b7) 8)
	(= (x b12) 4)
	(= (y b12) 6)
	(= (x b29) 6)
	(= (y b29) 8)
	(= (x b13) 5)
	(= (y b13) 11)
	(= (maxx) 11 )
	(= (minx) 1 )
	(= (maxy) 11 )
	(= (miny) 1 )
  )

  (:goal (and 
    (or (not (= (x b1) (x b2))) (not (= (y b1) (y b2))))
	(or (not (= (x b1) (x b3))) (not (= (y b1) (y b3))))
	(or (not (= (x b1) (x b4))) (not (= (y b1) (y b4))))
	(or (not (= (x b1) (x b5))) (not (= (y b1) (y b5))))
	(or (not (= (x b1) (x b6))) (not (= (y b1) (y b6))))
	(or (not (= (x b1) (x b7))) (not (= (y b1) (y b7))))
	(or (not (= (x b1) (x b8))) (not (= (y b1) (y b8))))
	(or (not (= (x b1) (x b9))) (not (= (y b1) (y b9))))
	(or (not (= (x b1) (x b10))) (not (= (y b1) (y b10))))
	(or (not (= (x b1) (x b11))) (not (= (y b1) (y b11))))
	(or (not (= (x b1) (x b12))) (not (= (y b1) (y b12))))
	(or (not (= (x b1) (x b13))) (not (= (y b1) (y b13))))
	(or (not (= (x b1) (x b14))) (not (= (y b1) (y b14))))
	(or (not (= (x b1) (x b15))) (not (= (y b1) (y b15))))
	(or (not (= (x b1) (x b16))) (not (= (y b1) (y b16))))
	(or (not (= (x b1) (x b17))) (not (= (y b1) (y b17))))
	(= (x b1) (x b18))
(= (y b1) (y b18))
	(or (not (= (x b1) (x b19))) (not (= (y b1) (y b19))))
	(or (not (= (x b1) (x b20))) (not (= (y b1) (y b20))))
	(= (x b1) (x b21))
(= (y b1) (y b21))
	(or (not (= (x b1) (x b22))) (not (= (y b1) (y b22))))
	(or (not (= (x b1) (x b23))) (not (= (y b1) (y b23))))
	(= (x b1) (x b24))
(= (y b1) (y b24))
	(or (not (= (x b1) (x b25))) (not (= (y b1) (y b25))))
	(or (not (= (x b1) (x b26))) (not (= (y b1) (y b26))))
	(or (not (= (x b1) (x b27))) (not (= (y b1) (y b27))))
	(or (not (= (x b1) (x b28))) (not (= (y b1) (y b28))))
	(or (not (= (x b1) (x b29))) (not (= (y b1) (y b29))))
	(= (x b1) (x b30))
(= (y b1) (y b30))
	(or (not (= (x b1) (x b31))) (not (= (y b1) (y b31))))
	(or (not (= (x b1) (x b32))) (not (= (y b1) (y b32))))
	(or (not (= (x b1) (x b33))) (not (= (y b1) (y b33))))
	(or (not (= (x b1) (x b34))) (not (= (y b1) (y b34))))
	(or (not (= (x b1) (x b35))) (not (= (y b1) (y b35))))
	(or (not (= (x b2) (x b3))) (not (= (y b2) (y b3))))
	(or (not (= (x b2) (x b4))) (not (= (y b2) (y b4))))
	(or (not (= (x b2) (x b5))) (not (= (y b2) (y b5))))
	(or (not (= (x b2) (x b6))) (not (= (y b2) (y b6))))
	(or (not (= (x b2) (x b7))) (not (= (y b2) (y b7))))
	(or (not (= (x b2) (x b8))) (not (= (y b2) (y b8))))
	(or (not (= (x b2) (x b9))) (not (= (y b2) (y b9))))
	(or (not (= (x b2) (x b20))) (not (= (y b2) (y b20))))
	(or (not (= (x b2) (x b21))) (not (= (y b2) (y b21))))
	(or (not (= (x b2) (x b22))) (not (= (y b2) (y b22))))
	(or (not (= (x b2) (x b23))) (not (= (y b2) (y b23))))
	(or (not (= (x b2) (x b24))) (not (= (y b2) (y b24))))
	(or (not (= (x b2) (x b25))) (not (= (y b2) (y b25))))
	(or (not (= (x b2) (x b26))) (not (= (y b2) (y b26))))
	(or (not (= (x b2) (x b27))) (not (= (y b2) (y b27))))
	(= (x b2) (x b28))
(= (y b2) (y b28))
	(or (not (= (x b2) (x b29))) (not (= (y b2) (y b29))))
	(or (not (= (x b2) (x b30))) (not (= (y b2) (y b30))))
	(or (not (= (x b2) (x b31))) (not (= (y b2) (y b31))))
	(or (not (= (x b2) (x b32))) (not (= (y b2) (y b32))))
	(or (not (= (x b2) (x b33))) (not (= (y b2) (y b33))))
	(or (not (= (x b2) (x b34))) (not (= (y b2) (y b34))))
	(or (not (= (x b2) (x b35))) (not (= (y b2) (y b35))))
	(or (not (= (x b3) (x b4))) (not (= (y b3) (y b4))))
	(or (not (= (x b3) (x b5))) (not (= (y b3) (y b5))))
	(= (x b3) (x b6))
(= (y b3) (y b6))
	(or (not (= (x b3) (x b7))) (not (= (y b3) (y b7))))
	(or (not (= (x b3) (x b8))) (not (= (y b3) (y b8))))
	(or (not (= (x b3) (x b9))) (not (= (y b3) (y b9))))
	(or (not (= (x b3) (x b30))) (not (= (y b3) (y b30))))
	(= (x b3) (x b31))
(= (y b3) (y b31))
	(or (not (= (x b3) (x b32))) (not (= (y b3) (y b32))))
	(or (not (= (x b3) (x b33))) (not (= (y b3) (y b33))))
	(or (not (= (x b3) (x b34))) (not (= (y b3) (y b34))))
	(or (not (= (x b3) (x b35))) (not (= (y b3) (y b35))))
	(or (not (= (x b4) (x b5))) (not (= (y b4) (y b5))))
	(or (not (= (x b4) (x b6))) (not (= (y b4) (y b6))))
	(= (x b4) (x b7))
(= (y b4) (y b7))
	(or (not (= (x b4) (x b8))) (not (= (y b4) (y b8))))
	(or (not (= (x b4) (x b9))) (not (= (y b4) (y b9))))
	(or (not (= (x b5) (x b6))) (not (= (y b5) (y b6))))
	(or (not (= (x b5) (x b7))) (not (= (y b5) (y b7))))
	(or (not (= (x b5) (x b8))) (not (= (y b5) (y b8))))
	(= (x b5) (x b9))
(= (y b5) (y b9))
	(or (not (= (x b6) (x b7))) (not (= (y b6) (y b7))))
	(or (not (= (x b6) (x b8))) (not (= (y b6) (y b8))))
	(or (not (= (x b6) (x b9))) (not (= (y b6) (y b9))))
	(or (not (= (x b7) (x b8))) (not (= (y b7) (y b8))))
	(or (not (= (x b7) (x b9))) (not (= (y b7) (y b9))))
	(or (not (= (x b8) (x b9))) (not (= (y b8) (y b9))))
	(or (not (= (x b10) (x b2))) (not (= (y b10) (y b2))))
	(= (x b10) (x b3))
(= (y b10) (y b3))
	(or (not (= (x b10) (x b4))) (not (= (y b10) (y b4))))
	(or (not (= (x b10) (x b5))) (not (= (y b10) (y b5))))
	(= (x b10) (x b6))
(= (y b10) (y b6))
	(or (not (= (x b10) (x b7))) (not (= (y b10) (y b7))))
	(or (not (= (x b10) (x b8))) (not (= (y b10) (y b8))))
	(or (not (= (x b10) (x b9))) (not (= (y b10) (y b9))))
	(or (not (= (x b10) (x b11))) (not (= (y b10) (y b11))))
	(or (not (= (x b10) (x b12))) (not (= (y b10) (y b12))))
	(or (not (= (x b10) (x b13))) (not (= (y b10) (y b13))))
	(or (not (= (x b10) (x b14))) (not (= (y b10) (y b14))))
	(or (not (= (x b10) (x b15))) (not (= (y b10) (y b15))))
	(or (not (= (x b10) (x b16))) (not (= (y b10) (y b16))))
	(or (not (= (x b10) (x b17))) (not (= (y b10) (y b17))))
	(or (not (= (x b10) (x b18))) (not (= (y b10) (y b18))))
	(or (not (= (x b10) (x b19))) (not (= (y b10) (y b19))))
	(or (not (= (x b10) (x b20))) (not (= (y b10) (y b20))))
	(or (not (= (x b10) (x b21))) (not (= (y b10) (y b21))))
	(or (not (= (x b10) (x b22))) (not (= (y b10) (y b22))))
	(= (x b10) (x b23))
(= (y b10) (y b23))
	(or (not (= (x b10) (x b24))) (not (= (y b10) (y b24))))
	(or (not (= (x b10) (x b25))) (not (= (y b10) (y b25))))
	(= (x b10) (x b26))
(= (y b10) (y b26))
	(or (not (= (x b10) (x b27))) (not (= (y b10) (y b27))))
	(or (not (= (x b10) (x b28))) (not (= (y b10) (y b28))))
	(or (not (= (x b10) (x b29))) (not (= (y b10) (y b29))))
	(or (not (= (x b10) (x b30))) (not (= (y b10) (y b30))))
	(= (x b10) (x b31))
(= (y b10) (y b31))
	(or (not (= (x b10) (x b32))) (not (= (y b10) (y b32))))
	(or (not (= (x b10) (x b33))) (not (= (y b10) (y b33))))
	(or (not (= (x b10) (x b34))) (not (= (y b10) (y b34))))
	(or (not (= (x b10) (x b35))) (not (= (y b10) (y b35))))
	(or (not (= (x b11) (x b2))) (not (= (y b11) (y b2))))
	(or (not (= (x b11) (x b3))) (not (= (y b11) (y b3))))
	(or (not (= (x b11) (x b4))) (not (= (y b11) (y b4))))
	(or (not (= (x b11) (x b5))) (not (= (y b11) (y b5))))
	(or (not (= (x b11) (x b6))) (not (= (y b11) (y b6))))
	(or (not (= (x b11) (x b7))) (not (= (y b11) (y b7))))
	(= (x b11) (x b8))
(= (y b11) (y b8))
	(or (not (= (x b11) (x b9))) (not (= (y b11) (y b9))))
	(or (not (= (x b11) (x b12))) (not (= (y b11) (y b12))))
	(or (not (= (x b11) (x b13))) (not (= (y b11) (y b13))))
	(or (not (= (x b11) (x b14))) (not (= (y b11) (y b14))))
	(or (not (= (x b11) (x b15))) (not (= (y b11) (y b15))))
	(= (x b11) (x b16))
(= (y b11) (y b16))
	(= (x b11) (x b17))
(= (y b11) (y b17))
	(or (not (= (x b11) (x b18))) (not (= (y b11) (y b18))))
	(= (x b11) (x b19))
(= (y b11) (y b19))
	(or (not (= (x b11) (x b20))) (not (= (y b11) (y b20))))
	(or (not (= (x b11) (x b21))) (not (= (y b11) (y b21))))
	(or (not (= (x b11) (x b22))) (not (= (y b11) (y b22))))
	(or (not (= (x b11) (x b23))) (not (= (y b11) (y b23))))
	(or (not (= (x b11) (x b24))) (not (= (y b11) (y b24))))
	(= (x b11) (x b25))
(= (y b11) (y b25))
	(or (not (= (x b11) (x b26))) (not (= (y b11) (y b26))))
	(or (not (= (x b11) (x b27))) (not (= (y b11) (y b27))))
	(or (not (= (x b11) (x b28))) (not (= (y b11) (y b28))))
	(or (not (= (x b11) (x b29))) (not (= (y b11) (y b29))))
	(or (not (= (x b11) (x b30))) (not (= (y b11) (y b30))))
	(or (not (= (x b11) (x b31))) (not (= (y b11) (y b31))))
	(or (not (= (x b11) (x b32))) (not (= (y b11) (y b32))))
	(or (not (= (x b11) (x b33))) (not (= (y b11) (y b33))))
	(or (not (= (x b11) (x b34))) (not (= (y b11) (y b34))))
	(or (not (= (x b11) (x b35))) (not (= (y b11) (y b35))))
	(or (not (= (x b12) (x b2))) (not (= (y b12) (y b2))))
	(or (not (= (x b12) (x b3))) (not (= (y b12) (y b3))))
	(or (not (= (x b12) (x b4))) (not (= (y b12) (y b4))))
	(or (not (= (x b12) (x b5))) (not (= (y b12) (y b5))))
	(or (not (= (x b12) (x b6))) (not (= (y b12) (y b6))))
	(or (not (= (x b12) (x b7))) (not (= (y b12) (y b7))))
	(or (not (= (x b12) (x b8))) (not (= (y b12) (y b8))))
	(or (not (= (x b12) (x b9))) (not (= (y b12) (y b9))))
	(or (not (= (x b12) (x b13))) (not (= (y b12) (y b13))))
	(or (not (= (x b12) (x b14))) (not (= (y b12) (y b14))))
	(or (not (= (x b12) (x b15))) (not (= (y b12) (y b15))))
	(or (not (= (x b12) (x b16))) (not (= (y b12) (y b16))))
	(or (not (= (x b12) (x b17))) (not (= (y b12) (y b17))))
	(or (not (= (x b12) (x b18))) (not (= (y b12) (y b18))))
	(or (not (= (x b12) (x b19))) (not (= (y b12) (y b19))))
	(or (not (= (x b12) (x b20))) (not (= (y b12) (y b20))))
	(or (not (= (x b12) (x b21))) (not (= (y b12) (y b21))))
	(or (not (= (x b12) (x b22))) (not (= (y b12) (y b22))))
	(or (not (= (x b12) (x b23))) (not (= (y b12) (y b23))))
	(or (not (= (x b12) (x b24))) (not (= (y b12) (y b24))))
	(or (not (= (x b12) (x b25))) (not (= (y b12) (y b25))))
	(or (not (= (x b12) (x b26))) (not (= (y b12) (y b26))))
	(= (x b12) (x b27))
(= (y b12) (y b27))
	(or (not (= (x b12) (x b28))) (not (= (y b12) (y b28))))
	(or (not (= (x b12) (x b29))) (not (= (y b12) (y b29))))
	(or (not (= (x b12) (x b30))) (not (= (y b12) (y b30))))
	(or (not (= (x b12) (x b31))) (not (= (y b12) (y b31))))
	(or (not (= (x b12) (x b32))) (not (= (y b12) (y b32))))
	(or (not (= (x b12) (x b33))) (not (= (y b12) (y b33))))
	(or (not (= (x b12) (x b34))) (not (= (y b12) (y b34))))
	(or (not (= (x b12) (x b35))) (not (= (y b12) (y b35))))
	(= (x b13) (x b2))
(= (y b13) (y b2))
	(or (not (= (x b13) (x b3))) (not (= (y b13) (y b3))))
	(or (not (= (x b13) (x b4))) (not (= (y b13) (y b4))))
	(or (not (= (x b13) (x b5))) (not (= (y b13) (y b5))))
	(or (not (= (x b13) (x b6))) (not (= (y b13) (y b6))))
	(or (not (= (x b13) (x b7))) (not (= (y b13) (y b7))))
	(or (not (= (x b13) (x b8))) (not (= (y b13) (y b8))))
	(or (not (= (x b13) (x b9))) (not (= (y b13) (y b9))))
	(or (not (= (x b13) (x b14))) (not (= (y b13) (y b14))))
	(or (not (= (x b13) (x b15))) (not (= (y b13) (y b15))))
	(or (not (= (x b13) (x b16))) (not (= (y b13) (y b16))))
	(or (not (= (x b13) (x b17))) (not (= (y b13) (y b17))))
	(or (not (= (x b13) (x b18))) (not (= (y b13) (y b18))))
	(or (not (= (x b13) (x b19))) (not (= (y b13) (y b19))))
	(or (not (= (x b13) (x b20))) (not (= (y b13) (y b20))))
	(or (not (= (x b13) (x b21))) (not (= (y b13) (y b21))))
	(or (not (= (x b13) (x b22))) (not (= (y b13) (y b22))))
	(or (not (= (x b13) (x b23))) (not (= (y b13) (y b23))))
	(or (not (= (x b13) (x b24))) (not (= (y b13) (y b24))))
	(or (not (= (x b13) (x b25))) (not (= (y b13) (y b25))))
	(or (not (= (x b13) (x b26))) (not (= (y b13) (y b26))))
	(or (not (= (x b13) (x b27))) (not (= (y b13) (y b27))))
	(= (x b13) (x b28))
(= (y b13) (y b28))
	(or (not (= (x b13) (x b29))) (not (= (y b13) (y b29))))
	(or (not (= (x b13) (x b30))) (not (= (y b13) (y b30))))
	(or (not (= (x b13) (x b31))) (not (= (y b13) (y b31))))
	(or (not (= (x b13) (x b32))) (not (= (y b13) (y b32))))
	(or (not (= (x b13) (x b33))) (not (= (y b13) (y b33))))
	(or (not (= (x b13) (x b34))) (not (= (y b13) (y b34))))
	(or (not (= (x b13) (x b35))) (not (= (y b13) (y b35))))
	(or (not (= (x b14) (x b2))) (not (= (y b14) (y b2))))
	(or (not (= (x b14) (x b3))) (not (= (y b14) (y b3))))
	(or (not (= (x b14) (x b4))) (not (= (y b14) (y b4))))
	(or (not (= (x b14) (x b5))) (not (= (y b14) (y b5))))
	(or (not (= (x b14) (x b6))) (not (= (y b14) (y b6))))
	(or (not (= (x b14) (x b7))) (not (= (y b14) (y b7))))
	(or (not (= (x b14) (x b8))) (not (= (y b14) (y b8))))
	(or (not (= (x b14) (x b9))) (not (= (y b14) (y b9))))
	(or (not (= (x b14) (x b15))) (not (= (y b14) (y b15))))
	(or (not (= (x b14) (x b16))) (not (= (y b14) (y b16))))
	(or (not (= (x b14) (x b17))) (not (= (y b14) (y b17))))
	(or (not (= (x b14) (x b18))) (not (= (y b14) (y b18))))
	(or (not (= (x b14) (x b19))) (not (= (y b14) (y b19))))
	(or (not (= (x b14) (x b20))) (not (= (y b14) (y b20))))
	(or (not (= (x b14) (x b21))) (not (= (y b14) (y b21))))
	(or (not (= (x b14) (x b22))) (not (= (y b14) (y b22))))
	(or (not (= (x b14) (x b23))) (not (= (y b14) (y b23))))
	(or (not (= (x b14) (x b24))) (not (= (y b14) (y b24))))
	(or (not (= (x b14) (x b25))) (not (= (y b14) (y b25))))
	(or (not (= (x b14) (x b26))) (not (= (y b14) (y b26))))
	(or (not (= (x b14) (x b27))) (not (= (y b14) (y b27))))
	(or (not (= (x b14) (x b28))) (not (= (y b14) (y b28))))
	(= (x b14) (x b29))
(= (y b14) (y b29))
	(or (not (= (x b14) (x b30))) (not (= (y b14) (y b30))))
	(or (not (= (x b14) (x b31))) (not (= (y b14) (y b31))))
	(or (not (= (x b14) (x b32))) (not (= (y b14) (y b32))))
	(or (not (= (x b14) (x b33))) (not (= (y b14) (y b33))))
	(= (x b14) (x b34))
(= (y b14) (y b34))
	(or (not (= (x b14) (x b35))) (not (= (y b14) (y b35))))
	(or (not (= (x b15) (x b2))) (not (= (y b15) (y b2))))
	(or (not (= (x b15) (x b3))) (not (= (y b15) (y b3))))
	(or (not (= (x b15) (x b4))) (not (= (y b15) (y b4))))
	(= (x b15) (x b5))
(= (y b15) (y b5))
	(or (not (= (x b15) (x b6))) (not (= (y b15) (y b6))))
	(or (not (= (x b15) (x b7))) (not (= (y b15) (y b7))))
	(or (not (= (x b15) (x b8))) (not (= (y b15) (y b8))))
	(= (x b15) (x b9))
(= (y b15) (y b9))
	(or (not (= (x b15) (x b16))) (not (= (y b15) (y b16))))
	(or (not (= (x b15) (x b17))) (not (= (y b15) (y b17))))
	(or (not (= (x b15) (x b18))) (not (= (y b15) (y b18))))
	(or (not (= (x b15) (x b19))) (not (= (y b15) (y b19))))
	(or (not (= (x b15) (x b20))) (not (= (y b15) (y b20))))
	(or (not (= (x b15) (x b21))) (not (= (y b15) (y b21))))
	(or (not (= (x b15) (x b22))) (not (= (y b15) (y b22))))
	(or (not (= (x b15) (x b23))) (not (= (y b15) (y b23))))
	(or (not (= (x b15) (x b24))) (not (= (y b15) (y b24))))
	(or (not (= (x b15) (x b25))) (not (= (y b15) (y b25))))
	(or (not (= (x b15) (x b26))) (not (= (y b15) (y b26))))
	(or (not (= (x b15) (x b27))) (not (= (y b15) (y b27))))
	(or (not (= (x b15) (x b28))) (not (= (y b15) (y b28))))
	(or (not (= (x b15) (x b29))) (not (= (y b15) (y b29))))
	(or (not (= (x b15) (x b30))) (not (= (y b15) (y b30))))
	(or (not (= (x b15) (x b31))) (not (= (y b15) (y b31))))
	(= (x b15) (x b32))
(= (y b15) (y b32))
	(= (x b15) (x b33))
(= (y b15) (y b33))
	(or (not (= (x b15) (x b34))) (not (= (y b15) (y b34))))
	(= (x b15) (x b35))
(= (y b15) (y b35))
	(or (not (= (x b16) (x b2))) (not (= (y b16) (y b2))))
	(or (not (= (x b16) (x b3))) (not (= (y b16) (y b3))))
	(or (not (= (x b16) (x b4))) (not (= (y b16) (y b4))))
	(or (not (= (x b16) (x b5))) (not (= (y b16) (y b5))))
	(or (not (= (x b16) (x b6))) (not (= (y b16) (y b6))))
	(or (not (= (x b16) (x b7))) (not (= (y b16) (y b7))))
	(= (x b16) (x b8))
(= (y b16) (y b8))
	(or (not (= (x b16) (x b9))) (not (= (y b16) (y b9))))
	(= (x b16) (x b17))
(= (y b16) (y b17))
	(or (not (= (x b16) (x b18))) (not (= (y b16) (y b18))))
	(= (x b16) (x b19))
(= (y b16) (y b19))
	(or (not (= (x b16) (x b20))) (not (= (y b16) (y b20))))
	(or (not (= (x b16) (x b21))) (not (= (y b16) (y b21))))
	(or (not (= (x b16) (x b22))) (not (= (y b16) (y b22))))
	(or (not (= (x b16) (x b23))) (not (= (y b16) (y b23))))
	(or (not (= (x b16) (x b24))) (not (= (y b16) (y b24))))
	(= (x b16) (x b25))
(= (y b16) (y b25))
	(or (not (= (x b16) (x b26))) (not (= (y b16) (y b26))))
	(or (not (= (x b16) (x b27))) (not (= (y b16) (y b27))))
	(or (not (= (x b16) (x b28))) (not (= (y b16) (y b28))))
	(or (not (= (x b16) (x b29))) (not (= (y b16) (y b29))))
	(or (not (= (x b16) (x b30))) (not (= (y b16) (y b30))))
	(or (not (= (x b16) (x b31))) (not (= (y b16) (y b31))))
	(or (not (= (x b16) (x b32))) (not (= (y b16) (y b32))))
	(or (not (= (x b16) (x b33))) (not (= (y b16) (y b33))))
	(or (not (= (x b16) (x b34))) (not (= (y b16) (y b34))))
	(or (not (= (x b16) (x b35))) (not (= (y b16) (y b35))))
	(or (not (= (x b17) (x b2))) (not (= (y b17) (y b2))))
	(or (not (= (x b17) (x b3))) (not (= (y b17) (y b3))))
	(or (not (= (x b17) (x b4))) (not (= (y b17) (y b4))))
	(or (not (= (x b17) (x b5))) (not (= (y b17) (y b5))))
	(or (not (= (x b17) (x b6))) (not (= (y b17) (y b6))))
	(or (not (= (x b17) (x b7))) (not (= (y b17) (y b7))))
	(= (x b17) (x b8))
(= (y b17) (y b8))
	(or (not (= (x b17) (x b9))) (not (= (y b17) (y b9))))
	(or (not (= (x b17) (x b18))) (not (= (y b17) (y b18))))
	(= (x b17) (x b19))
(= (y b17) (y b19))
	(or (not (= (x b17) (x b20))) (not (= (y b17) (y b20))))
	(or (not (= (x b17) (x b21))) (not (= (y b17) (y b21))))
	(or (not (= (x b17) (x b22))) (not (= (y b17) (y b22))))
	(or (not (= (x b17) (x b23))) (not (= (y b17) (y b23))))
	(or (not (= (x b17) (x b24))) (not (= (y b17) (y b24))))
	(= (x b17) (x b25))
(= (y b17) (y b25))
	(or (not (= (x b17) (x b26))) (not (= (y b17) (y b26))))
	(or (not (= (x b17) (x b27))) (not (= (y b17) (y b27))))
	(or (not (= (x b17) (x b28))) (not (= (y b17) (y b28))))
	(or (not (= (x b17) (x b29))) (not (= (y b17) (y b29))))
	(or (not (= (x b17) (x b30))) (not (= (y b17) (y b30))))
	(or (not (= (x b17) (x b31))) (not (= (y b17) (y b31))))
	(or (not (= (x b17) (x b32))) (not (= (y b17) (y b32))))
	(or (not (= (x b17) (x b33))) (not (= (y b17) (y b33))))
	(or (not (= (x b17) (x b34))) (not (= (y b17) (y b34))))
	(or (not (= (x b17) (x b35))) (not (= (y b17) (y b35))))
	(or (not (= (x b18) (x b2))) (not (= (y b18) (y b2))))
	(or (not (= (x b18) (x b3))) (not (= (y b18) (y b3))))
	(or (not (= (x b18) (x b4))) (not (= (y b18) (y b4))))
	(or (not (= (x b18) (x b5))) (not (= (y b18) (y b5))))
	(or (not (= (x b18) (x b6))) (not (= (y b18) (y b6))))
	(or (not (= (x b18) (x b7))) (not (= (y b18) (y b7))))
	(or (not (= (x b18) (x b8))) (not (= (y b18) (y b8))))
	(or (not (= (x b18) (x b9))) (not (= (y b18) (y b9))))
	(or (not (= (x b18) (x b19))) (not (= (y b18) (y b19))))
	(or (not (= (x b18) (x b20))) (not (= (y b18) (y b20))))
	(= (x b18) (x b21))
(= (y b18) (y b21))
	(or (not (= (x b18) (x b22))) (not (= (y b18) (y b22))))
	(or (not (= (x b18) (x b23))) (not (= (y b18) (y b23))))
	(= (x b18) (x b24))
(= (y b18) (y b24))
	(or (not (= (x b18) (x b25))) (not (= (y b18) (y b25))))
	(or (not (= (x b18) (x b26))) (not (= (y b18) (y b26))))
	(or (not (= (x b18) (x b27))) (not (= (y b18) (y b27))))
	(or (not (= (x b18) (x b28))) (not (= (y b18) (y b28))))
	(or (not (= (x b18) (x b29))) (not (= (y b18) (y b29))))
	(= (x b18) (x b30))
(= (y b18) (y b30))
	(or (not (= (x b18) (x b31))) (not (= (y b18) (y b31))))
	(or (not (= (x b18) (x b32))) (not (= (y b18) (y b32))))
	(or (not (= (x b18) (x b33))) (not (= (y b18) (y b33))))
	(or (not (= (x b18) (x b34))) (not (= (y b18) (y b34))))
	(or (not (= (x b18) (x b35))) (not (= (y b18) (y b35))))
	(or (not (= (x b19) (x b2))) (not (= (y b19) (y b2))))
	(or (not (= (x b19) (x b3))) (not (= (y b19) (y b3))))
	(or (not (= (x b19) (x b4))) (not (= (y b19) (y b4))))
	(or (not (= (x b19) (x b5))) (not (= (y b19) (y b5))))
	(or (not (= (x b19) (x b6))) (not (= (y b19) (y b6))))
	(or (not (= (x b19) (x b7))) (not (= (y b19) (y b7))))
	(= (x b19) (x b8))
(= (y b19) (y b8))
	(or (not (= (x b19) (x b9))) (not (= (y b19) (y b9))))
	(or (not (= (x b19) (x b20))) (not (= (y b19) (y b20))))
	(or (not (= (x b19) (x b21))) (not (= (y b19) (y b21))))
	(or (not (= (x b19) (x b22))) (not (= (y b19) (y b22))))
	(or (not (= (x b19) (x b23))) (not (= (y b19) (y b23))))
	(or (not (= (x b19) (x b24))) (not (= (y b19) (y b24))))
	(= (x b19) (x b25))
(= (y b19) (y b25))
	(or (not (= (x b19) (x b26))) (not (= (y b19) (y b26))))
	(or (not (= (x b19) (x b27))) (not (= (y b19) (y b27))))
	(or (not (= (x b19) (x b28))) (not (= (y b19) (y b28))))
	(or (not (= (x b19) (x b29))) (not (= (y b19) (y b29))))
	(or (not (= (x b19) (x b30))) (not (= (y b19) (y b30))))
	(or (not (= (x b19) (x b31))) (not (= (y b19) (y b31))))
	(or (not (= (x b19) (x b32))) (not (= (y b19) (y b32))))
	(or (not (= (x b19) (x b33))) (not (= (y b19) (y b33))))
	(or (not (= (x b19) (x b34))) (not (= (y b19) (y b34))))
	(or (not (= (x b19) (x b35))) (not (= (y b19) (y b35))))
	(or (not (= (x b20) (x b3))) (not (= (y b20) (y b3))))
	(= (x b20) (x b4))
(= (y b20) (y b4))
	(or (not (= (x b20) (x b5))) (not (= (y b20) (y b5))))
	(or (not (= (x b20) (x b6))) (not (= (y b20) (y b6))))
	(= (x b20) (x b7))
(= (y b20) (y b7))
	(or (not (= (x b20) (x b8))) (not (= (y b20) (y b8))))
	(or (not (= (x b20) (x b9))) (not (= (y b20) (y b9))))
	(or (not (= (x b20) (x b21))) (not (= (y b20) (y b21))))
	(= (x b20) (x b22))
(= (y b20) (y b22))
	(or (not (= (x b20) (x b23))) (not (= (y b20) (y b23))))
	(or (not (= (x b20) (x b24))) (not (= (y b20) (y b24))))
	(or (not (= (x b20) (x b25))) (not (= (y b20) (y b25))))
	(or (not (= (x b20) (x b26))) (not (= (y b20) (y b26))))
	(or (not (= (x b20) (x b27))) (not (= (y b20) (y b27))))
	(or (not (= (x b20) (x b28))) (not (= (y b20) (y b28))))
	(or (not (= (x b20) (x b29))) (not (= (y b20) (y b29))))
	(or (not (= (x b20) (x b30))) (not (= (y b20) (y b30))))
	(or (not (= (x b20) (x b31))) (not (= (y b20) (y b31))))
	(or (not (= (x b20) (x b32))) (not (= (y b20) (y b32))))
	(or (not (= (x b20) (x b33))) (not (= (y b20) (y b33))))
	(or (not (= (x b20) (x b34))) (not (= (y b20) (y b34))))
	(or (not (= (x b20) (x b35))) (not (= (y b20) (y b35))))
	(or (not (= (x b21) (x b3))) (not (= (y b21) (y b3))))
	(or (not (= (x b21) (x b4))) (not (= (y b21) (y b4))))
	(or (not (= (x b21) (x b5))) (not (= (y b21) (y b5))))
	(or (not (= (x b21) (x b6))) (not (= (y b21) (y b6))))
	(or (not (= (x b21) (x b7))) (not (= (y b21) (y b7))))
	(or (not (= (x b21) (x b8))) (not (= (y b21) (y b8))))
	(or (not (= (x b21) (x b9))) (not (= (y b21) (y b9))))
	(or (not (= (x b21) (x b22))) (not (= (y b21) (y b22))))
	(or (not (= (x b21) (x b23))) (not (= (y b21) (y b23))))
	(= (x b21) (x b24))
(= (y b21) (y b24))
	(or (not (= (x b21) (x b25))) (not (= (y b21) (y b25))))
	(or (not (= (x b21) (x b26))) (not (= (y b21) (y b26))))
	(or (not (= (x b21) (x b27))) (not (= (y b21) (y b27))))
	(or (not (= (x b21) (x b28))) (not (= (y b21) (y b28))))
	(or (not (= (x b21) (x b29))) (not (= (y b21) (y b29))))
	(= (x b21) (x b30))
(= (y b21) (y b30))
	(or (not (= (x b21) (x b31))) (not (= (y b21) (y b31))))
	(or (not (= (x b21) (x b32))) (not (= (y b21) (y b32))))
	(or (not (= (x b21) (x b33))) (not (= (y b21) (y b33))))
	(or (not (= (x b21) (x b34))) (not (= (y b21) (y b34))))
	(or (not (= (x b21) (x b35))) (not (= (y b21) (y b35))))
	(or (not (= (x b22) (x b3))) (not (= (y b22) (y b3))))
	(= (x b22) (x b4))
(= (y b22) (y b4))
	(or (not (= (x b22) (x b5))) (not (= (y b22) (y b5))))
	(or (not (= (x b22) (x b6))) (not (= (y b22) (y b6))))
	(= (x b22) (x b7))
(= (y b22) (y b7))
	(or (not (= (x b22) (x b8))) (not (= (y b22) (y b8))))
	(or (not (= (x b22) (x b9))) (not (= (y b22) (y b9))))
	(or (not (= (x b22) (x b23))) (not (= (y b22) (y b23))))
	(or (not (= (x b22) (x b24))) (not (= (y b22) (y b24))))
	(or (not (= (x b22) (x b25))) (not (= (y b22) (y b25))))
	(or (not (= (x b22) (x b26))) (not (= (y b22) (y b26))))
	(or (not (= (x b22) (x b27))) (not (= (y b22) (y b27))))
	(or (not (= (x b22) (x b28))) (not (= (y b22) (y b28))))
	(or (not (= (x b22) (x b29))) (not (= (y b22) (y b29))))
	(or (not (= (x b22) (x b30))) (not (= (y b22) (y b30))))
	(or (not (= (x b22) (x b31))) (not (= (y b22) (y b31))))
	(or (not (= (x b22) (x b32))) (not (= (y b22) (y b32))))
	(or (not (= (x b22) (x b33))) (not (= (y b22) (y b33))))
	(or (not (= (x b22) (x b34))) (not (= (y b22) (y b34))))
	(or (not (= (x b22) (x b35))) (not (= (y b22) (y b35))))
	(= (x b23) (x b3))
(= (y b23) (y b3))
	(or (not (= (x b23) (x b4))) (not (= (y b23) (y b4))))
	(or (not (= (x b23) (x b5))) (not (= (y b23) (y b5))))
	(= (x b23) (x b6))
(= (y b23) (y b6))
	(or (not (= (x b23) (x b7))) (not (= (y b23) (y b7))))
	(or (not (= (x b23) (x b8))) (not (= (y b23) (y b8))))
	(or (not (= (x b23) (x b9))) (not (= (y b23) (y b9))))
	(or (not (= (x b23) (x b24))) (not (= (y b23) (y b24))))
	(or (not (= (x b23) (x b25))) (not (= (y b23) (y b25))))
	(= (x b23) (x b26))
(= (y b23) (y b26))
	(or (not (= (x b23) (x b27))) (not (= (y b23) (y b27))))
	(or (not (= (x b23) (x b28))) (not (= (y b23) (y b28))))
	(or (not (= (x b23) (x b29))) (not (= (y b23) (y b29))))
	(or (not (= (x b23) (x b30))) (not (= (y b23) (y b30))))
	(= (x b23) (x b31))
(= (y b23) (y b31))
	(or (not (= (x b23) (x b32))) (not (= (y b23) (y b32))))
	(or (not (= (x b23) (x b33))) (not (= (y b23) (y b33))))
	(or (not (= (x b23) (x b34))) (not (= (y b23) (y b34))))
	(or (not (= (x b23) (x b35))) (not (= (y b23) (y b35))))
	(or (not (= (x b24) (x b3))) (not (= (y b24) (y b3))))
	(or (not (= (x b24) (x b4))) (not (= (y b24) (y b4))))
	(or (not (= (x b24) (x b5))) (not (= (y b24) (y b5))))
	(or (not (= (x b24) (x b6))) (not (= (y b24) (y b6))))
	(or (not (= (x b24) (x b7))) (not (= (y b24) (y b7))))
	(or (not (= (x b24) (x b8))) (not (= (y b24) (y b8))))
	(or (not (= (x b24) (x b9))) (not (= (y b24) (y b9))))
	(or (not (= (x b24) (x b25))) (not (= (y b24) (y b25))))
	(or (not (= (x b24) (x b26))) (not (= (y b24) (y b26))))
	(or (not (= (x b24) (x b27))) (not (= (y b24) (y b27))))
	(or (not (= (x b24) (x b28))) (not (= (y b24) (y b28))))
	(or (not (= (x b24) (x b29))) (not (= (y b24) (y b29))))
	(= (x b24) (x b30))
(= (y b24) (y b30))
	(or (not (= (x b24) (x b31))) (not (= (y b24) (y b31))))
	(or (not (= (x b24) (x b32))) (not (= (y b24) (y b32))))
	(or (not (= (x b24) (x b33))) (not (= (y b24) (y b33))))
	(or (not (= (x b24) (x b34))) (not (= (y b24) (y b34))))
	(or (not (= (x b24) (x b35))) (not (= (y b24) (y b35))))
	(or (not (= (x b25) (x b3))) (not (= (y b25) (y b3))))
	(or (not (= (x b25) (x b4))) (not (= (y b25) (y b4))))
	(or (not (= (x b25) (x b5))) (not (= (y b25) (y b5))))
	(or (not (= (x b25) (x b6))) (not (= (y b25) (y b6))))
	(or (not (= (x b25) (x b7))) (not (= (y b25) (y b7))))
	(= (x b25) (x b8))
(= (y b25) (y b8))
	(or (not (= (x b25) (x b9))) (not (= (y b25) (y b9))))
	(or (not (= (x b25) (x b26))) (not (= (y b25) (y b26))))
	(or (not (= (x b25) (x b27))) (not (= (y b25) (y b27))))
	(or (not (= (x b25) (x b28))) (not (= (y b25) (y b28))))
	(or (not (= (x b25) (x b29))) (not (= (y b25) (y b29))))
	(or (not (= (x b25) (x b30))) (not (= (y b25) (y b30))))
	(or (not (= (x b25) (x b31))) (not (= (y b25) (y b31))))
	(or (not (= (x b25) (x b32))) (not (= (y b25) (y b32))))
	(or (not (= (x b25) (x b33))) (not (= (y b25) (y b33))))
	(or (not (= (x b25) (x b34))) (not (= (y b25) (y b34))))
	(or (not (= (x b25) (x b35))) (not (= (y b25) (y b35))))
	(= (x b26) (x b3))
(= (y b26) (y b3))
	(or (not (= (x b26) (x b4))) (not (= (y b26) (y b4))))
	(or (not (= (x b26) (x b5))) (not (= (y b26) (y b5))))
	(= (x b26) (x b6))
(= (y b26) (y b6))
	(or (not (= (x b26) (x b7))) (not (= (y b26) (y b7))))
	(or (not (= (x b26) (x b8))) (not (= (y b26) (y b8))))
	(or (not (= (x b26) (x b9))) (not (= (y b26) (y b9))))
	(or (not (= (x b26) (x b27))) (not (= (y b26) (y b27))))
	(or (not (= (x b26) (x b28))) (not (= (y b26) (y b28))))
	(or (not (= (x b26) (x b29))) (not (= (y b26) (y b29))))
	(or (not (= (x b26) (x b30))) (not (= (y b26) (y b30))))
	(= (x b26) (x b31))
(= (y b26) (y b31))
	(or (not (= (x b26) (x b32))) (not (= (y b26) (y b32))))
	(or (not (= (x b26) (x b33))) (not (= (y b26) (y b33))))
	(or (not (= (x b26) (x b34))) (not (= (y b26) (y b34))))
	(or (not (= (x b26) (x b35))) (not (= (y b26) (y b35))))
	(or (not (= (x b27) (x b3))) (not (= (y b27) (y b3))))
	(or (not (= (x b27) (x b4))) (not (= (y b27) (y b4))))
	(or (not (= (x b27) (x b5))) (not (= (y b27) (y b5))))
	(or (not (= (x b27) (x b6))) (not (= (y b27) (y b6))))
	(or (not (= (x b27) (x b7))) (not (= (y b27) (y b7))))
	(or (not (= (x b27) (x b8))) (not (= (y b27) (y b8))))
	(or (not (= (x b27) (x b9))) (not (= (y b27) (y b9))))
	(or (not (= (x b27) (x b28))) (not (= (y b27) (y b28))))
	(or (not (= (x b27) (x b29))) (not (= (y b27) (y b29))))
	(or (not (= (x b27) (x b30))) (not (= (y b27) (y b30))))
	(or (not (= (x b27) (x b31))) (not (= (y b27) (y b31))))
	(or (not (= (x b27) (x b32))) (not (= (y b27) (y b32))))
	(or (not (= (x b27) (x b33))) (not (= (y b27) (y b33))))
	(or (not (= (x b27) (x b34))) (not (= (y b27) (y b34))))
	(or (not (= (x b27) (x b35))) (not (= (y b27) (y b35))))
	(or (not (= (x b28) (x b3))) (not (= (y b28) (y b3))))
	(or (not (= (x b28) (x b4))) (not (= (y b28) (y b4))))
	(or (not (= (x b28) (x b5))) (not (= (y b28) (y b5))))
	(or (not (= (x b28) (x b6))) (not (= (y b28) (y b6))))
	(or (not (= (x b28) (x b7))) (not (= (y b28) (y b7))))
	(or (not (= (x b28) (x b8))) (not (= (y b28) (y b8))))
	(or (not (= (x b28) (x b9))) (not (= (y b28) (y b9))))
	(or (not (= (x b28) (x b29))) (not (= (y b28) (y b29))))
	(or (not (= (x b28) (x b30))) (not (= (y b28) (y b30))))
	(or (not (= (x b28) (x b31))) (not (= (y b28) (y b31))))
	(or (not (= (x b28) (x b32))) (not (= (y b28) (y b32))))
	(or (not (= (x b28) (x b33))) (not (= (y b28) (y b33))))
	(or (not (= (x b28) (x b34))) (not (= (y b28) (y b34))))
	(or (not (= (x b28) (x b35))) (not (= (y b28) (y b35))))
	(or (not (= (x b29) (x b3))) (not (= (y b29) (y b3))))
	(or (not (= (x b29) (x b4))) (not (= (y b29) (y b4))))
	(or (not (= (x b29) (x b5))) (not (= (y b29) (y b5))))
	(or (not (= (x b29) (x b6))) (not (= (y b29) (y b6))))
	(or (not (= (x b29) (x b7))) (not (= (y b29) (y b7))))
	(or (not (= (x b29) (x b8))) (not (= (y b29) (y b8))))
	(or (not (= (x b29) (x b9))) (not (= (y b29) (y b9))))
	(or (not (= (x b29) (x b30))) (not (= (y b29) (y b30))))
	(or (not (= (x b29) (x b31))) (not (= (y b29) (y b31))))
	(or (not (= (x b29) (x b32))) (not (= (y b29) (y b32))))
	(or (not (= (x b29) (x b33))) (not (= (y b29) (y b33))))
	(= (x b29) (x b34))
(= (y b29) (y b34))
	(or (not (= (x b29) (x b35))) (not (= (y b29) (y b35))))
	(or (not (= (x b30) (x b4))) (not (= (y b30) (y b4))))
	(or (not (= (x b30) (x b5))) (not (= (y b30) (y b5))))
	(or (not (= (x b30) (x b6))) (not (= (y b30) (y b6))))
	(or (not (= (x b30) (x b7))) (not (= (y b30) (y b7))))
	(or (not (= (x b30) (x b8))) (not (= (y b30) (y b8))))
	(or (not (= (x b30) (x b9))) (not (= (y b30) (y b9))))
	(or (not (= (x b30) (x b31))) (not (= (y b30) (y b31))))
	(or (not (= (x b30) (x b32))) (not (= (y b30) (y b32))))
	(or (not (= (x b30) (x b33))) (not (= (y b30) (y b33))))
	(or (not (= (x b30) (x b34))) (not (= (y b30) (y b34))))
	(or (not (= (x b30) (x b35))) (not (= (y b30) (y b35))))
	(or (not (= (x b31) (x b4))) (not (= (y b31) (y b4))))
	(or (not (= (x b31) (x b5))) (not (= (y b31) (y b5))))
	(= (x b31) (x b6))
(= (y b31) (y b6))
	(or (not (= (x b31) (x b7))) (not (= (y b31) (y b7))))
	(or (not (= (x b31) (x b8))) (not (= (y b31) (y b8))))
	(or (not (= (x b31) (x b9))) (not (= (y b31) (y b9))))
	(or (not (= (x b31) (x b32))) (not (= (y b31) (y b32))))
	(or (not (= (x b31) (x b33))) (not (= (y b31) (y b33))))
	(or (not (= (x b31) (x b34))) (not (= (y b31) (y b34))))
	(or (not (= (x b31) (x b35))) (not (= (y b31) (y b35))))
	(or (not (= (x b32) (x b4))) (not (= (y b32) (y b4))))
	(= (x b32) (x b5))
(= (y b32) (y b5))
	(or (not (= (x b32) (x b6))) (not (= (y b32) (y b6))))
	(or (not (= (x b32) (x b7))) (not (= (y b32) (y b7))))
	(or (not (= (x b32) (x b8))) (not (= (y b32) (y b8))))
	(= (x b32) (x b9))
(= (y b32) (y b9))
	(= (x b32) (x b33))
(= (y b32) (y b33))
	(or (not (= (x b32) (x b34))) (not (= (y b32) (y b34))))
	(= (x b32) (x b35))
(= (y b32) (y b35))
	(or (not (= (x b33) (x b4))) (not (= (y b33) (y b4))))
	(= (x b33) (x b5))
(= (y b33) (y b5))
	(or (not (= (x b33) (x b6))) (not (= (y b33) (y b6))))
	(or (not (= (x b33) (x b7))) (not (= (y b33) (y b7))))
	(or (not (= (x b33) (x b8))) (not (= (y b33) (y b8))))
	(= (x b33) (x b9))
(= (y b33) (y b9))
	(or (not (= (x b33) (x b34))) (not (= (y b33) (y b34))))
	(= (x b33) (x b35))
(= (y b33) (y b35))
	(or (not (= (x b34) (x b4))) (not (= (y b34) (y b4))))
	(or (not (= (x b34) (x b5))) (not (= (y b34) (y b5))))
	(or (not (= (x b34) (x b6))) (not (= (y b34) (y b6))))
	(or (not (= (x b34) (x b7))) (not (= (y b34) (y b7))))
	(or (not (= (x b34) (x b8))) (not (= (y b34) (y b8))))
	(or (not (= (x b34) (x b9))) (not (= (y b34) (y b9))))
	(or (not (= (x b34) (x b35))) (not (= (y b34) (y b35))))
	(or (not (= (x b35) (x b4))) (not (= (y b35) (y b4))))
	(= (x b35) (x b5))
(= (y b35) (y b5))
	(or (not (= (x b35) (x b6))) (not (= (y b35) (y b6))))
	(or (not (= (x b35) (x b7))) (not (= (y b35) (y b7))))
	(or (not (= (x b35) (x b8))) (not (= (y b35) (y b8))))
	(= (x b35) (x b9))
(= (y b35) (y b9))
  ))

  
  

  
)
