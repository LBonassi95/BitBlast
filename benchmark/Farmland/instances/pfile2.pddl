;;Setting seed to 1229
;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance23001229ladder)
	(:domain farmland)
	(:objects
		farm0 farm1  - farm
	)
  (:init
		(= (x farm0) 300)
		(= (x farm1) 1)
		
		(adj farm0 farm1)
		(adj farm1 farm0)
		
		(= (cost) 0)
	)
	(:goal
		(and
			(>= (x farm0) 1)
			(>= (x farm1) 1)
			
			(>= (+ (* 10 (x farm0))(+ (* 17 (x farm1)) 0)) 4200)
		)
	)
)


