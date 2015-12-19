(define (problem basico1) 
  (:domain planningbooks) 
  (:objects 
   libro_0
   libro_1
   libro_2
   libro_3
   libro_4
  - libro 
  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre - mes
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
  (paralelo libro_3 libro_0)
  (paralelo libro_0 libro_3)
  (paralelo libro_1 libro_4)
  (paralelo libro_4 libro_1)
  (predecessor libro_1 libro_0)
  (predecessor libro_2 libro_0)
  (predecessor libro_4 libro_3)
  (leido libro_4)
  (leido libro_3)
  (deseado libro_0)
  (deseado libro_2)
)
(:goal (and 
  (leido libro_0)
  (leido libro_2)
))
)