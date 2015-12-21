(define (problem basico1) 
  (:domain planningbooks) 
  (:objects   libro_0  libro_1  libro_2  libro_3  libro_4  libro_5  libro_6  libro_7  libro_8  libro_9  libro_10  libro_11  libro_12  libro_13  libro_14  libro_15  libro_16  libro_17  libro_18  libro_19  libro_20  libro_21  libro_22  libro_23  libro_24  libro_25  libro_26  libro_27  libro_28  libro_29  - libro 
  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre fin fin2 - mes
 )
(:init
  (mes_actual enero)  (mes_siguiente enero febrero)   (mes_siguiente febrero marzo)  (mes_siguiente marzo abril)  (mes_siguiente abril mayo)  (mes_siguiente mayo junio)  (mes_siguiente junio julio)  (mes_siguiente julio agosto)  (mes_siguiente agosto setiembre)  (mes_siguiente setiembre octubre)  (mes_siguiente octubre noviembre)  (mes_siguiente noviembre diciembre)  (mes_siguiente diciembre fin)  (mes_siguiente diciembre fin2) 
   (paralelo libro_1 libro_0)  (paralelo libro_0 libro_1)  (paralelo libro_2 libro_5)  (paralelo libro_5 libro_2)  (paralelo libro_3 libro_4)  (paralelo libro_4 libro_3)  (paralelo libro_6 libro_7)  (paralelo libro_7 libro_6)  (paralelo libro_9 libro_8)  (paralelo libro_8 libro_9)  (paralelo libro_10 libro_11)  (paralelo libro_11 libro_10)  (paralelo libro_12 libro_13)  (paralelo libro_13 libro_12)  (paralelo libro_14 libro_15)  (paralelo libro_15 libro_14)  (paralelo libro_16 libro_17)  (paralelo libro_17 libro_16)  (paralelo libro_18 libro_19)  (paralelo libro_19 libro_18)  (paralelo libro_20 libro_21)  (paralelo libro_21 libro_20)  (paralelo libro_22 libro_23)  (paralelo libro_23 libro_22)  (paralelo libro_24 libro_25)  (paralelo libro_25 libro_24)  (paralelo libro_26 libro_27)  (paralelo libro_27 libro_26)  (paralelo libro_28 libro_29)  (paralelo libro_29 libro_28) 
  (predecessor libro_2 libro_0) 
  (predecessor libro_3 libro_0) (predecessor libro_4 libro_0) (predecessor libro_8 libro_0) (predecessor libro_10 libro_0) (predecessor libro_11 libro_0) 
  (predecessor libro_12 libro_0) (predecessor libro_13 libro_0) (predecessor libro_14 libro_0) (predecessor libro_15 libro_0) (predecessor libro_18 libro_0) 
  (predecessor libro_19 libro_0) (predecessor libro_20 libro_0) (predecessor libro_23 libro_0) (predecessor libro_24 libro_0) (predecessor libro_25 libro_0) 
  (predecessor libro_26 libro_0) (predecessor libro_27 libro_0) (predecessor libro_28 libro_0) (predecessor libro_4 libro_1) (predecessor libro_5 libro_1) 
  (predecessor libro_7 libro_1) (predecessor libro_8 libro_1) (predecessor libro_10 libro_1) (predecessor libro_11 libro_1) (predecessor libro_12 libro_1) 
  (predecessor libro_16 libro_1) (predecessor libro_17 libro_1) (predecessor libro_18 libro_1) (predecessor libro_20 libro_1) (predecessor libro_21 libro_1) 
  (predecessor libro_22 libro_1) (predecessor libro_24 libro_1) (predecessor libro_26 libro_1) (predecessor libro_27 libro_1) (predecessor libro_28 libro_1) 
  (predecessor libro_29 libro_1) (predecessor libro_3 libro_2) (predecessor libro_4 libro_2) (predecessor libro_6 libro_2) (predecessor libro_7 libro_2) 
  (predecessor libro_8 libro_2) (predecessor libro_9 libro_2) (predecessor libro_10 libro_2) (predecessor libro_11 libro_2) (predecessor libro_12 libro_2) 
  (predecessor libro_13 libro_2) (predecessor libro_14 libro_2) (predecessor libro_15 libro_2) (predecessor libro_17 libro_2) (predecessor libro_18 libro_2) 
  (predecessor libro_19 libro_2) (predecessor libro_20 libro_2) (predecessor libro_21 libro_2) (predecessor libro_22 libro_2) (predecessor libro_24 libro_2) 
  (predecessor libro_25 libro_2) (predecessor libro_27 libro_2) (predecessor libro_28 libro_2) (predecessor libro_29 libro_2) (predecessor libro_6 libro_3) 
  (predecessor libro_7 libro_3) (predecessor libro_9 libro_3) (predecessor libro_10 libro_3) (predecessor libro_11 libro_3) (predecessor libro_12 libro_3) 
  (predecessor libro_13 libro_3) (predecessor libro_16 libro_3) (predecessor libro_17 libro_3) (predecessor libro_20 libro_3) (predecessor libro_21 libro_3) 
  (predecessor libro_22 libro_3) (predecessor libro_23 libro_3) (predecessor libro_24 libro_3) (predecessor libro_25 libro_3) (predecessor libro_26 libro_3) 
  (predecessor libro_27 libro_3) (predecessor libro_28 libro_3) (predecessor libro_29 libro_3) (predecessor libro_6 libro_4) (predecessor libro_7 libro_4) 
  (predecessor libro_11 libro_4) (predecessor libro_12 libro_4) (predecessor libro_13 libro_4) (predecessor libro_15 libro_4) (predecessor libro_17 libro_4) 
  (predecessor libro_18 libro_4) (predecessor libro_20 libro_4) (predecessor libro_21 libro_4) (predecessor libro_23 libro_4) (predecessor libro_24 libro_4) 
  (predecessor libro_28 libro_4) (predecessor libro_6 libro_5) (predecessor libro_7 libro_5) (predecessor libro_8 libro_5) (predecessor libro_9 libro_5) 
  (predecessor libro_11 libro_5) (predecessor libro_12 libro_5) (predecessor libro_14 libro_5) (predecessor libro_16 libro_5) (predecessor libro_17 libro_5) 
  (predecessor libro_18 libro_5) (predecessor libro_19 libro_5) (predecessor libro_22 libro_5) (predecessor libro_23 libro_5) (predecessor libro_25 libro_5) 
  (predecessor libro_26 libro_5) (predecessor libro_27 libro_5) (predecessor libro_8 libro_6) (predecessor libro_11 libro_6) (predecessor libro_12 libro_6) 
  (predecessor libro_13 libro_6) (predecessor libro_14 libro_6) (predecessor libro_16 libro_6) (predecessor libro_17 libro_6) (predecessor libro_18 libro_6) 
  (predecessor libro_19 libro_6) (predecessor libro_20 libro_6) (predecessor libro_22 libro_6) (predecessor libro_23 libro_6) (predecessor libro_25 libro_6) 
  (predecessor libro_26 libro_6) (predecessor libro_27 libro_6) (predecessor libro_28 libro_6) (predecessor libro_8 libro_7) (predecessor libro_9 libro_7) 
  (predecessor libro_10 libro_7) (predecessor libro_12 libro_7) (predecessor libro_13 libro_7) (predecessor libro_14 libro_7) (predecessor libro_15 libro_7) 
  (predecessor libro_16 libro_7) (predecessor libro_17 libro_7) (predecessor libro_18 libro_7) (predecessor libro_19 libro_7) (predecessor libro_20 libro_7) 
  (predecessor libro_22 libro_7) (predecessor libro_23 libro_7) (predecessor libro_24 libro_7) (predecessor libro_25 libro_7) (predecessor libro_26 libro_7) 
  (predecessor libro_27 libro_7) (predecessor libro_28 libro_7) (predecessor libro_29 libro_7) (predecessor libro_11 libro_8) (predecessor libro_12 libro_8) 
  (predecessor libro_13 libro_8) (predecessor libro_14 libro_8) (predecessor libro_15 libro_8) (predecessor libro_16 libro_8) (predecessor libro_18 libro_8) 
  (predecessor libro_19 libro_8) (predecessor libro_20 libro_8) (predecessor libro_21 libro_8) (predecessor libro_22 libro_8) (predecessor libro_23 libro_8) 
  (predecessor libro_25 libro_8) (predecessor libro_26 libro_8) (predecessor libro_27 libro_8) (predecessor libro_28 libro_8) (predecessor libro_29 libro_8) 
  (predecessor libro_10 libro_9) (predecessor libro_11 libro_9) (predecessor libro_12 libro_9) (predecessor libro_13 libro_9) (predecessor libro_14 libro_9) 
  (predecessor libro_16 libro_9) (predecessor libro_17 libro_9) (predecessor libro_18 libro_9) (predecessor libro_19 libro_9) (predecessor libro_20 libro_9) 
  (predecessor libro_22 libro_9) (predecessor libro_23 libro_9) (predecessor libro_24 libro_9) (predecessor libro_25 libro_9) (predecessor libro_26 libro_9) 
  (predecessor libro_27 libro_9) (predecessor libro_28 libro_9) (predecessor libro_12 libro_10) (predecessor libro_13 libro_10) (predecessor libro_14 libro_10) 
  (predecessor libro_16 libro_10) (predecessor libro_18 libro_10) (predecessor libro_19 libro_10) (predecessor libro_20 libro_10) (predecessor libro_23 libro_10) 
  (predecessor libro_25 libro_10) (predecessor libro_26 libro_10) (predecessor libro_27 libro_10) (predecessor libro_28 libro_10) (predecessor libro_29 libro_10) 
  (predecessor libro_12 libro_11) (predecessor libro_13 libro_11) (predecessor libro_14 libro_11) (predecessor libro_16 libro_11) (predecessor libro_17 libro_11) 
  (predecessor libro_18 libro_11) (predecessor libro_19 libro_11) (predecessor libro_20 libro_11) (predecessor libro_21 libro_11) (predecessor libro_22 libro_11) 
  (predecessor libro_23 libro_11) (predecessor libro_24 libro_11) (predecessor libro_25 libro_11) (predecessor libro_26 libro_11) (predecessor libro_14 libro_12) 
  (predecessor libro_15 libro_12) (predecessor libro_16 libro_12) (predecessor libro_17 libro_12) (predecessor libro_18 libro_12) (predecessor libro_19 libro_12) 
  (predecessor libro_20 libro_12) (predecessor libro_21 libro_12) (predecessor libro_24 libro_12) (predecessor libro_25 libro_12) (predecessor libro_26 libro_12) 
  (predecessor libro_27 libro_12) (predecessor libro_29 libro_12) (predecessor libro_14 libro_13) (predecessor libro_15 libro_13) (predecessor libro_17 libro_13) 
  (predecessor libro_18 libro_13) (predecessor libro_20 libro_13) (predecessor libro_21 libro_13) (predecessor libro_22 libro_13) (predecessor libro_24 libro_13) 
  (predecessor libro_26 libro_13) (predecessor libro_27 libro_13) (predecessor libro_28 libro_13) (predecessor libro_29 libro_13) (predecessor libro_16 libro_14) 
  (predecessor libro_20 libro_14) (predecessor libro_22 libro_14) (predecessor libro_23 libro_14) (predecessor libro_24 libro_14) (predecessor libro_25 libro_14) 
  (predecessor libro_26 libro_14) (predecessor libro_27 libro_14) (predecessor libro_28 libro_14) (predecessor libro_29 libro_14) (predecessor libro_16 libro_15) 
  (predecessor libro_17 libro_15) (predecessor libro_18 libro_15) (predecessor libro_20 libro_15) (predecessor libro_22 libro_15) (predecessor libro_24 libro_15) 
  (predecessor libro_19 libro_16) (predecessor libro_23 libro_16) (predecessor libro_25 libro_16) (predecessor libro_26 libro_16) (predecessor libro_28 libro_16) 
  (predecessor libro_18 libro_17) (predecessor libro_19 libro_17) (predecessor libro_20 libro_17) (predecessor libro_21 libro_17) (predecessor libro_22 libro_17) 
  (predecessor libro_24 libro_17) (predecessor libro_25 libro_17) (predecessor libro_26 libro_17) (predecessor libro_27 libro_17) (predecessor libro_28 libro_17) 
  (predecessor libro_29 libro_17) (predecessor libro_20 libro_18) (predecessor libro_21 libro_18) (predecessor libro_22 libro_18) (predecessor libro_24 libro_18) 
  (predecessor libro_25 libro_18) (predecessor libro_26 libro_18) (predecessor libro_28 libro_18) (predecessor libro_29 libro_18) (predecessor libro_21 libro_19) 
  (predecessor libro_22 libro_19) (predecessor libro_23 libro_19) (predecessor libro_24 libro_19) (predecessor libro_26 libro_19) (predecessor libro_27 libro_19) 
  (predecessor libro_28 libro_19) (predecessor libro_29 libro_19) (predecessor libro_22 libro_20) (predecessor libro_24 libro_20) (predecessor libro_26 libro_20) 
  (predecessor libro_27 libro_20) (predecessor libro_28 libro_20) (predecessor libro_29 libro_20) (predecessor libro_25 libro_21) (predecessor libro_28 libro_21) 
  (predecessor libro_29 libro_21) (predecessor libro_23 libro_21) (predecessor libro_24 libro_22) (predecessor libro_26 libro_22) (predecessor libro_27 libro_22) 
  (predecessor libro_28 libro_22) (predecessor libro_29 libro_22) (predecessor libro_24 libro_23) (predecessor libro_25 libro_23) (predecessor libro_26 libro_23) 
  (predecessor libro_27 libro_23) (predecessor libro_28 libro_23) (predecessor libro_29 libro_23) (predecessor libro_28 libro_24) (predecessor libro_26 libro_25) 
  (predecessor libro_28 libro_26) (predecessor libro_28 libro_27) 
   (deseado libro_5)  (deseado libro_9)  (deseado libro_23)  (deseado libro_25)  (deseado libro_1)  (deseado libro_11)  (deseado libro_16)  (deseado libro_20)  (deseado libro_26)  (deseado libro_19)  (deseado libro_15)  (deseado libro_7)  (deseado libro_4)  (deseado libro_13)  (deseado libro_12)  (deseado libro_3)  (deseado libro_2)  (deseado libro_28)  (deseado libro_18)  (deseado libro_8)  (deseado libro_14)  (deseado libro_27)  (deseado libro_10)  (deseado libro_6)  (deseado libro_24) 
  (leido libro_22)  (leido libro_17)  (leido libro_29)  (leido libro_0)  (leido libro_21)
 (es_fi fin) (es_fi fin2)
)
(:goal (and 
 (leido libro_5) (leido libro_9) (leido libro_23) (leido libro_25) (leido libro_1) (leido libro_11) (leido libro_16) (leido libro_20) (leido libro_26) (leido libro_19) (leido libro_15) (leido libro_7) (leido libro_4) (leido libro_13) (leido libro_12) (leido libro_3) (leido libro_2) (leido libro_28) (leido libro_18) (leido libro_8) (leido libro_14) (leido libro_27) (leido libro_10) (leido libro_6) (leido libro_24)
)))