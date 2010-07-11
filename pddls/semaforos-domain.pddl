;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Definicion del problema de los
;;; semaforos en la ciudad
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SEMAFOROS)
  (:requirements :strips :typing)
  (:types semaforos)
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
		(turno_sem)
	       )

  (:action carro_0_0_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_0_0_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem)))


  (:action carro_1_0_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_2_0)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_0_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_0_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_2_0_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_0))
	     :effect
	     (and (not (carro_2_0))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_2_0_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_0))
	     :effect
	     (and (not (carro_2_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_0_1_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_0_0)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_0_1_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_0_1_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_1))
	     :effect
	     (and (not (carro_0_1))
		   (carro_0_2)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_1_1_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_1_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_1_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_1_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_1))
	     :effect
	     (and (not (carro_1_1))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_2_1_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_2_0)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_2_1_sur
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_2_1_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_1))
	     :effect
	     (and (not (carro_2_1))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_0_2_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_2))
	     :effect
	     (and (not (carro_0_2))
		   (carro_0_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_0_2_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_2))
	     :effect
	     (and (not (carro_0_2))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_1_2_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_1_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_2_este
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_2_2)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_1_2_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_2))
	     :effect
	     (and (not (carro_1_2))
		   (carro_0_2)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_2_2_norte
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_2))
	     :effect
	     (and (not (carro_2_2))
		   (carro_2_1)
		   (not (turno_carro))
		   (turno_sem)))
  (:action carro_2_2_oeste
	     :parameters ()
	     :precondition (and (turno_carro) (carro_2_2))
	     :effect
	     (and (not (carro_2_2))
		   (carro_1_2)
		   (not (turno_carro))
		   (turno_sem)))


  (:action sem
	     :parameters ()
	     :precondition (and (turno_sem))
	     :effect
	     (and (not (turno_sem))
		(turno_carro)
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
