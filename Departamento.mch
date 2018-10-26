/* Departamento
 * Author: Fagne
 * Creation date: 09/10/2018
 */
MACHINE Departamento
SEES Curso_cxt, ProfessorSet, Departamento_cxt
VARIABLES coordenacao, membros, cursos
INVARIANT coordenacao : PROFESSOR +-> CURSOS & membros : PROFESSOR +-> DEPARTAMENTO
                        & cursos: CURSOS +-> DEPARTAMENTO & card(dom(coordenacao)) <= 2
INITIALISATION coordenacao := {} || membros := {} || cursos := {}
OPERATIONS
    addProfessorMembro(pp, dd)=
        PRE pp:PROFESSOR & dd:DEPARTAMENTO & pp /: dom(membros)
        THEN membros := membros \/ {pp |-> dd}
        END;
        
    removerProfessorMembro(pp, dd)=
        PRE pp:PROFESSOR & dd:DEPARTAMENTO & pp : dom(membros) & dd:ran({pp} <| membros)
        THEN membros := membros - {pp |-> dd}
        END;    
        
    addCursoDepartamento(dd, cc)=
        PRE dd:DEPARTAMENTO & cc:CURSOS & cc /: dom(cursos)
        THEN cursos := cursos \/ {cc |-> dd}
        END;
        
    removerCursoDepartamento(dd, cc)=
        PRE dd:DEPARTAMENTO & cc:CURSOS & cc : dom(cursos) & dd:ran({cc} <| cursos)
        THEN cursos := cursos - {cc |-> dd}
        END;    
        
    addCoordenador(pp, cc)=
        PRE pp:PROFESSOR & cc:CURSOS & pp : dom(membros) & pp/:dom(coordenacao) & ran({cc} <| cursos) = ran({pp} <| membros) & card(dom(coordenacao)) <= 2
        THEN coordenacao := coordenacao \/ {pp |-> cc}
        END;
        
    removerCoordenacao(cc, pp)=
        PRE cc:CURSOS & pp:PROFESSOR & cc:dom(cursos) & pp:dom(membros)
        THEN coordenacao := coordenacao - {pp |-> cc}
        END
        
        
END
