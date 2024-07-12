Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Iter_services_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Iter_services_i))==(Machine(Iter_services));
  Level(Implementation(Iter_services_i))==(1);
  Upper_Level(Implementation(Iter_services_i))==(Machine(Iter_services))
END
&
THEORY LoadedStructureX IS
  Implementation(Iter_services_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Iter_services_i))==(Iter_base)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Iter_services_i))==(?);
  Inherited_List_Includes(Implementation(Iter_services_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Iter_services_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Iter_services_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Iter_services_i))==(?);
  Context_List_Variables(Implementation(Iter_services_i))==(?);
  Abstract_List_Variables(Implementation(Iter_services_i))==(Done,Todo);
  Local_List_Variables(Implementation(Iter_services_i))==(?);
  List_Variables(Implementation(Iter_services_i))==(?);
  External_List_Variables(Implementation(Iter_services_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Iter_services_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Iter_services_i))==(?);
  External_List_VisibleVariables(Implementation(Iter_services_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Iter_services_i))==(?);
  List_VisibleVariables(Implementation(Iter_services_i))==(index);
  Internal_List_VisibleVariables(Implementation(Iter_services_i))==(index)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Iter_services_i))==(btrue);
  Expanded_List_Invariant(Implementation(Iter_services_i))==(btrue);
  Abstract_List_Invariant(Implementation(Iter_services_i))==(Todo <: Trains & Done <: Trains & Todo\/Done = Trains & Todo/\Done = {});
  Context_List_Invariant(Implementation(Iter_services_i))==(btrue);
  List_Invariant(Implementation(Iter_services_i))==(index: NAT & Todo = index..Last & Done = First..index-1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Iter_services_i))==(btrue);
  Abstract_List_Assertions(Implementation(Iter_services_i))==(btrue);
  Context_List_Assertions(Implementation(Iter_services_i))==(btrue);
  List_Assertions(Implementation(Iter_services_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Iter_services_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Iter_services_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Iter_services_i))==(First: INT | index:=First);
  Context_List_Initialisation(Implementation(Iter_services_i))==(skip);
  List_Initialisation(Implementation(Iter_services_i))==(index:=First)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Iter_services_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Iter_services_i),Machine(Iter_base))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Iter_services_i))==(btrue);
  List_Context_Constraints(Implementation(Iter_services_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Iter_services_i))==(init_iter,next_iter);
  List_Operations(Implementation(Iter_services_i))==(init_iter,next_iter)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Iter_services_i),init_iter)==(?);
  List_Input(Implementation(Iter_services_i),next_iter)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Iter_services_i),init_iter)==(continue);
  List_Output(Implementation(Iter_services_i),next_iter)==(continue,elt)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Iter_services_i),init_iter)==(continue <-- init_iter);
  List_Header(Implementation(Iter_services_i),next_iter)==(continue,elt <-- next_iter)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Iter_services_i),init_iter)==(btrue);
  List_Precondition(Implementation(Iter_services_i),init_iter)==(btrue);
  Own_Precondition(Implementation(Iter_services_i),next_iter)==(btrue);
  List_Precondition(Implementation(Iter_services_i),next_iter)==(Todo/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Iter_services_i),next_iter)==(Todo/={} | (index: INT | elt:=index);(index+1: INT & index: INT & 1: INT | index:=index+1);continue:=bool(index<=Last));
  Expanded_List_Substitution(Implementation(Iter_services_i),init_iter)==(btrue | (First: INT | index:=First);continue:=bool(index<=Last));
  List_Substitution(Implementation(Iter_services_i),init_iter)==(index:=First;continue:=bool(index<=Last));
  List_Substitution(Implementation(Iter_services_i),next_iter)==(elt:=index;index:=index+1;continue:=bool(index<=Last))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Iter_services_i))==(?);
  Inherited_List_Constants(Implementation(Iter_services_i))==(?);
  List_Constants(Implementation(Iter_services_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Iter_services_i))==(?);
  Context_List_Defered(Implementation(Iter_services_i))==(?);
  Context_List_Sets(Implementation(Iter_services_i))==(?);
  List_Own_Enumerated(Implementation(Iter_services_i))==(?);
  List_Valuable_Sets(Implementation(Iter_services_i))==(?);
  Inherited_List_Enumerated(Implementation(Iter_services_i))==(?);
  Inherited_List_Defered(Implementation(Iter_services_i))==(?);
  Inherited_List_Sets(Implementation(Iter_services_i))==(?);
  List_Enumerated(Implementation(Iter_services_i))==(?);
  List_Defered(Implementation(Iter_services_i))==(?);
  List_Sets(Implementation(Iter_services_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Iter_services_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Iter_services_i))==(?);
  List_HiddenConstants(Implementation(Iter_services_i))==(?);
  External_List_HiddenConstants(Implementation(Iter_services_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Iter_services_i))==(btrue);
  Context_List_Properties(Implementation(Iter_services_i))==(First: NAT & Last: NAT & First<=Last & Last<MAXINT & Trains = First..Last & is_MP85: Trains --> BOOL);
  Inherited_List_Properties(Implementation(Iter_services_i))==(btrue);
  List_Properties(Implementation(Iter_services_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Iter_services_i))==(aa: aa);
  List_Values(Implementation(Iter_services_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Iter_services_i),Machine(Iter_base))==(is_MP85_op);
  Seen_Context_List_Enumerated(Implementation(Iter_services_i))==(?);
  Seen_Context_List_Invariant(Implementation(Iter_services_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Iter_services_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Iter_services_i))==(btrue);
  Seen_List_Constraints(Implementation(Iter_services_i))==(btrue);
  Seen_List_Precondition(Implementation(Iter_services_i),is_MP85_op)==(train: NAT & train: Trains);
  Seen_Expanded_List_Substitution(Implementation(Iter_services_i),is_MP85_op)==(res:=is_MP85(train));
  Seen_List_Operations(Implementation(Iter_services_i),Machine(Iter_base))==(is_MP85_op);
  Seen_Expanded_List_Invariant(Implementation(Iter_services_i),Machine(Iter_base))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Iter_services_i),Machine(Iter_base))==(is_MP85_op)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Iter_services_i))==(Type(index) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Iter_services_i))==(Type(next_iter) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),No_type);Type(init_iter) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Iter_services_i),Machine(Iter_base))==(First,Last);
  List_Constants_Env(Implementation(Iter_services_i),Machine(Iter_base))==(Type(First) == Cst(btype(INTEGER,?,?));Type(Last) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Iter_services_i)) == (? | ? | ? | ? | init_iter,next_iter | ? | seen(Machine(Iter_base)) | ? | Iter_services_i);
  List_Of_HiddenCst_Ids(Implementation(Iter_services_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Iter_services_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Iter_services_i)) == (index | ?);
  List_Of_Ids_SeenBNU(Implementation(Iter_services_i)) == (?: ?);
  List_Of_Ids(Machine(Iter_base)) == (First,Last | ? | ? | ? | is_MP85_op | ? | ? | ? | Iter_base);
  List_Of_HiddenCst_Ids(Machine(Iter_base)) == (is_MP85,Trains | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_base)) == (First,Last);
  List_Of_VisibleVar_Ids(Machine(Iter_base)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_base)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Iter_services_i)) == (Type(index) == Mvv(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Iter_services_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Iter_services_i))==(index: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
