;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Definicion del problema de los
;;; semaforos en la ciudad de tamano 3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SEMAFOROS)
  (:requirements :strips :typing :equality)
  (:predicates  (carro_0_0)
		(carro_0_1)
		(carro_0_2)
		(carro_1_0)
		(carro_1_1)
		(carro_1_2)
		(carro_2_0)
		(carro_2_1)
		(carro_2_2)
		(t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) (t8) (t9)
		(turno_carro)
		(turno_sem ?origen ?destino)
	       )

; 00este
  (:action carro_0_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem i00 i10)))
; 00sur
  (:action carro_0_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem i00 i01)))

; 10este
  (:action carro_1_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_2_0)
		   (not (turno_carro))
		   (turno_sem i10 i20)))
; 10sur
  (:action carro_1_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem i10 i11)))
; 10oeste
  (:action carro_1_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_0_0)
		   (not (turno_carro))
		   (turno_sem i10 i00)))

; 20sur
  (:action carro_2_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_0))
	     :effect
	     (and (not (carro_2_0))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem i20 i21)))
; 20oeste
  (:action carro_2_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_0))
	     :effect
	     (and (not (carro_2_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem i20 i10)))

; 01norte
  (:action carro_0_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_0_0)
		   (not (turno_carro))
		   (turno_sem i01 i00)))
; 01este
  (:action carro_0_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem i01 i11)))
; 01sur
  (:action carro_0_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_0_2)
		   (not (turno_carro))
		   (turno_sem i01 i02)))

; 11norte
  (:action carro_1_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem i11 i10)))
; 11este
  (:action carro_1_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem i11 i21)))
; 11sur
  (:action carro_1_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem i11 i12)))
; 11oeste
  (:action carro_1_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem i11 i01)))

; 21norte
  (:action carro_2_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_2_0)
		   (not (turno_carro))
		   (turno_sem i21 i20)))
; 21sur
  (:action carro_2_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_2_2)
		   (not (turno_carro))
		   (turno_sem i21 i22)))
; 21oeste
  (:action carro_2_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem i21 i11)))

; 02norte
  (:action carro_0_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_2))
	     :effect
	     (and (not (carro_0_2))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem i02 i01)))
; 02este
  (:action carro_0_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_2))
	     :effect
	     (and (not (carro_0_2))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem i02 i12)))

; 12norte
  (:action carro_1_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem i12 i11)))
; 12este
  (:action carro_1_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_2_2)
		   (not (turno_carro))
		   (turno_sem i12 i22)))
; 12oeste
  (:action carro_1_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_0_2)
		   (not (turno_carro))
		   (turno_sem i12 i02)))

; 22norte
  (:action carro_2_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_2))
	     :effect
	     (and (not (carro_2_2))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem i22 i21)))
; 22oeste
  (:action carro_2_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_2))
	     :effect
	     (and (not (carro_2_2))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem i22 i21)))


  (:action sem
	     :parameters (?origen ?destino)
	     :precondition (and (turno_sem ?origen ?destino))
	     :effect
	     (and (not (turno_sem ?origen ?destino))
		(turno_carro)


		; tiempos_semaforos
(when (and (= ?destino i00) (= ?origen i10) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_0_0)) (carro_1_0)) )
(when (and (= ?destino i00) (= ?origen i01) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_0_0)) (carro_0_1)) )
(when (and (= ?destino i01) (= ?origen i11) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_0_1)) (carro_1_1)) )
(when (and (= ?destino i01) (= ?origen i00) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_0_1)) (carro_0_0)) )
(when (and (= ?destino i01) (= ?origen i02) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_0_1)) (carro_0_2)) )
(when (and (= ?destino i02) (= ?origen i12) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) (t8) )) (and (not (carro_0_2)) (carro_1_2)) )
(when (and (= ?destino i02) (= ?origen i01) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) (t8) )) (and (not (carro_0_2)) (carro_0_1)) )
(when (and (= ?destino i10) (= ?origen i00) (or (t0) (t1) )) (and (not (carro_1_0)) (carro_0_0)) )
(when (and (= ?destino i10) (= ?origen i20) (or (t0) (t1) (t2) )) (and (not (carro_1_0)) (carro_2_0)) )
(when (and (= ?destino i10) (= ?origen i11) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) (t7) )) (and (not (carro_1_0)) (carro_1_1)) )
(when (and (= ?destino i11) (= ?origen i01) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_1)) (carro_0_1)) )
(when (and (= ?destino i11) (= ?origen i21) (or (t0) (t1) (t2) (t3) (t4) (t5) )) (and (not (carro_1_1)) (carro_2_1)) )
(when (and (= ?destino i11) (= ?origen i10) (or (t0) (t1) (t2) (t3) )) (and (not (carro_1_1)) (carro_1_0)) )
(when (and (= ?destino i11) (= ?origen i12) (or (t0) (t1) )) (and (not (carro_1_1)) (carro_1_2)) )
(when (and (= ?destino i12) (= ?origen i02) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_1_2)) (carro_0_2)) )
(when (and (= ?destino i12) (= ?origen i22) (or (t0) (t1) (t2) )) (and (not (carro_1_2)) (carro_2_2)) )
(when (and (= ?destino i12) (= ?origen i11) (or (t0) (t1) )) (and (not (carro_1_2)) (carro_1_1)) )
(when (and (= ?destino i20) (= ?origen i10) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_2_0)) (carro_1_0)) )
(when (and (= ?destino i20) (= ?origen i21) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_2_0)) (carro_2_1)) )
(when (and (= ?destino i21) (= ?origen i11) (or (t0) (t1) )) (and (not (carro_2_1)) (carro_1_1)) )
(when (and (= ?destino i21) (= ?origen i20) (or (t0) (t1) (t2) (t3) )) (and (not (carro_2_1)) (carro_2_0)) )
(when (and (= ?destino i21) (= ?origen i22) (or (t0) (t1) (t2) (t3) (t4) )) (and (not (carro_2_1)) (carro_2_2)) )
(when (and (= ?destino i22) (= ?origen i12) (or (t0) (t1) (t2) (t3) (t4) (t5) (t6) )) (and (not (carro_2_2)) (carro_1_2)) )
(when (and (= ?destino i22) (= ?origen i21) (or (t0) (t1) (t2) (t3) )) (and (not (carro_2_2)) (carro_2_1)) )


		
		; fin_tiempos_semaforos

		; roto los tiempos del semaforo
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
