(define (problem problema1) (:domain ejemplo)
; defino los objetos que uso
    (:objects 
    ambulancia - vehiculo
    l1 - localizacion
    l2 - localizacion
    l3 - localizacion
    l4 - localizacion
    enfermo1 - herido
    enfermo2 - herido
    centro - hospital

    )

    (:init
        (ubicacion ambulancia l1)
        (enlace l1 l2)
        (enlace l2 l4)
        (enlace l4 l3)
        (enlace l3 l4)
        (enlace l4 l2)
        (enlace l2 l1)
        (uhospital centro l1)
        (uherido enfermo1 l4)
        (uherido enfermo2 l3)
        ;estado inicial usado en el demain
    )
    (:goal (and
        (salvar enfermo1 centro)
        (salvar enfermo2 centro)
    ))
)