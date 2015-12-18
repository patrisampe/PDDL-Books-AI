(define (problem basico1) (:domain basico)
(:objects
	l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 - libro
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
  ; Libros que ya hemos leido
  (leido l1)
  (leido l2)
  ; Libros que deseamos leer
  (deseado l3)
  (deseado l4)
  (deseado l5)

)

(:goal (and
  (leido l3)
  (leido l4)
  (leido l5)
	)
)

)
