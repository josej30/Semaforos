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
# Cada semaforo tiene un ciclo total que dura 10 segundos.
# Para cada interseccion se genera primero la duracion del color verde.
# Con el tiempo del color verde se genera el tiempo del rojo.
# Vale destacar que estos semaforos no tienen colores amarillas. 
#
for av in range(0,int(N)):
    city.append([])
    inter = []
    for street in range(0,int(N)):
        inter = []
        for i in range(0,4):
            # Se determinan las luces de las intersecciones
            g = random.randint(2,8)
            r = 10-g
            inter.append([g,r])
        city[av].append(inter)

#
# Se generan las calles rapidas aleatoriamente
# Las calles rapidas tienen el tiempo de luz verde en 9 segundos
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
                    inter = [[9,1],[9,1],[9,1],[9,1]]
                    city[i][coordy] = inter                    
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(i)+","+str(coordy)+" ")
                    inter = [[9,1],[9,1],[9,1],[9,1]]
                    city[coordy][i] = inter
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(i)+","+str(coordx)+" ")
                    inter = [[9,1],[9,1],[9,1],[9,1]]
                    city[coordx][i] = inter
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(coordx)+","+str(i)+" ")
                    inter = [[9,1],[9,1],[9,1],[9,1]]
                    city[i][coordx] = inter
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
                    inter = [[1,9],[1,9],[1,9],[1,9]]
                    city[i][coordy] = inter
                    found = 1
            elif (coordx-longitud>0):
                for i in range(coordx,coordx-longitud,-1):
                    outfile.write(str(i)+","+str(coordy)+" ")
                    inter = [[1,9],[1,9],[1,9],[1,9]]
                    city[i][coordy] = inter
                    found = 1
        else:
            if (coordy+longitud<int(N)):
                for i in range(coordy,coordy+longitud):                
                    outfile.write(str(coordx)+","+str(i)+" ")
                    inter = [[1,9],[1,9],[1,9],[1,9]]
                    city[coordx][i] = inter
                    found = 1
            elif (coordy-longitud>0):
                for i in range(coordy,coordy-longitud,-1):
                    outfile.write(str(coordx)+","+str(i)+" ")
                    inter = [[1,9],[1,9],[1,9],[1,9]]
                    city[coordx][i] = inter
                    found = 1
        if (found == 1):
            break
    outfile.write("\n")

# Se escribe la matriz con todas las intersecciones separadas por
# el caracter "-" en el archivo de salida
for av in city:
    for i in av:
        for j in i:
            outfile.write(str(j))
        outfile.write("-")
    outfile.write("\n")

outfile.close()

