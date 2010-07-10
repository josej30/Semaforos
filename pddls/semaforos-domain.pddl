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
	     :precondition (turno_sem)
	     :effect
	     (and (not (turno_sem))
		   (turno_carro)))

)
