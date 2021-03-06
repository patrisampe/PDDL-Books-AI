(define (domain basic)
  (:requirements :strips :typing :adl)
  (:types libro mes - object)

  (:predicates (leido ?l - libro)
               (leyendo ?l - libro)
               (leyendo_mes_anterior ?l - libro)
               (mes_actual ?m - mes)
               (mes_siguiente ?m1 - mes ?m2 - mes)
               (es_fantasma ?m - mes) 
               (deseado ?l - libro)
               (predecesor ?l - libro ?lp - libro)
  )

  (:action leer
    :parameters (?l - libro ?m - mes)
    :precondition (and (not (leido ?l))
                       (not (leyendo ?l))
                       (not (leyendo_mes_anterior ?l))
                       (mes_actual ?m)
                       (not (es_fantasma ?m))                       
                       (not (exists (?p - libro) 
                            (and
                              (predecesor ?l ?p)
                              (not (leido ?p))  
                              (not (leyendo_mes_anterior ?p))))
                        )
                  )
    :effect (and (leyendo ?l))
  )

  (:action pasar_de_mes
    :parameters (?m - mes ?m2 - mes)
    :precondition (and (mes_actual ?m)
                       (mes_siguiente ?m ?m2)
                  )
    :effect (and (not (mes_actual ?m))
                 (mes_actual ?m2)
                 (forall (?l - libro)
                    (when (leyendo_mes_anterior ?l) (and (leido ?l)
                                                         (not (leyendo_mes_anterior ?l))))
                 )
                 (forall (?l - libro)
                    (when (leyendo ?l) (and (not (leyendo ?l))
                                            (leyendo_mes_anterior ?l))) 
                 )


            )
  )

)
           
