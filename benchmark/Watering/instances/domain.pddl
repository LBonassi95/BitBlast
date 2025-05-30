;; Joan Espasa Arxer (jea20@st-andrews.ac.uk)
;; Based on the Plant Watering domain originally created by 
;; Guillem Franc`es (guillem.frances@upf.edu) and Hector Geffner (hector.geffner@upf.edu) 
;; and adapted to numeric planning by Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Extended Plant Watering
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A set of agents on a map aims to water some plants by
;;; carrying water from a central reservoir to the plants. 
;;; All agents can move along the eigth compass directions, and have specific
;;; actions to load the water and pouring the plants. This version adds a 
;;; contraint over the total amount of water and the maximum amount of water
;;; that can be carried by an agent
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain ext-plant-watering)
    (:types thing location - object
        agent plant tap - thing)

    (:functions
        ;; constant bounds
        (maxx) 
        (maxy)
        (miny)
        (minx)
        (maxcarry ?a - agent) ;; The maximum volume of water each agent can carry at the same time
        (waterreserve) ;; The total amount of water we have

        ;; fluents
        (x ?t - thing) ;; x coordinate of the location for ?t
        (y ?t - thing) ;; y coordinate of the location for ?t
        (carrying ?a - agent) ;; The amount of water carried by the agent.
        (poured ?p - plant) ;; The amount of water poured to the plant so far.

        ;; counters
        (totalpoured) ;; The total amount of water poured so far.
        (totalloaded) ;; The total amount of water retrieved from the tap.
    )

    ;; Move an agent to a neighboring location
    (:action moveup
     :parameters (?a - agent)
     :precondition (and (<= (+ (y ?a) 1) (maxy)))
     :effect (and
    		(increase (y ?a) 1)))

    (:action movedown
     :parameters (?a - agent)
     :precondition (and (>= (- (y ?a) 1) (miny)))
     :effect (and
    		(decrease (y ?a) 1)))

    (:action moveright
     :parameters (?a - agent)
     :precondition (and (<= (+ (x ?a) 1) (maxx)))
     :effect (and
    		(increase (x ?a) 1)))

    (:action moveleft
     :parameters (?a - agent)
     :precondition (and (>= (- (x ?a) 1) (minx)))
     :effect (and
    		(decrease (x ?a) 1)))

    ;; move diagonals
    (:action moveupleft
     :parameters (?a - agent)
     :precondition (and (>= (- (x ?a) 1) (minx)) (<= (+ (y ?a) 1) (maxy)))
     :effect (and
        (increase (y ?a) 1) (decrease (x ?a) 1)))

    (:action moveupright
     :parameters (?a - agent)
     :precondition (and (<= (+ (x ?a) 1) (maxx)) (<= (+ (y ?a) 1) (maxy)))
     :effect (and
        (increase (y ?a) 1) (increase (x ?a) 1)))

    (:action movedownleft
     :parameters (?a - agent)
     :precondition (and (>= (- (x ?a) 1) (minx)) (>= (- (y ?a) 1) (miny)))
     :effect (and
        (decrease (x ?a) 1) (decrease (y ?a) 1) )
    )

    (:action movedownright
     :parameters (?a - agent)
     :precondition (and (<= (+ (x ?a) 1) (maxx)) (>= (- (y ?a) 1) (miny)))
     :effect (and
        (decrease (y ?a) 1) (increase (x ?a) 1)))

    ;; Load one unit of water from a tap into the agent's bucket.
    (:action load
    :parameters (?a - agent ?t - tap)
    :precondition (and
                       (= (x ?a) (x ?t)) (=(y ?a) (y ?t)) ; we are on the tap
                       (<= (+ (carrying ?a) 1) (maxcarry ?a)) ; we have space to carry
                       (>= (- (waterreserve) 1) 0)) ; there is some water left
    :effect       (and
                       (decrease (waterreserve) 1)
                       (increase (carrying ?a) 1)
                       (increase (totalloaded) 1)))

    ;; Pours one unit of water from the agent's bucket into a plant.
    (:action pour
    :parameters (?a - agent ?p - plant)
    :precondition (and (= (x ?a) (x ?p)) (=(y ?a) (y ?p)) ; we are on the plant
                       (>= (carrying ?a) 1)) ; we are carrying some water
    :effect       (and
                    (decrease (carrying ?a) 1)
                    (increase (poured ?p) 1)
                    (increase (totalpoured) 1)))
)
