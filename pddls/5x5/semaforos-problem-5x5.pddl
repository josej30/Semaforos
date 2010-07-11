(define (problem SEMAFOROS-GRID)

(:domain SEMAFOROS)

(:objects i00 i01 i02 i03 i04 i10 i11 i12 i13 i14 i20 i21 i22 i23 i24 i30 i31 i32 i33 i34 i40 i41 i42 i43 i44)

(:INIT 	(turno_carro) 
	(carro_0_0)
	(t0))

(:goal (and (carro_4_4) (turno_carro)))

)
