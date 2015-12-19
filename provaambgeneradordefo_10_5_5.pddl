(define (problem basico1) 
  (:domain planningbooks) 
  (:objects 
  libro_0
  libro_1
  libro_2
  libro_3
  libro_4
  libro_5
  libro_6
  libro_7
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
  (paralelo libro_0 libro_1)
  (paralelo libro_1 libro_0)
  (paralelo libro_2 libro_3)
  (paralelo libro_3 libro_2)
  (paralelo libro_8 libro_4)
  (paralelo libro_4 libro_8)
  (paralelo libro_5 libro_6)
  (paralelo libro_6 libro_5)
  (paralelo libro_7 libro_9)
  (paralelo libro_9 libro_7) 
 (predecessor libro_2 libro_0) 
 (predecessor libro_3 libro_0) 
 (predecessor libro_4 libro_0) 
 (predecessor libro_5 libro_0) 
 (predecessor libro_6 libro_0) 
 (predecessor libro_7 libro_0) 
 (predecessor libro_9 libro_0) 
 (predecessor libro_2 libro_1) 
 (predecessor libro_3 libro_1) 
 (predecessor libro_4 libro_1) 
 (predecessor libro_5 libro_1) 
 (predecessor libro_6 libro_1) 
 (predecessor libro_8 libro_1) 
 (predecessor libro_4 libro_2) 
 (predecessor libro_5 libro_2) 
 (predecessor libro_6 libro_2) 
 (predecessor libro_7 libro_2) 
 (predecessor libro_8 libro_2) 
 (predecessor libro_9 libro_2) 
 (predecessor libro_8 libro_3) 
 (predecessor libro_4 libro_3) 
 (predecessor libro_7 libro_3) 
 (predecessor libro_9 libro_4) 
 (predecessor libro_5 libro_4) 
 (predecessor libro_6 libro_4) 
 (predecessor libro_7 libro_4) 
 (predecessor libro_9 libro_5) 
 (predecessor libro_7 libro_5) 
 (predecessor libro_9 libro_6)
  (deseado libro_3)
  (deseado libro_7)
  (deseado libro_0)
  (deseado libro_9)
  (deseado libro_8) 

  (leido libro_2)
  (leido libro_5)
  (leido libro_6)
  (leido libro_1)
  (leido libro_4)
 (es_fi fin)
)
(:goal (and 
  (leido libro_3)
  (leido libro_7)
  (leido libro_0)
  (leido libro_9)
  (leido libro_8)
))
)