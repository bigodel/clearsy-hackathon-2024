Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(block_occupancy))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(block_occupancy))==(Machine(block_occupancy));
  Level(Machine(block_occupancy))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(block_occupancy)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(block_occupancy))==(configuration,inputs)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(block_occupancy))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(block_occupancy))==(?);
  List_Includes(Machine(block_occupancy))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(block_occupancy))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(block_occupancy))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(block_occupancy))==(?);
  Context_List_Variables(Machine(block_occupancy))==(?);
  Abstract_List_Variables(Machine(block_occupancy))==(?);
  Local_List_Variables(Machine(block_occupancy))==(tdla,mb,ob);
  List_Variables(Machine(block_occupancy))==(tdla,mb,ob);
  External_List_Variables(Machine(block_occupancy))==(tdla,mb,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(block_occupancy))==(?);
  Abstract_List_VisibleVariables(Machine(block_occupancy))==(?);
  External_List_VisibleVariables(Machine(block_occupancy))==(?);
  Expanded_List_VisibleVariables(Machine(block_occupancy))==(?);
  List_VisibleVariables(Machine(block_occupancy))==(?);
  Internal_List_VisibleVariables(Machine(block_occupancy))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(block_occupancy))==(btrue);
  Gluing_List_Invariant(Machine(block_occupancy))==(btrue);
  Expanded_List_Invariant(Machine(block_occupancy))==(btrue);
  Abstract_List_Invariant(Machine(block_occupancy))==(btrue);
  Context_List_Invariant(Machine(block_occupancy))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Machine(block_occupancy))==(ob <: t_block & mb <: t_block & tdla <: t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(block_occupancy))==(btrue);
  Abstract_List_Assertions(Machine(block_occupancy))==(btrue);
  Context_List_Assertions(Machine(block_occupancy))==(btrue);
  List_Assertions(Machine(block_occupancy))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(block_occupancy))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(block_occupancy))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(block_occupancy))==(ob,mb,tdla:=t_block,{},t_block);
  Context_List_Initialisation(Machine(block_occupancy))==(skip);
  List_Initialisation(Machine(block_occupancy))==(ob:=t_block || mb:={} || tdla:=t_block)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(block_occupancy))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(block_occupancy),Machine(configuration))==(?);
  List_Instanciated_Parameters(Machine(block_occupancy),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(block_occupancy))==(btrue);
  List_Constraints(Machine(block_occupancy))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(block_occupancy))==(unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_ob,read_tdla);
  List_Operations(Machine(block_occupancy))==(unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_ob,read_tdla)
END
&
THEORY ListInputX IS
  List_Input(Machine(block_occupancy),unmask_blocks)==(?);
  List_Input(Machine(block_occupancy),release_tdl_alarm)==(?);
  List_Input(Machine(block_occupancy),set_tdl_alarm)==(?);
  List_Input(Machine(block_occupancy),mask_blocks)==(?);
  List_Input(Machine(block_occupancy),release_blocks)==(?);
  List_Input(Machine(block_occupancy),occupy_blocks)==(?);
  List_Input(Machine(block_occupancy),read_ob)==(p_block);
  List_Input(Machine(block_occupancy),read_tdla)==(p_block)
