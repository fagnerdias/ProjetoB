/* AlunoSet
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE  AlunoSet
SEES MateriaSet, Aluno_cxt, Curso
VARIABLES materiasAprovadas
INVARIANT materiasAprovadas :ALUNO <-> MATERIA
INITIALISATION  materiasAprovadas := {}
OPERATIONS
    addMateriaAprovada(aa, mm)=
        PRE aa: ALUNO & mm:MATERIA & aa: dom(alunosMatriculados)
        THEN materiasAprovadas := materiasAprovadas \/ {aa |-> mm}
        END
        
END
