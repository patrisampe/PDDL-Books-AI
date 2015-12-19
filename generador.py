# -*- coding: utf-8 -*-
import networkx as nx
import random
import numpy as np

f =open('provaambgenerador2.pddl','w')
numerodenodes = 10
numerosdeseados= 3
numerosleidos= 3
G=nx.gnp_random_graph(10,random.uniform(0.1,0.9),directed=True)
DAG = nx.DiGraph([(u,v,{'weight':random.randint(1,1)}) for (u,v) in G.edges() if u<v] )
nx.is_directed_acyclic_graph(DAG)
nx.nodes(DAG)

f.write( '(define (problem basico1) \n  (:domain planningbooks) \n  (:objects ')
for i in nx.nodes(DAG):
    aux= '\n   libro_' +`i`
    f.write( aux)

f.write( '\n  - libro ')
f.write( '\n  enero febrero marzo abril mayo junio julio agosto setiembre octubre noviembre diciembre - mes')
f.write( '\n )')
    
f.write( '\n(:init')
f.write( '\n  (mes_actual enero)')
f.write( '\n  (mes_siguiente enero febrero) ')
f.write( '\n  (mes_siguiente febrero marzo)')
f.write( '\n  (mes_siguiente marzo abril)')
f.write( '\n  (mes_siguiente abril mayo)')
f.write( '\n  (mes_siguiente mayo junio)')
f.write( '\n  (mes_siguiente junio julio)')
f.write( '\n  (mes_siguiente julio agosto)')
f.write( '\n  (mes_siguiente agosto setiembre)')
f.write( '\n  (mes_siguiente setiembre octubre)')
f.write( '\n  (mes_siguiente octubre noviembre)')
f.write( '\n  (mes_siguiente noviembre diciembre)')
perm = DAG.edges()

for i in range(len(nx.topological_sort(DAG))):
    if(i%2 == 0 and (i+1)< len(nx.topological_sort(DAG))):
        u = nx.topological_sort(DAG)[i]
        v = nx.topological_sort(DAG)[i+1]
        if (u,v) in perm:
            perm.remove((u,v))
        if (v,u) in perm:
            perm.remove((v,u))
        f.write( '\n  (paralelo libro_'+`u`+' libro_'+`v`+')')
        f.write( '\n  (paralelo libro_'+`v`+' libro_'+`u`+')')
    
for (u,v) in perm:
    f.write( '\n  (predecessor libro_'+`v`+' libro_'+`u`+')')

nodestotal = DAG.nodes()

for i in range(numerosleidos):
    aux =np.random.randint(0,len(nodestotal))
    f.write( '\n  (leido libro_'+`nodestotal[aux]`+')')
    nodestotal.remove(nodestotal[aux])
deseo = []
for i in range(numerosdeseados):
    aux =np.random.randint(0,len(nodestotal))
    f.write( '\n  (deseado libro_'+`nodestotal[aux]`+')')
    deseo.append(nodestotal[aux])
    nodestotal.remove(nodestotal[aux])

f.write( '\n)'  )

f.write( '\n(:goal (and ')

for i in range(len(deseo)):
    f.write( '\n  (leido libro_'+`deseo[i]`+')')

f.write( '\n))')
f.write( '\n)')
f.close()