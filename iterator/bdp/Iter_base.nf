Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Iter_base))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Iter_base))==(Machine(Iter_base));
  Level(Machine(Iter_base))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Iter_base)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Iter_base))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Iter_base))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Iter_base))==(?);
  List_Includes(Machine(Iter_base))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Iter_base))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Iter_base))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Iter_base))==(?);
  Context_List_Variables(Machine(Iter_base))==(?);
  Abstract_List_Variables(Machine(Iter_base))==(?);
  Local_List_Variables(Machine(Iter_base))==(?);
  List_Variables(Machine(Iter_base))==(?);
  External_List_Variables(Machine(Iter_base))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Iter_base))==(?);
  Abstract_List_VisibleVariables(Machine(Iter_base))==(?);
  External_List_VisibleVariables(Machine(Iter_base))==(?);
  Expanded_List_VisibleVariables(Machine(Iter_base))==(?);
  List_VisibleVariables(Machine(Iter_base))==(?);
  Internal_List_VisibleVariables(Machine(Iter_base))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Iter_base))==(btrue);
  Gluing_List_Invariant(Machine(Iter_base))==(btrue);
  Expanded_List_Invariant(Machine(Iter_base))==(btrue);
  Abstract_List_Invariant(Machine(Iter_base))==(btrue);
  Context_List_Invariant(Machine(Iter_base))==(btrue);
  List_Invariant(Machine(Iter_base))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Iter_base))==(btrue);
  Abstract_List_Assertions(Machine(Iter_base))==(btrue);
  Context_List_Assertions(Machine(Iter_base))==(btrue);
  List_Assertions(Machine(Iter_base))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Iter_base))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Iter_base))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Iter_base))==(skip);
  Context_List_Initialisation(Machine(Iter_base))==(skip);
  List_Initialisation(Machine(Iter_base))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Iter_base))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Iter_base))==(btrue);
  List_Constraints(Machine(Iter_base))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Iter_base))==(is_MP85_op);
  List_Operations(Machine(Iter_base))==(is_MP85_op)
END
&
THEORY ListInputX IS
  List_Input(Machine(Iter_base),is_MP85_op)==(train)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Iter_base),is_MP85_op)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Iter_base),is_MP85_op)==(res <-- is_MP85_op(train))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Iter_base),is_MP85_op)==(train: NAT & train: Trains)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Iter_base),is_MP85_op)==(train: NAT & train: Trains | res:=is_MP85(train));
  List_Substitution(Machine(Iter_base),is_MP85_op)==(res:=is_MP85(train))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Iter_base))==(First,Last);
  Inherited_List_Constants(Machine(Iter_base))==(?);
  List_Constants(Machine(Iter_base))==(First,Last)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Iter_base))==(?);
  Context_List_Defered(Machine(Iter_base))==(?);
  Context_List_Sets(Machine(Iter_base))==(?);
  List_Valuable_Sets(Machine(Iter_base))==(?);
  Inherited_List_Enumerated(Machine(Iter_base))==(?);
  Inherited_List_Defered(Machine(Iter_base))==(?);
  Inherited_List_Sets(Machine(Iter_base))==(?);
  List_Enumerated(Machine(Iter_base))==(?);
  List_Defered(Machine(Iter_base))==(?);
  List_Sets(Machine(Iter_base))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Iter_base))==(?);
  Expanded_List_HiddenConstants(Machine(Iter_base))==(?);
  List_HiddenConstants(Machine(Iter_base))==(is_MP85,Trains);
  External_List_HiddenConstants(Machine(Iter_base))==(is_MP85,Trains)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Iter_base))==(btrue);
  Context_List_Properties(Machine(Iter_base))==(btrue);
  Inherited_List_Properties(Machine(Iter_base))==(btrue);
  List_Properties(Machine(Iter_base))==(First: NAT & Last: NAT & First<=Last & Last<MAXINT & Trains = First..Last & is_MP85: Trains --> BOOL)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Iter_base),is_MP85_op)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Iter_base)) == (First,Last | ? | ? | ? | is_MP85_op | ? | ? | ? | Iter_base);
  List_Of_HiddenCst_Ids(Machine(Iter_base)) == (is_MP85,Trains | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_base)) == (First,Last);
  List_Of_VisibleVar_Ids(Machine(Iter_base)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_base)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Iter_base)) == (Type(First) == Cst(btype(INTEGER,?,?));Type(Last) == Cst(btype(INTEGER,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(Iter_base)) == (Type(is_MP85) == HCst(SetOf(btype(INTEGER,First,Last)*btype(BOOL,0,1)));Type(Trains) == HCst(SetOf(btype(INTEGER,First,Last))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Iter_base)) == (Type(is_MP85_op) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Iter_base)) == (Type(is_MP85_op) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
