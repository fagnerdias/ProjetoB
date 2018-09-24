Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Turma))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Turma))==(Machine(Turma));
  Level(Machine(Turma))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Turma)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Turma))==(MateriaSet,ProfessorSet)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Turma))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Turma))==(?);
  List_Includes(Machine(Turma))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Turma))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Turma))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Turma))==(?);
  Context_List_Variables(Machine(Turma))==(?);
  Abstract_List_Variables(Machine(Turma))==(?);
  Local_List_Variables(Machine(Turma))==(turmas);
  List_Variables(Machine(Turma))==(turmas);
  External_List_Variables(Machine(Turma))==(turmas)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Turma))==(?);
  Abstract_List_VisibleVariables(Machine(Turma))==(?);
  External_List_VisibleVariables(Machine(Turma))==(?);
  Expanded_List_VisibleVariables(Machine(Turma))==(?);
  List_VisibleVariables(Machine(Turma))==(?);
  Internal_List_VisibleVariables(Machine(Turma))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Turma))==(btrue);
  Gluing_List_Invariant(Machine(Turma))==(btrue);
  Expanded_List_Invariant(Machine(Turma))==(btrue);
  Abstract_List_Invariant(Machine(Turma))==(btrue);
  Context_List_Invariant(Machine(Turma))==(btrue);
  List_Invariant(Machine(Turma))==(turmas: MATERIA +-> PROFESSOR)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Turma))==(btrue);
  Abstract_List_Assertions(Machine(Turma))==(btrue);
  Context_List_Assertions(Machine(Turma))==(btrue);
  List_Assertions(Machine(Turma))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Turma))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Turma))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Turma))==(@(turmas$0).(turmas$0: MATERIA +-> PROFESSOR ==> turmas:=turmas$0));
  Context_List_Initialisation(Machine(Turma))==(skip);
  List_Initialisation(Machine(Turma))==(turmas:: MATERIA +-> PROFESSOR)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Turma))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Turma),Machine(MateriaSet))==(?);
  List_Instanciated_Parameters(Machine(Turma),Machine(ProfessorSet))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Turma))==(btrue);
  List_Constraints(Machine(Turma))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Turma))==(addTurma,removeTurma,profTurma,materiaTurma);
  List_Operations(Machine(Turma))==(addTurma,removeTurma,profTurma,materiaTurma)
