Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(block_occupancy_seq))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(block_occupancy_seq))==(Machine(block_occupancy_seq));
  Level(Machine(block_occupancy_seq))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(block_occupancy_seq)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(block_occupancy_seq))==(configuration,inputs)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(block_occupancy_seq))==(?);
  List_Includes(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(block_occupancy_seq))==(?);
  Context_List_Variables(Machine(block_occupancy_seq))==(?);
  Abstract_List_Variables(Machine(block_occupancy_seq))==(?);
  Local_List_Variables(Machine(block_occupancy_seq))==(tdla,ob);
  List_Variables(Machine(block_occupancy_seq))==(tdla,ob);
  External_List_Variables(Machine(block_occupancy_seq))==(tdla,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(block_occupancy_seq))==(?);
  Abstract_List_VisibleVariables(Machine(block_occupancy_seq))==(?);
  External_List_VisibleVariables(Machine(block_occupancy_seq))==(?);
  Expanded_List_VisibleVariables(Machine(block_occupancy_seq))==(?);
  List_VisibleVariables(Machine(block_occupancy_seq))==(?);
  Internal_List_VisibleVariables(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(block_occupancy_seq))==(btrue);
  Gluing_List_Invariant(Machine(block_occupancy_seq))==(btrue);
  Expanded_List_Invariant(Machine(block_occupancy_seq))==(btrue);
  Abstract_List_Invariant(Machine(block_occupancy_seq))==(btrue);
  Context_List_Invariant(Machine(block_occupancy_seq))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Machine(block_occupancy_seq))==(ob <: t_block & tdla <: t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(block_occupancy_seq))==(btrue);
  Abstract_List_Assertions(Machine(block_occupancy_seq))==(btrue);
  Context_List_Assertions(Machine(block_occupancy_seq))==(btrue);
  List_Assertions(Machine(block_occupancy_seq))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(block_occupancy_seq))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(block_occupancy_seq))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(block_occupancy_seq))==(@(ob$1,tdla$1).(ob$1 <: t_block & tdla$1 <: t_block ==> ob,tdla:=ob$1,tdla$1));
  Context_List_Initialisation(Machine(block_occupancy_seq))==(skip);
  List_Initialisation(Machine(block_occupancy_seq))==(ob,tdla: (ob <: t_block & tdla <: t_block))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(block_occupancy_seq),Machine(configuration))==(?);
  List_Instanciated_Parameters(Machine(block_occupancy_seq),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(block_occupancy_seq))==(btrue);
  List_Constraints(Machine(block_occupancy_seq))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(block_occupancy_seq))==(set_block_occupancy);
  List_Operations(Machine(block_occupancy_seq))==(set_block_occupancy)
END
&
THEORY ListInputX IS
  List_Input(Machine(block_occupancy_seq),set_block_occupancy)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(block_occupancy_seq),set_block_occupancy)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(block_occupancy_seq),set_block_occupancy)==(set_block_occupancy)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(block_occupancy_seq),set_block_occupancy)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(block_occupancy_seq),set_block_occupancy)==(btrue | @(ob$1,tdla$1).(ob$1 <: t_block & tdla$1 <: t_block & (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd <: ob$1 ==> ob,tdla:=ob$1,tdla$1));
  List_Substitution(Machine(block_occupancy_seq),set_block_occupancy)==(ob,tdla: (ob <: t_block & tdla <: t_block & (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd <: ob))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(block_occupancy_seq))==(?);
  Inherited_List_Constants(Machine(block_occupancy_seq))==(?);
  List_Constants(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(block_occupancy_seq))==(?);
  Context_List_Defered(Machine(block_occupancy_seq))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(block_occupancy_seq))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(block_occupancy_seq))==(?);
  Inherited_List_Enumerated(Machine(block_occupancy_seq))==(?);
  Inherited_List_Defered(Machine(block_occupancy_seq))==(?);
  Inherited_List_Sets(Machine(block_occupancy_seq))==(?);
  List_Enumerated(Machine(block_occupancy_seq))==(?);
  List_Defered(Machine(block_occupancy_seq))==(?);
  List_Sets(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(block_occupancy_seq))==(?);
  Expanded_List_HiddenConstants(Machine(block_occupancy_seq))==(?);
  List_HiddenConstants(Machine(block_occupancy_seq))==(?);
  External_List_HiddenConstants(Machine(block_occupancy_seq))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(block_occupancy_seq))==(btrue);
  Context_List_Properties(Machine(block_occupancy_seq))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(block_occupancy_seq))==(btrue);
  List_Properties(Machine(block_occupancy_seq))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(block_occupancy_seq),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Machine(block_occupancy_seq))==(?);
  Seen_Context_List_Invariant(Machine(block_occupancy_seq))==(btrue);
  Seen_Context_List_Assertions(Machine(block_occupancy_seq))==(btrue);
  Seen_Context_List_Properties(Machine(block_occupancy_seq))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Machine(block_occupancy_seq))==(btrue);
  Seen_List_Precondition(Machine(block_occupancy_seq),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Machine(block_occupancy_seq),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Machine(block_occupancy_seq),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Machine(block_occupancy_seq),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Machine(block_occupancy_seq),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Machine(block_occupancy_seq),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(block_occupancy_seq),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(block_occupancy_seq),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(block_occupancy_seq),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(block_occupancy_seq),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(block_occupancy_seq),set_block_occupancy)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(block_occupancy_seq)) == (? | ? | tdla,ob | ? | set_block_occupancy | ? | seen(Machine(configuration)),seen(Machine(inputs)) | ? | block_occupancy_seq);
  List_Of_HiddenCst_Ids(Machine(block_occupancy_seq)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_occupancy_seq)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_occupancy_seq)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_occupancy_seq)) == (?: ?);
  List_Of_Ids(Machine(inputs)) == (? | ? | cc_tdl_ack,cc_init,oed_prev,oed,obd,otd | ? | read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released | ? | seen(Machine(configuration)) | ? | inputs);
  List_Of_HiddenCst_Ids(Machine(inputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(inputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(inputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(inputs)) == (?: ?);
  List_Of_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down | ? | ? | ? | configuration);
  List_Of_HiddenCst_Ids(Machine(configuration)) == (bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ?);
  List_Of_VisibleCst_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Of_VisibleVar_Ids(Machine(configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(block_occupancy_seq)) == (Type(tdla) == Mvl(SetOf(atype(t_block_i,?,?)));Type(ob) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(block_occupancy_seq)) == (Type(set_block_occupancy) == Cst(No_type,No_type))
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
