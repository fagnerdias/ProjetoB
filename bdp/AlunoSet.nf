Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(AlunoSet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(AlunoSet))==(Machine(AlunoSet));
  Level(Machine(AlunoSet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(AlunoSet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(AlunoSet))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(AlunoSet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(AlunoSet))==(?);
  List_Includes(Machine(AlunoSet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(AlunoSet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(AlunoSet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(AlunoSet))==(?);
  Context_List_Variables(Machine(AlunoSet))==(?);
  Abstract_List_Variables(Machine(AlunoSet))==(?);
  Local_List_Variables(Machine(AlunoSet))==(?);
  List_Variables(Machine(AlunoSet))==(?);
  External_List_Variables(Machine(AlunoSet))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(AlunoSet))==(?);
  Abstract_List_VisibleVariables(Machine(AlunoSet))==(?);
  External_List_VisibleVariables(Machine(AlunoSet))==(?);
  Expanded_List_VisibleVariables(Machine(AlunoSet))==(?);
  List_VisibleVariables(Machine(AlunoSet))==(?);
  Internal_List_VisibleVariables(Machine(AlunoSet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(AlunoSet))==(btrue);
  Gluing_List_Invariant(Machine(AlunoSet))==(btrue);
  Expanded_List_Invariant(Machine(AlunoSet))==(btrue);
  Abstract_List_Invariant(Machine(AlunoSet))==(btrue);
  Context_List_Invariant(Machine(AlunoSet))==(btrue);
  List_Invariant(Machine(AlunoSet))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(AlunoSet))==(btrue);
  Abstract_List_Assertions(Machine(AlunoSet))==(btrue);
  Context_List_Assertions(Machine(AlunoSet))==(btrue);
  List_Assertions(Machine(AlunoSet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(AlunoSet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(AlunoSet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(AlunoSet))==(skip);
  Context_List_Initialisation(Machine(AlunoSet))==(skip);
  List_Initialisation(Machine(AlunoSet))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(AlunoSet))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(AlunoSet))==(btrue);
  List_Constraints(Machine(AlunoSet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(AlunoSet))==(?);
  List_Operations(Machine(AlunoSet))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(AlunoSet))==(?);
  Inherited_List_Constants(Machine(AlunoSet))==(?);
  List_Constants(Machine(AlunoSet))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(AlunoSet),ALUNO)==(?);
  Context_List_Enumerated(Machine(AlunoSet))==(?);
  Context_List_Defered(Machine(AlunoSet))==(?);
  Context_List_Sets(Machine(AlunoSet))==(?);
  List_Valuable_Sets(Machine(AlunoSet))==(ALUNO);
  Inherited_List_Enumerated(Machine(AlunoSet))==(?);
  Inherited_List_Defered(Machine(AlunoSet))==(?);
  Inherited_List_Sets(Machine(AlunoSet))==(?);
  List_Enumerated(Machine(AlunoSet))==(?);
  List_Defered(Machine(AlunoSet))==(ALUNO);
  List_Sets(Machine(AlunoSet))==(ALUNO)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(AlunoSet))==(?);
  Expanded_List_HiddenConstants(Machine(AlunoSet))==(?);
  List_HiddenConstants(Machine(AlunoSet))==(?);
  External_List_HiddenConstants(Machine(AlunoSet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(AlunoSet))==(btrue);
  Context_List_Properties(Machine(AlunoSet))==(btrue);
  Inherited_List_Properties(Machine(AlunoSet))==(btrue);
  List_Properties(Machine(AlunoSet))==(ALUNO: FIN(INTEGER) & not(ALUNO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(AlunoSet)) == (ALUNO | ? | ? | ? | ? | ? | ? | ? | AlunoSet);
  List_Of_HiddenCst_Ids(Machine(AlunoSet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(AlunoSet)) == (?);
  List_Of_VisibleVar_Ids(Machine(AlunoSet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(AlunoSet)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(AlunoSet)) == (Type(ALUNO) == Cst(SetOf(atype(ALUNO,"[ALUNO","]ALUNO"))))
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
