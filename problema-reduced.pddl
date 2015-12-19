(define (problem basico1) 
  (:domain planningbooks)
  (:objects
  Harry_Potter_1
  Harry_Potter_2
  Harry_Potter_3
  Harry_Potter_4
  Harry_Potter_5
  Star_Wars_1
  Star_Wars_2
  Star_Wars_3
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
  (predecessor Harry_Potter_5 Harry_Potter_4)
  (predecessor Harry_Potter_4 Harry_Potter_3)
  (predecessor Harry_Potter_3 Harry_Potter_2)
  (predecessor Harry_Potter_2 Harry_Potter_1)
  (predecessor Star_Wars_3 Star_Wars_2)
  (predecessor Star_Wars_2 Star_Wars_1)
  ; Libros que ya hemos leido
  (leido Harry_Potter_1)
  ; Libros que deseamos leer
  (deseado Harry_Potter_4)
  (deseado Star_Wars_3)
  
 ; (= (paginas Harry_Potter_1) 100)
 ; (= (paginas Harry_Potter_2) 100)
 ; (= (paginas Harry_Potter_3) 100)
 ; (= (paginas Harry_Potter_4) 100)
 ; (= (paginas Harry_Potter_5) 100)
 ; (= (paginas Star_Wars_2) 100)
 ; (= (paginas Star_Wars_1) 100)
 ; (= (paginas Star_Wars_3) 100)
 ; (= (paginas_actuales) 0)
  
)

(:goal (and
  (leido Harry_Potter_4)
  (leido Star_Wars_3)
	)
)

)
