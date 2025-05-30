;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance20521)
  (:domain mt-block-grouping)
  (:objects
    b1 b2 b3 b4 b5 - block
  )

  (:init
    (= (x b3) 17)
	(= (y b3) 14)
	(= (x b4) 17)
	(= (y b4) 8)
	(= (x b2) 19)
	(= (y b2) 5)
	(= (x b1) 20)
	(= (y b1) 14)
	(= (x b5) 5)
	(= (y b5) 5)
	(= (maxx) 20 )
	(= (minx) 1 )
	(= (maxy) 20 )
	(= (miny) 1 )
  )

  (:goal (and 
    (= (x b1) (x b2))
(= (y b1) (y b2))
	(= (x b1) (x b3))
(= (y b1) (y b3))
	(= (x b1) (x b4))
(= (y b1) (y b4))
	(or (not (= (x b1) (x b5))) (not (= (y b1) (y b5))))
	(= (x b2) (x b3))
(= (y b2) (y b3))
	(= (x b2) (x b4))
(= (y b2) (y b4))
	(or (not (= (x b2) (x b5))) (not (= (y b2) (y b5))))
	(= (x b3) (x b4))
(= (y b3) (y b4))
	(or (not (= (x b3) (x b5))) (not (= (y b3) (y b5))))
	(or (not (= (x b4) (x b5))) (not (= (y b4) (y b5))))
  ))

  
  

  
)
