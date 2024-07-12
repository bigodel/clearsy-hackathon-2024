Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(inputs))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(inputs))==(Machine(inputs));
  Level(Machine(inputs))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(inputs)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(inputs))==(configuration)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(inputs))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(inputs))==(?);
  List_Includes(Machine(inputs))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(inputs))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(inputs))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(inputs))==(?);
  Context_List_Variables(Machine(inputs))==(?);
  Abstract_List_Variables(Machine(inputs))==(?);
  Local_List_Variables(Machine(inputs))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd);
  List_Variables(Machine(inputs))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd);
  External_List_Variables(Machine(inputs))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(inputs))==(?);
  Abstract_List_VisibleVariables(Machine(inputs))==(?);
  External_List_VisibleVariables(Machine(inputs))==(?);
  Expanded_List_VisibleVariables(Machine(inputs))==(?);
  List_VisibleVariables(Machine(inputs))==(?);
  Internal_List_VisibleVariables(Machine(inputs))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(inputs))==(btrue);
  Gluing_List_Invariant(Machine(inputs))==(btrue);
  Expanded_List_Invariant(Machine(inputs))==(btrue);
  Abstract_List_Invariant(Machine(inputs))==(btrue);
  Context_List_Invariant(Machine(inputs))==(btrue);
  List_Invariant(Machine(inputs))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(inputs))==(btrue);
  Abstract_List_Assertions(Machine(inputs))==(btrue);
  Context_List_Assertions(Machine(inputs))==(btrue);
  List_Assertions(Machine(inputs))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(inputs))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(inputs))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(inputs))==(otd,obd,oed,oed_prev,cc_init,cc_tdl_ack:=t_block,t_border,t_exit,t_exit,{},FALSE);
  Context_List_Initialisation(Machine(inputs))==(skip);
  List_Initialisation(Machine(inputs))==(otd:=t_block || obd:=t_border || oed:=t_exit || oed_prev:=t_exit || cc_init:={} || cc_tdl_ack:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(inputs))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(inputs),Machine(configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(inputs))==(btrue);
  List_Constraints(Machine(inputs))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  List_Operations(Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released)
END
&
THEORY ListInputX IS
  List_Input(Machine(inputs),read_inputs)==(?);
  List_Input(Machine(inputs),save_inputs_prev)==(?);
  List_Input(Machine(inputs),read_cc_tdl_ack)==(?);
  List_Input(Machine(inputs),read_otd)==(p_block);
  List_Input(Machine(inputs),read_cc_init)==(p_block);
  List_Input(Machine(inputs),read_obd)==(p_border);
  List_Input(Machine(inputs),is_exit_newly_released)==(p_exit)
