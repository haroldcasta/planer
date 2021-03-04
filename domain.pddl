(define (domain ejemplo)

    (:requirements
        :strips
        :typing
        :negative-preconditions
        
    )

    (:types
    localizacion vehiculo herido hospital - object

    )

 
    (:predicates
    
    (enlace ?l1 - localizacion ?l2 - localizacion)
    (ubicacion ?v - vehiculo ?l1 - localizacion)
    (uherido ?he - herido ?l1 - localizacion )
    (uhospital ?ho - hospital ?l1 - localizacion)
    (subir ?he - herido ?v - vehiculo )
    (salvar ?he - herido ?ho - hospital)
    
    )

 
    (:action mover
        :parameters (?v - vehiculo ?l1 - localizacion ?l2 - localizacion)
        :precondition (and 
        ( enlace ?l1 ?l2) 
        ( ubicacion ?v ?l1)
        )
        :effect (and
        (ubicacion ?v ?l2) 
        ( not (ubicacion ?v ?l1))
        )
    )
    
    (:action montar
        :parameters (?v - vehiculo ?he - herido ?l1 - localizacion )
        :precondition (and 
        (uherido  ?he ?l1)
        (ubicacion ?v ?l1)
        (not (subir ?he ?v))
        )
        :effect (and
            (subir ?he ?v)
        )
    )
    
    (:action bajar
        :parameters (?v - vehiculo ?l1 - localizacion ?he - herido ?ho - hospital )
        :precondition (and
        (subir ?he ?v)
        (ubicacion ?v ?l1)
        (uhospital ?ho ?l1)
        )
        :effect (and
            (salvar ?he ?ho)
            (not (subir ?he ?v))
        )
    )
)