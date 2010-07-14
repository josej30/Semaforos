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
    print "USO: ./runNum2sat.py <cantidad de corridas> <tamano del grid> <calles rapidas> <calles lentas> <origen x> <origen y> <destino x> <destino y> <archivo resultados>"

if (len(sys.argv)!=10):
    uso()
    exit(0)

N = int(sys.argv[1])
Ngrid = int(sys.argv[2])
fresult = open(sys.argv[9],"w")

os.system("mkdir tempsat")

# Se generan todos los grids
for i in range(0,N):
    corrida = "./genGrid.py "+str(Ngrid)+" "+sys.argv[3]+" "+sys.argv[4]+" tempsat/grid"+str(i)
    os.system(corrida)

# Se generan los pddls de cada grid
for i in range(0,N):
    corrida = "./genPddlDomain.py tempsat/grid"+str(i)+" tempsat/domainpddl"+str(i)
    os.system(corrida)

# Se genera el pddl con la definicion del problema
corrida = "./genPddlProblem.py "+str(Ngrid)+" "+sys.argv[5]+" "+sys.argv[6]+" "+sys.argv[7]+" "+sys.argv[8]+" tempsat/problempddl"
os.system(corrida)

# Se hace la corrida del planner num2sat para cada pddl generado
os.chdir("planners/num2sat")
for i in range(0,N):
    print i
    corrida = "./num2sat -o ../../tempsat/domainpddl"+str(i)+" -f ../../tempsat/problempddl > ../../tempsat/result"+str(i)
    os.system(corrida)
os.chdir("../..")

fresult.write("Resultados:\n\n")
fresult.write("Cantidad de pasos necesarios en cada ciudad:\n")

res = []
step = 0
for i in range(0,N):
    ftemp = open("tempsat/result"+str(i),"r")
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
    step = int(step)
    step = (step/2)+1
    res.append(step)
            
for i in res:
    fresult.write(str(i)+" ")
fresult.write("\n\nPromedio: \n")

sum = 0
for i in res:
    sum = sum + int(i)
fresult.write(str(float(sum)/float(len(res))))

fresult.write("\n")

fresult.close()
os.system("rm -rf tempsat")
