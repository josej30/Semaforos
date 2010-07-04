;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Definicion del problema de los
;;; semaforos en la ciudad
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SEMAFOROS)
  (:requirements :strips :typing)
  (:types semaforos)
  (:predicates  (carro_0_0)
		(carro_1_0)
		(carro_2_0)
		(turno_carro)
		(turno_sem)
	       )

  (:action carro_0_0_der
	     :parameters ()
	     :precondition (and (turno_carro) (carro_0_0))
	     :effect
	     (and (not (carro_0_0))
		   (carro_1_0)
		   (not (turno_carro))
		   (turno_sem)))

  (:action carro_1_0_der
	     :parameters ()
	     :precondition (and (turno_carro) (carro_1_0))
	     :effect
	     (and (not (carro_1_0))
		   (carro_2_0)
		   (not (turno_carro))
		   (turno_sem)))

  (:action tiempo_sem
	     :parameters ()
	     :precondition (turno_sem)
	     :effect
	     (and (not (turno_sem))
		   (turno_carro)))

)
