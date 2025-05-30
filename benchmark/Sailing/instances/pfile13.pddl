;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
;;Setting seed to 1229
(define (problem instance451229)

	(:domain sailing)

	(:objects
		b0 b1 b2 b3  - boat
		p0 p1 p2 p3 p4  - person
	)

  (:init
		(= (x b0) -14)
(= (y b0) 0)
(= (x b1) -4)
(= (y b1) 0)
(= (x b2) 0)
(= (y b2) 0)
(= (x b3) -10)
(= (y b3) 0)


		(= (d p0) -740)
(= (d p1) -116)
(= (d p2) 126)
(= (d p3) 966)
(= (d p4) 446)


	)

	(:goal
		(and
			(saved p0)
(saved p1)
(saved p2)
(saved p3)
(saved p4)

		)
	)
)


