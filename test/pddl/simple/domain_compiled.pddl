(define (domain compiled-domain)
  (:requirements :strips :negative-preconditions :disjunctive-preconditions :conditional-effects)
  (:predicates
    (x_0)
    (x_1)
    (x_2)
    (x_3)
    (q0_0)
    (q0_1)
    (q0_2)
    (q0_3)
  )
  (:action increase_x
    :parameters ()
    :effect (and (when
        (or (and (x_0) (not (q0_0))) (and (q0_0) (not (x_0))))
        (x_0)) (when
        (not (or (and (x_0) (not (q0_0))) (and (q0_0) (not (x_0)))))
        (not (x_0))) (when
        (or (and (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))) (not (and (x_0) (q0_0)))) (and (x_0) (q0_0) (not (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))))
        (x_1)) (when
        (not (or (and (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))) (not (and (x_0) (q0_0)))) (and (x_0) (q0_0) (not (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1))))))))
        (not (x_1))) (when
        (or (and (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))) (not (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))))) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (not (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))))))
        (x_2)) (when
        (not (or (and (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))) (not (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))))) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (not (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2))))))))
        (not (x_2))) (when
        (or (and (or (and (x_3) (not (q0_3))) (and (q0_3) (not (x_3)))) (not (or (and (x_2) (q0_2)) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))))))) (and (or (and (x_2) (q0_2)) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))))) (not (or (and (x_3) (not (q0_3))) (and (q0_3) (not (x_3)))))))
        (x_3)) (when
        (not (or (and (or (and (x_3) (not (q0_3))) (and (q0_3) (not (x_3)))) (not (or (and (x_2) (q0_2)) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))))))) (and (or (and (x_2) (q0_2)) (and (or (and (x_1) (q0_1)) (and (x_0) (q0_0) (or (and (x_1) (not (q0_1))) (and (q0_1) (not (x_1)))))) (or (and (x_2) (not (q0_2))) (and (q0_2) (not (x_2)))))) (not (or (and (x_3) (not (q0_3))) (and (q0_3) (not (x_3))))))))
        (not (x_3))))
  )
)