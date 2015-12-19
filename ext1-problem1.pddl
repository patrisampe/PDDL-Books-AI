(define (problem ext1-1) (:domain ext1)
(:objects
	Harry_Potter_1
  Harry_Potter_2
  Harry_Potter_3
  Harry_Potter_4
  Harry_Potter_5
  Star_Wars_1
  Star_Wars_2
  Star_Wars_3
  Juego_de_Tronos
  Crepusculo
  Cincuenta_Sombras_de_Grey
  - libro
)

(:init
  ; Predecesores
  (predecesor Harry_Potter_5 Harry_Potter_4)
  (predecesor Harry_Potter_4 Harry_Potter_3)
  (predecesor Harry_Potter_3 Harry_Potter_2)
  (predecesor Harry_Potter_2 Harry_Potter_1)
  (predecesor Star_Wars_3 Star_Wars_2)
  (predecesor Star_Wars_2 Star_Wars_1)
  ; Libros que ya hemos leido
  (leido Harry_Potter_1)
  ; Libros que deseamos leer
  (deseado Harry_Potter_5)
  (deseado Star_Wars_2)
)

(:goal (and
  (forall (?l - libro) (imply (deseado ?l) (leido ?l)))  
	)
)

)