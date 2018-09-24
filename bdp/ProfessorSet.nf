Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ProfessorSet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ProfessorSet))==(Machine(ProfessorSet));
  Level(Machine(ProfessorSet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ProfessorSet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ProfessorSet))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ProfessorSet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ProfessorSet))==(?);
  List_Includes(Machine(ProfessorSet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ProfessorSet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ProfessorSet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ProfessorSet))==(?);
  Context_List_Variables(Machine(ProfessorSet))==(?);
  Abstract_List_Variables(Machine(ProfessorSet))==(?);
  Local_List_Variables(Machine(ProfessorSet))==(?);
  List_Variables(Machine(ProfessorSet))==(?);
  External_List_Variables(Machine(ProfessorSet))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ProfessorSet))==(?);
  Abstract_List_VisibleVariables(Machine(ProfessorSet))==(?);
  External_List_VisibleVariables(Machine(ProfessorSet))==(?);
  Expanded_List_VisibleVariables(Machine(ProfessorSet))==(?);
  List_VisibleVariables(Machine(ProfessorSet))==(?);
  Internal_List_VisibleVariables(Machine(ProfessorSet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ProfessorSet))==(btrue);
  Gluing_List_Invariant(Machine(ProfessorSet))==(btrue);
  Expanded_List_Invariant(Machine(ProfessorSet))==(btrue);
  Abstract_List_Invariant(Machine(ProfessorSet))==(btrue);
  Context_List_Invariant(Machine(ProfessorSet))==(btrue);
  List_Invariant(Machine(ProfessorSet))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ProfessorSet))==(btrue);
  Abstract_List_Assertions(Machine(ProfessorSet))==(btrue);
  Context_List_Assertions(Machine(ProfessorSet))==(btrue);
  List_Assertions(Machine(ProfessorSet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ProfessorSet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ProfessorSet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ProfessorSet))==(skip);
  Context_List_Initialisation(Machine(ProfessorSet))==(skip);
  List_Initialisation(Machine(ProfessorSet))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ProfessorSet))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ProfessorSet))==(btrue);
  List_Constraints(Machine(ProfessorSet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ProfessorSet))==(?);
  List_Operations(Machine(ProfessorSet))==(?)
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
  List_Valuable_Constants(Machine(ProfessorSet))==(?);
  Inherited_List_Constants(Machine(ProfessorSet))==(?);
  List_Constants(Machine(ProfessorSet))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ProfessorSet),PROFESSOR)==(?);
  Context_List_Enumerated(Machine(ProfessorSet))==(?);
  Context_List_Defered(Machine(ProfessorSet))==(?);
  Context_List_Sets(Machine(ProfessorSet))==(?);
  List_Valuable_Sets(Machine(ProfessorSet))==(PROFESSOR);
  Inherited_List_Enumerated(Machine(ProfessorSet))==(?);
  Inherited_List_Defered(Machine(ProfessorSet))==(?);
  Inherited_List_Sets(Machine(ProfessorSet))==(?);
  List_Enumerated(Machine(ProfessorSet))==(?);
  List_Defered(Machine(ProfessorSet))==(PROFESSOR);
  List_Sets(Machine(ProfessorSet))==(PROFESSOR)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ProfessorSet))==(?);
  Expanded_List_HiddenConstants(Machine(ProfessorSet))==(?);
  List_HiddenConstants(Machine(ProfessorSet))==(?);
  External_List_HiddenConstants(Machine(ProfessorSet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ProfessorSet))==(btrue);
  Context_List_Properties(Machine(ProfessorSet))==(btrue);
  Inherited_List_Properties(Machine(ProfessorSet))==(btrue);
  List_Properties(Machine(ProfessorSet))==(PROFESSOR: FIN(INTEGER) & not(PROFESSOR = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ProfessorSet)) == (PROFESSOR | ? | ? | ? | ? | ? | ? | ? | ProfessorSet);
  List_Of_HiddenCst_Ids(Machine(ProfessorSet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ProfessorSet)) == (?);
  List_Of_VisibleVar_Ids(Machine(ProfessorSet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ProfessorSet)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(ProfessorSet)) == (Type(PROFESSOR) == Cst(SetOf(atype(PROFESSOR,"[PROFESSOR","]PROFESSOR"))))
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
