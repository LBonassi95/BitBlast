(define (problem test1) (:domain simple)

(:objects
    v1 v2 - prop
    k1 k2 - num
)

(:init
    (= (x k1) -5)
    (= (x k2) -5)
    (= (total-cost) 0)
)

(:goal (and
    (>= (x k1) 0)
    (>= (x k2) 0)
))

(:metric minimize (total-cost))

)