END
&
THEORY ListOutputX IS
  List_Output(Machine(block_occupancy),unmask_blocks)==(?);
  List_Output(Machine(block_occupancy),release_tdl_alarm)==(?);
  List_Output(Machine(block_occupancy),set_tdl_alarm)==(?);
  List_Output(Machine(block_occupancy),mask_blocks)==(?);
  List_Output(Machine(block_occupancy),release_blocks)==(?);
  List_Output(Machine(block_occupancy),occupy_blocks)==(?);
  List_Output(Machine(block_occupancy),read_ob)==(p_res);
  List_Output(Machine(block_occupancy),read_tdla)==(p_res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(block_occupancy),unmask_blocks)==(unmask_blocks);
  List_Header(Machine(block_occupancy),release_tdl_alarm)==(release_tdl_alarm);
  List_Header(Machine(block_occupancy),set_tdl_alarm)==(set_tdl_alarm);
  List_Header(Machine(block_occupancy),mask_blocks)==(mask_blocks);
  List_Header(Machine(block_occupancy),release_blocks)==(release_blocks);
  List_Header(Machine(block_occupancy),occupy_blocks)==(occupy_blocks);
  List_Header(Machine(block_occupancy),read_ob)==(p_res <-- read_ob(p_block));
  List_Header(Machine(block_occupancy),read_tdla)==(p_res <-- read_tdla(p_block))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(block_occupancy),unmask_blocks)==(btrue);
  List_Precondition(Machine(block_occupancy),release_tdl_alarm)==(btrue);
  List_Precondition(Machine(block_occupancy),set_tdl_alarm)==(btrue);
  List_Precondition(Machine(block_occupancy),mask_blocks)==(btrue);
  List_Precondition(Machine(block_occupancy),release_blocks)==(btrue);
  List_Precondition(Machine(block_occupancy),occupy_blocks)==(btrue);
  List_Precondition(Machine(block_occupancy),read_ob)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_occupancy),read_tdla)==(p_block: t_block_i & p_block: t_block)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(block_occupancy),read_tdla)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: tdla));
  Expanded_List_Substitution(Machine(block_occupancy),read_ob)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob));
  Expanded_List_Substitution(Machine(block_occupancy),occupy_blocks)==(btrue | ob:=ob\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd);
  Expanded_List_Substitution(Machine(block_occupancy),release_blocks)==(btrue | ob:=ob-(t_block-tdla\/cc_init/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));
  Expanded_List_Substitution(Machine(block_occupancy),mask_blocks)==(btrue | mb:=mb\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla);
  Expanded_List_Substitution(Machine(block_occupancy),set_tdl_alarm)==(btrue | tdla:=tdla\/(ob/\t_block-otd)-mb);
  Expanded_List_Substitution(Machine(block_occupancy),release_tdl_alarm)==(btrue | cc_tdl_ack = TRUE ==> tdla:={} [] not(cc_tdl_ack = TRUE) ==> skip);
  Expanded_List_Substitution(Machine(block_occupancy),unmask_blocks)==(btrue | mb:=mb-(t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));
  List_Substitution(Machine(block_occupancy),unmask_blocks)==(mb:=mb-(t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));
  List_Substitution(Machine(block_occupancy),release_tdl_alarm)==(IF cc_tdl_ack = TRUE THEN tdla:={} END);
  List_Substitution(Machine(block_occupancy),set_tdl_alarm)==(tdla:=tdla\/(ob/\t_block-otd)-mb);
  List_Substitution(Machine(block_occupancy),mask_blocks)==(mb:=mb\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla);
  List_Substitution(Machine(block_occupancy),release_blocks)==(ob:=ob-(t_block-tdla\/cc_init/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));
  List_Substitution(Machine(block_occupancy),occupy_blocks)==(ob:=ob\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd);
  List_Substitution(Machine(block_occupancy),read_ob)==(p_res:=bool(p_block: ob));
  List_Substitution(Machine(block_occupancy),read_tdla)==(p_res:=bool(p_block: tdla))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(block_occupancy))==(?);
  Inherited_List_Constants(Machine(block_occupancy))==(?);
  List_Constants(Machine(block_occupancy))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(block_occupancy))==(?);
  Context_List_Defered(Machine(block_occupancy))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(block_occupancy))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(block_occupancy))==(?);
  Inherited_List_Enumerated(Machine(block_occupancy))==(?);
  Inherited_List_Defered(Machine(block_occupancy))==(?);
  Inherited_List_Sets(Machine(block_occupancy))==(?);
  List_Enumerated(Machine(block_occupancy))==(?);
  List_Defered(Machine(block_occupancy))==(?);
  List_Sets(Machine(block_occupancy))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(block_occupancy))==(?);
  Expanded_List_HiddenConstants(Machine(block_occupancy))==(?);
  List_HiddenConstants(Machine(block_occupancy))==(?);
  External_List_HiddenConstants(Machine(block_occupancy))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(block_occupancy))==(btrue);
  Context_List_Properties(Machine(block_occupancy))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(block_occupancy))==(btrue);
  List_Properties(Machine(block_occupancy))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(block_occupancy),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Machine(block_occupancy))==(?);
  Seen_Context_List_Invariant(Machine(block_occupancy))==(btrue);
  Seen_Context_List_Assertions(Machine(block_occupancy))==(btrue);
  Seen_Context_List_Properties(Machine(block_occupancy))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Machine(block_occupancy))==(btrue);
  Seen_List_Precondition(Machine(block_occupancy),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Machine(block_occupancy),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Machine(block_occupancy),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Machine(block_occupancy),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Machine(block_occupancy),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Machine(block_occupancy),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Machine(block_occupancy),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Machine(block_occupancy),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Machine(block_occupancy),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Machine(block_occupancy),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(block_occupancy),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(block_occupancy),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(block_occupancy),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(block_occupancy),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(block_occupancy),unmask_blocks)==(?);
  List_ANY_Var(Machine(block_occupancy),release_tdl_alarm)==(?);
  List_ANY_Var(Machine(block_occupancy),set_tdl_alarm)==(?);
  List_ANY_Var(Machine(block_occupancy),mask_blocks)==(?);
  List_ANY_Var(Machine(block_occupancy),release_blocks)==(?);
  List_ANY_Var(Machine(block_occupancy),occupy_blocks)==(?);
  List_ANY_Var(Machine(block_occupancy),read_ob)==(?);
  List_ANY_Var(Machine(block_occupancy),read_tdla)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(block_occupancy)) == (? | ? | tdla,mb,ob | ? | unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_ob,read_tdla | ? | seen(Machine(configuration)),seen(Machine(inputs)) | ? | block_occupancy);
  List_Of_HiddenCst_Ids(Machine(block_occupancy)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_occupancy)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_occupancy)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_occupancy)) == (?: ?);
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
  Variables(Machine(block_occupancy)) == (Type(tdla) == Mvl(SetOf(atype(t_block_i,?,?)));Type(mb) == Mvl(SetOf(atype(t_block_i,?,?)));Type(ob) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(block_occupancy)) == (Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(occupy_blocks) == Cst(No_type,No_type);Type(release_blocks) == Cst(No_type,No_type);Type(mask_blocks) == Cst(No_type,No_type);Type(set_tdl_alarm) == Cst(No_type,No_type);Type(release_tdl_alarm) == Cst(No_type,No_type);Type(unmask_blocks) == Cst(No_type,No_type));
  Observers(Machine(block_occupancy)) == (Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)))
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
