#!/usr/bin/python

###############################################
#                                             #
# Corridas del proyecto de semaforos          #
# Utilizando el planner num2sat               #
#                                             #
###############################################

import os
import sys
import re

def uso():
    print "USO: ./runFF.py <cantidad de corridas> <tamano del grid> <calles rapidas> <calles lentas> <origen x> <origen y> <destino x> <destino y> <archivo resultados>"

if (len(sys.argv)!=10):
    uso()
    exit(0)

N = int(sys.argv[1])
Ngrid = int(sys.argv[2])
fresult = open(sys.argv[9],"w")

os.system("mkdir temp")

# Se generan todos los grids
for i in range(0,N):
    corrida = "./genGrid.py "+str(Ngrid)+" "+sys.argv[3]+" "+sys.argv[4]+" temp/grid"+str(i)
    os.system(corrida)

# Se generan los pddls de cada grid
for i in range(0,N):
    corrida = "./genPddlDomain.py temp/grid"+str(i)+" temp/domainpddl"+str(i)
    os.system(corrida)

# Se genera el pddl con la definicion del problema
corrida = "./genPddlProblem.py "+str(Ngrid)+" "+sys.argv[5]+" "+sys.argv[6]+" "+sys.argv[7]+" "+sys.argv[8]+" temp/problempddl"
os.system(corrida)

# Se hace la corrida del planner num2sat para cada pddl generado
os.chdir("planners/num2sat")
for i in range(0,N):
    corrida = "./num2sat -o ../../temp/domainpddl"+str(i)+" -f ../../temp/problempddl > ../../temp/result"+str(i)
    os.system(corrida)
os.chdir("../..")

fresult.write("Resultados:\n\n")
fresult.write("Cantidad de pasos necesarios en cada ciudad:\n")

res = []
step = 0
for i in range(0,N):
    ftemp = open("temp/result"+str(i),"r")
    step = ""
    for line in ftemp:
        if re.search("Time",line):
            s = line.split(":")
            t = s[0]
            t = t[4:]
            step = t.lstrip()
        else:
            if step != "":
                break
    res.append(step)
            
for i in res:
    fresult.write(i+" ")
fresult.write("\n\nPromedio: \n")

sum = 0
for i in res:
    sum = sum + int(i)
fresult.write(str(float(sum)/float(len(res))))

fresult.write("\n")

fresult.close()
os.system("rm -rf temp")