END
&
THEORY ListOutputX IS
  List_Output(Machine(inputs),read_inputs)==(?);
  List_Output(Machine(inputs),save_inputs_prev)==(?);
  List_Output(Machine(inputs),read_cc_tdl_ack)==(res);
  List_Output(Machine(inputs),read_otd)==(res);
  List_Output(Machine(inputs),read_cc_init)==(res);
  List_Output(Machine(inputs),read_obd)==(res);
  List_Output(Machine(inputs),is_exit_newly_released)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(inputs),read_inputs)==(read_inputs);
  List_Header(Machine(inputs),save_inputs_prev)==(save_inputs_prev);
  List_Header(Machine(inputs),read_cc_tdl_ack)==(res <-- read_cc_tdl_ack);
  List_Header(Machine(inputs),read_otd)==(res <-- read_otd(p_block));
  List_Header(Machine(inputs),read_cc_init)==(res <-- read_cc_init(p_block));
  List_Header(Machine(inputs),read_obd)==(res <-- read_obd(p_border));
  List_Header(Machine(inputs),is_exit_newly_released)==(res <-- is_exit_newly_released(p_exit))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(inputs),read_inputs)==(btrue);
  List_Precondition(Machine(inputs),save_inputs_prev)==(btrue);
  List_Precondition(Machine(inputs),read_cc_tdl_ack)==(btrue);
  List_Precondition(Machine(inputs),read_otd)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(inputs),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(inputs),read_obd)==(p_border: t_border_i & p_border: t_border);
  List_Precondition(Machine(inputs),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(inputs),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit | res:=bool(p_exit: oed_prev-oed));
  Expanded_List_Substitution(Machine(inputs),read_obd)==(p_border: t_border_i & p_border: t_border | res:=bool(p_border: obd));
  Expanded_List_Substitution(Machine(inputs),read_cc_init)==(p_block: t_block_i & p_block: t_block | res:=bool(p_block: cc_init));
  Expanded_List_Substitution(Machine(inputs),read_otd)==(p_block: t_block_i & p_block: t_block | res:=bool(p_block: otd));
  Expanded_List_Substitution(Machine(inputs),read_cc_tdl_ack)==(btrue | res:=cc_tdl_ack);
  Expanded_List_Substitution(Machine(inputs),save_inputs_prev)==(btrue | oed_prev:=oed);
  Expanded_List_Substitution(Machine(inputs),read_inputs)==(btrue | @(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  List_Substitution(Machine(inputs),read_inputs)==(otd,obd,oed,cc_init,cc_tdl_ack: (otd <: t_block & obd <: t_border & oed <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL));
  List_Substitution(Machine(inputs),save_inputs_prev)==(oed_prev:=oed);
  List_Substitution(Machine(inputs),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  List_Substitution(Machine(inputs),read_otd)==(res:=bool(p_block: otd));
  List_Substitution(Machine(inputs),read_cc_init)==(res:=bool(p_block: cc_init));
  List_Substitution(Machine(inputs),read_obd)==(res:=bool(p_border: obd));
  List_Substitution(Machine(inputs),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(inputs))==(?);
  Inherited_List_Constants(Machine(inputs))==(?);
  List_Constants(Machine(inputs))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(inputs))==(?);
  Context_List_Defered(Machine(inputs))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(inputs))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(inputs))==(?);
  Inherited_List_Enumerated(Machine(inputs))==(?);
  Inherited_List_Defered(Machine(inputs))==(?);
  Inherited_List_Sets(Machine(inputs))==(?);
  List_Enumerated(Machine(inputs))==(?);
  List_Defered(Machine(inputs))==(?);
  List_Sets(Machine(inputs))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(inputs))==(?);
  Expanded_List_HiddenConstants(Machine(inputs))==(?);
  List_HiddenConstants(Machine(inputs))==(?);
  External_List_HiddenConstants(Machine(inputs))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(inputs))==(btrue);
  Context_List_Properties(Machine(inputs))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(inputs))==(btrue);
  List_Properties(Machine(inputs))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(inputs),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Context_List_Enumerated(Machine(inputs))==(?);
  Seen_Context_List_Invariant(Machine(inputs))==(btrue);
  Seen_Context_List_Assertions(Machine(inputs))==(btrue);
  Seen_Context_List_Properties(Machine(inputs))==(btrue);
  Seen_List_Constraints(Machine(inputs))==(btrue);
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(inputs),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(inputs),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(inputs),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(inputs),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(inputs),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(inputs),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(inputs),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(inputs),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(inputs),read_inputs)==(?);
  List_ANY_Var(Machine(inputs),save_inputs_prev)==(?);
  List_ANY_Var(Machine(inputs),read_cc_tdl_ack)==(?);
  List_ANY_Var(Machine(inputs),read_otd)==(?);
  List_ANY_Var(Machine(inputs),read_cc_init)==(?);
  List_ANY_Var(Machine(inputs),read_obd)==(?);
  List_ANY_Var(Machine(inputs),is_exit_newly_released)==(?)
END
&
THEORY ListOfIdsX IS
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
  Variables(Machine(inputs)) == (Type(cc_tdl_ack) == Mvl(btype(BOOL,?,?));Type(cc_init) == Mvl(SetOf(atype(t_block_i,?,?)));Type(oed_prev) == Mvl(SetOf(atype(t_exit_i,?,?)));Type(oed) == Mvl(SetOf(atype(t_exit_i,?,?)));Type(obd) == Mvl(SetOf(atype(t_border_i,?,?)));Type(otd) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(inputs)) == (Type(is_exit_newly_released) == Cst(btype(BOOL,?,?),atype(t_exit_i,?,?));Type(read_obd) == Cst(btype(BOOL,?,?),atype(t_border_i,?,?));Type(read_cc_init) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_otd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_cc_tdl_ack) == Cst(btype(BOOL,?,?),No_type);Type(save_inputs_prev) == Cst(No_type,No_type);Type(read_inputs) == Cst(No_type,No_type));
  Observers(Machine(inputs)) == (Type(is_exit_newly_released) == Cst(btype(BOOL,?,?),atype(t_exit_i,?,?));Type(read_obd) == Cst(btype(BOOL,?,?),atype(t_border_i,?,?));Type(read_cc_init) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_otd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_cc_tdl_ack) == Cst(btype(BOOL,?,?),No_type))
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
