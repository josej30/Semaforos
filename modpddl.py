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

def uso():
    print "USO: <grid> <dominio pddl>"

if (len(sys.argv)!=3):
    uso()
    exit(0)
    
grid = sys.argv[1]
pddl = sys.argv[2]

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

# Se abre el archivo pddl
fpddl = open(pddl,"r")

# Se abre el archivo temporal que
# contendra el nuevo pddl
fnew = open("newpddl","w")

found = 0

for line in fpddl:
    fnew.write(line)
    if found != -1:
        if re.search("tiempos_semaforos",line):
            found = 1

            # Dentro de esta guarda se escribiran las reglas
            # correspondientes a los tiempos de cada semaforo
            if found == 1:
                for i in range (0,n-1):
                    for j in range (0,n-1):
                        
                        # Saco los vecinos de cada interseccion
                        if (i-1>=0):           
                            reds = ""
                            r = int(city[i][j][0][1])
                            for cont in range(0,r):
                                reds = reds+"(t"+str(cont)+") "
                            fnew.write("(when (and (= ?destino i"+str(i)+str(j)+") (= ?origen i"+str(i-1)+str(j)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j)+")) (carro_"+str(i-1)+"_"+str(j)+")) )\n")
                        if (i+1<n-1):
                            reds = ""
                            r = int(city[i][j][2][1])
                            for cont in range(0,r):
                                reds = reds+"(t"+str(cont)+") "
                            fnew.write("(when (and (= ?destino i"+str(i)+str(j)+") (= ?origen i"+str(i+1)+str(j)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j)+")) (carro_"+str(i+1)+"_"+str(j)+")) )\n")
                        if (j-1>=0):
                            reds = ""
                            r = int(city[i][j][1][1])
                            for cont in range(0,r):
                                reds = reds+"(t"+str(cont)+") "
                            fnew.write("(when (and (= ?destino i"+str(i)+str(j)+") (= ?origen i"+str(i)+str(j-1)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j)+")) (carro_"+str(i)+"_"+str(j-1)+")) )\n")
                        if (j+1<n-1):
                            reds = ""
                            r = int(city[i][j][3][1])
                            for cont in range(0,r):
                                reds = reds+"(t"+str(cont)+") "
                            fnew.write("(when (and (= ?destino i"+str(i)+str(j)+") (= ?origen i"+str(i)+str(j+1)+") (or "+reds+")) (and (not (carro_"+str(i)+"_"+str(j)+")) (carro_"+str(i)+"_"+str(j+1)+")) )\n")

            found = -1


os.system("mv newpddl "+pddl)