END
&
THEORY ListInputX IS
  List_Input(Machine(Turma),addTurma)==(pp,mm);
  List_Input(Machine(Turma),removeTurma)==(pp,mm);
  List_Input(Machine(Turma),profTurma)==(pp);
  List_Input(Machine(Turma),materiaTurma)==(mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Turma),addTurma)==(?);
  List_Output(Machine(Turma),removeTurma)==(?);
  List_Output(Machine(Turma),profTurma)==(ans);
  List_Output(Machine(Turma),materiaTurma)==(ans)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Turma),addTurma)==(addTurma(pp,mm));
  List_Header(Machine(Turma),removeTurma)==(removeTurma(pp,mm));
  List_Header(Machine(Turma),profTurma)==(ans <-- profTurma(pp));
  List_Header(Machine(Turma),materiaTurma)==(ans <-- materiaTurma(mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Turma),addTurma)==(pp: PROFESSOR & mm: MATERIA);
  List_Precondition(Machine(Turma),removeTurma)==(pp: PROFESSOR & mm: MATERIA);
  List_Precondition(Machine(Turma),profTurma)==(pp: PROFESSOR);
  List_Precondition(Machine(Turma),materiaTurma)==(mm: MATERIA)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Turma),materiaTurma)==(mm: MATERIA | ans:={mm}<|turmas);
  Expanded_List_Substitution(Machine(Turma),profTurma)==(pp: PROFESSOR | ans:=turmas|>{pp});
  Expanded_List_Substitution(Machine(Turma),removeTurma)==(pp: PROFESSOR & mm: MATERIA | turmas:=turmas-{mm|->pp});
  Expanded_List_Substitution(Machine(Turma),addTurma)==(pp: PROFESSOR & mm: MATERIA | turmas:=turmas\/{mm|->pp});
  List_Substitution(Machine(Turma),addTurma)==(turmas:=turmas\/{mm|->pp});
  List_Substitution(Machine(Turma),removeTurma)==(turmas:=turmas-{mm|->pp});
  List_Substitution(Machine(Turma),profTurma)==(ans:=turmas|>{pp});
  List_Substitution(Machine(Turma),materiaTurma)==(ans:={mm}<|turmas)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Turma))==(?);
  Inherited_List_Constants(Machine(Turma))==(?);
  List_Constants(Machine(Turma))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Turma))==(?);
  Context_List_Defered(Machine(Turma))==(MATERIA,PROFESSOR);
  Context_List_Sets(Machine(Turma))==(MATERIA,PROFESSOR);
  List_Valuable_Sets(Machine(Turma))==(?);
  Inherited_List_Enumerated(Machine(Turma))==(?);
  Inherited_List_Defered(Machine(Turma))==(?);
  Inherited_List_Sets(Machine(Turma))==(?);
  List_Enumerated(Machine(Turma))==(?);
  List_Defered(Machine(Turma))==(?);
  List_Sets(Machine(Turma))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Turma))==(?);
  Expanded_List_HiddenConstants(Machine(Turma))==(?);
  List_HiddenConstants(Machine(Turma))==(?);
  External_List_HiddenConstants(Machine(Turma))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Turma))==(btrue);
  Context_List_Properties(Machine(Turma))==(MATERIA: FIN(INTEGER) & not(MATERIA = {}) & PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}));
  Inherited_List_Properties(Machine(Turma))==(btrue);
  List_Properties(Machine(Turma))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Turma),Machine(ProfessorSet))==(?);
  Seen_Context_List_Enumerated(Machine(Turma))==(?);
  Seen_Context_List_Invariant(Machine(Turma))==(btrue);
  Seen_Context_List_Assertions(Machine(Turma))==(btrue);
  Seen_Context_List_Properties(Machine(Turma))==(btrue);
  Seen_List_Constraints(Machine(Turma))==(btrue);
  Seen_List_Operations(Machine(Turma),Machine(ProfessorSet))==(?);
  Seen_Expanded_List_Invariant(Machine(Turma),Machine(ProfessorSet))==(btrue);
  Seen_Internal_List_Operations(Machine(Turma),Machine(MateriaSet))==(?);
  Seen_List_Operations(Machine(Turma),Machine(MateriaSet))==(?);
  Seen_Expanded_List_Invariant(Machine(Turma),Machine(MateriaSet))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Turma),addTurma)==(?);
  List_ANY_Var(Machine(Turma),removeTurma)==(?);
  List_ANY_Var(Machine(Turma),profTurma)==(?);
  List_ANY_Var(Machine(Turma),materiaTurma)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Turma)) == (? | ? | turmas | ? | addTurma,removeTurma,profTurma,materiaTurma | ? | seen(Machine(MateriaSet)),seen(Machine(ProfessorSet)) | ? | Turma);
  List_Of_HiddenCst_Ids(Machine(Turma)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Turma)) == (?);
  List_Of_VisibleVar_Ids(Machine(Turma)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Turma)) == (?: ?);
  List_Of_Ids(Machine(ProfessorSet)) == (PROFESSOR | ? | ? | ? | ? | ? | ? | ? | ProfessorSet);
  List_Of_HiddenCst_Ids(Machine(ProfessorSet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ProfessorSet)) == (?);
  List_Of_VisibleVar_Ids(Machine(ProfessorSet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ProfessorSet)) == (?: ?);
  List_Of_Ids(Machine(MateriaSet)) == (MATERIA | ? | ? | ? | ? | ? | ? | ? | MateriaSet);
  List_Of_HiddenCst_Ids(Machine(MateriaSet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MateriaSet)) == (?);
  List_Of_VisibleVar_Ids(Machine(MateriaSet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MateriaSet)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Turma)) == (Type(turmas) == Mvl(SetOf(atype(MATERIA,?,?)*atype(PROFESSOR,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Turma)) == (Type(materiaTurma) == Cst(SetOf(atype(MATERIA,?,?)*atype(PROFESSOR,?,?)),atype(MATERIA,?,?));Type(profTurma) == Cst(SetOf(atype(MATERIA,?,?)*atype(PROFESSOR,?,?)),atype(PROFESSOR,?,?));Type(removeTurma) == Cst(No_type,atype(PROFESSOR,?,?)*atype(MATERIA,?,?));Type(addTurma) == Cst(No_type,atype(PROFESSOR,?,?)*atype(MATERIA,?,?)));
  Observers(Machine(Turma)) == (Type(materiaTurma) == Cst(SetOf(atype(MATERIA,?,?)*atype(PROFESSOR,?,?)),atype(MATERIA,?,?));Type(profTurma) == Cst(SetOf(atype(MATERIA,?,?)*atype(PROFESSOR,?,?)),atype(PROFESSOR,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
