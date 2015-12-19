(define (problem basico1) 
  (:domain planningbooks) 
  (:objects 
   0
   1
   2
   3
   4
   5
   6
   7
   8
   9
   10
   11
   12
   13
   14
   15
   16
   17
   18
   19
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
  (paralelo 4 1)
  (paralelo 1 4)
  (paralelo 2 8)
  (paralelo 8 2)
  (paralelo 15 0)
  (paralelo 0 15)
  (paralelo 3 5)
  (paralelo 5 3)
  (paralelo 6 7)
  (paralelo 7 6)
  (paralelo 10 11)
  (paralelo 11 10)
  (paralelo 16 9)
  (paralelo 9 16)
  (paralelo 17 12)
  (paralelo 12 17)
  (paralelo 13 14)
  (paralelo 14 13)
  (paralelo 18 19)
  (paralelo 19 18)
  (predecessor 3 0)
  (predecessor 6 0)
  (predecessor 9 0)
  (predecessor 12 0)
  (predecessor 14 0)
  (predecessor 18 0)
  (predecessor 3 1)
  (predecessor 2 1)
  (predecessor 19 1)
  (predecessor 10 1)
  (predecessor 3 2)
  (predecessor 5 2)
  (predecessor 9 2)
  (predecessor 11 2)
  (predecessor 16 2)
  (predecessor 17 2)
  (predecessor 19 2)
  (predecessor 14 3)
  (predecessor 16 4)
  (predecessor 10 4)
  (predecessor 14 5)
  (predecessor 10 7)
  (predecessor 12 8)
  (predecessor 13 8)
  (predecessor 15 8)
  (predecessor 17 9)
  (predecessor 18 10)
  (predecessor 16 11)
  (predecessor 19 11)
  (predecessor 13 11)
  (predecessor 19 12)
  (predecessor 13 12)
  (predecessor 14 12)
  (predecessor 18 14)
  (predecessor 19 14)
  (predecessor 17 15)
  (leido 14)
  (leido 18)
  (leido 13)
  (leido 9)
  (leido 12)
  (deseado 2)
  (deseado 8)
  (deseado 4)
  (deseado 0)
  (deseado 15)
)
(:goal (and 
  (leido 2)
  (leido 8)
  (leido 4)
  (leido 0)
  (leido 15)
))
)