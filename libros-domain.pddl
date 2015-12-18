(define (domain planningbooks)
  (:requirements :strips :adl :typing :fluents)
  (:types libro mes - object)           
  (:functions
    (paginas ?l - libro)
    (paginas_actuales)
  )
  (:predicates
   (leido ?l - libro)
   (leyendo ?l - libro)
   (leyendo_mes_anterior ?l - libro)
   (mes_siguiente ?m1 - mes ?m2 - mes)
   (mes_actual ?m - mes)
   (deseado ?l - libro)
   (predecessor ?l1 - libro ?lp - libro)
   (paralelo ?l1 - libro ?l2 - libro)  
  )

  (:action leer
    :parameters (?l - libro ?m - mes)
    :precondition (and 

      (mes_actual ?m)
      (not (leido ?l)) 
      (not (leyendo_mes_anterior ?l))
	(not (exists (?p - libro) 
        (and
          (predecessor ?l ?p)
  	    (or 
            (not (leido ?p))  
            (not (leyendo_mes_anterior ?p))
          ) 
        )
      )
      )
  		(<= (+ (paginas ?l) (paginas_actuales)) 800)

    )
    :effect (and (leyendo ?l) (increase (paginas_actuales) (paginas ?l)))
  )
  
  (:action pasar_de_mes
    :parameters (?m - mes ?m2 - mes)
    :precondition (and 
      (mes_actual ?m) (mes_siguiente ?m ?m2)
      (not (exists (?l - libro)
        (and 
          (leyendo_mes_anterior ?l)
          (exists (?p - libro)
            (and 
              (paralelo ?l ?p)
              (not (leyendo ?p))
              (not (leyendo_mes_anterior ?p))
              (not (leido ?p))
            )
          )
          (= (paginas_actuales) 0)
        )
      ))

    )  
    :effect (and 
      (not (mes_actual ?m)) 
      (mes_actual ?m2) 
	(forall (?l - libro)
	  (when (leyendo_mes_anterior ?l) 
	    (and
	      (not (leyendo_mes_anterior ?l))
	      (leido ?l)
	    )
	  ))
	  (forall (?l - libro)
	  (when (leyendo ?l) 
	    (and
	      (not (leyendo ?l))
	      (leyendo_mes_anterior ?l)
	    )
	  )
      )
    )
  )

  (:action acabar
    :parameters (?m - mes)
    :precondition (and 
      (mes_actual ?m)
      (not (exists (?l - libro)
        (and 
          (leyendo_mes_anterior ?l)
          (exists (?p - libro)
            (and 
              (paralelo ?l ?p)
              (not (leyendo ?p))
              (not (leyendo_mes_anterior ?p))
              (not (leido ?p))
            )
          )
        )
      ))
      (not (exists (?l - libro)
        (and 
          (leyendo ?l)
          (exists (?p - libro)
            (and 
              (paralelo ?l ?p)
              (not (leyendo ?p))
              (not (leyendo_mes_anterior ?p))
            )
          )
        )
      ))
    )
    :effect (and
      (not (mes_actual ?m))
      (forall (?l - libro)
        (when (leyendo_mes_anterior ?l) 
          (and
            (not (leyendo_mes_anterior ?l))
            (leido ?l)
          )
        )
        )
        (forall (?l - libro)
        (when (leyendo ?l) 
          (and
            (not (leyendo ?l))
            (leido ?l)
          )
        )
      )
    )
    )


   
)
 