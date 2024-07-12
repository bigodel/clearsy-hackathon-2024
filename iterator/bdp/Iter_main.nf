Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Iter_main))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Iter_main))==(Machine(Iter_main));
  Level(Machine(Iter_main))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Iter_main)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Iter_main))==(Iter_base)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Iter_main))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Iter_main))==(?);
  List_Includes(Machine(Iter_main))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Iter_main))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Iter_main))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Iter_main))==(?);
  Context_List_Variables(Machine(Iter_main))==(?);
  Abstract_List_Variables(Machine(Iter_main))==(?);
  Local_List_Variables(Machine(Iter_main))==(?);
  List_Variables(Machine(Iter_main))==(?);
  External_List_Variables(Machine(Iter_main))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Iter_main))==(?);
  Abstract_List_VisibleVariables(Machine(Iter_main))==(?);
  External_List_VisibleVariables(Machine(Iter_main))==(?);
  Expanded_List_VisibleVariables(Machine(Iter_main))==(?);
  List_VisibleVariables(Machine(Iter_main))==(?);
  Internal_List_VisibleVariables(Machine(Iter_main))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Iter_main))==(btrue);
  Gluing_List_Invariant(Machine(Iter_main))==(btrue);
  Expanded_List_Invariant(Machine(Iter_main))==(btrue);
  Abstract_List_Invariant(Machine(Iter_main))==(btrue);
  Context_List_Invariant(Machine(Iter_main))==(btrue);
  List_Invariant(Machine(Iter_main))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Iter_main))==(btrue);
  Abstract_List_Assertions(Machine(Iter_main))==(btrue);
  Context_List_Assertions(Machine(Iter_main))==(btrue);
  List_Assertions(Machine(Iter_main))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Iter_main))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Iter_main))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Iter_main))==(skip);
  Context_List_Initialisation(Machine(Iter_main))==(skip);
  List_Initialisation(Machine(Iter_main))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Iter_main))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Iter_main),Machine(Iter_base))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Iter_main))==(btrue);
  List_Constraints(Machine(Iter_main))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Iter_main))==(nb_MP85,all_MP85);
  List_Operations(Machine(Iter_main))==(nb_MP85,all_MP85)
END
&
THEORY ListInputX IS
  List_Input(Machine(Iter_main),nb_MP85)==(?);
  List_Input(Machine(Iter_main),all_MP85)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Iter_main),nb_MP85)==(res);
  List_Output(Machine(Iter_main),all_MP85)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Iter_main),nb_MP85)==(res <-- nb_MP85);
  List_Header(Machine(Iter_main),all_MP85)==(res <-- all_MP85)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Iter_main),nb_MP85)==(btrue);
  List_Precondition(Machine(Iter_main),all_MP85)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Iter_main),all_MP85)==(btrue | res:=bool(is_MP85~[{TRUE}] = Trains));
  Expanded_List_Substitution(Machine(Iter_main),nb_MP85)==(btrue | res:=card(is_MP85~[{TRUE}]/\Trains));
  List_Substitution(Machine(Iter_main),nb_MP85)==(res:=card(is_MP85~[{TRUE}]/\Trains));
  List_Substitution(Machine(Iter_main),all_MP85)==(res:=bool(is_MP85~[{TRUE}] = Trains))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Iter_main))==(?);
  Inherited_List_Constants(Machine(Iter_main))==(?);
  List_Constants(Machine(Iter_main))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Iter_main))==(?);
  Context_List_Defered(Machine(Iter_main))==(?);
  Context_List_Sets(Machine(Iter_main))==(?);
  List_Valuable_Sets(Machine(Iter_main))==(?);
  Inherited_List_Enumerated(Machine(Iter_main))==(?);
  Inherited_List_Defered(Machine(Iter_main))==(?);
  Inherited_List_Sets(Machine(Iter_main))==(?);
  List_Enumerated(Machine(Iter_main))==(?);
  List_Defered(Machine(Iter_main))==(?);
  List_Sets(Machine(Iter_main))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Iter_main))==(?);
  Expanded_List_HiddenConstants(Machine(Iter_main))==(?);
  List_HiddenConstants(Machine(Iter_main))==(?);
  External_List_HiddenConstants(Machine(Iter_main))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Iter_main))==(btrue);
  Context_List_Properties(Machine(Iter_main))==(First: NAT & Last: NAT & First<=Last & Last<MAXINT & Trains = First..Last & is_MP85: Trains --> BOOL);
  Inherited_List_Properties(Machine(Iter_main))==(btrue);
  List_Properties(Machine(Iter_main))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Iter_main),Machine(Iter_base))==(is_MP85_op);
  Seen_Context_List_Enumerated(Machine(Iter_main))==(?);
  Seen_Context_List_Invariant(Machine(Iter_main))==(btrue);
  Seen_Context_List_Assertions(Machine(Iter_main))==(btrue);
  Seen_Context_List_Properties(Machine(Iter_main))==(btrue);
  Seen_List_Constraints(Machine(Iter_main))==(btrue);
  Seen_List_Precondition(Machine(Iter_main),is_MP85_op)==(train: NAT & train: Trains);
  Seen_Expanded_List_Substitution(Machine(Iter_main),is_MP85_op)==(res:=is_MP85(train));
  Seen_List_Operations(Machine(Iter_main),Machine(Iter_base))==(is_MP85_op);
  Seen_Expanded_List_Invariant(Machine(Iter_main),Machine(Iter_base))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Iter_main),nb_MP85)==(?);
  List_ANY_Var(Machine(Iter_main),all_MP85)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Iter_main)) == (? | ? | ? | ? | nb_MP85,all_MP85 | ? | seen(Machine(Iter_base)) | ? | Iter_main);
  List_Of_HiddenCst_Ids(Machine(Iter_main)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_main)) == (?);
  List_Of_VisibleVar_Ids(Machine(Iter_main)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_main)) == (?: ?);
  List_Of_Ids(Machine(Iter_base)) == (First,Last | ? | ? | ? | is_MP85_op | ? | ? | ? | Iter_base);
  List_Of_HiddenCst_Ids(Machine(Iter_base)) == (is_MP85,Trains | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_base)) == (First,Last);
  List_Of_VisibleVar_Ids(Machine(Iter_base)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_base)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Iter_main)) == (Type(all_MP85) == Cst(btype(BOOL,?,?),No_type);Type(nb_MP85) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(Iter_main)) == (Type(all_MP85) == Cst(btype(BOOL,?,?),No_type);Type(nb_MP85) == Cst(btype(INTEGER,?,?),No_type))
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
