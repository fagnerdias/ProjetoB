/* TurmaSet
 * Author: Fagne
 * Creation date: 29/09/2018
 */
MACHINE   TurmaSet
SEES MateriaSet, ProfessorSet,Aluno_cxt, Curso, Departamento
INCLUDES AlunoSet
    /*
    talvez tenha que importar a maquina AlunoSet para 
    poder adicionar matérias aprovadas para os alunos
    */
VARIABLES turmaP ,turmaA, mediaNotas, qntProvas
INVARIANT turmaP : PROFESSOR <-> MATERIA & turmaA : ALUNO <-> turmaP & mediaNotas : ALUNO --> 0 .. 30
                     & qntProvas : ALUNO --> {0,1,2,3} 
INITIALISATION turmaP := {} || turmaA := {} || mediaNotas := ALUNO* {0} || qntProvas := ALUNO*{0}
OPERATIONS 
    criarTurma(pp, mm)=
        PRE pp : PROFESSOR & mm : MATERIA & mm : ran(gradeObrigatoria) \/ ran(gradeOptativa) 
            & pp : dom(membros) & (pp |-> mm) /: turmaP
        THEN turmaP := turmaP  \/ { pp |-> mm}
        END;
        
    removerTurma(pp, mm)=
        PRE pp:PROFESSOR & mm: MATERIA & mm : ran({pp} <| turmaP) & (pp |-> mm) : turmaP
        THEN turmaP := turmaP  - { pp |-> mm}
        END;
        
    matricularAlunoTurma(aa, pp, mm) =
        PRE aa:ALUNO & pp:PROFESSOR & mm:MATERIA & pp:dom(turmaP) 
               & aa: dom(alunosMatriculados) & mm: ran(turmaP) & ran({mm}<| preRequisito) : POW(ran({aa} <| materiasAprovadas))          
        THEN turmaA := turmaA \/ {aa |-> (pp|-> mm)}
        END;
        
     removerAlunoTurma(aa, pp, mm) =
        PRE aa:ALUNO & pp:PROFESSOR & mm:MATERIA & {pp|-> mm}:POW(ran(turmaA)) & aa:dom(alunosMatriculados) 
        THEN turmaA := turmaA - {aa |-> (pp|->mm)}
        END;
        
 rr <-- addNotaAluno(aa, nn)=
        PRE aa:ALUNO & nn:NAT & nn: 0..10 & aa:dom(turmaA) & qntProvas(aa) < 3
        THEN mediaNotas := mediaNotas <+ {aa |-> ( mediaNotas(aa)+ nn)} ||
                    qntProvas := qntProvas <+ {aa |-> (qntProvas(aa) + 1)}||
                    IF qntProvas(aa) = 0
                    THEN rr := 0 
                    ELSE  rr := mediaNotas(aa) / qntProvas(aa) 
                    END                           
        END;
        
    rr <-- mediaAluno(aa)=
        PRE aa: ALUNO & aa: dom(turmaA) & mediaNotas(aa) > 0
        THEN rr := mediaNotas(aa) / qntProvas(aa) 
        END;
        
    rr <-- qntProvasAluno(aa, pp, mm)=
        PRE aa:ALUNO & pp:PROFESSOR & mm:MATERIA & {pp|-> mm}:POW(ran(turmaA))
        THEN rr := qntProvas(aa)
        END;
        
   rr <-- avaliarAluno(aa, pp, mm) =
            PRE aa:ALUNO & pp:PROFESSOR 
                & mm:MATERIA & pp:dom(ran({aa}<| turmaA)) 
                & aa:dom(turmaA) & mm: ran(ran({aa}<| turmaA)) &   qntProvas(aa) = 3
           THEN IF mediaNotas(aa) / qntProvas(aa) >= 7
               THEN rr := TRUE ||
                          turmaA := turmaA - {aa |-> (pp |-> mm)} 
                            || addMateriaAprovada(aa, mm)  
               ELSE rr := FALSE || turmaA := turmaA - {aa |-> (pp |-> mm)} 
               END               
        END
        
  
END
