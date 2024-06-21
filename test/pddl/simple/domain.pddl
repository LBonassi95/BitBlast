;Header and description

(define (domain simple)

;remove requirements that are not needed
(:requirements :adl :numeric-fluents)



(:functions ;todo: define numeric functions here

    (x)
)


(:action increase_x
    :parameters ()
    :precondition (and )
    :effect (and (increase (x) 1))
)


)