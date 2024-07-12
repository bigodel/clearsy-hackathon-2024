Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Iter_services))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Iter_services))==(Machine(Iter_services));
  Level(Machine(Iter_services))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Iter_services)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Iter_services))==(Iter_base)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Iter_services))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Iter_services))==(?);
  List_Includes(Machine(Iter_services))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Iter_services))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Iter_services))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Iter_services))==(?);
  Context_List_Variables(Machine(Iter_services))==(?);
  Abstract_List_Variables(Machine(Iter_services))==(?);
  Local_List_Variables(Machine(Iter_services))==(Done,Todo);
  List_Variables(Machine(Iter_services))==(Done,Todo);
  External_List_Variables(Machine(Iter_services))==(Done,Todo)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Iter_services))==(?);
  Abstract_List_VisibleVariables(Machine(Iter_services))==(?);
  External_List_VisibleVariables(Machine(Iter_services))==(?);
  Expanded_List_VisibleVariables(Machine(Iter_services))==(?);
  List_VisibleVariables(Machine(Iter_services))==(?);
  Internal_List_VisibleVariables(Machine(Iter_services))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Iter_services))==(btrue);
  Gluing_List_Invariant(Machine(Iter_services))==(btrue);
  Expanded_List_Invariant(Machine(Iter_services))==(btrue);
  Abstract_List_Invariant(Machine(Iter_services))==(btrue);
  Context_List_Invariant(Machine(Iter_services))==(btrue);
  List_Invariant(Machine(Iter_services))==(Todo <: Trains & Done <: Trains & Todo\/Done = Trains & Todo/\Done = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Iter_services))==(btrue);
  Abstract_List_Assertions(Machine(Iter_services))==(btrue);
  Context_List_Assertions(Machine(Iter_services))==(btrue);
  List_Assertions(Machine(Iter_services))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Iter_services))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Iter_services))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Iter_services))==(Todo,Done:=Trains,{});
  Context_List_Initialisation(Machine(Iter_services))==(skip);
  List_Initialisation(Machine(Iter_services))==(Todo:=Trains || Done:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Iter_services))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Iter_services),Machine(Iter_base))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Iter_services))==(btrue);
  List_Constraints(Machine(Iter_services))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Iter_services))==(init_iter,next_iter);
  List_Operations(Machine(Iter_services))==(init_iter,next_iter)
END
&
THEORY ListInputX IS
  List_Input(Machine(Iter_services),init_iter)==(?);
  List_Input(Machine(Iter_services),next_iter)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Iter_services),init_iter)==(continue);
  List_Output(Machine(Iter_services),next_iter)==(continue,elt)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Iter_services),init_iter)==(continue <-- init_iter);
  List_Header(Machine(Iter_services),next_iter)==(continue,elt <-- next_iter)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Iter_services),init_iter)==(btrue);
  List_Precondition(Machine(Iter_services),next_iter)==(Todo/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Iter_services),next_iter)==(Todo/={} | @(chosen,new_Todo).(chosen: NAT & chosen: Todo & new_Todo = Todo-{chosen} ==> Todo,Done,continue,elt:=new_Todo,Done\/{chosen},bool(new_Todo/={}),chosen));
  Expanded_List_Substitution(Machine(Iter_services),init_iter)==(btrue | Todo,Done,continue:=Trains,{},bool(Trains/={}));
  List_Substitution(Machine(Iter_services),init_iter)==(Todo:=Trains || Done:={} || continue:=bool(Trains/={}));
  List_Substitution(Machine(Iter_services),next_iter)==(ANY chosen,new_Todo WHERE chosen: NAT & chosen: Todo & new_Todo = Todo-{chosen} THEN Todo:=new_Todo || Done:=Done\/{chosen} || continue:=bool(new_Todo/={}) || elt:=chosen END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Iter_services))==(?);
  Inherited_List_Constants(Machine(Iter_services))==(?);
  List_Constants(Machine(Iter_services))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Iter_services))==(?);
  Context_List_Defered(Machine(Iter_services))==(?);
  Context_List_Sets(Machine(Iter_services))==(?);
  List_Valuable_Sets(Machine(Iter_services))==(?);
  Inherited_List_Enumerated(Machine(Iter_services))==(?);
  Inherited_List_Defered(Machine(Iter_services))==(?);
  Inherited_List_Sets(Machine(Iter_services))==(?);
  List_Enumerated(Machine(Iter_services))==(?);
  List_Defered(Machine(Iter_services))==(?);
  List_Sets(Machine(Iter_services))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Iter_services))==(?);
  Expanded_List_HiddenConstants(Machine(Iter_services))==(?);
  List_HiddenConstants(Machine(Iter_services))==(?);
  External_List_HiddenConstants(Machine(Iter_services))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Iter_services))==(btrue);
  Context_List_Properties(Machine(Iter_services))==(First: NAT & Last: NAT & First<=Last & Last<MAXINT & Trains = First..Last & is_MP85: Trains --> BOOL);
  Inherited_List_Properties(Machine(Iter_services))==(btrue);
  List_Properties(Machine(Iter_services))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Iter_services),Machine(Iter_base))==(is_MP85_op);
  Seen_Context_List_Enumerated(Machine(Iter_services))==(?);
  Seen_Context_List_Invariant(Machine(Iter_services))==(btrue);
  Seen_Context_List_Assertions(Machine(Iter_services))==(btrue);
  Seen_Context_List_Properties(Machine(Iter_services))==(btrue);
  Seen_List_Constraints(Machine(Iter_services))==(btrue);
  Seen_List_Precondition(Machine(Iter_services),is_MP85_op)==(train: NAT & train: Trains);
  Seen_Expanded_List_Substitution(Machine(Iter_services),is_MP85_op)==(res:=is_MP85(train));
  Seen_List_Operations(Machine(Iter_services),Machine(Iter_base))==(is_MP85_op);
  Seen_Expanded_List_Invariant(Machine(Iter_services),Machine(Iter_base))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Iter_services),init_iter)==(?);
  List_ANY_Var(Machine(Iter_services),next_iter)==((Var(chosen) == btype(INTEGER,?,?)),(Var(new_Todo) == SetOf(btype(INTEGER,?,?))))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Iter_services)) == (? | ? | Done,Todo | ? | init_iter,next_iter | ? | seen(Machine(Iter_base)) | ? | Iter_services);
  List_Of_HiddenCst_Ids(Machine(Iter_services)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_services)) == (?);
  List_Of_VisibleVar_Ids(Machine(Iter_services)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_services)) == (?: ?);
  List_Of_Ids(Machine(Iter_base)) == (First,Last | ? | ? | ? | is_MP85_op | ? | ? | ? | Iter_base);
  List_Of_HiddenCst_Ids(Machine(Iter_base)) == (is_MP85,Trains | ?);
  List_Of_VisibleCst_Ids(Machine(Iter_base)) == (First,Last);
  List_Of_VisibleVar_Ids(Machine(Iter_base)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iter_base)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Iter_services)) == (Type(Done) == Mvl(SetOf(btype(INTEGER,?,?)));Type(Todo) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Iter_services)) == (Type(next_iter) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),No_type);Type(init_iter) == Cst(btype(BOOL,?,?),No_type))
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
