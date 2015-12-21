#!/bin/bash


numeroleidos=0
numeroparalelos=2
paralelsseguits=0

resultados=resultados.txt

for probarista in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9
do 
	for numerodenodes in {1..50}
	do
		for numerodeseados in {1..$numerodenodes}
        do
			echo "########### Libros: $numerodenodes, Deseados: $numerodeseados, Leidos: $numeroleidos, Paralelos: $numeroparalelos, ParalelosJuntos: $paralelsseguits, ProbabilidadRelacion: $probarista" >> $resultados
			../Generator/GENERADOR.py $numerodenodes $numerodeseados $numeroleidos $numeroparalelos $paralelsseguits $probarista 

			#ff -o ../ext2/libros-domain.pddl -f juegodepruebas-$numerodenodes-$numerodeseados-$numeroleidos-$numeroparalelos-$paralelsseguits-$probarista-.pddl | grep "seconds" >> $resultados
			totaltime=$(timeout 60 ff -o ../ext2/libros-domain.pddl -f juegodepruebas-$numerodenodes-$numerodeseados-$numeroleidos-$numeroparalelos-$paralelsseguits-$probarista-.pddl | if [ $? -ne 124 ]; then
										  grep "seconds total time"
									   else 
										  echo "timeout"
									   fi)
			echo $totaltime >> $resultados

			numtime=$(echo $totaltime | awk '{print $1}')

			echo $numerodenodes $numerodeseados $numeroparalelos $probarista $numtime >> $resultados 
		
		done
	done
done





