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
; 0_0_este
  (:action carro_0_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem i00 i10)))
; 0_0_sur
  (:action carro_0_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (turno_carro)) 
		   (turno_sem i00 i01)
	           (not (carro_0_0)) (carro_0_1))
  )

; 0_1_sur
  (:action carro_0_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (turno_carro)) 
		   (turno_sem i00 i02)
	           (not (carro_0_1)) (carro_0_2))
  )


; 1_0_sur
  (:action carro_1_0
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (turno_carro)) 
		   (turno_sem i10 i11)
	           (not (carro_1_0)) (carro_1_1))
  )

; 1_1_sur
  (:action carro_1_1
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (turno_carro)) 
		   (turno_sem i11 i12)
	           (not (carro_1_1)) (carro_1_2))
  )


; 0_2_este
  (:action carro_0_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_2))
	     :effect
	     (and (not (carro_0_2))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem i02 i12)))

; 1_2_este
  (:action carro_1_2
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_2_2)
		   (not (turno_carro))
		   (turno_sem i12 i22)))


  (:action sem
	     :parameters (?origen ?destino)
	     :precondition (and (turno_sem ?origen ?destino))
	     :effect
	     (and (not (turno_sem ?origen ?destino))
		(turno_carro)


		; tiempos_semaforos

		
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
