#!/usr/bin/python
# -*- coding: utf-8 -*-
import networkx as nx
import random
import numpy as np
import sys

def usage():
  print './GENERADOR.py numLibros numDeseados numLeidos numParalelos paralelosSeguidos probPredecesor \n \
             numLibros			-	[int]	número de Libros \n \
             numDeseados		-	[int]	número de Libros que desea leer \n \
             numLeidos			-	[int]	número de libros que han sido leídos \n \
             numParalelos		-	[int]	número de relaciones del tipo \'paralelo\' \n \
             paralelosSeguidos		-	[0|1]	 \'paralelo\' \n \
             probPredecesor		-	[0..1]	probabilidad de que un libro sea tenga una relacion con otro'
             

if len(sys.argv) <= 1 :
  usage()
  sys.exit()

numerodenodes = int(sys.argv[1])
numerodeseados = int(sys.argv[2])
numeroleidos = int(sys.argv[3])
numeroparalelos = int(sys.argv[4])
paralelsseguits= int(sys.argv[5])
probarista = float(sys.argv[6])
f =open('juegodepruebas-'+`numerodenodes`+'-'+`numerodeseados`+'-'+`numeroleidos`+'-'+`numeroparalelos`+'-'+`paralelsseguits`+'-'+`probarista`+'-.pddl','w')

G=nx.gnp_random_graph(numerodenodes,probarista,directed=True)
DAG = nx.DiGraph([(u,v,{'weight':1}) for (u,v) in G.edges() if u<v] )
nx.is_directed_acyclic_graph(DAG)
nx.nodes(DAG)

f.write( '(define (problem automatico) \n  (:domain planningbooks) \n  (:objects ')
for i in nx.nodes(DAG):
    aux= '  libro_' +`i`
    f.write( aux)

f.write( '  - libro ')
f.write( '\n  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre sentinel sentinel_two - mes')
f.write( '\n )')
    
f.write( '\n(:init')
f.write( '\n  (mes_actual enero)')
f.write( '  (mes_siguiente enero febrero) ')
f.write( '  (mes_siguiente febrero marzo)')
f.write( '  (mes_siguiente marzo abril)')
f.write( '  (mes_siguiente abril mayo)')
f.write( '  (mes_siguiente mayo junio)')
f.write( '  (mes_siguiente junio julio)')
f.write( '  (mes_siguiente julio agosto)')
f.write( '  (mes_siguiente agosto setiembre)')
f.write( '  (mes_siguiente setiembre octubre)')
f.write( '  (mes_siguiente octubre noviembre)')
f.write( '  (mes_siguiente noviembre diciembre)')
f.write( '  (mes_siguiente diciembre sentinel)')
f.write( '  (mes_siguiente diciembre sentinel_two)')
f.write ( ' \n ')
perm = DAG.edges()
j = 0

for i in range(len(nx.topological_sort(DAG))):
    if(paralelsseguits == 0 and j< numeroparalelos and i%2 == 0 and (i+1)< len(nx.topological_sort(DAG))):
        u = nx.topological_sort(DAG)[i]
        v = nx.topological_sort(DAG)[i+1]
        if (u,v) in perm:
            perm.remove((u,v))
        if (v,u) in perm:
            perm.remove((v,u))
        f.write( '  (paralelo libro_'+`v`+' libro_'+`u`+')')
        j = j+1
    if (paralelsseguits == 1 and j < numeroparalelos and (i+1)< len(nx.topological_sort(DAG))):
        u = nx.topological_sort(DAG)[i]
        v = nx.topological_sort(DAG)[i+1]
        if (u,v) in perm:
            perm.remove((u,v))
        if (v,u) in perm:
            perm.remove((v,u))
        f.write( '  (paralelo libro_'+`u`+' libro_'+`v`+')')
        j = j+1
f.write ( ' \n ')
io = 0 
for (u,v) in perm:
    if (i%5 == 0):
        f.write ( ' \n ') 
    f.write( ' (predecessor libro_'+`v`+' libro_'+`u`+')')
    i=i+1
f.write ( ' \n ') 
nodestotal = DAG.nodes()
deseo = []
orden = nx.nx.topological_sort(DAG)

for i in range(numeroleidos):
       
        if(i == (numeroleidos -1)):
            f.write( '  (leyendo_mes_anterior libro_'+`orden[i]`+')')
            nodestotal.remove(orden[i])
        else:
            f.write( '  (leido libro_'+`orden[i]`+')')
            nodestotal.remove(orden[i])
f.write ( ' \n ') 
for i in range(numerodeseados):
    if(len(nodestotal) > 0):
        aux =np.random.randint(0,len(nodestotal))
        f.write( '  (deseado libro_'+`nodestotal[aux]`+')')
        deseo.append(nodestotal[aux])
        nodestotal.remove(nodestotal[aux])
f.write( ' \n')



f.write( '\n (es_fantasma sentinel) (es_fantasma sentinel_two)' )
f.write( '\n)'  )

f.write( '\n(:goal (and ')
"""
f.write( '\n'  )
for i in range(len(deseo)):
    f.write( ' (leido libro_'+`deseo[i]`+')')
"""
f.write ("\n (forall (?l - libro) (imply (deseado ?l) (leido ?l))))")


f.write( '\n))')
f.close()
