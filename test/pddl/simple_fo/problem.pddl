(define (problem test1) (:domain simple)

(:objects
    v1 v2
)

(:init
    (= (x v1) -5)
    (= (x v2) -5)
)

(:goal (and
    (>= (x v1) 0)
    (>= (x v2) 0)
))

)
