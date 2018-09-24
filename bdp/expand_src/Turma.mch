/* Turma
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE  Turma
SEES MateriaSet , ProfessorSet
ABSTRACT_VARIABLES turmas
INVARIANT turmas : MATERIA +-> PROFESSOR
INITIALISATION turmas :: MATERIA +-> PROFESSOR
OPERATIONS
    addTurma ( pp , mm ) =
        PRE pp : PROFESSOR & mm : MATERIA
        THEN turmas := turmas \/ { mm |-> pp }
        END ;

    removeTurma ( pp , mm ) =
        PRE pp : PROFESSOR & mm : MATERIA
        THEN turmas := turmas - { mm |-> pp }
        END ;

    ans <-- profTurma ( pp ) =
        PRE pp : PROFESSOR
        THEN ans := turmas |> { pp }
        END ;

    ans <-- materiaTurma ( mm ) =
        PRE mm : MATERIA
        THEN ans := { mm } <| turmas
        END


END
