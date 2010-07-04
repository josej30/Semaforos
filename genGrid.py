#!/usr/bin/python

###############################################
#                                             #
# Generador de Grids (ciudades con semaforos) #
# Recibe:                                     #
# N: tamano del grid (NxN)                    #
# CR: Numero de calles rapidas                #
# CP: Numero de calles peatonales             #
# OF: Nombre del archivo de salida            #
#                                             #
###############################################

import sys
import random

def uso():
    print "USO: ./genGrid <tamano del grid> <numero de calles rapidas> <numero de calles peatonales> <archivo de salida>"


# Programa principal

if (len(sys.argv)!=5):
    uso()
    exit(0)

N = sys.argv[1]
CR = sys.argv[2]
CP = sys.argv[3]
OF = sys.argv[4]

city = [[]]

# Se abre el archivo para su escritura
outfile = open(OF,"w")

# Se escriben los datos del grid, uno por linea
outfile.write(N+"\n"+CR+"\n")

#
# Se genera automaticamente un grid.
#
# Cada semaforo tiene un ciclo total que dura 100 segundos.
# Para cada interseccion se genera primero la duracion de las g.
# Con el tiempo de las g se generan las r.
# Vale destacar que las y y ry solo estan prendidas 4 segundos.
# Las luces se guardan en una lista = [g,r,y,ry]
#
for av in range(0,int(N)):
    city.append([])
    for street in range(0,int(N)):
        g = random.randint(20,80)
        r = 100-g-8
        city[av].append([g,r])

#
# Se generan las calles rapidas aleatoriamente
# Las calles rapidas tienen el tiempo de luz verde entre 70 y 85 segundos
#
for cr in range (0,int(CR)):
    coordx = random.randint(0,int(N))
    coordy = random.randint(0,int(N))
    # 0 = horizontal, 1 = vertical
    sentido = random.randint(0,1)

    found = 0
    while (1==1):
        # longitud de la calle rapida se encuentra entre 1/4 y 3/4 de la longitud del grid
        longitud = random.randint(int(N)/4,3*int(N)/4)

        if (sentido==0):
            if (coordx+longitud<int(N)):
                for i in range(coordx,coordx+longitud):
                    outfile.write(str(coordy)+","+str(i)+" ")
                    g = random.randint(70,85)
                    r = 100-g-8
                    city[i][coordy] = [g,r]
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(coordy)+","+str(i)+" ")
                    g = random.randint(70,85)
                    r = 100-g-8
                    city[i][coordy] = [g,r]
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(i)+","+str(coordx)+" ")
                    g = random.randint(70,85)
                    r = 100-g-8
                    city[coordx][i] = [g,r]
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(i)+","+str(coordx)+" ")
                    g = random.randint(70,85)
                    r = 100-g-8
                    city[coordx][i] = [g,r]
                    found = 1
        if (found == 1):
            break
    outfile.write("\n")
    

#
# Se generan las calles peatonales aleatoriamente
# Las calles peatonales tienen el tiempo de luz roja entre 70 y 85 segundos
#
outfile.write(CP+'\n')
for cp in range (0,int(CP)):
    coordx = random.randint(0,int(N))
    coordy = random.randint(0,int(N))
    # 0 = horizontal, 1 = vertical
    sentido = random.randint(0,1)

    found = 0
    while (1==1):
        # longitud de la calle peatonal se encuentra entre 1/4 y 3/4 de la longitud del grid
        longitud = random.randint(int(N)/4,3*int(N)/4)

        if (sentido==0):
            if (coordx+longitud<int(N)):
                for i in range(coordx,coordx+longitud):
                    outfile.write(str(coordy)+","+str(i)+" ")
                    r = random.randint(70,85)
                    g = 100-r-8
                    city[i][coordy] = [g,r]
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(coordy)+","+str(i)+" ")
                    r = random.randint(70,85)
                    g = 100-r-8
                    city[i][coordy] = [g,r]
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(i)+","+str(coordx)+" ")
                    r = random.randint(70,85)
                    g = 100-r-8
                    city[coordx][i] = [g,r]
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(i)+","+str(coordx)+" ")
                    r = random.randint(70,85)
                    g = 100-r-8
                    city[coordx][i] = [g,r]
                    found = 1
        if (found == 1):
            break
    outfile.write("\n")



for av in city:
    for i in av: 
        outfile.write(str(i[0])+"-"+str(i[1])+" ")
    outfile.write("\n")

outfile.close()

