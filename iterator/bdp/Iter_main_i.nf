Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Iter_main_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Iter_main_i))==(Machine(Iter_main));
  Level(Implementation(Iter_main_i))==(1);
  Upper_Level(Implementation(Iter_main_i))==(Machine(Iter_main))
END
&
THEORY LoadedStructureX IS
  Implementation(Iter_main_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Iter_main_i))==(Iter_base)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Iter_main_i))==(Iter_services);
  Inherited_List_Includes(Implementation(Iter_main_i))==(Iter_services)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Iter_main_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Iter_main_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Iter_main_i))==(?);
  Context_List_Variables(Implementation(Iter_main_i))==(?);
  Abstract_List_Variables(Implementation(Iter_main_i))==(?);
  Local_List_Variables(Implementation(Iter_main_i))==(?);
  List_Variables(Implementation(Iter_main_i))==(Done,Todo);
  External_List_Variables(Implementation(Iter_main_i))==(Done,Todo)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Iter_main_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Iter_main_i))==(?);
  External_List_VisibleVariables(Implementation(Iter_main_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Iter_main_i))==(?);
  List_VisibleVariables(Implementation(Iter_main_i))==(?);
  Internal_List_VisibleVariables(Implementation(Iter_main_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Iter_main_i))==(btrue);
  Abstract_List_Invariant(Implementation(Iter_main_i))==(btrue);
  Expanded_List_Invariant(Implementation(Iter_main_i))==(Todo <: Trains & Done <: Trains & Todo\/Done = Trains & Todo/\Done = {});
  Context_List_Invariant(Implementation(Iter_main_i))==(btrue);
  List_Invariant(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Iter_main_i))==(btrue);
  Expanded_List_Assertions(Implementation(Iter_main_i))==(btrue);
  Context_List_Assertions(Implementation(Iter_main_i))==(btrue);
  List_Assertions(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Iter_main_i))==(Todo,Done:=Trains,{});
  Context_List_Initialisation(Implementation(Iter_main_i))==(skip);
  List_Initialisation(Implementation(Iter_main_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Iter_main_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Iter_main_i),Machine(Iter_services))==(?);
  List_Instanciated_Parameters(Implementation(Iter_main_i),Machine(Iter_base))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Iter_main_i),Machine(Iter_services))==(btrue);
  List_Constraints(Implementation(Iter_main_i))==(btrue);
  List_Context_Constraints(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Iter_main_i))==(nb_MP85,all_MP85);
  List_Operations(Implementation(Iter_main_i))==(nb_MP85,all_MP85)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Iter_main_i),nb_MP85)==(?);
  List_Input(Implementation(Iter_main_i),all_MP85)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Iter_main_i),nb_MP85)==(res);
  List_Output(Implementation(Iter_main_i),all_MP85)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Iter_main_i),nb_MP85)==(res <-- nb_MP85);
  List_Header(Implementation(Iter_main_i),all_MP85)==(res <-- all_MP85)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Iter_main_i),nb_MP85)==(btrue);
  List_Precondition(Implementation(Iter_main_i),nb_MP85)==(btrue);
  Own_Precondition(Implementation(Iter_main_i),all_MP85)==(btrue);
  List_Precondition(Implementation(Iter_main_i),all_MP85)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Iter_main_i),all_MP85)==(btrue | @(current,continue,current_is_MP85).(current_is_MP85:=FALSE;res:=TRUE;(btrue | Todo,Done,continue:=Trains,{},bool(Trains/={}));WHILE continue = TRUE & res = TRUE DO (Todo/={} | @(chosen,new_Todo).(chosen: NAT & chosen: Todo & new_Todo = Todo-{chosen} ==> Todo,Done,continue,current:=new_Todo,Done\/{chosen},bool(new_Todo/={}),chosen));(current: NAT & current: Trains | current_is_MP85:=is_MP85(current));(current_is_MP85 = FALSE ==> res:=FALSE [] not(current_is_MP85 = FALSE) ==> skip) INVARIANT Todo\/Done = Trains & continue = bool(Todo/={}) & res = bool((Done<|is_MP85)~[{TRUE}] = Done) VARIANT card(Todo) END));
  Expanded_List_Substitution(Implementation(Iter_main_i),nb_MP85)==(btrue | @(current,continue,current_is_MP85).(current_is_MP85:=FALSE;(0: INT | res:=0);(btrue | Todo,Done,continue:=Trains,{},bool(Trains/={}));WHILE continue = TRUE DO (Todo/={} | @(chosen,new_Todo).(chosen: NAT & chosen: Todo & new_Todo = Todo-{chosen} ==> Todo,Done,continue,current:=new_Todo,Done\/{chosen},bool(new_Todo/={}),chosen));(current: NAT & current: Trains | current_is_MP85:=is_MP85(current));(current_is_MP85 = TRUE ==> (res+1: INT & res: INT & 1: INT | res:=res+1) [] not(current_is_MP85 = TRUE) ==> skip) INVARIANT Todo\/Done = Trains & continue = bool(Todo/={}) & res = card(is_MP85~[{TRUE}]/\Done) VARIANT card(Todo) END));
  List_Substitution(Implementation(Iter_main_i),nb_MP85)==(VAR current,continue,current_is_MP85 IN current_is_MP85:=FALSE;res:=0;continue <-- init_iter;WHILE continue = TRUE DO continue,current <-- next_iter;current_is_MP85 <-- is_MP85_op(current);IF current_is_MP85 = TRUE THEN res:=res+1 END INVARIANT Todo\/Done = Trains & continue = bool(Todo/={}) & res = card(is_MP85~[{TRUE}]/\Done) VARIANT card(Todo) END END);
  List_Substitution(Implementation(Iter_main_i),all_MP85)==(VAR current,continue,current_is_MP85 IN current_is_MP85:=FALSE;res:=TRUE;continue <-- init_iter;WHILE continue = TRUE & res = TRUE DO continue,current <-- next_iter;current_is_MP85 <-- is_MP85_op(current);IF current_is_MP85 = FALSE THEN res:=FALSE END INVARIANT Todo\/Done = Trains & continue = bool(Todo/={}) & res = bool((Done<|is_MP85)~[{TRUE}] = Done) VARIANT card(Todo) END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Iter_main_i))==(?);
  Inherited_List_Constants(Implementation(Iter_main_i))==(?);
  List_Constants(Implementation(Iter_main_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Iter_main_i))==(?);
  Context_List_Defered(Implementation(Iter_main_i))==(?);
  Context_List_Sets(Implementation(Iter_main_i))==(?);
  List_Own_Enumerated(Implementation(Iter_main_i))==(?);
  List_Valuable_Sets(Implementation(Iter_main_i))==(?);
  Inherited_List_Enumerated(Implementation(Iter_main_i))==(?);
  Inherited_List_Defered(Implementation(Iter_main_i))==(?);
  Inherited_List_Sets(Implementation(Iter_main_i))==(?);
  List_Enumerated(Implementation(Iter_main_i))==(?);
  List_Defered(Implementation(Iter_main_i))==(?);
  List_Sets(Implementation(Iter_main_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Iter_main_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Iter_main_i))==(?);
  List_HiddenConstants(Implementation(Iter_main_i))==(?);
  External_List_HiddenConstants(Implementation(Iter_main_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Iter_main_i))==(btrue);
  Context_List_Properties(Implementation(Iter_main_i))==(First: NAT & Last: NAT & First<=Last & Last<MAXINT & Trains = First..Last & is_MP85: Trains --> BOOL);
  Inherited_List_Properties(Implementation(Iter_main_i))==(btrue);
  List_Properties(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Iter_main_i))==(aa: aa);
  List_Values(Implementation(Iter_main_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Iter_main_i),Machine(Iter_base))==(is_MP85_op);
  Seen_Context_List_Enumerated(Implementation(Iter_main_i))==(?);
  Seen_Context_List_Invariant(Implementation(Iter_main_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Iter_main_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Iter_main_i))==(btrue);
  Seen_List_Constraints(Implementation(Iter_main_i))==(btrue);
  Seen_List_Precondition(Implementation(Iter_main_i),is_MP85_op)==(train: NAT & train: Trains);
  Seen_Expanded_List_Substitution(Implementation(Iter_main_i),is_MP85_op)==(res:=is_MP85(train));
  Seen_List_Operations(Implementation(Iter_main_i),Machine(Iter_base))==(is_MP85_op);
  Seen_Expanded_List_Invariant(Implementation(Iter_main_i),Machine(Iter_base))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Iter_main_i),Machine(Iter_services))==(init_iter,next_iter);
  List_Included_Operations(Implementation(Iter_main_i),Machine(Iter_base))==(is_MP85_op)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Iter_main_i))==(Type(all_MP85) == Cst(btype(BOOL,?,?),No_type);Type(nb_MP85) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Iter_main_i),Machine(Iter_base))==(First,Last);
  List_Constants_Env(Implementation(Iter_main_i),Machine(Iter_base))==(Type(First) == Cst(btype(INTEGER,?,?));Type(Last) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Iter_main_i)) == (? | ? | ? | Done,Todo | nb_MP85,all_MP85 | ? | seen(Machine(Iter_base)),imported(Machine(Iter_services)) | ? | Iter_main_i);
  List_Of_HiddenCst_Ids(Implementation(Iter_main_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Iter_main_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Iter_main_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Iter_main_i)) == (seen(Machine(Iter_base)): (First,Last | ? | ? | ? | ? | ? | is_MP85,Trains | ? | ?));
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
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Iter_main_i),nb_MP85, 1) == (Type(current) == Lvl(btype(INTEGER,?,?));Type(continue) == Lvl(btype(BOOL,?,?));Type(current_is_MP85) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Iter_main_i),all_MP85, 1) == (Type(current) == Lvl(btype(INTEGER,?,?));Type(continue) == Lvl(btype(BOOL,?,?));Type(current_is_MP85) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(Iter_main_i))==(?)
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
  TypingPredicate(Implementation(Iter_main_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Iter_main_i),Machine(Iter_services))==(Done,Todo);
  ImportedVisVariablesList(Implementation(Iter_main_i),Machine(Iter_services))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
