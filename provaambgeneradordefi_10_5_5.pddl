(define (problem basico1) 
  (:domain planningbooks) 
  (:objects 
  libro_1
  libro_2
  libro_3
  libro_5
  libro_6
  libro_8
  libro_9
  - libro 
  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre fin - mes
 )
(:init
  (mes_actual enero)
  (mes_siguiente enero febrero) 
  (mes_siguiente febrero marzo)
  (mes_siguiente marzo abril)
  (mes_siguiente abril mayo)
  (mes_siguiente mayo junio)
  (mes_siguiente junio julio)
  (mes_siguiente julio agosto)
  (mes_siguiente agosto setiembre)
  (mes_siguiente setiembre octubre)
  (mes_siguiente octubre noviembre)
  (mes_siguiente noviembre diciembre)
  (mes_siguiente diciembre fin)
  (paralelo libro_2 libro_3)
  (paralelo libro_3 libro_2)
  (paralelo libro_1 libro_5)
  (paralelo libro_5 libro_1)
  (paralelo libro_6 libro_8)
  (paralelo libro_8 libro_6) 
 (predecessor libro_8 libro_1) 
 (predecessor libro_6 libro_1) 
 (predecessor libro_8 libro_5) 
 (predecessor libro_9 libro_6)
  (deseado libro_5)
  (deseado libro_6)
  (deseado libro_3)
  (deseado libro_2)
  (deseado libro_1) 

  (leido libro_9)
  (leido libro_8)
 (es_fi fin)
)
(:goal (and 
 forall (?l libro) (imply (deseado ?l) (leido ?l)))
))