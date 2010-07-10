#!/usr/bin/python

###############################################
#                                             #
# Generador de Grids (ciudades con semaforos) #
# Esta version es realista ya que genera      #
# intersecciones coherentes en tiempo.        #
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
# Cada semaforo tiene un ciclo total que dura 10 segundos.
# Para cada interseccion se genera primero la duracion del color verde.
# Con el tiempo del color verde se genera el tiempo del rojo.
# Vale destacar que estos semaforos no tienen colores amarillas. 
#
for av in range(0,int(N)):
    city.append([])
    inter = []
    for street in range(0,int(N)):
        # Se determina la luz del norte
        g1 = random.randint(3,6)
        r1 = 10-g1
        inter.append([g1,r1])
        # Se determina la luz del este
        g2 = random.randint(1,10-g1-2)
        r2 = 10-g2
        inter.append([g2,r2])
        # Se determina la luz del sur
        g3 = random.randint(1,10-g1-g2-1)
        r3 = 10-g3
        inter.append([g3,r3])
        # Se determina la luz del oeste
        g4 = random.randint(1,10-g1-g2-g3)
        r4 = 10-g4
        inter.append([g4,r4])
        city[av].append(inter)

#
# Se generan las calles rapidas aleatoriamente
# Las calles rapidas tienen el tiempo de luz verde en 7 segundos
#
for cr in range (0,int(CR)):
    coordx = random.randint(0,int(N)-1)
    coordy = random.randint(0,int(N)-1)
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
                    g = random.randint(8,9)
                    r = 10-g
                    city[i][coordy] = [g,r]
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(i)+","+str(coordy)+" ")
                    g = random.randint(8,9)
                    r = 10-g
                    city[coordy][i] = [g,r]
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(i)+","+str(coordx)+" ")
                    g = random.randint(8,9)
                    r = 10-g
                    city[coordx][i] = [g,r]
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(coordx)+","+str(i)+" ")
                    g = random.randint(8,9)
                    r = 10-g
                    city[i][coordx] = [g,r]
                    found = 1
        if (found == 1):
            break
    outfile.write("\n")
    

#
# Se generan las calles peatonales aleatoriamente
# Las calles peatonales tienen el tiempo de luz roja en 9 segundos
#
outfile.write(CP+'\n')
for cp in range (0,int(CP)):
    coordx = random.randint(0,int(N)-1)
    coordy = random.randint(0,int(N)-1)
    # 0 = horizontal, 1 = vertical
    sentido = random.randint(0,1)

    found = 0
    while (1==1):
        # longitud de la calle peatonal se encuentra entre 1/4 y 3/4 de la longitud del grid
        longitud = random.randint(int(N)/4,3*int(N)/4)

        if (sentido==0):
            if (coordx+longitud<int(N)):
                for i in range(coordx,coordx+longitud):
                    outfile.write(str(i)+","+str(coordy)+" ")
                    r = random.randint(8,9)
                    g = 10-r
                    city[i][coordy] = [g,r]
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(i)+","+str(coordy)+" ")
                    r = random.randint(8,9)
                    g = 10-r
                    city[i][coordy] = [g,r]
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(coordx)+","+str(i)+" ")
                    r = random.randint(8,9)
                    g = 10-r
                    city[coordx][i] = [g,r]
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(coordx)+","+str(i)+" ")
                    r = random.randint(8,9)
                    g = 10-r
                    city[coordx][i] = [g,r]
                    found = 1
        if (found == 1):
            break
    outfile.write("\n")



for av in city:
    for i in av:
        for j in i:
            outfile.write(str(j)+" ")
    outfile.write("\n")

outfile.close()

