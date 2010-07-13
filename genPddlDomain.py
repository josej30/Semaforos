#!/usr/bin/python

################################################
#                                              #
# Actualiza los tiempos de un pddl con         #
# respecto a un grid de entrada                #
# Recibe:                                      #
# grid = archivo donde esta almacenado el grid #
# pddl = archivo que contiene el pddl domain   #
#                                              #
################################################

import os
import sys
import re
import random

def uso():
    print "USO: ./genPddl.py <grid> <outfile>"

if (len(sys.argv)!=3):
    uso()
    exit(0)
    
grid = sys.argv[1]
outpddl = sys.argv[2]

city = [[]]
n = 0

# Se abre el grid para leerlo
fgrid = open(grid,"r")

# Se vuelve a crear la matriz city con todos los semaforos de la ciudad
for line in fgrid:
    if line[0]=="[":
        inter = line.split("-")
        n = len(inter)
        inter = inter[0:n-1]
        temp = []
        for s4 in inter:
            sep_sem = s4.split("]")
            sep_sem = sep_sem[0:len(sep_sem)-1]
            linter = []
            for i in sep_sem:
                i = i.lstrip("[")
                sep_gr = i.split(",")
                lgr = [sep_gr[0],sep_gr[1]]
                linter.append(lgr)
            temp.append(linter)
        city.append(temp)        
city=city[1:n]

# Se abre el outfile para el nuevo pddl
outfile = open(outpddl,"w")

# Se escriben las definiciones al principio
# del archivo
outfile.write("\n;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n")
outfile.write("; Generado por genPddl.py \n")
outfile.write("; Definicion del dominio de los semaforos \n")
outfile.write("; Tamano: "+str(n-1)+"x"+str(n-1)+"\n")
outfile.write(";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\n")

outfile.write("(define (domain SEMAFOROS)\n")
outfile.write("(:requirements :strips :typing :equality)\n")
outfile.write("(:predicates\n")
for i in range (0,n-1):
    for j in range (0,n-1):
        outfile.write("\t(carro_"+str(i)+"_"+str(j)+")\n")
ts = ""
for cont in range(0,10):
    ts = ts+"(t"+str(cont)+") "
outfile.write("\t"+ts+"\n")
outfile.write("\t(turno_carro)\n\t(turno_sem ?origen ?destino)\n)\n\n")


# Aqui se comienzan con las acciones del carro

outfile.write("\n; Acciones del carro\n\n")

for i in range (0,n-1):
    for j in range (0,n-1):
                        
        # Saco los vecinos validos de cada interseccion 
        # y sus acciones correspondientes
        if (i-1>=0):     
      
            outfile.write("; "+str(i)+str(j)+"oeste\n")
            outfile.write("(:action carro_"+str(i)+"_"+str(j)+"\n")
            outfile.write("\t:parameters ()\n")
            outfile.write("\t:precondition (and (turno_carro) (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t:effect\n")
            outfile.write("\t(and (not (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t\t(carro_"+str(i-1)+"_"+str(j)+")\n")
            outfile.write("\t\t(not (turno_carro))\n")
            outfile.write("\t\t(turno_sem i"+str(i)+str(j)+" i"+str(i-1)+str(j)+"))\n")
            outfile.write(")\n")

        if (i+1<n-1):

            outfile.write("; "+str(i)+str(j)+"este\n")
            outfile.write("(:action carro_"+str(i)+"_"+str(j)+"\n")
            outfile.write("\t:parameters ()\n")
            outfile.write("\t:precondition (and (turno_carro) (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t:effect\n")
            outfile.write("\t(and (not (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t\t(carro_"+str(i+1)+"_"+str(j)+")\n")
            outfile.write("\t\t(not (turno_carro))\n")
            outfile.write("\t\t(turno_sem i"+str(i)+str(j)+" i"+str(i+1)+str(j)+"))\n")
            outfile.write(")\n")

        if (j-1>=0):

            outfile.write("; "+str(i)+str(j)+"norte\n")
            outfile.write("(:action carro_"+str(i)+"_"+str(j)+"\n")
            outfile.write("\t:parameters ()\n")
            outfile.write("\t:precondition (and (turno_carro) (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t:effect\n")
            outfile.write("\t(and (not (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t\t(carro_"+str(i)+"_"+str(j-1)+")\n")
            outfile.write("\t\t(not (turno_carro))\n")
            outfile.write("\t\t(turno_sem i"+str(i)+str(j)+" i"+str(i)+str(j-1)+"))\n")
            outfile.write(")\n")

        if (j+1<n-1):

            outfile.write("; "+str(i)+str(j)+"sur\n")
            outfile.write("(:action carro_"+str(i)+"_"+str(j)+"\n")
            outfile.write("\t:parameters ()\n")
            outfile.write("\t:precondition (and (turno_carro) (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t:effect\n")
            outfile.write("\t(and (not (carro_"+str(i)+"_"+str(j)+"))\n")
            outfile.write("\t\t(carro_"+str(i)+"_"+str(j+1)+")\n")
            outfile.write("\t\t(not (turno_carro))\n")
            outfile.write("\t\t(turno_sem i"+str(i)+str(j)+" i"+str(i)+str(j+1)+"))\n")
            outfile.write(")\n")


