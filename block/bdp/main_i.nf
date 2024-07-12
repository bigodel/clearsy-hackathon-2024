Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(main_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(main_i))==(Machine(main));
  Level(Implementation(main_i))==(1);
  Upper_Level(Implementation(main_i))==(Machine(main))
END
&
THEORY LoadedStructureX IS
  Implementation(main_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(main_i))==(configuration)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(main_i))==(inputs,block_occupancy_seq);
  Inherited_List_Includes(Implementation(main_i))==(block_occupancy_seq,inputs)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(main_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(main_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(main_i))==(?);
  Context_List_Variables(Implementation(main_i))==(?);
  Abstract_List_Variables(Implementation(main_i))==(tdla,ob,obd,otd);
  Local_List_Variables(Implementation(main_i))==(?);
  List_Variables(Implementation(main_i))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd,tdla,ob);
  External_List_Variables(Implementation(main_i))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd,tdla,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(main_i))==(?);
  Abstract_List_VisibleVariables(Implementation(main_i))==(?);
  External_List_VisibleVariables(Implementation(main_i))==(?);
  Expanded_List_VisibleVariables(Implementation(main_i))==(?);
  List_VisibleVariables(Implementation(main_i))==(?);
  Internal_List_VisibleVariables(Implementation(main_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(main_i))==(btrue);
  Abstract_List_Invariant(Implementation(main_i))==(otd <: t_block & obd <: t_border & ob <: t_block & tdla <: t_block);
  Expanded_List_Invariant(Implementation(main_i))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL & ob <: t_block & tdla <: t_block);
  Context_List_Invariant(Implementation(main_i))==(btrue);
  List_Invariant(Implementation(main_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(main_i))==(btrue);
  Expanded_List_Assertions(Implementation(main_i))==(btrue);
  Context_List_Assertions(Implementation(main_i))==(btrue);
  List_Assertions(Implementation(main_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(main_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(main_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(main_i))==(otd,obd,oed,oed_prev,cc_init,cc_tdl_ack:=t_block,t_border,t_exit,t_exit,{},FALSE;@(ob$1,tdla$1).(ob$1 <: t_block & tdla$1 <: t_block ==> ob,tdla:=ob$1,tdla$1));
  Context_List_Initialisation(Implementation(main_i))==(skip);
  List_Initialisation(Implementation(main_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(main_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(main_i),Machine(inputs))==(?);
  List_Instanciated_Parameters(Implementation(main_i),Machine(block_occupancy_seq))==(?);
  List_Instanciated_Parameters(Implementation(main_i),Machine(configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(main_i),Machine(block_occupancy_seq))==(btrue);
  List_Constraints(Implementation(main_i))==(btrue);
  List_Context_Constraints(Implementation(main_i))==(btrue);
  List_Constraints(Implementation(main_i),Machine(inputs))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(main_i))==(execute_cycle);
  List_Operations(Implementation(main_i))==(execute_cycle)
END
&
THEORY ListInputX IS
  List_Input(Implementation(main_i),execute_cycle)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(main_i),execute_cycle)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(main_i),execute_cycle)==(execute_cycle)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(main_i),execute_cycle)==(btrue);
  List_Precondition(Implementation(main_i),execute_cycle)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(main_i),execute_cycle)==(btrue | (btrue | @(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));(btrue | oed_prev:=oed);(btrue | @(ob$1,tdla$1).(ob$1 <: t_block & tdla$1 <: t_block & (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd <: ob$1 ==> ob,tdla:=ob$1,tdla$1)));
  List_Substitution(Implementation(main_i),execute_cycle)==(read_inputs;save_inputs_prev;set_block_occupancy)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(main_i))==(?);
  Inherited_List_Constants(Implementation(main_i))==(?);
  List_Constants(Implementation(main_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(main_i))==(?);
  Context_List_Defered(Implementation(main_i))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Implementation(main_i))==(t_block_i,t_border_i,t_exit_i);
  List_Own_Enumerated(Implementation(main_i))==(?);
  List_Valuable_Sets(Implementation(main_i))==(?);
  Inherited_List_Enumerated(Implementation(main_i))==(?);
  Inherited_List_Defered(Implementation(main_i))==(?);
  Inherited_List_Sets(Implementation(main_i))==(?);
  List_Enumerated(Implementation(main_i))==(?);
  List_Defered(Implementation(main_i))==(?);
  List_Sets(Implementation(main_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(main_i))==(?);
  Expanded_List_HiddenConstants(Implementation(main_i))==(?);
  List_HiddenConstants(Implementation(main_i))==(?);
  External_List_HiddenConstants(Implementation(main_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(main_i))==(btrue);
  Context_List_Properties(Implementation(main_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Implementation(main_i))==(btrue);
  List_Properties(Implementation(main_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(main_i))==(aa: aa);
  List_Values(Implementation(main_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(main_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Context_List_Enumerated(Implementation(main_i))==(?);
  Seen_Context_List_Invariant(Implementation(main_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(main_i))==(btrue);
  Seen_Context_List_Properties(Implementation(main_i))==(btrue);
  Seen_List_Constraints(Implementation(main_i))==(btrue);
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Implementation(main_i),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Implementation(main_i),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(main_i),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Implementation(main_i),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Implementation(main_i),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Implementation(main_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Implementation(main_i),Machine(configuration))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(main_i),Machine(block_occupancy_seq))==(set_block_occupancy);
  List_Included_Operations(Implementation(main_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  List_Included_Operations(Implementation(main_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(main_i))==(Type(execute_cycle) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(main_i),Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Constants_Env(Implementation(main_i),Machine(configuration))==(Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)));
  List_Defered_Sets(Implementation(main_i),Machine(configuration))==(t_block_i,t_border_i,t_exit_i)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(main_i)) == (? | ? | ? | tdla,ob,cc_tdl_ack,cc_init,oed_prev,oed,obd,otd | execute_cycle | ? | seen(Machine(configuration)),imported(Machine(inputs)),imported(Machine(block_occupancy_seq)) | ? | main_i);
  List_Of_HiddenCst_Ids(Implementation(main_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(main_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(main_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(main_i)) == (seen(Machine(configuration)): (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | ? | ? | bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ? | ?) | seen(Machine(inputs)): (? | ? | cc_tdl_ack,cc_init,oed_prev,oed,obd,otd | ? | ? | ? | ? | ? | ?));
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
  List_Local_Operations(Implementation(main_i))==(?)
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
  TypingPredicate(Implementation(main_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(main_i),Machine(inputs))==(cc_tdl_ack,cc_init,oed_prev,oed,obd,otd);
  ImportedVisVariablesList(Implementation(main_i),Machine(inputs))==(?);
  ImportedVariablesList(Implementation(main_i),Machine(block_occupancy_seq))==(tdla,ob);
  ImportedVisVariablesList(Implementation(main_i),Machine(block_occupancy_seq))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
