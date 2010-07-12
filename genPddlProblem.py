#!/usr/bin/python

###############################################
#                                             #
# Generador de problemas en pddl              #
# Recibe:                                     #
# N: tamano del grid (NxN)                    #
# OX: coordenada origen x                     #
# OY: coordenada origen y                     #
# DX: coordenada destino x                    #
# DY: coordenada destino y                    #
#                                             #
###############################################

import sys
import random

def uso():
    print "USO: ./genPddlProblem.py <tamano del grid> <origen x> <origen y> <destino x> <destino y> <archivo salida>"

if (len(sys.argv)!=7):
    uso()
    exit(0)

N = sys.argv[1]
OX = sys.argv[2]
OY = sys.argv[3]
DX = sys.argv[4]
DY = sys.argv[5]
outfile = sys.argv[6]

# Se abre el archivo para su escritura
of = open(outfile,"w")

# Se escriben los datos del grid, uno por linea
of.write("(define (problem SEMAFOROS-GRID)\n\n")
of.write("(:domain SEMAFOROS)\n\n")
of.write("(:objects")

for i in range (0,int(N)):
    for j in range (0,int(N)):
        of.write(" i"+str(i)+str(j))
of.write(")\n\n")

of.write("(:INIT (turno_carro)\n")
of.write("\t(carro_"+OX+"_"+OY+")\n")
of.write("\t(t0))\n\n")

of.write("(:goal (and (carro_"+DX+"_"+DY+") (turno_carro)))\n\n)")

of.close()
