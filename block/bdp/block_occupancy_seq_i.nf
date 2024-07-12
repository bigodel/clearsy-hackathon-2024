Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(block_occupancy_seq_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(block_occupancy_seq_i))==(Machine(block_occupancy_seq));
  Level(Implementation(block_occupancy_seq_i))==(1);
  Upper_Level(Implementation(block_occupancy_seq_i))==(Machine(block_occupancy_seq))
END
&
THEORY LoadedStructureX IS
  Implementation(block_occupancy_seq_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(block_occupancy_seq_i))==(configuration,inputs)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(block_occupancy_seq_i))==(block_occupancy);
  Inherited_List_Includes(Implementation(block_occupancy_seq_i))==(block_occupancy)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(block_occupancy_seq_i))==(?);
  Context_List_Variables(Implementation(block_occupancy_seq_i))==(?);
  Abstract_List_Variables(Implementation(block_occupancy_seq_i))==(tdla,ob);
  Local_List_Variables(Implementation(block_occupancy_seq_i))==(?);
  List_Variables(Implementation(block_occupancy_seq_i))==(tdla,mb,ob);
  External_List_Variables(Implementation(block_occupancy_seq_i))==(tdla,mb,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?);
  Abstract_List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?);
  External_List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?);
  Expanded_List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?);
  List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?);
  Internal_List_VisibleVariables(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(block_occupancy_seq_i))==(btrue);
  Abstract_List_Invariant(Implementation(block_occupancy_seq_i))==(ob <: t_block & tdla <: t_block);
  Expanded_List_Invariant(Implementation(block_occupancy_seq_i))==(ob <: t_block & mb <: t_block & tdla <: t_block);
  Context_List_Invariant(Implementation(block_occupancy_seq_i))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(block_occupancy_seq_i))==(btrue);
  Expanded_List_Assertions(Implementation(block_occupancy_seq_i))==(btrue);
  Context_List_Assertions(Implementation(block_occupancy_seq_i))==(btrue);
  List_Assertions(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(block_occupancy_seq_i))==(ob,mb,tdla:=t_block,{},t_block);
  Context_List_Initialisation(Implementation(block_occupancy_seq_i))==(skip);
  List_Initialisation(Implementation(block_occupancy_seq_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(block_occupancy_seq_i),Machine(block_occupancy))==(?);
  List_Instanciated_Parameters(Implementation(block_occupancy_seq_i),Machine(configuration))==(?);
  List_Instanciated_Parameters(Implementation(block_occupancy_seq_i),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(block_occupancy_seq_i),Machine(block_occupancy))==(btrue);
  List_Constraints(Implementation(block_occupancy_seq_i))==(btrue);
  List_Context_Constraints(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(block_occupancy_seq_i))==(set_block_occupancy);
  List_Operations(Implementation(block_occupancy_seq_i))==(set_block_occupancy)
END
&
THEORY ListInputX IS
  List_Input(Implementation(block_occupancy_seq_i),set_block_occupancy)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(block_occupancy_seq_i),set_block_occupancy)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(block_occupancy_seq_i),set_block_occupancy)==(set_block_occupancy)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(block_occupancy_seq_i),set_block_occupancy)==(btrue);
  List_Precondition(Implementation(block_occupancy_seq_i),set_block_occupancy)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(block_occupancy_seq_i),set_block_occupancy)==(btrue | (btrue | mb:=mb-(t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));(btrue | cc_tdl_ack = TRUE ==> tdla:={} [] not(cc_tdl_ack = TRUE) ==> skip);(btrue | tdla:=tdla\/(ob/\t_block-otd)-mb);(btrue | mb:=mb\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla);(btrue | ob:=ob-(t_block-tdla\/cc_init/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));(btrue | ob:=ob\/(cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd));
  List_Substitution(Implementation(block_occupancy_seq_i),set_block_occupancy)==(unmask_blocks;release_tdl_alarm;set_tdl_alarm;mask_blocks;release_blocks;occupy_blocks)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(block_occupancy_seq_i))==(?);
  Inherited_List_Constants(Implementation(block_occupancy_seq_i))==(?);
  List_Constants(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(block_occupancy_seq_i))==(?);
  Context_List_Defered(Implementation(block_occupancy_seq_i))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Implementation(block_occupancy_seq_i))==(t_block_i,t_border_i,t_exit_i);
  List_Own_Enumerated(Implementation(block_occupancy_seq_i))==(?);
  List_Valuable_Sets(Implementation(block_occupancy_seq_i))==(?);
  Inherited_List_Enumerated(Implementation(block_occupancy_seq_i))==(?);
  Inherited_List_Defered(Implementation(block_occupancy_seq_i))==(?);
  Inherited_List_Sets(Implementation(block_occupancy_seq_i))==(?);
  List_Enumerated(Implementation(block_occupancy_seq_i))==(?);
  List_Defered(Implementation(block_occupancy_seq_i))==(?);
  List_Sets(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(block_occupancy_seq_i))==(?);
  Expanded_List_HiddenConstants(Implementation(block_occupancy_seq_i))==(?);
  List_HiddenConstants(Implementation(block_occupancy_seq_i))==(?);
  External_List_HiddenConstants(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(block_occupancy_seq_i))==(btrue);
  Context_List_Properties(Implementation(block_occupancy_seq_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Implementation(block_occupancy_seq_i))==(btrue);
  List_Properties(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(block_occupancy_seq_i))==(aa: aa);
  List_Values(Implementation(block_occupancy_seq_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(block_occupancy_seq_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Implementation(block_occupancy_seq_i))==(?);
  Seen_Context_List_Invariant(Implementation(block_occupancy_seq_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(block_occupancy_seq_i))==(btrue);
  Seen_Context_List_Properties(Implementation(block_occupancy_seq_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Implementation(block_occupancy_seq_i))==(btrue);
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Implementation(block_occupancy_seq_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Implementation(block_occupancy_seq_i),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Implementation(block_occupancy_seq_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Implementation(block_occupancy_seq_i),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_seq_i),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Implementation(block_occupancy_seq_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Implementation(block_occupancy_seq_i),Machine(configuration))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(block_occupancy_seq_i),Machine(block_occupancy))==(unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_ob,read_tdla);
  List_Included_Operations(Implementation(block_occupancy_seq_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  List_Included_Operations(Implementation(block_occupancy_seq_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(block_occupancy_seq_i))==(Type(set_block_occupancy) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(block_occupancy_seq_i),Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Constants_Env(Implementation(block_occupancy_seq_i),Machine(configuration))==(Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)));
  List_Defered_Sets(Implementation(block_occupancy_seq_i),Machine(configuration))==(t_block_i,t_border_i,t_exit_i)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(block_occupancy_seq_i)) == (? | ? | ? | tdla,mb,ob | set_block_occupancy | ? | seen(Machine(configuration)),seen(Machine(inputs)),imported(Machine(block_occupancy)) | ? | block_occupancy_seq_i);
  List_Of_HiddenCst_Ids(Implementation(block_occupancy_seq_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(block_occupancy_seq_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(block_occupancy_seq_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(block_occupancy_seq_i)) == (seen(Machine(configuration)): (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | ? | ? | bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ? | ?) | seen(Machine(inputs)): (? | ? | cc_tdl_ack,cc_init,oed_prev,oed,obd,otd | ? | ? | ? | ? | ? | ?));
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
  List_Local_Operations(Implementation(block_occupancy_seq_i))==(?)
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
  TypingPredicate(Implementation(block_occupancy_seq_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(block_occupancy_seq_i),Machine(block_occupancy))==(tdla,mb,ob);
  ImportedVisVariablesList(Implementation(block_occupancy_seq_i),Machine(block_occupancy))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
