(define (domain basico)
  (:requirements :strips :typing :adl)
  (:types libro mes - object)

  (:predicates (leido ?l - libro)
               ;(leyendo ?l - libro)
               ;(leyendo_mes_anterior ?l - libro)
               (mes_siguiente ?m1 - mes ?m2 - mes)
               (mes_actual ?m - mes)
               (deseado ?l - libro)
               (predecesor ?l - libro ?lp - libro)
  )

  (:action leer
    :parameters (?l - libro)
    :precondition (and  (not (leido ?l))
                        ;(or (deseado ?l) (exists (?p - libro) (and (predecesor ?p ?l)
                         ;                                          (deseado ?p)))
                        ;)
                        (not (exists (?p - libro) (and (predecesor ?l ?p) 
                                                       (not (leido ?p))))
                        )
                  )
    :effect (and (leido ?l))
  )

  (:action pasar_de_mes
    :parameters (?m - mes ?m2 - mes)
    :precondition (and (mes_actual ?m) 
                       (mes_siguiente ?m ?m2)
                  )
    :effect (and (not (mes_actual ?m))
                 (mes_actual ?m2)
            )
  )

)

