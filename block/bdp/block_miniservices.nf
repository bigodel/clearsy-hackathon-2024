Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(block_miniservices))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(block_miniservices))==(Machine(block_miniservices));
  Level(Machine(block_miniservices))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(block_miniservices)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(block_miniservices))==(configuration,inputs)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(block_miniservices))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(block_miniservices))==(?);
  List_Includes(Machine(block_miniservices))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(block_miniservices))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(block_miniservices))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(block_miniservices))==(?);
  Context_List_Variables(Machine(block_miniservices))==(?);
  Abstract_List_Variables(Machine(block_miniservices))==(?);
  Local_List_Variables(Machine(block_miniservices))==(mb,tdla,ob);
  List_Variables(Machine(block_miniservices))==(mb,tdla,ob);
  External_List_Variables(Machine(block_miniservices))==(mb,tdla,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(block_miniservices))==(?);
  Abstract_List_VisibleVariables(Machine(block_miniservices))==(?);
  External_List_VisibleVariables(Machine(block_miniservices))==(?);
  Expanded_List_VisibleVariables(Machine(block_miniservices))==(?);
  List_VisibleVariables(Machine(block_miniservices))==(?);
  Internal_List_VisibleVariables(Machine(block_miniservices))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(block_miniservices))==(btrue);
  Gluing_List_Invariant(Machine(block_miniservices))==(btrue);
  Expanded_List_Invariant(Machine(block_miniservices))==(btrue);
  Abstract_List_Invariant(Machine(block_miniservices))==(btrue);
  Context_List_Invariant(Machine(block_miniservices))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Machine(block_miniservices))==(ob <: t_block & tdla <: t_block & mb <: t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(block_miniservices))==(btrue);
  Abstract_List_Assertions(Machine(block_miniservices))==(btrue);
  Context_List_Assertions(Machine(block_miniservices))==(btrue);
  List_Assertions(Machine(block_miniservices))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(block_miniservices))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(block_miniservices))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(block_miniservices))==(ob,tdla,mb:=t_block,t_block,{});
  Context_List_Initialisation(Machine(block_miniservices))==(skip);
  List_Initialisation(Machine(block_miniservices))==(ob:=t_block || tdla:=t_block || mb:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(block_miniservices))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(block_miniservices),Machine(configuration))==(?);
  List_Instanciated_Parameters(Machine(block_miniservices),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(block_miniservices))==(btrue);
  List_Constraints(Machine(block_miniservices))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(block_miniservices))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed);
  List_Operations(Machine(block_miniservices))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed)
END
&
THEORY ListInputX IS
  List_Input(Machine(block_miniservices),read_mb)==(p_block);
  List_Input(Machine(block_miniservices),unmask_block)==(p_block);
  List_Input(Machine(block_miniservices),mask_block)==(p_block);
  List_Input(Machine(block_miniservices),read_tdla)==(p_block);
  List_Input(Machine(block_miniservices),alarm_block)==(p_block);
  List_Input(Machine(block_miniservices),unalarm_block)==(p_block);
  List_Input(Machine(block_miniservices),clear_tdla)==(?);
  List_Input(Machine(block_miniservices),read_ob)==(p_block);
  List_Input(Machine(block_miniservices),occ_block)==(p_block);
  List_Input(Machine(block_miniservices),unocc_block)==(p_block);
  List_Input(Machine(block_miniservices),is_free_block)==(p_block);
  List_Input(Machine(block_miniservices),has_up_free_or_freetd)==(p_block);
  List_Input(Machine(block_miniservices),has_down_free_or_freetd)==(p_block);
  List_Input(Machine(block_miniservices),has_occupied_bd)==(p_block);
  List_Input(Machine(block_miniservices),is_occ_unmasked_block)==(p_block);
  List_Input(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_block);
  List_Input(Machine(block_miniservices),has_up_tr_ed)==(p_block);
  List_Input(Machine(block_miniservices),has_down_tr_ed)==(p_block)
