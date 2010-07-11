#!/usr/bin/python

################################################
#                                              #
# Restaura los pddls a como estaban            #
# originalmente                                #
#                                              #
################################################

import os
import sys

def uso():
    print "USO: ./restorepddl.py <dominio pddl>"

if (len(sys.argv)!=2):
    uso()
    exit(0)

pddl = sys.argv[1]

os.system("cp .origpddl "+pddl)













