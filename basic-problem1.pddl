(define (problem basic1) (:domain basic)
(:objects
	Harry_Potter_1
  Harry_Potter_2
  Star_Wars_1
  Star_Wars_2
  Crepusculo
  Cincuenta_Sombras_de_Grey
  Juego_de_Tronos
  - libro
)

(:init
  ; Predecesores
  (predecesor Harry_Potter_2 Harry_Potter_1)
  (predecesor Star_Wars_2 Star_Wars_1)
  ; Libros que ya hemos leido
  (leido Juego_de_Tronos)
  ; Libros que deseamos leer
  (deseado Harry_Potter_1)
  (deseado Harry_Potter_2)
  (deseado Star_Wars_2)
  (deseado Crepusculo)
)

(:goal (and
  (forall (?l - libro) (imply (deseado ?l) (leido ?l)))  
	)
)
)
