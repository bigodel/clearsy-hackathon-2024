Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(main))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(main))==(Machine(main));
  Level(Machine(main))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(main)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(main))==(configuration)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(main))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(main))==(?);
  List_Includes(Machine(main))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(main))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(main))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(main))==(?);
  Context_List_Variables(Machine(main))==(?);
  Abstract_List_Variables(Machine(main))==(?);
  Local_List_Variables(Machine(main))==(tdla,ob,obd,otd);
  List_Variables(Machine(main))==(tdla,ob,obd,otd);
  External_List_Variables(Machine(main))==(tdla,ob,obd,otd)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(main))==(?);
  Abstract_List_VisibleVariables(Machine(main))==(?);
  External_List_VisibleVariables(Machine(main))==(?);
  Expanded_List_VisibleVariables(Machine(main))==(?);
  List_VisibleVariables(Machine(main))==(?);
  Internal_List_VisibleVariables(Machine(main))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(main))==(btrue);
  Gluing_List_Invariant(Machine(main))==(btrue);
  Expanded_List_Invariant(Machine(main))==(btrue);
  Abstract_List_Invariant(Machine(main))==(btrue);
  Context_List_Invariant(Machine(main))==(btrue);
  List_Invariant(Machine(main))==(otd <: t_block & obd <: t_border & ob <: t_block & tdla <: t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(main))==(btrue);
  Abstract_List_Assertions(Machine(main))==(btrue);
  Context_List_Assertions(Machine(main))==(btrue);
  List_Assertions(Machine(main))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(main))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(main))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(main))==(@(otd$1,obd$1,ob$1,tdla$1).(otd$1 <: t_block & obd$1 <: t_border & ob$1 <: t_block & tdla$1 <: t_block ==> otd,obd,ob,tdla:=otd$1,obd$1,ob$1,tdla$1));
  Context_List_Initialisation(Machine(main))==(skip);
  List_Initialisation(Machine(main))==(otd,obd,ob,tdla: (otd <: t_block & obd <: t_border & ob <: t_block & tdla <: t_block))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(main))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(main),Machine(configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(main))==(btrue);
  List_Constraints(Machine(main))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(main))==(execute_cycle);
  List_Operations(Machine(main))==(execute_cycle)
END
&
THEORY ListInputX IS
  List_Input(Machine(main),execute_cycle)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(main),execute_cycle)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(main),execute_cycle)==(execute_cycle)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(main),execute_cycle)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(main),execute_cycle)==(btrue | @(otd$1,obd$1,ob$1,tdla$1).(otd$1 <: t_block & obd$1 <: t_border & ob$1 <: t_block & tdla$1 <: t_block & (cfg_b2bd_up\/cfg_b2bd_down)~[obd$1]\/otd$1 <: ob$1 ==> otd,obd,ob,tdla:=otd$1,obd$1,ob$1,tdla$1));
  List_Substitution(Machine(main),execute_cycle)==(otd,obd,ob,tdla: (otd <: t_block & obd <: t_border & ob <: t_block & tdla <: t_block & (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd <: ob))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(main))==(?);
  Inherited_List_Constants(Machine(main))==(?);
  List_Constants(Machine(main))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(main))==(?);
  Context_List_Defered(Machine(main))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(main))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(main))==(?);
  Inherited_List_Enumerated(Machine(main))==(?);
  Inherited_List_Defered(Machine(main))==(?);
  Inherited_List_Sets(Machine(main))==(?);
  List_Enumerated(Machine(main))==(?);
  List_Defered(Machine(main))==(?);
  List_Sets(Machine(main))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(main))==(?);
  Expanded_List_HiddenConstants(Machine(main))==(?);
  List_HiddenConstants(Machine(main))==(?);
  External_List_HiddenConstants(Machine(main))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(main))==(btrue);
  Context_List_Properties(Machine(main))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(main))==(btrue);
  List_Properties(Machine(main))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(main),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Context_List_Enumerated(Machine(main))==(?);
  Seen_Context_List_Invariant(Machine(main))==(btrue);
  Seen_Context_List_Assertions(Machine(main))==(btrue);
  Seen_Context_List_Properties(Machine(main))==(btrue);
  Seen_List_Constraints(Machine(main))==(btrue);
  Seen_List_Precondition(Machine(main),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(main),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(main),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(main),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(main),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(main),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(main),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(main),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(main),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(main),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(main),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(main),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(main),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(main),execute_cycle)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(main)) == (? | ? | tdla,ob,obd,otd | ? | execute_cycle | ? | seen(Machine(configuration)) | ? | main);
  List_Of_HiddenCst_Ids(Machine(main)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(main)) == (?);
  List_Of_VisibleVar_Ids(Machine(main)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(main)) == (?: ?);
  List_Of_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down | ? | ? | ? | configuration);
  List_Of_HiddenCst_Ids(Machine(configuration)) == (bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ?);
  List_Of_VisibleCst_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Of_VisibleVar_Ids(Machine(configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(main)) == (Type(tdla) == Mvl(SetOf(atype(t_block_i,?,?)));Type(ob) == Mvl(SetOf(atype(t_block_i,?,?)));Type(obd) == Mvl(SetOf(atype(t_border_i,?,?)));Type(otd) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(main)) == (Type(execute_cycle) == Cst(No_type,No_type))
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
