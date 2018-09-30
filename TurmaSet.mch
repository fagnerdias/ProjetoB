/* TurmaSet
 * Author: Fagne
 * Creation date: 29/09/2018
 */
MACHINE   TurmaSet
SEES MateriaSet, ProfessorSet, AlunoSet
VARIABLES turmaP ,turmaA, avaliacoes, notas
INVARIANT turmaP : PROFESSOR +-> MATERIA & turmaA : ALUNO +-> MATERIA & notas : seq1(NAT)
                        & avaliacoes : ALUNO +-> notas
INITIALISATION turmaP := {} || turmaA := {} || avaliacoes := {} || notas := <>
OPERATIONS 
    criarTurma(pp, mm)=
        PRE pp : PROFESSOR & mm : MATERIA  
        THEN turmaP := turmaP  \/ { pp |-> mm}
        END;
        
    removerTurma(pp, mm)=
        PRE pp:PROFESSOR & mm: MATERIA & mm : ran({pp} <| turmaP)
        THEN turmaP := turmaP  - { pp |-> mm}
        END;
        
    matricularAluno(aa, mm) =
        PRE aa:ALUNO & mm: MATERIA & mm:ran(turmaP) &  preRequisito : POW(materiasAprovadas)
        THEN turmaA := turmaA \/ {aa |-> mm}
        END;
        
    removerAluno(aa, mm)=
        PRE aa:ALUNO & mm:MATERIA & {aa |-> mm}: POW(turmaA)
        THEN turmaA := turmaA - {aa |-> mm}
        END
   
   
   /*
    addNotaAluno(aa, nn)=
        PRE aa:ALUNO & nn:NAT & aa:dom(turmaA) 
        THEN avaliacoes := avaliacoes \/ (aa, (({aa}<| avaliacoes) <- nn))
        END;
        
        
        As avaliações deve ser postas em uma sequencia 
        deve ser criado uma sequencia para armazenar as notas de cada aluno
        
    addRecuperacao(aa, nn) =
        PRE aa: ALUNO & nn:NAT & aa:dom(turmaA) 
        THEN avaliacoes := avaliacoes <+ {}
        END
        
        */
        
  
END
