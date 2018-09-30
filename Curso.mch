/* Curso
 * Author: Fagne
 * Creation date: 30/09/2018
 */
MACHINE  Curso
SEES MateriaSet
SETS CURSOS
VARIABLES gradeObrigatoria, gradeOptativa
INVARIANT gradeObrigatoria :CURSOS +-> MATERIA & gradeOptativa :CURSOS +-> MATERIA 
                        & gradeObrigatoria /\ gradeOptativa = {}
INITIALISATION gradeOptativa := {} || gradeObrigatoria := {}
OPERATIONS
    addMateriaObrigatoria(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm /: ran({cc} <| gradeOptativa)
        THEN gradeObrigatoria := gradeObrigatoria \/ {cc |-> mm}
        END;
    removerMateriaObrigatoria(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm : ran({cc} <| gradeObrigatoria)
        THEN gradeObrigatoria := gradeObrigatoria - {cc |-> mm}
        END;
    addMateriaOptativa(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm /: ran({cc} <| gradeObrigatoria)
        THEN gradeOptativa := gradeOptativa \/ {cc |-> mm}
        END;
    removerMateriaOptativa(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm : ran({cc} <| gradeOptativa)
        THEN gradeOptativa := gradeOptativa - {cc |-> mm}
        END
        
        

END
