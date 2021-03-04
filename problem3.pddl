(define (problem problema1) (:domain ejemplo)
; defino los objetos que uso
    (:objects 
    ambulancia - vehiculo
    l1 - localizacion
    l2 - localizacion
    l3 - localizacion
    l4 - localizacion
    l5 - localizacion
    l6 - localizacion
    enfermo1 - herido
    enfermo2 - herido
    enfermo3 - herido
    enfermo4 - herido
    centro - hospital

    )

    (:init
        (ubicacion ambulancia l1)
        (enlace l1 l2)
        (enlace l2 l4)
        (enlace l4 l3)
        (enlace l4 l5)
        (enlace l5 l6)
        (enlace l6 l5)
        (enlace l5 l3)
        (enlace l3 l4)
        (enlace l4 l2)
        (enlace l2 l1)
        (uhospital centro l1)
        (uherido enfermo1 l4)
        (uherido enfermo2 l3)
        (uherido enfermo3 l6)
        (uherido enfermo4 l6)
        ;estado inicial usado en el demain
    )
    (:goal (and
        (salvar enfermo1 centro)
        (salvar enfermo2 centro)
        (salvar enfermo3 centro)
        (salvar enfermo4 centro)
    ))
)