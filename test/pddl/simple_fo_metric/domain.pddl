;Header and description

(define (domain simple)

;remove requirements that are not needed
(:requirements :adl :numeric-fluents)

(:types
    num prop
)


(:predicates
    (b ?v - prop)
)

(:functions ;todo: define numeric functions here

    (x ?k - num)
    (total-cost)
)

(:action do_b
    :parameters (?v - prop)
    :effect (and (b ?v))
)


(:action increase_x_expensive
    :parameters (?v - prop ?k - num)
    :precondition (and (b ?v))
    :effect (and (increase (x ?k) 1)
                 (increase (total-cost) 2))
)

(:action increase_x
    :parameters (?v - prop ?k - num)
    :precondition (and (b ?v))
    :effect (and (increase (x ?k) 1)
                 (increase (total-cost) 1))
)


)