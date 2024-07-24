;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)

(define (domain satellite)
;  (:requirements :typing :fluents :equality)
 (:types satellite direction instrument mode)
 (:predicates 
               (onboard ?i - instrument ?s - satellite)
         (supports ?i - instrument ?m - mode)
         (pointing ?s - satellite ?d - direction)
         (poweravail ?s - satellite)
         (poweron ?i - instrument)
         (calibrated ?i - instrument)
         (haveimage ?d - direction ?m - mode)
         (calibrationtarget ?i - instrument ?d - direction)
         )
 
 

  (:functions (datacapacity ?s - satellite)
        (data ?d - direction ?m - mode)
    (slewtime ?a ?b - direction)
    (data-stored)
    (fuel ?s - satellite)
    
  )

  (:action turnto
   :parameters (?s - satellite ?dnew - direction ?dprev - direction)
   :precondition (and (pointing ?s ?dprev)
                   (not (= ?dnew ?dprev))
    (>= (fuel ?s) (slewtime ?dnew ?dprev))
              )
   :effect (and  (pointing ?s ?dnew)
                 (not (pointing ?s ?dprev))
    (decrease (fuel ?s) (slewtime ?dnew ?dprev))
           )
  )

 
  (:action switchon
   :parameters (?i - instrument ?s - satellite)
 
   :precondition (and (onboard ?i ?s) 
                      (poweravail ?s)
                 )
   :effect (and (poweron ?i)
                (not (calibrated ?i))
                (not (poweravail ?s))
           )
          
  )

 
  (:action switchoff
   :parameters (?i - instrument ?s - satellite)
 
   :precondition (and (onboard ?i ?s)
                      (poweron ?i) 
                  )
   :effect (and (not (poweron ?i))
                (poweravail ?s)
           )
  )

  (:action calibrate
   :parameters (?s - satellite ?i - instrument ?d - direction)
   :precondition (and (onboard ?i ?s)
          (calibrationtarget ?i ?d)
                      (pointing ?s ?d)
                      (poweron ?i)
                  )
   :effect (and (calibrated ?i))
  )
 

  (:action takeimage
   :parameters (?s - satellite ?d - direction ?i - instrument ?m - mode)
   :precondition (and (calibrated ?i)
                      (onboard ?i ?s)
                      (supports ?i ?m)
                      (poweron ?i)
                      (pointing ?s ?d)
                      (poweron ?i)
        (>= (datacapacity ?s) (data ?d ?m))
               )
   :effect (and (decrease (datacapacity ?s) (data ?d ?m)) (haveimage ?d ?m)
    (increase (data-stored) (data ?d ?m)))
  )
)

