;; This domain was motivated by the 2003 Mars Exploration Rover (MER) missions 
;; and the planned 2009 Mars Science Laboratory (MSL) mission, used in the IPC-3.
;;
;; Inspired by planetary rovers problems, this domain requires that a
;; collection of rovers navigate a planet surface, finding samples and
;; communicating them back to a lander.
(define (domain rover)
;(:requirements :typing :fluents)
(:types rover -object waypoint -object store -object camera -object mode -object lander -object objective -object)
(:predicates (in ?x - rover ?y - waypoint) 
             (at_lander ?x - lander ?y - waypoint)
             (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
	         (equipped_for_soil_analysis ?r - rover)
             (equipped_for_rock_analysis ?r - rover)
             (equipped_for_imaging ?r - rover)
             (empty ?s - store)
             (have_rock_analysis ?r - rover ?w - waypoint)
             (have_soil_analysis ?r - rover ?w - waypoint)
             (full ?s - store)
	         (calibrated ?c - camera ?r - rover) 
	         (supports ?c - camera ?m - mode)
             (available ?r - rover)
             (visible ?w - waypoint ?p - waypoint)
             (have_image ?r - rover ?o - objective ?m - mode)
             (communicated_soil_data ?w - waypoint)
             (communicated_rock_data ?w - waypoint)
             (communicated_image_data ?o - objective ?m - mode)
	         (at_soil_sample ?w - waypoint)
	         (at_rock_sample ?w - waypoint)
             (visible_from ?o - objective ?w - waypoint)
	         (store_of ?s - store ?r - rover)
	         (calibration_target ?i - camera ?o - objective)
	         (on_board ?i - camera ?r - rover)
	         (channel_free ?l - lander)
	         (in_sun ?w - waypoint)
)

(:functions (energy ?r - rover) (total-cost) )
	
(:action navigate
:parameters (?x - rover ?y - waypoint ?z - waypoint) 
:precondition (and (can_traverse ?x ?y ?z) (available ?x) (in ?x ?y) 
                (visible ?y ?z) (>= (energy ?x) 8)
	    )
:effect (and (decrease (energy ?x) 8) (not (in ?x ?y)) (in ?x ?z)
		)
)

(:action recharge
:parameters (?x - rover ?w - waypoint)
:precondition (and (in ?x ?w) (in_sun ?w) (<= (energy ?x) 80))
:effect (and (increase (energy ?x) 20) (increase (total-cost) 1)) 
)

(:action samplesoil
:parameters (?x - rover ?s - store ?p - waypoint)
:precondition (and (in ?x ?p)(>= (energy ?x) 3) (at_soil_sample ?p) (equipped_for_soil_analysis ?x) (store_of ?s ?x) (empty ?s)
		)
:effect (and (not (empty ?s)) (full ?s) (decrease (energy ?x) 3) (have_soil_analysis ?x ?p) (not (at_soil_sample ?p))
		)
)

(:action samplerock
:parameters (?x - rover ?s - store ?p - waypoint)
:precondition (and  (in ?x ?p) (>= (energy ?x) 5)(at_rock_sample ?p) (equipped_for_rock_analysis ?x) (store_of ?s ?x)(empty ?s)
		)
:effect (and (not (empty ?s)) (full ?s) (decrease (energy ?x) 5) (have_rock_analysis ?x ?p) (not (at_rock_sample ?p))
		)
)

(:action drop
:parameters (?x - rover ?y - store)
:precondition (and (store_of ?y ?x) (full ?y)
		)
:effect (and (not (full ?y)) (empty ?y)
	)
)

(:action calibrate
 :parameters (?r - rover ?i - camera ?t - objective ?w - waypoint)
 :precondition (and (equipped_for_imaging ?r) (>= (energy ?r) 2)(calibration_target ?i ?t) (in ?r ?w) (visible_from ?t ?w)(on_board ?i ?r)
		)
 :effect (and (decrease (energy ?r) 2)(calibrated ?i ?r) )
)




(:action takeimage
 :parameters (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode)
 :precondition (and (calibrated ?i ?r)
			 (on_board ?i ?r)
                      (equipped_for_imaging ?r)
                      (supports ?i ?m)
			  (visible_from ?o ?p)
                     (in ?r ?p)
			(>= (energy ?r) 1)
               )
 :effect (and (have_image ?r ?o ?m)(not (calibrated ?i ?r))(decrease (energy ?r) 1)
		)
)

(:action communicatesoildata
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and (in ?r ?x)(at_lander ?l ?y)(have_soil_analysis ?r ?p) 
                   (visible ?x ?y)(available ?r)(channel_free ?l)(>= (energy ?r) 4)
            )
 :effect (and (communicated_soil_data ?p)(available ?r)(decrease (energy ?r) 4)
	)
)

(:action communicaterockdata
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and (in ?r ?x)(at_lander ?l ?y)(have_rock_analysis ?r ?p)(>= (energy ?r) 4)
                   (visible ?x ?y)(available ?r)(channel_free ?l)
            )
 :effect (and   
(communicated_rock_data ?p)(available ?r)(decrease (energy ?r) 4)
          )
)


(:action communicateimagedata
 :parameters (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
 :precondition (and (in ?r ?x)(at_lander ?l ?y)(have_image ?r ?o ?m)(visible ?x ?y)(available ?r)(channel_free ?l)(>= (energy ?r) 6)
            )
 :effect (and
(communicated_image_data ?o ?m)(available ?r)(decrease (energy ?r) 6)
          )
)

)