# Se escriben las acciones del semaforo

outfile.write("(:action sem\n")
outfile.write("\t:parameters (?origen ?destino)\n")
outfile.write("\t:precondition (and (turno_sem ?origen ?destino))\n")
outfile.write("\t:effect\n")
outfile.write("\t(and (not (turno_sem ?origen ?destino))\n")
outfile.write("\t(turno_carro)\n")
outfile.write("\n\t; Representacion de los tiempos de cada semaforo\n")

for i in range (0,n-1):
    for j in range (0,n-1):
                        
        # Saco los vecinos de cada interseccion
        if (i-1>=0):           
            reds = ""
            r = int(city[j][i][0][1])
            
            # Se asignan los tiempos de manera aleatoria
            ciclo = []
            start = random.randint(0,9)
            cont = 0
            while cont < r:
                if (start+cont>=10):
                    ciclo.append(start+cont-10)
                else:
                    ciclo.append(start+cont)
                cont+=1

            for cont in ciclo:
                reds = reds+"(t"+str(cont)+") "
            outfile.write("\t(when (and (= ?origen i"+str(i)+str(j)+") (= ?destino i"+str(i-1)+str(j)+") (or "+reds+")) (and (not (carro_"+str(i-1)+"_"+str(j)+")) (carro_"+str(i)+"_"+str(j)+")) )\n")
        if (i+1<n-1):
            reds = ""
            r = int(city[j][i][2][1])

            # Se asignan los tiempos de manera aleatoria
            ciclo = []
            start = random.randint(0,9)
            cont = 0
            while cont < r:
                if (start+cont>=10):
                    ciclo.append(start+cont-10)
                else:
                    ciclo.append(start+cont)
                cont+=1

            for cont in ciclo:
                reds = reds+"(t"+str(cont)+") "
            outfile.write("\t(when (and (= ?origen i"+str(i)+str(j)+") (= ?destino i"+str(i+1)+str(j)+") (or "+reds+")) (and (not (carro_"+str(i+1)+"_"+str(j)+")) (carro_"+str(i)+"_"+str(j)+")) )\n")
        if (j-1>=0):
            reds = ""
            r = int(city[j][i][1][1])

            # Se asignan los tiempos de manera aleatoria
            ciclo = []
            start = random.randint(0,9)
            cont = 0
            while cont < r:
                if (start+cont>=10):
                    ciclo.append(start+cont-10)
                else:
                    ciclo.append(start+cont)
                cont+=1

            for cont in ciclo:
                reds = reds+"(t"+str(cont)+") "
            outfile.write("\t(when (and (= ?origen i"+str(i)+str(j)+") (= ?destino i"+str(i)+str(j-1)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j-1)+")) (carro_"+str(i)+"_"+str(j)+")) )\n")
        if (j+1<n-1):
            reds = ""
            r = int(city[j][i][3][1])

            # Se asignan los tiempos de manera aleatoria
            ciclo = []
            start = random.randint(0,9)
            cont = 0
            while cont < r:
                if (start+cont>=10):
                    ciclo.append(start+cont-10)
                else:
                    ciclo.append(start+cont)
                cont+=1

            for cont in ciclo:
                reds = reds+"(t"+str(cont)+") "
            outfile.write("\t(when (and (= ?origen i"+str(i)+str(j)+") (= ?destino i"+str(i)+str(j+1)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j+1)+")) (carro_"+str(i)+"_"+str(j)+")) )\n")
            
# Ciclo del semaforo
outfile.write("\n; Se rotan los tiempos del semaforo\n")
outfile.write("\t(when (t0) (and (t1) (not (t0))))\n")
outfile.write("\t(when (t1) (and (t2) (not (t1))))\n")
outfile.write("\t(when (t2) (and (t3) (not (t2))))\n")
outfile.write("\t(when (t3) (and (t4) (not (t3))))\n")
outfile.write("\t(when (t4) (and (t5) (not (t4))))\n")
outfile.write("\t(when (t5) (and (t6) (not (t5))))\n")
outfile.write("\t(when (t6) (and (t7) (not (t6))))\n")
outfile.write("\t(when (t7) (and (t8) (not (t7))))\n")
outfile.write("\t(when (t8) (and (t9) (not (t8))))\n")
outfile.write("\t(when (t9) (and (t0) (not (t9))))\n")

outfile.write("\t)\n")
outfile.write(")\n")
outfile.write(")\n")

fgrid.close()
outfile.close()












