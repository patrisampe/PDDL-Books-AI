(define (domain ext1)
  (:requirements :strips :typing :adl)
  (:types libro mes - object)

  (:predicates (leido ?l - libro)
               (deseado ?l - libro)
               (predecesor ?l - libro ?lp - libro)
  )

  (:action leer
    :parameters (?l - libro)
    :precondition (and (not (leido ?l))
                       (not (exists (?p - libro) (and (predecesor ?l ?p) 
                                                      (not (leido ?p))))
                       )
                  )
    :effect (and (leido ?l))
  )
)
