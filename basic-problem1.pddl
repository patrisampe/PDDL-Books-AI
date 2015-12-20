(define (problem basic1) (:domain basic)
(:objects
	Harry_Potter_1
  Harry_Potter_2
  Harry_Potter_3
  Harry_Potter_4
  Star_Wars_1
  Star_Wars_2
  Crepusculo
  Cincuenta_Sombras_de_Grey
  Juego_de_Tronos
  - libro
  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre - mes
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
  ; Predecesores
  (predecesor Harry_Potter_4 Harry_Potter_3)
  (predecesor Harry_Potter_3 Harry_Potter_2)
  (predecesor Harry_Potter_2 Harry_Potter_1)
  (predecesor Star_Wars_2 Star_Wars_1)
  ; Libros que ya hemos leido
  (leido Juego_de_Tronos)
  ; Libros que deseamos leer
  ;(deseado Harry_Potter_1)
  (deseado Harry_Potter_4)
  (deseado Star_Wars_2)
  (deseado Crepusculo)
)

(:goal (and
  (forall (?l - libro) (imply (deseado ?l) (leido ?l)))  
	)
)
)
