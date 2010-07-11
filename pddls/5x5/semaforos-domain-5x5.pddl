
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Generado por genPddl.py 
; Definicion del dominio de los semaforos 
; Tamano: 5x5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SEMAFOROS)
(:requirements :strips :typing :equality)
(:predicates
	(carro_0_0)
	(carro_0_1)
	(carro_0_2)
	(carro_0_3)
	(carro_0_4)
	(carro_1_0)
	(carro_1_1)
	(carro_1_2)
	(carro_1_3)
	(carro_1_4)
	(carro_2_0)
	(carro_2_1)
	(carro_2_2)
	(carro_2_3)
	(carro_2_4)
	(carro_3_0)
	(carro_3_1)
	(carro_3_2)
	(carro_3_3)
	(carro_3_4)
	(carro_4_0)
	(carro_4_1)
	(carro_4_2)
	(carro_4_3)
	(carro_4_4)
	(t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) (t8) (t9) 
	(turno_carro)
	(turno_sem ?origen ?destino)
)


; Acciones del carro

; 00este
(:action carro_0_0
	:parameters ()
	:precondition (and (turno_carro) (carro_0_0))
	:effect
	(and (not (carro_0_0))
		(carro_1_0)
		(not (turno_carro))
		(turno_sem i00 i10))
)
; 00sur
(:action carro_0_0
	:parameters ()
	:precondition (and (turno_carro) (carro_0_0))
	:effect
	(and (not (carro_0_0))
		(carro_0_1)
		(not (turno_carro))
		(turno_sem i00 i01))
)
; 01este
(:action carro_0_1
	:parameters ()
	:precondition (and (turno_carro) (carro_0_1))
	:effect
	(and (not (carro_0_1))
		(carro_1_1)
		(not (turno_carro))
		(turno_sem i01 i11))
)
; 01norte
(:action carro_0_1
	:parameters ()
	:precondition (and (turno_carro) (carro_0_1))
	:effect
	(and (not (carro_0_1))
		(carro_0_0)
		(not (turno_carro))
		(turno_sem i01 i00))
)
; 01sur
(:action carro_0_1
	:parameters ()
	:precondition (and (turno_carro) (carro_0_1))
	:effect
	(and (not (carro_0_1))
		(carro_0_2)
		(not (turno_carro))
		(turno_sem i01 i02))
)
; 02este
(:action carro_0_2
	:parameters ()
	:precondition (and (turno_carro) (carro_0_2))
	:effect
	(and (not (carro_0_2))
		(carro_1_2)
		(not (turno_carro))
		(turno_sem i02 i12))
)
; 02norte
(:action carro_0_2
	:parameters ()
	:precondition (and (turno_carro) (carro_0_2))
	:effect
	(and (not (carro_0_2))
		(carro_0_1)
		(not (turno_carro))
		(turno_sem i02 i01))
)
; 02sur
(:action carro_0_2
	:parameters ()
	:precondition (and (turno_carro) (carro_0_2))
	:effect
	(and (not (carro_0_2))
		(carro_0_3)
		(not (turno_carro))
		(turno_sem i02 i03))
)
; 03este
(:action carro_0_3
	:parameters ()
	:precondition (and (turno_carro) (carro_0_3))
	:effect
	(and (not (carro_0_3))
		(carro_1_3)
		(not (turno_carro))
		(turno_sem i03 i13))
)
; 03norte
(:action carro_0_3
	:parameters ()
	:precondition (and (turno_carro) (carro_0_3))
	:effect
	(and (not (carro_0_3))
		(carro_0_2)
		(not (turno_carro))
		(turno_sem i03 i02))
)
; 03sur
(:action carro_0_3
	:parameters ()
	:precondition (and (turno_carro) (carro_0_3))
	:effect
	(and (not (carro_0_3))
		(carro_0_4)
		(not (turno_carro))
		(turno_sem i03 i04))
)
; 04este
(:action carro_0_4
	:parameters ()
	:precondition (and (turno_carro) (carro_0_4))
	:effect
	(and (not (carro_0_4))
		(carro_1_4)
		(not (turno_carro))
		(turno_sem i04 i14))
)
; 04norte
(:action carro_0_4
	:parameters ()
	:precondition (and (turno_carro) (carro_0_4))
	:effect
	(and (not (carro_0_4))
		(carro_0_3)
		(not (turno_carro))
		(turno_sem i04 i03))
)
; 10oeste
(:action carro_1_0
	:parameters ()
	:precondition (and (turno_carro) (carro_1_0))
	:effect
	(and (not (carro_1_0))
		(carro_0_0)
		(not (turno_carro))
		(turno_sem i10 i00))
)
; 10este
(:action carro_1_0
	:parameters ()
	:precondition (and (turno_carro) (carro_1_0))
	:effect
	(and (not (carro_1_0))
		(carro_2_0)
		(not (turno_carro))
		(turno_sem i10 i20))
)
; 10sur
(:action carro_1_0
	:parameters ()
	:precondition (and (turno_carro) (carro_1_0))
	:effect
	(and (not (carro_1_0))
		(carro_1_1)
		(not (turno_carro))
		(turno_sem i10 i11))
)
; 11oeste
(:action carro_1_1
	:parameters ()
	:precondition (and (turno_carro) (carro_1_1))
	:effect
	(and (not (carro_1_1))
		(carro_0_1)
		(not (turno_carro))
		(turno_sem i11 i01))
)
; 11este
(:action carro_1_1
	:parameters ()
	:precondition (and (turno_carro) (carro_1_1))
	:effect
	(and (not (carro_1_1))
		(carro_2_1)
		(not (turno_carro))
		(turno_sem i11 i21))
)
; 11norte
(:action carro_1_1
	:parameters ()
	:precondition (and (turno_carro) (carro_1_1))
	:effect
	(and (not (carro_1_1))
		(carro_1_0)
		(not (turno_carro))
		(turno_sem i11 i10))
)
; 11sur
(:action carro_1_1
	:parameters ()
	:precondition (and (turno_carro) (carro_1_1))
	:effect
	(and (not (carro_1_1))
		(carro_1_2)
		(not (turno_carro))
		(turno_sem i11 i12))
)
; 12oeste
(:action carro_1_2
	:parameters ()
	:precondition (and (turno_carro) (carro_1_2))
	:effect
	(and (not (carro_1_2))
		(carro_0_2)
		(not (turno_carro))
		(turno_sem i12 i02))
)
; 12este
(:action carro_1_2
	:parameters ()
	:precondition (and (turno_carro) (carro_1_2))
	:effect
	(and (not (carro_1_2))
		(carro_2_2)
		(not (turno_carro))
		(turno_sem i12 i22))
)
; 12norte
(:action carro_1_2
	:parameters ()
	:precondition (and (turno_carro) (carro_1_2))
	:effect
	(and (not (carro_1_2))
		(carro_1_1)
		(not (turno_carro))
		(turno_sem i12 i11))
)
; 12sur
(:action carro_1_2
	:parameters ()
	:precondition (and (turno_carro) (carro_1_2))
	:effect
	(and (not (carro_1_2))
		(carro_1_3)
		(not (turno_carro))
		(turno_sem i12 i13))
)
; 13oeste
(:action carro_1_3
	:parameters ()
	:precondition (and (turno_carro) (carro_1_3))
	:effect
	(and (not (carro_1_3))
		(carro_0_3)
		(not (turno_carro))
		(turno_sem i13 i03))
)
; 13este
(:action carro_1_3
	:parameters ()
	:precondition (and (turno_carro) (carro_1_3))
	:effect
	(and (not (carro_1_3))
		(carro_2_3)
		(not (turno_carro))
		(turno_sem i13 i23))
)
; 13norte
(:action carro_1_3
	:parameters ()
	:precondition (and (turno_carro) (carro_1_3))
	:effect
	(and (not (carro_1_3))
		(carro_1_2)
		(not (turno_carro))
		(turno_sem i13 i12))
)
; 13sur
(:action carro_1_3
	:parameters ()
	:precondition (and (turno_carro) (carro_1_3))
	:effect
	(and (not (carro_1_3))
		(carro_1_4)
		(not (turno_carro))
		(turno_sem i13 i14))
)
; 14oeste
(:action carro_1_4
	:parameters ()
	:precondition (and (turno_carro) (carro_1_4))
	:effect
	(and (not (carro_1_4))
		(carro_0_4)
		(not (turno_carro))
		(turno_sem i14 i04))
)
; 14este
(:action carro_1_4
	:parameters ()
	:precondition (and (turno_carro) (carro_1_4))
	:effect
	(and (not (carro_1_4))
		(carro_2_4)
		(not (turno_carro))
		(turno_sem i14 i24))
)
; 14norte
(:action carro_1_4
	:parameters ()
	:precondition (and (turno_carro) (carro_1_4))
	:effect
	(and (not (carro_1_4))
		(carro_1_3)
		(not (turno_carro))
		(turno_sem i14 i13))
)
; 20oeste
(:action carro_2_0
	:parameters ()
	:precondition (and (turno_carro) (carro_2_0))
	:effect
	(and (not (carro_2_0))
		(carro_1_0)
		(not (turno_carro))
		(turno_sem i20 i10))
)
; 20este
(:action carro_2_0
	:parameters ()
	:precondition (and (turno_carro) (carro_2_0))
	:effect
	(and (not (carro_2_0))
		(carro_3_0)
		(not (turno_carro))
		(turno_sem i20 i30))
)
; 20sur
(:action carro_2_0
	:parameters ()
	:precondition (and (turno_carro) (carro_2_0))
	:effect
	(and (not (carro_2_0))
		(carro_2_1)
		(not (turno_carro))
		(turno_sem i20 i21))
)
; 21oeste
(:action carro_2_1
	:parameters ()
	:precondition (and (turno_carro) (carro_2_1))
	:effect
	(and (not (carro_2_1))
		(carro_1_1)
		(not (turno_carro))
		(turno_sem i21 i11))
)
; 21este
(:action carro_2_1
	:parameters ()
	:precondition (and (turno_carro) (carro_2_1))
	:effect
	(and (not (carro_2_1))
		(carro_3_1)
		(not (turno_carro))
		(turno_sem i21 i31))
)
; 21norte
(:action carro_2_1
	:parameters ()
	:precondition (and (turno_carro) (carro_2_1))
	:effect
	(and (not (carro_2_1))
		(carro_2_0)
		(not (turno_carro))
		(turno_sem i21 i20))
)
; 21sur
(:action carro_2_1
	:parameters ()
	:precondition (and (turno_carro) (carro_2_1))
	:effect
	(and (not (carro_2_1))
		(carro_2_2)
		(not (turno_carro))
		(turno_sem i21 i22))
)
; 22oeste
(:action carro_2_2
	:parameters ()
	:precondition (and (turno_carro) (carro_2_2))
	:effect
	(and (not (carro_2_2))
		(carro_1_2)
		(not (turno_carro))
		(turno_sem i22 i12))
)
; 22este
(:action carro_2_2
	:parameters ()
	:precondition (and (turno_carro) (carro_2_2))
	:effect
	(and (not (carro_2_2))
		(carro_3_2)
		(not (turno_carro))
		(turno_sem i22 i32))
)
; 22norte
(:action carro_2_2
	:parameters ()
	:precondition (and (turno_carro) (carro_2_2))
	:effect
	(and (not (carro_2_2))
		(carro_2_1)
		(not (turno_carro))
		(turno_sem i22 i21))
)
; 22sur
(:action carro_2_2
	:parameters ()
	:precondition (and (turno_carro) (carro_2_2))
	:effect
	(and (not (carro_2_2))
		(carro_2_3)
		(not (turno_carro))
		(turno_sem i22 i23))
)
; 23oeste
(:action carro_2_3
	:parameters ()
	:precondition (and (turno_carro) (carro_2_3))
	:effect
	(and (not (carro_2_3))
		(carro_1_3)
		(not (turno_carro))
		(turno_sem i23 i13))
)
; 23este
(:action carro_2_3
	:parameters ()
	:precondition (and (turno_carro) (carro_2_3))
	:effect
	(and (not (carro_2_3))
		(carro_3_3)
		(not (turno_carro))
		(turno_sem i23 i33))
)
; 23norte
(:action carro_2_3
	:parameters ()
	:precondition (and (turno_carro) (carro_2_3))
	:effect
	(and (not (carro_2_3))
		(carro_2_2)
		(not (turno_carro))
		(turno_sem i23 i22))
)
; 23sur
(:action carro_2_3
	:parameters ()
	:precondition (and (turno_carro) (carro_2_3))
	:effect
	(and (not (carro_2_3))
		(carro_2_4)
		(not (turno_carro))
		(turno_sem i23 i24))
)
; 24oeste
(:action carro_2_4
	:parameters ()
	:precondition (and (turno_carro) (carro_2_4))
	:effect
	(and (not (carro_2_4))
		(carro_1_4)
		(not (turno_carro))
		(turno_sem i24 i14))
)
; 24este
(:action carro_2_4
	:parameters ()
	:precondition (and (turno_carro) (carro_2_4))
	:effect
	(and (not (carro_2_4))
		(carro_3_4)
		(not (turno_carro))
		(turno_sem i24 i34))
)
; 24norte
(:action carro_2_4
	:parameters ()
	:precondition (and (turno_carro) (carro_2_4))
	:effect
	(and (not (carro_2_4))
		(carro_2_3)
		(not (turno_carro))
		(turno_sem i24 i23))
)
; 30oeste
(:action carro_3_0
	:parameters ()
	:precondition (and (turno_carro) (carro_3_0))
	:effect
	(and (not (carro_3_0))
		(carro_2_0)
		(not (turno_carro))
		(turno_sem i30 i20))
)
; 30este
(:action carro_3_0
	:parameters ()
	:precondition (and (turno_carro) (carro_3_0))
	:effect
	(and (not (carro_3_0))
		(carro_4_0)
		(not (turno_carro))
		(turno_sem i30 i40))
)
; 30sur
(:action carro_3_0
	:parameters ()
	:precondition (and (turno_carro) (carro_3_0))
	:effect
	(and (not (carro_3_0))
		(carro_3_1)
		(not (turno_carro))
		(turno_sem i30 i31))
)
; 31oeste
(:action carro_3_1
	:parameters ()
	:precondition (and (turno_carro) (carro_3_1))
	:effect
	(and (not (carro_3_1))
		(carro_2_1)
		(not (turno_carro))
		(turno_sem i31 i21))
)
; 31este
(:action carro_3_1
	:parameters ()
	:precondition (and (turno_carro) (carro_3_1))
	:effect
	(and (not (carro_3_1))
		(carro_4_1)
		(not (turno_carro))
		(turno_sem i31 i41))
)
; 31norte
(:action carro_3_1
	:parameters ()
	:precondition (and (turno_carro) (carro_3_1))
	:effect
	(and (not (carro_3_1))
		(carro_3_0)
		(not (turno_carro))
		(turno_sem i31 i30))
)
; 31sur
(:action carro_3_1
	:parameters ()
	:precondition (and (turno_carro) (carro_3_1))
	:effect
	(and (not (carro_3_1))
		(carro_3_2)
		(not (turno_carro))
		(turno_sem i31 i32))
)
; 32oeste
(:action carro_3_2
	:parameters ()
	:precondition (and (turno_carro) (carro_3_2))
	:effect
	(and (not (carro_3_2))
		(carro_2_2)
		(not (turno_carro))
		(turno_sem i32 i22))
)
; 32este
(:action carro_3_2
	:parameters ()
	:precondition (and (turno_carro) (carro_3_2))
	:effect
	(and (not (carro_3_2))
		(carro_4_2)
		(not (turno_carro))
		(turno_sem i32 i42))
)
; 32norte
(:action carro_3_2
	:parameters ()
	:precondition (and (turno_carro) (carro_3_2))
	:effect
	(and (not (carro_3_2))
		(carro_3_1)
		(not (turno_carro))
		(turno_sem i32 i31))
)
; 32sur
(:action carro_3_2
	:parameters ()
	:precondition (and (turno_carro) (carro_3_2))
	:effect
	(and (not (carro_3_2))
		(carro_3_3)
		(not (turno_carro))
		(turno_sem i32 i33))
)
; 33oeste
(:action carro_3_3
	:parameters ()
	:precondition (and (turno_carro) (carro_3_3))
	:effect
	(and (not (carro_3_3))
		(carro_2_3)
		(not (turno_carro))
		(turno_sem i33 i23))
)
; 33este
(:action carro_3_3
	:parameters ()
	:precondition (and (turno_carro) (carro_3_3))
	:effect
	(and (not (carro_3_3))
		(carro_4_3)
		(not (turno_carro))
		(turno_sem i33 i43))
)
; 33norte
(:action carro_3_3
	:parameters ()
	:precondition (and (turno_carro) (carro_3_3))
	:effect
	(and (not (carro_3_3))
		(carro_3_2)
		(not (turno_carro))
		(turno_sem i33 i32))
)
; 33sur
(:action carro_3_3
	:parameters ()
	:precondition (and (turno_carro) (carro_3_3))
	:effect
	(and (not (carro_3_3))
		(carro_3_4)
		(not (turno_carro))
		(turno_sem i33 i34))
)
; 34oeste
(:action carro_3_4
	:parameters ()
	:precondition (and (turno_carro) (carro_3_4))
	:effect
	(and (not (carro_3_4))
		(carro_2_4)
		(not (turno_carro))
		(turno_sem i34 i24))
)
; 34este
(:action carro_3_4
	:parameters ()
	:precondition (and (turno_carro) (carro_3_4))
	:effect
	(and (not (carro_3_4))
		(carro_4_4)
		(not (turno_carro))
		(turno_sem i34 i44))
)
; 34norte
(:action carro_3_4
	:parameters ()
	:precondition (and (turno_carro) (carro_3_4))
	:effect
	(and (not (carro_3_4))
		(carro_3_3)
		(not (turno_carro))
		(turno_sem i34 i33))
)
; 40oeste
(:action carro_4_0
	:parameters ()
	:precondition (and (turno_carro) (carro_4_0))
	:effect
	(and (not (carro_4_0))
		(carro_3_0)
		(not (turno_carro))
		(turno_sem i40 i30))
)
; 40sur
(:action carro_4_0
	:parameters ()
	:precondition (and (turno_carro) (carro_4_0))
	:effect
	(and (not (carro_4_0))
		(carro_4_1)
		(not (turno_carro))
		(turno_sem i40 i41))
)
; 41oeste
(:action carro_4_1
	:parameters ()
	:precondition (and (turno_carro) (carro_4_1))
	:effect
	(and (not (carro_4_1))
		(carro_3_1)
		(not (turno_carro))
		(turno_sem i41 i31))
)
; 41norte
(:action carro_4_1
	:parameters ()
	:precondition (and (turno_carro) (carro_4_1))
	:effect
	(and (not (carro_4_1))
		(carro_4_0)
		(not (turno_carro))
		(turno_sem i41 i40))
)
; 41sur
(:action carro_4_1
	:parameters ()
	:precondition (and (turno_carro) (carro_4_1))
	:effect
	(and (not (carro_4_1))
		(carro_4_2)
		(not (turno_carro))
		(turno_sem i41 i42))
)
; 42oeste
(:action carro_4_2
	:parameters ()
	:precondition (and (turno_carro) (carro_4_2))
	:effect
	(and (not (carro_4_2))
		(carro_3_2)
		(not (turno_carro))
		(turno_sem i42 i32))
)
; 42norte
(:action carro_4_2
	:parameters ()
	:precondition (and (turno_carro) (carro_4_2))
	:effect
	(and (not (carro_4_2))
		(carro_4_1)
		(not (turno_carro))
		(turno_sem i42 i41))
)
; 42sur
(:action carro_4_2
	:parameters ()
	:precondition (and (turno_carro) (carro_4_2))
	:effect
	(and (not (carro_4_2))
		(carro_4_3)
		(not (turno_carro))
		(turno_sem i42 i43))
)
; 43oeste
(:action carro_4_3
	:parameters ()
	:precondition (and (turno_carro) (carro_4_3))
	:effect
	(and (not (carro_4_3))
		(carro_3_3)
		(not (turno_carro))
		(turno_sem i43 i33))
)
; 43norte
(:action carro_4_3
	:parameters ()
	:precondition (and (turno_carro) (carro_4_3))
	:effect
	(and (not (carro_4_3))
		(carro_4_2)
		(not (turno_carro))
		(turno_sem i43 i42))
)
; 43sur
(:action carro_4_3
	:parameters ()
	:precondition (and (turno_carro) (carro_4_3))
	:effect
	(and (not (carro_4_3))
		(carro_4_4)
		(not (turno_carro))
		(turno_sem i43 i44))
)
; 44oeste
(:action carro_4_4
	:parameters ()
	:precondition (and (turno_carro) (carro_4_4))
	:effect
	(and (not (carro_4_4))
		(carro_3_4)
		(not (turno_carro))
		(turno_sem i44 i34))
)
; 44norte
(:action carro_4_4
	:parameters ()
	:precondition (and (turno_carro) (carro_4_4))
	:effect
	(and (not (carro_4_4))
		(carro_4_3)
		(not (turno_carro))
		(turno_sem i44 i43))
)
(:action sem
	:parameters (?origen ?destino)
	:precondition (and (turno_sem ?origen ?destino))
	:effect
	(and (not (turno_sem ?origen ?destino))
	(turno_carro)

	; Representacion de los tiempos de cada semaforo
	(when (and (= ?destino i00) (= ?origen i10) (or (t0) (t1) (t2) )) (and (not (carro_0_0)) (carro_1_0)) )
	(when (and (= ?destino i00) (= ?origen i01) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_0_0)) (carro_0_1)) )
	(when (and (= ?destino i01) (= ?origen i11) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_0_1)) (carro_1_1)) )
	(when (and (= ?destino i01) (= ?origen i00) (or (t0) (t1) )) (and (not (carro_0_1)) (carro_0_0)) )
	(when (and (= ?destino i01) (= ?origen i02) (or (t0) (t1) (t2) (t3) )) (and (not (carro_0_1)) (carro_0_2)) )
	(when (and (= ?destino i02) (= ?origen i12) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_0_2)) (carro_1_2)) )
	(when (and (= ?destino i02) (= ?origen i01) (or (t0) (t1) (t2) )) (and (not (carro_0_2)) (carro_0_1)) )
	(when (and (= ?destino i02) (= ?origen i03) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_0_2)) (carro_0_3)) )
	(when (and (= ?destino i03) (= ?origen i13) (or (t0) (t1) (t2) )) (and (not (carro_0_3)) (carro_1_3)) )
	(when (and (= ?destino i03) (= ?origen i02) (or (t0) (t1) (t2) (t3) )) (and (not (carro_0_3)) (carro_0_2)) )
	(when (and (= ?destino i03) (= ?origen i04) (or (t0) (t1) (t2) )) (and (not (carro_0_3)) (carro_0_4)) )
	(when (and (= ?destino i04) (= ?origen i14) (or (t0) (t1) )) (and (not (carro_0_4)) (carro_1_4)) )
	(when (and (= ?destino i04) (= ?origen i03) (or (t0) (t1) )) (and (not (carro_0_4)) (carro_0_3)) )
	(when (and (= ?destino i10) (= ?origen i00) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_1_0)) (carro_0_0)) )
	(when (and (= ?destino i10) (= ?origen i20) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_0)) (carro_2_0)) )
	(when (and (= ?destino i10) (= ?origen i11) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_0)) (carro_1_1)) )
	(when (and (= ?destino i11) (= ?origen i01) (or (t0) (t1) (t2) )) (and (not (carro_1_1)) (carro_0_1)) )
	(when (and (= ?destino i11) (= ?origen i21) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_1_1)) (carro_2_1)) )
	(when (and (= ?destino i11) (= ?origen i10) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_1)) (carro_1_0)) )
	(when (and (= ?destino i11) (= ?origen i12) (or (t0) (t1) )) (and (not (carro_1_1)) (carro_1_2)) )
	(when (and (= ?destino i12) (= ?origen i02) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_2)) (carro_0_2)) )
	(when (and (= ?destino i12) (= ?origen i22) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_2)) (carro_2_2)) )
	(when (and (= ?destino i12) (= ?origen i11) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_2)) (carro_1_1)) )
	(when (and (= ?destino i12) (= ?origen i13) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_1_2)) (carro_1_3)) )
	(when (and (= ?destino i13) (= ?origen i03) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_1_3)) (carro_0_3)) )
	(when (and (= ?destino i13) (= ?origen i23) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_3)) (carro_2_3)) )
	(when (and (= ?destino i13) (= ?origen i12) (or (t0) (t1) (t2) )) (and (not (carro_1_3)) (carro_1_2)) )
	(when (and (= ?destino i13) (= ?origen i14) (or (t0) (t1) (t2) )) (and (not (carro_1_3)) (carro_1_4)) )
	(when (and (= ?destino i14) (= ?origen i04) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_1_4)) (carro_0_4)) )
	(when (and (= ?destino i14) (= ?origen i24) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_4)) (carro_2_4)) )
	(when (and (= ?destino i14) (= ?origen i13) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_4)) (carro_1_3)) )
	(when (and (= ?destino i20) (= ?origen i10) (or (t0) (t1) (t2) )) (and (not (carro_2_0)) (carro_1_0)) )
	(when (and (= ?destino i20) (= ?origen i30) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_2_0)) (carro_3_0)) )
	(when (and (= ?destino i20) (= ?origen i21) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_2_0)) (carro_2_1)) )
	(when (and (= ?destino i21) (= ?origen i11) (or (t0) )) (and (not (carro_2_1)) (carro_1_1)) )
	(when (and (= ?destino i21) (= ?origen i31) (or (t0) )) (and (not (carro_2_1)) (carro_3_1)) )
	(when (and (= ?destino i21) (= ?origen i20) (or (t0) )) (and (not (carro_2_1)) (carro_2_0)) )
	(when (and (= ?destino i21) (= ?origen i22) (or (t0) )) (and (not (carro_2_1)) (carro_2_2)) )
	(when (and (= ?destino i22) (= ?origen i12) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_2_2)) (carro_1_2)) )
	(when (and (= ?destino i22) (= ?origen i32) (or (t0) (t1) (t2) (t3) )) (and (not (carro_2_2)) (carro_3_2)) )
	(when (and (= ?destino i22) (= ?origen i21) (or (t0) (t1) (t2) )) (and (not (carro_2_2)) (carro_2_1)) )
	(when (and (= ?destino i22) (= ?origen i23) (or (t0) (t1) (t2) (t3) )) (and (not (carro_2_2)) (carro_2_3)) )
	(when (and (= ?destino i23) (= ?origen i13) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_2_3)) (carro_1_3)) )
	(when (and (= ?destino i23) (= ?origen i33) (or (t0) (t1) )) (and (not (carro_2_3)) (carro_3_3)) )
	(when (and (= ?destino i23) (= ?origen i22) (or (t0) (t1) (t2) )) (and (not (carro_2_3)) (carro_2_2)) )
	(when (and (= ?destino i23) (= ?origen i24) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_2_3)) (carro_2_4)) )
	(when (and (= ?destino i24) (= ?origen i14) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_2_4)) (carro_1_4)) )
	(when (and (= ?destino i24) (= ?origen i34) (or (t0) (t1) (t2) )) (and (not (carro_2_4)) (carro_3_4)) )
	(when (and (= ?destino i24) (= ?origen i23) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_2_4)) (carro_2_3)) )
	(when (and (= ?destino i30) (= ?origen i20) (or (t0) (t1) )) (and (not (carro_3_0)) (carro_2_0)) )
	(when (and (= ?destino i30) (= ?origen i40) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_3_0)) (carro_4_0)) )
	(when (and (= ?destino i30) (= ?origen i31) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_3_0)) (carro_3_1)) )
	(when (and (= ?destino i31) (= ?origen i21) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_3_1)) (carro_2_1)) )
	(when (and (= ?destino i31) (= ?origen i41) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_3_1)) (carro_4_1)) )
	(when (and (= ?destino i31) (= ?origen i30) (or (t0) (t1) (t2) )) (and (not (carro_3_1)) (carro_3_0)) )
	(when (and (= ?destino i31) (= ?origen i32) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_3_1)) (carro_3_2)) )
	(when (and (= ?destino i32) (= ?origen i22) (or (t0) )) (and (not (carro_3_2)) (carro_2_2)) )
	(when (and (= ?destino i32) (= ?origen i42) (or (t0) )) (and (not (carro_3_2)) (carro_4_2)) )
	(when (and (= ?destino i32) (= ?origen i31) (or (t0) )) (and (not (carro_3_2)) (carro_3_1)) )
	(when (and (= ?destino i32) (= ?origen i33) (or (t0) )) (and (not (carro_3_2)) (carro_3_3)) )
	(when (and (= ?destino i33) (= ?origen i23) (or (t0) (t1) (t2) (t3) )) (and (not (carro_3_3)) (carro_2_3)) )
	(when (and (= ?destino i33) (= ?origen i43) (or (t0) (t1) (t2) )) (and (not (carro_3_3)) (carro_4_3)) )
	(when (and (= ?destino i33) (= ?origen i32) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_3_3)) (carro_3_2)) )
	(when (and (= ?destino i33) (= ?origen i34) (or (t0) (t1) (t2) )) (and (not (carro_3_3)) (carro_3_4)) )
	(when (and (= ?destino i34) (= ?origen i24) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_3_4)) (carro_2_4)) )
	(when (and (= ?destino i34) (= ?origen i44) (or (t0) (t1) )) (and (not (carro_3_4)) (carro_4_4)) )
	(when (and (= ?destino i34) (= ?origen i33) (or (t0) (t1) (t2) )) (and (not (carro_3_4)) (carro_3_3)) )
	(when (and (= ?destino i40) (= ?origen i30) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_4_0)) (carro_3_0)) )
	(when (and (= ?destino i40) (= ?origen i41) (or (t0) (t1) (t2) )) (and (not (carro_4_0)) (carro_4_1)) )
	(when (and (= ?destino i41) (= ?origen i31) (or (t0) )) (and (not (carro_4_1)) (carro_3_1)) )
	(when (and (= ?destino i41) (= ?origen i40) (or (t0) )) (and (not (carro_4_1)) (carro_4_0)) )
	(when (and (= ?destino i41) (= ?origen i42) (or (t0) )) (and (not (carro_4_1)) (carro_4_2)) )
	(when (and (= ?destino i42) (= ?origen i32) (or (t0) )) (and (not (carro_4_2)) (carro_3_2)) )
	(when (and (= ?destino i42) (= ?origen i41) (or (t0) )) (and (not (carro_4_2)) (carro_4_1)) )
	(when (and (= ?destino i42) (= ?origen i43) (or (t0) )) (and (not (carro_4_2)) (carro_4_3)) )
	(when (and (= ?destino i43) (= ?origen i33) (or (t0) )) (and (not (carro_4_3)) (carro_3_3)) )
	(when (and (= ?destino i43) (= ?origen i42) (or (t0) )) (and (not (carro_4_3)) (carro_4_2)) )
	(when (and (= ?destino i43) (= ?origen i44) (or (t0) )) (and (not (carro_4_3)) (carro_4_4)) )
	(when (and (= ?destino i44) (= ?origen i34) (or (t0) (t1) (t2) )) (and (not (carro_4_4)) (carro_3_4)) )
	(when (and (= ?destino i44) (= ?origen i43) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_4_4)) (carro_4_3)) )

; Se rotan los tiempos del semaforo
	(when (t0) (and (t1) (not (t0))))
	(when (t1) (and (t2) (not (t1))))
	(when (t2) (and (t3) (not (t2))))
	(when (t3) (and (t4) (not (t3))))
	(when (t4) (and (t5) (not (t4))))
	(when (t5) (and (t6) (not (t5))))
	(when (t6) (and (t7) (not (t6))))
	(when (t7) (and (t8) (not (t7))))
	(when (t8) (and (t9) (not (t8))))
	(when (t9) (and (t0) (not (t9))))
	)
)
)
