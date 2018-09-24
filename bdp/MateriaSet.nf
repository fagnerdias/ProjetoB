Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MateriaSet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MateriaSet))==(Machine(MateriaSet));
  Level(Machine(MateriaSet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MateriaSet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MateriaSet))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MateriaSet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MateriaSet))==(?);
  List_Includes(Machine(MateriaSet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MateriaSet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MateriaSet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MateriaSet))==(?);
  Context_List_Variables(Machine(MateriaSet))==(?);
  Abstract_List_Variables(Machine(MateriaSet))==(?);
  Local_List_Variables(Machine(MateriaSet))==(?);
  List_Variables(Machine(MateriaSet))==(?);
  External_List_Variables(Machine(MateriaSet))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MateriaSet))==(?);
  Abstract_List_VisibleVariables(Machine(MateriaSet))==(?);
  External_List_VisibleVariables(Machine(MateriaSet))==(?);
  Expanded_List_VisibleVariables(Machine(MateriaSet))==(?);
  List_VisibleVariables(Machine(MateriaSet))==(?);
  Internal_List_VisibleVariables(Machine(MateriaSet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MateriaSet))==(btrue);
  Gluing_List_Invariant(Machine(MateriaSet))==(btrue);
  Expanded_List_Invariant(Machine(MateriaSet))==(btrue);
  Abstract_List_Invariant(Machine(MateriaSet))==(btrue);
  Context_List_Invariant(Machine(MateriaSet))==(btrue);
  List_Invariant(Machine(MateriaSet))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MateriaSet))==(btrue);
  Abstract_List_Assertions(Machine(MateriaSet))==(btrue);
  Context_List_Assertions(Machine(MateriaSet))==(btrue);
  List_Assertions(Machine(MateriaSet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MateriaSet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MateriaSet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MateriaSet))==(skip);
  Context_List_Initialisation(Machine(MateriaSet))==(skip);
  List_Initialisation(Machine(MateriaSet))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MateriaSet))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MateriaSet))==(btrue);
  List_Constraints(Machine(MateriaSet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MateriaSet))==(?);
  List_Operations(Machine(MateriaSet))==(?)
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
  List_Valuable_Constants(Machine(MateriaSet))==(?);
  Inherited_List_Constants(Machine(MateriaSet))==(?);
  List_Constants(Machine(MateriaSet))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MateriaSet),MATERIA)==(?);
  Context_List_Enumerated(Machine(MateriaSet))==(?);
  Context_List_Defered(Machine(MateriaSet))==(?);
  Context_List_Sets(Machine(MateriaSet))==(?);
  List_Valuable_Sets(Machine(MateriaSet))==(MATERIA);
  Inherited_List_Enumerated(Machine(MateriaSet))==(?);
  Inherited_List_Defered(Machine(MateriaSet))==(?);
  Inherited_List_Sets(Machine(MateriaSet))==(?);
  List_Enumerated(Machine(MateriaSet))==(?);
  List_Defered(Machine(MateriaSet))==(MATERIA);
  List_Sets(Machine(MateriaSet))==(MATERIA)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MateriaSet))==(?);
  Expanded_List_HiddenConstants(Machine(MateriaSet))==(?);
  List_HiddenConstants(Machine(MateriaSet))==(?);
  External_List_HiddenConstants(Machine(MateriaSet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MateriaSet))==(btrue);
  Context_List_Properties(Machine(MateriaSet))==(btrue);
  Inherited_List_Properties(Machine(MateriaSet))==(btrue);
  List_Properties(Machine(MateriaSet))==(MATERIA: FIN(INTEGER) & not(MATERIA = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MateriaSet)) == (MATERIA | ? | ? | ? | ? | ? | ? | ? | MateriaSet);
  List_Of_HiddenCst_Ids(Machine(MateriaSet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MateriaSet)) == (?);
  List_Of_VisibleVar_Ids(Machine(MateriaSet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MateriaSet)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(MateriaSet)) == (Type(MATERIA) == Cst(SetOf(atype(MATERIA,"[MATERIA","]MATERIA"))))
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
