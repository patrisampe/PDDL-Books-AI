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
  (paralelo libro_8 libro_5)
  (paralelo libro_5 libro_8)
  (paralelo libro_10 libro_3)
  (paralelo libro_3 libro_10)
  (paralelo libro_1 libro_0)
  (paralelo libro_0 libro_1)
  (paralelo libro_16 libro_2)
  (paralelo libro_2 libro_16)
  (paralelo libro_9 libro_4)
  (paralelo libro_4 libro_9)
  (paralelo libro_11 libro_7)
  (paralelo libro_7 libro_11)
  (paralelo libro_12 libro_13)
  (paralelo libro_13 libro_12)
  (paralelo libro_19 libro_14)
  (paralelo libro_14 libro_19)
  (paralelo libro_6 libro_17)
  (paralelo libro_17 libro_6)
  (paralelo libro_18 libro_15)
  (paralelo libro_15 libro_18)
  (predecessor libro_16 libro_0)
  (predecessor libro_2 libro_0)
  (predecessor libro_12 libro_0)
  (predecessor libro_6 libro_0)
  (predecessor libro_15 libro_0)
  (predecessor libro_16 libro_1)
  (predecessor libro_9 libro_1)
  (predecessor libro_2 libro_1)
  (predecessor libro_11 libro_1)
  (predecessor libro_18 libro_1)
  (predecessor libro_9 libro_2)
  (predecessor libro_18 libro_2)
  (predecessor libro_4 libro_2)
  (predecessor libro_13 libro_2)
  (predecessor libro_12 libro_2)
  (predecessor libro_18 libro_3)
  (predecessor libro_19 libro_3)
  (predecessor libro_15 libro_3)
  (predecessor libro_11 libro_4)
  (predecessor libro_7 libro_4)
  (predecessor libro_19 libro_4)
  (predecessor libro_6 libro_4)
  (predecessor libro_15 libro_4)
  (predecessor libro_16 libro_5)
  (predecessor libro_10 libro_5)
  (predecessor libro_12 libro_5)
  (predecessor libro_18 libro_5)
  (predecessor libro_19 libro_7)
  (predecessor libro_13 libro_8)
  (predecessor libro_17 libro_10)
  (predecessor libro_19 libro_11)
  (predecessor libro_12 libro_11)
  (predecessor libro_19 libro_12)
  (predecessor libro_14 libro_12)
  (predecessor libro_18 libro_13)
  (predecessor libro_19 libro_13)
  (predecessor libro_18 libro_14)
  (predecessor libro_18 libro_17)
  (leido libro_6)
  (leido libro_11)
  (leido libro_16)
  (leido libro_5)
  (leido libro_7)
  (deseado libro_14)
  (deseado libro_4)
  (deseado libro_1)
  (deseado libro_10)
  (deseado libro_8)
)
(:goal (and 
  (leido libro_14)
  (leido libro_4)
  (leido libro_1)
  (leido libro_10)
  (leido libro_8)
))
)