END
&
THEORY ListOutputX IS
  List_Output(Machine(block_miniservices),read_mb)==(p_res);
  List_Output(Machine(block_miniservices),unmask_block)==(?);
  List_Output(Machine(block_miniservices),mask_block)==(?);
  List_Output(Machine(block_miniservices),read_tdla)==(p_res);
  List_Output(Machine(block_miniservices),alarm_block)==(?);
  List_Output(Machine(block_miniservices),unalarm_block)==(?);
  List_Output(Machine(block_miniservices),clear_tdla)==(?);
  List_Output(Machine(block_miniservices),read_ob)==(p_res);
  List_Output(Machine(block_miniservices),occ_block)==(?);
  List_Output(Machine(block_miniservices),unocc_block)==(?);
  List_Output(Machine(block_miniservices),is_free_block)==(p_res);
  List_Output(Machine(block_miniservices),has_up_free_or_freetd)==(p_res);
  List_Output(Machine(block_miniservices),has_down_free_or_freetd)==(p_res);
  List_Output(Machine(block_miniservices),has_occupied_bd)==(p_res);
  List_Output(Machine(block_miniservices),is_occ_unmasked_block)==(p_res);
  List_Output(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_res);
  List_Output(Machine(block_miniservices),has_up_tr_ed)==(p_res);
  List_Output(Machine(block_miniservices),has_down_tr_ed)==(p_res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(block_miniservices),read_mb)==(p_res <-- read_mb(p_block));
  List_Header(Machine(block_miniservices),unmask_block)==(unmask_block(p_block));
  List_Header(Machine(block_miniservices),mask_block)==(mask_block(p_block));
  List_Header(Machine(block_miniservices),read_tdla)==(p_res <-- read_tdla(p_block));
  List_Header(Machine(block_miniservices),alarm_block)==(alarm_block(p_block));
  List_Header(Machine(block_miniservices),unalarm_block)==(unalarm_block(p_block));
  List_Header(Machine(block_miniservices),clear_tdla)==(clear_tdla);
  List_Header(Machine(block_miniservices),read_ob)==(p_res <-- read_ob(p_block));
  List_Header(Machine(block_miniservices),occ_block)==(occ_block(p_block));
  List_Header(Machine(block_miniservices),unocc_block)==(unocc_block(p_block));
  List_Header(Machine(block_miniservices),is_free_block)==(p_res <-- is_free_block(p_block));
  List_Header(Machine(block_miniservices),has_up_free_or_freetd)==(p_res <-- has_up_free_or_freetd(p_block));
  List_Header(Machine(block_miniservices),has_down_free_or_freetd)==(p_res <-- has_down_free_or_freetd(p_block));
  List_Header(Machine(block_miniservices),has_occupied_bd)==(p_res <-- has_occupied_bd(p_block));
  List_Header(Machine(block_miniservices),is_occ_unmasked_block)==(p_res <-- is_occ_unmasked_block(p_block));
  List_Header(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_res <-- is_init_or_unalarmed_block(p_block));
  List_Header(Machine(block_miniservices),has_up_tr_ed)==(p_res <-- has_up_tr_ed(p_block));
  List_Header(Machine(block_miniservices),has_down_tr_ed)==(p_res <-- has_down_tr_ed(p_block))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(block_miniservices),read_mb)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),unmask_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),mask_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),read_tdla)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),alarm_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),unalarm_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),clear_tdla)==(btrue);
  List_Precondition(Machine(block_miniservices),read_ob)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),occ_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),unocc_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),is_free_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),has_up_free_or_freetd)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),has_down_free_or_freetd)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),has_occupied_bd)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),is_occ_unmasked_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),has_up_tr_ed)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_miniservices),has_down_tr_ed)==(p_block: t_block_i & p_block: t_block)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(block_miniservices),has_down_tr_ed)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cfg_b2ed_down~[oed_prev-oed]));
  Expanded_List_Substitution(Machine(block_miniservices),has_up_tr_ed)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cfg_b2ed_up~[oed_prev-oed]));
  Expanded_List_Substitution(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cc_init\/t_block-tdla));
  Expanded_List_Substitution(Machine(block_miniservices),is_occ_unmasked_block)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob-mb));
  Expanded_List_Substitution(Machine(block_miniservices),has_occupied_bd)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]));
  Expanded_List_Substitution(Machine(block_miniservices),has_down_free_or_freetd)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cfg_b2b_down~[t_block-otd\/t_block-ob]));
  Expanded_List_Substitution(Machine(block_miniservices),has_up_free_or_freetd)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cfg_b2b_up~[t_block-otd\/t_block-ob]));
  Expanded_List_Substitution(Machine(block_miniservices),is_free_block)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: t_block-ob));
  Expanded_List_Substitution(Machine(block_miniservices),unocc_block)==(p_block: t_block_i & p_block: t_block | ob:=ob-{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),occ_block)==(p_block: t_block_i & p_block: t_block | ob:=ob\/{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),read_ob)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob));
  Expanded_List_Substitution(Machine(block_miniservices),clear_tdla)==(btrue | tdla:={});
  Expanded_List_Substitution(Machine(block_miniservices),unalarm_block)==(p_block: t_block_i & p_block: t_block | tdla:=tdla-{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),alarm_block)==(p_block: t_block_i & p_block: t_block | tdla:=tdla\/{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),read_tdla)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: tdla));
  Expanded_List_Substitution(Machine(block_miniservices),mask_block)==(p_block: t_block_i & p_block: t_block | mb:=mb\/{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),unmask_block)==(p_block: t_block_i & p_block: t_block | mb:=mb-{p_block});
  Expanded_List_Substitution(Machine(block_miniservices),read_mb)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: mb));
  List_Substitution(Machine(block_miniservices),read_mb)==(p_res:=bool(p_block: mb));
  List_Substitution(Machine(block_miniservices),unmask_block)==(mb:=mb-{p_block});
  List_Substitution(Machine(block_miniservices),mask_block)==(mb:=mb\/{p_block});
  List_Substitution(Machine(block_miniservices),read_tdla)==(p_res:=bool(p_block: tdla));
  List_Substitution(Machine(block_miniservices),alarm_block)==(tdla:=tdla\/{p_block});
  List_Substitution(Machine(block_miniservices),unalarm_block)==(tdla:=tdla-{p_block});
  List_Substitution(Machine(block_miniservices),clear_tdla)==(tdla:={});
  List_Substitution(Machine(block_miniservices),read_ob)==(p_res:=bool(p_block: ob));
  List_Substitution(Machine(block_miniservices),occ_block)==(ob:=ob\/{p_block});
  List_Substitution(Machine(block_miniservices),unocc_block)==(ob:=ob-{p_block});
  List_Substitution(Machine(block_miniservices),is_free_block)==(p_res:=bool(p_block: t_block-ob));
  List_Substitution(Machine(block_miniservices),has_up_free_or_freetd)==(p_res:=bool(p_block: cfg_b2b_up~[t_block-otd\/t_block-ob]));
  List_Substitution(Machine(block_miniservices),has_down_free_or_freetd)==(p_res:=bool(p_block: cfg_b2b_down~[t_block-otd\/t_block-ob]));
  List_Substitution(Machine(block_miniservices),has_occupied_bd)==(p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]));
  List_Substitution(Machine(block_miniservices),is_occ_unmasked_block)==(p_res:=bool(p_block: ob-mb));
  List_Substitution(Machine(block_miniservices),is_init_or_unalarmed_block)==(p_res:=bool(p_block: cc_init\/t_block-tdla));
  List_Substitution(Machine(block_miniservices),has_up_tr_ed)==(p_res:=bool(p_block: cfg_b2ed_up~[oed_prev-oed]));
  List_Substitution(Machine(block_miniservices),has_down_tr_ed)==(p_res:=bool(p_block: cfg_b2ed_down~[oed_prev-oed]))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(block_miniservices))==(?);
  Inherited_List_Constants(Machine(block_miniservices))==(?);
  List_Constants(Machine(block_miniservices))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(block_miniservices))==(?);
  Context_List_Defered(Machine(block_miniservices))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(block_miniservices))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(block_miniservices))==(?);
  Inherited_List_Enumerated(Machine(block_miniservices))==(?);
  Inherited_List_Defered(Machine(block_miniservices))==(?);
  Inherited_List_Sets(Machine(block_miniservices))==(?);
  List_Enumerated(Machine(block_miniservices))==(?);
  List_Defered(Machine(block_miniservices))==(?);
  List_Sets(Machine(block_miniservices))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(block_miniservices))==(?);
  Expanded_List_HiddenConstants(Machine(block_miniservices))==(?);
  List_HiddenConstants(Machine(block_miniservices))==(?);
  External_List_HiddenConstants(Machine(block_miniservices))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(block_miniservices))==(btrue);
  Context_List_Properties(Machine(block_miniservices))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(block_miniservices))==(btrue);
  List_Properties(Machine(block_miniservices))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(block_miniservices),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Machine(block_miniservices))==(?);
  Seen_Context_List_Invariant(Machine(block_miniservices))==(btrue);
  Seen_Context_List_Assertions(Machine(block_miniservices))==(btrue);
  Seen_Context_List_Properties(Machine(block_miniservices))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Machine(block_miniservices))==(btrue);
  Seen_List_Precondition(Machine(block_miniservices),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Machine(block_miniservices),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Machine(block_miniservices),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Machine(block_miniservices),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Machine(block_miniservices),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Machine(block_miniservices),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Machine(block_miniservices),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Machine(block_miniservices),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Machine(block_miniservices),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Machine(block_miniservices),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(block_miniservices),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(block_miniservices),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(block_miniservices),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(block_miniservices),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(block_miniservices),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(block_miniservices),read_mb)==(?);
  List_ANY_Var(Machine(block_miniservices),unmask_block)==(?);
  List_ANY_Var(Machine(block_miniservices),mask_block)==(?);
  List_ANY_Var(Machine(block_miniservices),read_tdla)==(?);
  List_ANY_Var(Machine(block_miniservices),alarm_block)==(?);
  List_ANY_Var(Machine(block_miniservices),unalarm_block)==(?);
  List_ANY_Var(Machine(block_miniservices),clear_tdla)==(?);
  List_ANY_Var(Machine(block_miniservices),read_ob)==(?);
  List_ANY_Var(Machine(block_miniservices),occ_block)==(?);
  List_ANY_Var(Machine(block_miniservices),unocc_block)==(?);
  List_ANY_Var(Machine(block_miniservices),is_free_block)==(?);
  List_ANY_Var(Machine(block_miniservices),has_up_free_or_freetd)==(?);
  List_ANY_Var(Machine(block_miniservices),has_down_free_or_freetd)==(?);
  List_ANY_Var(Machine(block_miniservices),has_occupied_bd)==(?);
  List_ANY_Var(Machine(block_miniservices),is_occ_unmasked_block)==(?);
  List_ANY_Var(Machine(block_miniservices),is_init_or_unalarmed_block)==(?);
  List_ANY_Var(Machine(block_miniservices),has_up_tr_ed)==(?);
  List_ANY_Var(Machine(block_miniservices),has_down_tr_ed)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(block_miniservices)) == (? | ? | mb,tdla,ob | ? | read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed | ? | seen(Machine(configuration)),seen(Machine(inputs)) | ? | block_miniservices);
  List_Of_HiddenCst_Ids(Machine(block_miniservices)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_miniservices)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_miniservices)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_miniservices)) == (?: ?);
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
  Variables(Machine(block_miniservices)) == (Type(mb) == Mvl(SetOf(atype(t_block_i,?,?)));Type(tdla) == Mvl(SetOf(atype(t_block_i,?,?)));Type(ob) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(block_miniservices)) == (Type(has_down_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_init_or_unalarmed_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_occ_unmasked_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_occupied_bd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_down_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_free_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(unocc_block) == Cst(No_type,atype(t_block_i,?,?));Type(occ_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(clear_tdla) == Cst(No_type,No_type);Type(unalarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(alarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(mask_block) == Cst(No_type,atype(t_block_i,?,?));Type(unmask_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_mb) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)));
  Observers(Machine(block_miniservices)) == (Type(has_down_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_init_or_unalarmed_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_occ_unmasked_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_occupied_bd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_down_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_free_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_mb) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)))
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
