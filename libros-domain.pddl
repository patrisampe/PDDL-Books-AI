(define (domain planningbooks)
  (:requirements :strips :adl :typing :fluents)
  (:types libro mes - object)           
  (:functions
    (paginas ?l - libros)
    (paginas_actuales)
  )
  (:predicates
   (leido ?l - libro)
   (leido_mes_anterior ?l - libro)
   (leyendo ?l - libro)
   (mes_siguiente ?m1 - mes ?m2 - mes)
   (mes_actual ?m - mes)
   (deseado ?l - libro)
   (predecessor ?l1 - libro ?lp - libro)
   (paralelo ?l1 - libro ?l2 - libro)  
  )

  (:action leer
    :parameters (?l -libro) (m -mes)
    :precondition (and (not(leido ?l)) (not(leido_mes_anterior ?l)) (mes_actual ?m)
					(forall (?l2 -libro )
					(imply (predecessor ?l ?l2)
					 (or (leido ?l2)  (leido_mes_anterior ?l2)) ))
					(<= (+ (paginas ?l) (paginas_actuales ?m)) 800))
    :effect (leyendo ?l) (increase (paginas_actuales) (paginas ?l))
  )
  
  (:action pasar_de_mes
    :parameters (?m - mes ?m2 - mes)
    :precondition (and (mes_actual ?m) (mes_siguiente ?m ?m2))  
    :effect (and (not (mes_actual ?m)) (mes_actual ?m2) 
			(forall (?l -libro)
			(imply (leido_mes_anterior ?l) (leido ?l))
			(imply (leyendo ?l) (leido_mes_anterior ?l))))
  )
  
  
)
 