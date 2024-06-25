;Header and description

(define (domain simple)

;remove requirements that are not needed
(:requirements :adl :numeric-fluents)

(:predicates
    (b)
)

(:functions ;todo: define numeric functions here

    (x ?v)
)


(:action increase_x
    :parameters (?v)
    :precondition (and )
    :effect (and (increase (x ?v) 1))
)


)