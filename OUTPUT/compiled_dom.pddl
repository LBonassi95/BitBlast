(define (domain compiledproblem-domain)
 (:types portable location)
 (:constants
   l0 l8 l3 l2 l5 l9 l4 l6 l7 l1 - location
   o2 o8 o6 o5 o0 o4 o3 o7 o1 - portable
 )
 (:functions (at_x ?y - portable ?x - location) (in_x ?x_0 - portable) (is_at_x ?x - location))
 (:action move_l5_l0
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l1
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l2
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l3
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l4
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l5
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l6
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l7
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l8
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l5_l9
  :parameters ()
  :precondition (and (= (is_at_x l5) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l5) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l5) (* (at_x o0 l5) (- 1 (in_x o0)))) (assign (at_x o1 l5) (* (at_x o1 l5) (- 1 (in_x o1)))) (assign (at_x o2 l5) (* (at_x o2 l5) (- 1 (in_x o2)))) (assign (at_x o3 l5) (* (at_x o3 l5) (- 1 (in_x o3)))) (assign (at_x o4 l5) (* (at_x o4 l5) (- 1 (in_x o4)))) (assign (at_x o5 l5) (* (at_x o5 l5) (- 1 (in_x o5)))) (assign (at_x o6 l5) (* (at_x o6 l5) (- 1 (in_x o6)))) (assign (at_x o7 l5) (* (at_x o7 l5) (- 1 (in_x o7)))) (assign (at_x o8 l5) (* (at_x o8 l5) (- 1 (in_x o8))))))
 (:action move_l0_l0
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l1
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l2
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l3
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l4
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l5
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l6
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l7
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l8
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l0_l9
  :parameters ()
  :precondition (and (= (is_at_x l0) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l0) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l0) (* (at_x o0 l0) (- 1 (in_x o0)))) (assign (at_x o1 l0) (* (at_x o1 l0) (- 1 (in_x o1)))) (assign (at_x o2 l0) (* (at_x o2 l0) (- 1 (in_x o2)))) (assign (at_x o3 l0) (* (at_x o3 l0) (- 1 (in_x o3)))) (assign (at_x o4 l0) (* (at_x o4 l0) (- 1 (in_x o4)))) (assign (at_x o5 l0) (* (at_x o5 l0) (- 1 (in_x o5)))) (assign (at_x o6 l0) (* (at_x o6 l0) (- 1 (in_x o6)))) (assign (at_x o7 l0) (* (at_x o7 l0) (- 1 (in_x o7)))) (assign (at_x o8 l0) (* (at_x o8 l0) (- 1 (in_x o8))))))
 (:action move_l1_l0
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l1
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l2
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l3
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l4
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l5
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l6
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l7
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l8
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l1_l9
  :parameters ()
  :precondition (and (= (is_at_x l1) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l1) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l1) (* (at_x o0 l1) (- 1 (in_x o0)))) (assign (at_x o1 l1) (* (at_x o1 l1) (- 1 (in_x o1)))) (assign (at_x o2 l1) (* (at_x o2 l1) (- 1 (in_x o2)))) (assign (at_x o3 l1) (* (at_x o3 l1) (- 1 (in_x o3)))) (assign (at_x o4 l1) (* (at_x o4 l1) (- 1 (in_x o4)))) (assign (at_x o5 l1) (* (at_x o5 l1) (- 1 (in_x o5)))) (assign (at_x o6 l1) (* (at_x o6 l1) (- 1 (in_x o6)))) (assign (at_x o7 l1) (* (at_x o7 l1) (- 1 (in_x o7)))) (assign (at_x o8 l1) (* (at_x o8 l1) (- 1 (in_x o8))))))
 (:action move_l2_l0
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l1
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l2
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l3
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l4
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l5
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l6
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l7
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l8
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l2_l9
  :parameters ()
  :precondition (and (= (is_at_x l2) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l2) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l2) (* (at_x o0 l2) (- 1 (in_x o0)))) (assign (at_x o1 l2) (* (at_x o1 l2) (- 1 (in_x o1)))) (assign (at_x o2 l2) (* (at_x o2 l2) (- 1 (in_x o2)))) (assign (at_x o3 l2) (* (at_x o3 l2) (- 1 (in_x o3)))) (assign (at_x o4 l2) (* (at_x o4 l2) (- 1 (in_x o4)))) (assign (at_x o5 l2) (* (at_x o5 l2) (- 1 (in_x o5)))) (assign (at_x o6 l2) (* (at_x o6 l2) (- 1 (in_x o6)))) (assign (at_x o7 l2) (* (at_x o7 l2) (- 1 (in_x o7)))) (assign (at_x o8 l2) (* (at_x o8 l2) (- 1 (in_x o8))))))
 (:action move_l3_l0
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l1
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l2
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l3
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l4
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l5
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l6
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l7
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l8
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l3_l9
  :parameters ()
  :precondition (and (= (is_at_x l3) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l3) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l3) (* (at_x o0 l3) (- 1 (in_x o0)))) (assign (at_x o1 l3) (* (at_x o1 l3) (- 1 (in_x o1)))) (assign (at_x o2 l3) (* (at_x o2 l3) (- 1 (in_x o2)))) (assign (at_x o3 l3) (* (at_x o3 l3) (- 1 (in_x o3)))) (assign (at_x o4 l3) (* (at_x o4 l3) (- 1 (in_x o4)))) (assign (at_x o5 l3) (* (at_x o5 l3) (- 1 (in_x o5)))) (assign (at_x o6 l3) (* (at_x o6 l3) (- 1 (in_x o6)))) (assign (at_x o7 l3) (* (at_x o7 l3) (- 1 (in_x o7)))) (assign (at_x o8 l3) (* (at_x o8 l3) (- 1 (in_x o8))))))
 (:action move_l4_l0
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l1
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l2
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l3
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l4
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l5
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l6
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l7
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l8
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l4_l9
  :parameters ()
  :precondition (and (= (is_at_x l4) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l4) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l4) (* (at_x o0 l4) (- 1 (in_x o0)))) (assign (at_x o1 l4) (* (at_x o1 l4) (- 1 (in_x o1)))) (assign (at_x o2 l4) (* (at_x o2 l4) (- 1 (in_x o2)))) (assign (at_x o3 l4) (* (at_x o3 l4) (- 1 (in_x o3)))) (assign (at_x o4 l4) (* (at_x o4 l4) (- 1 (in_x o4)))) (assign (at_x o5 l4) (* (at_x o5 l4) (- 1 (in_x o5)))) (assign (at_x o6 l4) (* (at_x o6 l4) (- 1 (in_x o6)))) (assign (at_x o7 l4) (* (at_x o7 l4) (- 1 (in_x o7)))) (assign (at_x o8 l4) (* (at_x o8 l4) (- 1 (in_x o8))))))
 (:action move_l6_l0
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l1
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l2
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l3
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l4
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l5
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l6
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l7
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l8
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l6_l9
  :parameters ()
  :precondition (and (= (is_at_x l6) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l6) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l6) (* (at_x o0 l6) (- 1 (in_x o0)))) (assign (at_x o1 l6) (* (at_x o1 l6) (- 1 (in_x o1)))) (assign (at_x o2 l6) (* (at_x o2 l6) (- 1 (in_x o2)))) (assign (at_x o3 l6) (* (at_x o3 l6) (- 1 (in_x o3)))) (assign (at_x o4 l6) (* (at_x o4 l6) (- 1 (in_x o4)))) (assign (at_x o5 l6) (* (at_x o5 l6) (- 1 (in_x o5)))) (assign (at_x o6 l6) (* (at_x o6 l6) (- 1 (in_x o6)))) (assign (at_x o7 l6) (* (at_x o7 l6) (- 1 (in_x o7)))) (assign (at_x o8 l6) (* (at_x o8 l6) (- 1 (in_x o8))))))
 (:action move_l7_l0
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l1
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l2
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l3
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l4
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l5
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l6
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l7
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l8
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l7_l9
  :parameters ()
  :precondition (and (= (is_at_x l7) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l7) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l7) (* (at_x o0 l7) (- 1 (in_x o0)))) (assign (at_x o1 l7) (* (at_x o1 l7) (- 1 (in_x o1)))) (assign (at_x o2 l7) (* (at_x o2 l7) (- 1 (in_x o2)))) (assign (at_x o3 l7) (* (at_x o3 l7) (- 1 (in_x o3)))) (assign (at_x o4 l7) (* (at_x o4 l7) (- 1 (in_x o4)))) (assign (at_x o5 l7) (* (at_x o5 l7) (- 1 (in_x o5)))) (assign (at_x o6 l7) (* (at_x o6 l7) (- 1 (in_x o6)))) (assign (at_x o7 l7) (* (at_x o7 l7) (- 1 (in_x o7)))) (assign (at_x o8 l7) (* (at_x o8 l7) (- 1 (in_x o8))))))
 (:action move_l8_l0
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l1
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l2
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l3
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l4
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l5
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l6
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l7
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l8
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l8_l9
  :parameters ()
  :precondition (and (= (is_at_x l8) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l8) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l8) (* (at_x o0 l8) (- 1 (in_x o0)))) (assign (at_x o1 l8) (* (at_x o1 l8) (- 1 (in_x o1)))) (assign (at_x o2 l8) (* (at_x o2 l8) (- 1 (in_x o2)))) (assign (at_x o3 l8) (* (at_x o3 l8) (- 1 (in_x o3)))) (assign (at_x o4 l8) (* (at_x o4 l8) (- 1 (in_x o4)))) (assign (at_x o5 l8) (* (at_x o5 l8) (- 1 (in_x o5)))) (assign (at_x o6 l8) (* (at_x o6 l8) (- 1 (in_x o6)))) (assign (at_x o7 l8) (* (at_x o7 l8) (- 1 (in_x o7)))) (assign (at_x o8 l8) (* (at_x o8 l8) (- 1 (in_x o8))))))
 (:action move_l9_l0
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l0) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l0) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l0))))) (assign (at_x o1 l0) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l0))))) (assign (at_x o2 l0) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l0))))) (assign (at_x o3 l0) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l0))))) (assign (at_x o4 l0) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l0))))) (assign (at_x o5 l0) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l0))))) (assign (at_x o6 l0) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l0))))) (assign (at_x o7 l0) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l0))))) (assign (at_x o8 l0) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l0))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l1
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l1) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l1) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l1))))) (assign (at_x o1 l1) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l1))))) (assign (at_x o2 l1) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l1))))) (assign (at_x o3 l1) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l1))))) (assign (at_x o4 l1) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l1))))) (assign (at_x o5 l1) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l1))))) (assign (at_x o6 l1) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l1))))) (assign (at_x o7 l1) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l1))))) (assign (at_x o8 l1) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l1))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l2
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l2) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l2) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l2))))) (assign (at_x o1 l2) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l2))))) (assign (at_x o2 l2) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l2))))) (assign (at_x o3 l2) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l2))))) (assign (at_x o4 l2) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l2))))) (assign (at_x o5 l2) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l2))))) (assign (at_x o6 l2) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l2))))) (assign (at_x o7 l2) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l2))))) (assign (at_x o8 l2) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l2))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l3
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l3) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l3) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l3))))) (assign (at_x o1 l3) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l3))))) (assign (at_x o2 l3) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l3))))) (assign (at_x o3 l3) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l3))))) (assign (at_x o4 l3) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l3))))) (assign (at_x o5 l3) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l3))))) (assign (at_x o6 l3) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l3))))) (assign (at_x o7 l3) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l3))))) (assign (at_x o8 l3) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l3))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l4
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l4) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l4) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l4))))) (assign (at_x o1 l4) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l4))))) (assign (at_x o2 l4) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l4))))) (assign (at_x o3 l4) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l4))))) (assign (at_x o4 l4) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l4))))) (assign (at_x o5 l4) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l4))))) (assign (at_x o6 l4) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l4))))) (assign (at_x o7 l4) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l4))))) (assign (at_x o8 l4) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l4))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l5
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l5) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l5) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l5))))) (assign (at_x o1 l5) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l5))))) (assign (at_x o2 l5) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l5))))) (assign (at_x o3 l5) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l5))))) (assign (at_x o4 l5) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l5))))) (assign (at_x o5 l5) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l5))))) (assign (at_x o6 l5) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l5))))) (assign (at_x o7 l5) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l5))))) (assign (at_x o8 l5) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l5))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l6
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l6) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l6) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l6))))) (assign (at_x o1 l6) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l6))))) (assign (at_x o2 l6) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l6))))) (assign (at_x o3 l6) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l6))))) (assign (at_x o4 l6) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l6))))) (assign (at_x o5 l6) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l6))))) (assign (at_x o6 l6) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l6))))) (assign (at_x o7 l6) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l6))))) (assign (at_x o8 l6) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l6))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l7
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l7) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l7) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l7))))) (assign (at_x o1 l7) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l7))))) (assign (at_x o2 l7) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l7))))) (assign (at_x o3 l7) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l7))))) (assign (at_x o4 l7) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l7))))) (assign (at_x o5 l7) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l7))))) (assign (at_x o6 l7) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l7))))) (assign (at_x o7 l7) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l7))))) (assign (at_x o8 l7) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l7))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l8
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l8) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l8) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l8))))) (assign (at_x o1 l8) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l8))))) (assign (at_x o2 l8) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l8))))) (assign (at_x o3 l8) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l8))))) (assign (at_x o4 l8) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l8))))) (assign (at_x o5 l8) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l8))))) (assign (at_x o6 l8) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l8))))) (assign (at_x o7 l8) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l8))))) (assign (at_x o8 l8) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l8))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action move_l9_l9
  :parameters ()
  :precondition (and (= (is_at_x l9) 1))
  :effect (and (assign (is_at_x l9) 1) (assign (is_at_x l9) 0) (assign (at_x o0 l9) (- 1 (* (- 1 (in_x o0)) (- 1 (at_x o0 l9))))) (assign (at_x o1 l9) (- 1 (* (- 1 (in_x o1)) (- 1 (at_x o1 l9))))) (assign (at_x o2 l9) (- 1 (* (- 1 (in_x o2)) (- 1 (at_x o2 l9))))) (assign (at_x o3 l9) (- 1 (* (- 1 (in_x o3)) (- 1 (at_x o3 l9))))) (assign (at_x o4 l9) (- 1 (* (- 1 (in_x o4)) (- 1 (at_x o4 l9))))) (assign (at_x o5 l9) (- 1 (* (- 1 (in_x o5)) (- 1 (at_x o5 l9))))) (assign (at_x o6 l9) (- 1 (* (- 1 (in_x o6)) (- 1 (at_x o6 l9))))) (assign (at_x o7 l9) (- 1 (* (- 1 (in_x o7)) (- 1 (at_x o7 l9))))) (assign (at_x o8 l9) (- 1 (* (- 1 (in_x o8)) (- 1 (at_x o8 l9))))) (assign (at_x o0 l9) (* (at_x o0 l9) (- 1 (in_x o0)))) (assign (at_x o1 l9) (* (at_x o1 l9) (- 1 (in_x o1)))) (assign (at_x o2 l9) (* (at_x o2 l9) (- 1 (in_x o2)))) (assign (at_x o3 l9) (* (at_x o3 l9) (- 1 (in_x o3)))) (assign (at_x o4 l9) (* (at_x o4 l9) (- 1 (in_x o4)))) (assign (at_x o5 l9) (* (at_x o5 l9) (- 1 (in_x o5)))) (assign (at_x o6 l9) (* (at_x o6 l9) (- 1 (in_x o6)))) (assign (at_x o7 l9) (* (at_x o7 l9) (- 1 (in_x o7)))) (assign (at_x o8 l9) (* (at_x o8 l9) (- 1 (in_x o8))))))
 (:action take_out_o2
  :parameters ()
  :precondition (and (= (in_x o2) 1))
  :effect (and (assign (in_x o2) 0)))
 (:action take_out_o7
  :parameters ()
  :precondition (and (= (in_x o7) 1))
  :effect (and (assign (in_x o7) 0)))
 (:action take_out_o0
  :parameters ()
  :precondition (and (= (in_x o0) 1))
  :effect (and (assign (in_x o0) 0)))
 (:action take_out_o3
  :parameters ()
  :precondition (and (= (in_x o3) 1))
  :effect (and (assign (in_x o3) 0)))
 (:action take_out_o6
  :parameters ()
  :precondition (and (= (in_x o6) 1))
  :effect (and (assign (in_x o6) 0)))
 (:action take_out_o1
  :parameters ()
  :precondition (and (= (in_x o1) 1))
  :effect (and (assign (in_x o1) 0)))
 (:action take_out_o4
  :parameters ()
  :precondition (and (= (in_x o4) 1))
  :effect (and (assign (in_x o4) 0)))
 (:action take_out_o5
  :parameters ()
  :precondition (and (= (in_x o5) 1))
  :effect (and (assign (in_x o5) 0)))
 (:action take_out_o8
  :parameters ()
  :precondition (and (= (in_x o8) 1))
  :effect (and (assign (in_x o8) 0)))
 (:action put_in_o2_l0
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o7_l0
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o0_l2
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o3_l3
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o6_l3
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o1_l4
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o4_l4
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o5_l6
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o8_l6
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o2_l1
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l2
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l3
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l4
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l5
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l6
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l7
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l8
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o2_l9
  :parameters ()
  :precondition (and (= (in_x o2) 0) (= (at_x o2 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o2) 1)))
 (:action put_in_o7_l1
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l2
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l3
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l4
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l5
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l6
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l7
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l8
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o7_l9
  :parameters ()
  :precondition (and (= (in_x o7) 0) (= (at_x o7 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o7) 1)))
 (:action put_in_o0_l0
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l1
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l3
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l4
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l5
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l6
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l7
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l8
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o0_l9
  :parameters ()
  :precondition (and (= (in_x o0) 0) (= (at_x o0 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o0) 1)))
 (:action put_in_o3_l0
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l1
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l2
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l4
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l5
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l6
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l7
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l8
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o3_l9
  :parameters ()
  :precondition (and (= (in_x o3) 0) (= (at_x o3 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o3) 1)))
 (:action put_in_o6_l0
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l1
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l2
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l4
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l5
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l6
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l7
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l8
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o6_l9
  :parameters ()
  :precondition (and (= (in_x o6) 0) (= (at_x o6 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o6) 1)))
 (:action put_in_o1_l0
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l1
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l2
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l3
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l5
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l6
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l7
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l8
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o1_l9
  :parameters ()
  :precondition (and (= (in_x o1) 0) (= (at_x o1 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o1) 1)))
 (:action put_in_o4_l0
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l1
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l2
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l3
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l5
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l6
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l6) 1) (= (is_at_x l6) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l7
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l8
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o4_l9
  :parameters ()
  :precondition (and (= (in_x o4) 0) (= (at_x o4 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o4) 1)))
 (:action put_in_o5_l0
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l1
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l2
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l3
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l4
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l5
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l7
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l8
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o5_l9
  :parameters ()
  :precondition (and (= (in_x o5) 0) (= (at_x o5 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o5) 1)))
 (:action put_in_o8_l0
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l0) 1) (= (is_at_x l0) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l1
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l1) 1) (= (is_at_x l1) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l2
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l2) 1) (= (is_at_x l2) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l3
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l3) 1) (= (is_at_x l3) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l4
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l4) 1) (= (is_at_x l4) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l5
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l5) 1) (= (is_at_x l5) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l7
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l7) 1) (= (is_at_x l7) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l8
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l8) 1) (= (is_at_x l8) 1))
  :effect (and (assign (in_x o8) 1)))
 (:action put_in_o8_l9
  :parameters ()
  :precondition (and (= (in_x o8) 0) (= (at_x o8 l9) 1) (= (is_at_x l9) 1))
  :effect (and (assign (in_x o8) 1)))
)
