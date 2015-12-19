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
   libro_10
   libro_11
   libro_12
   libro_13
   libro_14
   libro_15
   libro_16
   libro_17
   libro_18
   libro_19
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
  (mes_siguiente noviembre fin)
  (paralelo libro_9 libro_4)
  (paralelo libro_4 libro_9)
  (paralelo libro_7 libro_3)
  (paralelo libro_3 libro_7)
  (predecessor libro_10 libro_0)
  (predecessor libro_12 libro_0)
  (predecessor libro_8 libro_1)
  (predecessor libro_18 libro_1)
  (predecessor libro_14 libro_1)
  (predecessor libro_6 libro_2)
  (predecessor libro_10 libro_3)
  (predecessor libro_8 libro_4)
  (predecessor libro_12 libro_4)
  (predecessor libro_7 libro_4)
  (predecessor libro_16 libro_5)
  (predecessor libro_12 libro_5)
  (predecessor libro_15 libro_5)
  (predecessor libro_8 libro_6)
  (predecessor libro_11 libro_6)
  (predecessor libro_13 libro_6)
  (predecessor libro_10 libro_7)
  (predecessor libro_11 libro_7)
  (predecessor libro_13 libro_7)
  (predecessor libro_14 libro_7)
  (predecessor libro_16 libro_8)
  (predecessor libro_11 libro_8)
  (predecessor libro_18 libro_8)
  (predecessor libro_16 libro_9)
  (predecessor libro_17 libro_9)
  (predecessor libro_13 libro_9)
  (predecessor libro_14 libro_9)
  (predecessor libro_16 libro_10)
  (predecessor libro_12 libro_10)
  (predecessor libro_19 libro_11)
  (predecessor libro_14 libro_11)
  (predecessor libro_16 libro_12)
  (predecessor libro_17 libro_12)
  (predecessor libro_13 libro_12)
  (predecessor libro_16 libro_14)
  (predecessor libro_17 libro_14)
  (predecessor libro_18 libro_14)
  (predecessor libro_16 libro_15)
  (predecessor libro_18 libro_15)
  (predecessor libro_19 libro_15)
  (leido libro_17)
  (leido libro_10)
  (deseado libro_4)
  (deseado libro_5)
  (es_fi fin)
)
(:goal (and 
  (leido libro_4)
  (leido libro_5)
))
)