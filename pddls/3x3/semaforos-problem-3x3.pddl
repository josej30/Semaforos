(define (problem SEMAFOROS-GRID)

(:domain SEMAFOROS)

(:objects i00 i01 i02 i10 i11 i12 i20 i21 i22)

(:INIT 	(turno_carro) 
	(carro_0_0)
	(t0))

(:goal (and (carro_2_2) (turno_carro)))

)
