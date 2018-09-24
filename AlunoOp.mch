/* AlunoOp
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE AlunoOp
SEES Turma, AlunoSet
VARIABLES alunoT
INVARIANT alunoT : ALUNO --> turmas
INITIALISATION alunoT :: ALUNO --> turmas
    

END
