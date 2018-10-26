/* Curso
 * Author: Fagne
 * Creation date: 30/09/2018
 */
MACHINE  Curso
SEES MateriaSet, Aluno_cxt, Curso_cxt, Departamento
VARIABLES gradeObrigatoria, gradeOptativa, alunosMatriculados
INVARIANT gradeObrigatoria :CURSOS <-> MATERIA & gradeOptativa :CURSOS <-> MATERIA 
                        & gradeObrigatoria /\ gradeOptativa = {} & alunosMatriculados : ALUNO +->CURSOS 
INITIALISATION gradeOptativa := {} || gradeObrigatoria := {} || alunosMatriculados := {} 
OPERATIONS
    matricularAlunoCurso(cc, aa)=
        PRE aa: ALUNO & cc:CURSOS & aa /: dom(alunosMatriculados) & cc: dom(cursos)
        THEN alunosMatriculados := alunosMatriculados \/ {aa |-> cc}
        END;
  removerAlunoCurso(cc, aa)=
        PRE aa: ALUNO & cc:CURSOS & aa : dom(alunosMatriculados) & cc: ran({aa} <| alunosMatriculados) 
        THEN alunosMatriculados := alunosMatriculados - {aa |-> cc}
        END;
    
    addMateriaObrigatoria(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm /: ran({cc} <| gradeOptativa) & mm /: ran({cc} <| gradeObrigatoria) & cc:dom(cursos)
        THEN gradeObrigatoria := gradeObrigatoria \/ {cc |-> mm}
        END;
    removerMateriaObrigatoria(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm : ran({cc} <| gradeObrigatoria)
        THEN gradeObrigatoria := gradeObrigatoria - {cc |-> mm}
        END;
    addMateriaOptativa(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm /: ran({cc} <| gradeObrigatoria) & mm /: ran({cc} <| gradeOptativa) & cc:dom(cursos)
        THEN gradeOptativa := gradeOptativa \/ {cc |-> mm}
        END;
    removerMateriaOptativa(cc, mm)=
        PRE cc: CURSOS & mm: MATERIA & mm : ran({cc} <| gradeOptativa)
        THEN gradeOptativa := gradeOptativa - {cc |-> mm}
        END
        
END
