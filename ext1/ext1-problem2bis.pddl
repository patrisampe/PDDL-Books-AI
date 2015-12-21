(define (problem ext1-3) (:domain ext1)
(:objects
  Harry_Potter_1
  Harry_Potter_2
  Harry_Potter_3
  Harry_Potter_4
  Harry_Potter_5
  Harry_Potter_6
  Harry_Potter_7
  Harry_Potter_8
  Harry_Potter_9
  Harry_Potter_10
  Harry_Potter_11
  Harry_Potter_12
  Harry_Potter_13
  Star_Wars_1
  Star_Wars_2
  Star_Wars_3
  Juego_de_Tronos
  Crepusculo
  Cincuenta_Sombras_de_Grey
  - libro
  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre f1 f2 - mes
)

(:init
  ; Meses
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
  (mes_siguiente diciembre f1)
  (mes_siguiente f1 f2)
  (es_fantasma f1)
  (es_fantasma f2)
  ; Predecesores
  (predecesor Harry_Potter_13 Harry_Potter_12)
  (predecesor Harry_Potter_12 Harry_Potter_11)
  (predecesor Harry_Potter_11 Harry_Potter_10)
  (predecesor Harry_Potter_10 Harry_Potter_9)
  (predecesor Harry_Potter_9 Harry_Potter_8)
  (predecesor Harry_Potter_8 Harry_Potter_7)
  (predecesor Harry_Potter_7 Harry_Potter_6)
  (predecesor Harry_Potter_6 Harry_Potter_5)
  (predecesor Harry_Potter_5 Harry_Potter_4)
  (predecesor Harry_Potter_4 Harry_Potter_3)
  (predecesor Harry_Potter_3 Harry_Potter_2)
  (predecesor Harry_Potter_2 Harry_Potter_1)
  (predecesor Star_Wars_3 Star_Wars_2)
  (predecesor Star_Wars_2 Star_Wars_1)
  ; Libros que ya hemos leido
  (leido Crepusculo)
  (leido Harry_Potter_1)
  ; Libros que deseamos leer
  (deseado Harry_Potter_13)
)

(:goal (and
  (forall (?l - libro) (imply (deseado ?l) (leido ?l)))  
  )
)

)