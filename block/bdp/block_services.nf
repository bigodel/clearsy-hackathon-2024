Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(block_services))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(block_services))==(Machine(block_services));
  Level(Machine(block_services))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(block_services)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(block_services))==(configuration,inputs)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(block_services))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(block_services))==(?);
  List_Includes(Machine(block_services))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(block_services))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(block_services))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(block_services))==(?);
  Context_List_Variables(Machine(block_services))==(?);
  Abstract_List_Variables(Machine(block_services))==(?);
  Local_List_Variables(Machine(block_services))==(mb,tdla,ob);
  List_Variables(Machine(block_services))==(mb,tdla,ob);
  External_List_Variables(Machine(block_services))==(mb,tdla,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(block_services))==(?);
  Abstract_List_VisibleVariables(Machine(block_services))==(?);
  External_List_VisibleVariables(Machine(block_services))==(?);
  Expanded_List_VisibleVariables(Machine(block_services))==(?);
  List_VisibleVariables(Machine(block_services))==(?);
  Internal_List_VisibleVariables(Machine(block_services))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(block_services))==(btrue);
  Gluing_List_Invariant(Machine(block_services))==(btrue);
  Expanded_List_Invariant(Machine(block_services))==(btrue);
  Abstract_List_Invariant(Machine(block_services))==(btrue);
  Context_List_Invariant(Machine(block_services))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Machine(block_services))==(ob <: t_block & tdla <: t_block & mb <: t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(block_services))==(btrue);
  Abstract_List_Assertions(Machine(block_services))==(btrue);
  Context_List_Assertions(Machine(block_services))==(btrue);
  List_Assertions(Machine(block_services))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(block_services))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(block_services))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(block_services))==(ob,tdla,mb:=t_block,t_block,{});
  Context_List_Initialisation(Machine(block_services))==(skip);
  List_Initialisation(Machine(block_services))==(ob:=t_block || tdla:=t_block || mb:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(block_services))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(block_services),Machine(configuration))==(?);
  List_Instanciated_Parameters(Machine(block_services),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(block_services))==(btrue);
  List_Constraints(Machine(block_services))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(block_services))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,cond_unmask,cond_mask,cond_alarm,cond_release,cond_occupy);
  List_Operations(Machine(block_services))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,cond_unmask,cond_mask,cond_alarm,cond_release,cond_occupy)
END
&
THEORY ListInputX IS
  List_Input(Machine(block_services),read_mb)==(p_block);
  List_Input(Machine(block_services),unmask_block)==(p_block);
  List_Input(Machine(block_services),mask_block)==(p_block);
  List_Input(Machine(block_services),read_tdla)==(p_block);
  List_Input(Machine(block_services),alarm_block)==(p_block);
  List_Input(Machine(block_services),unalarm_block)==(p_block);
  List_Input(Machine(block_services),clear_tdla)==(?);
  List_Input(Machine(block_services),read_ob)==(p_block);
  List_Input(Machine(block_services),occ_block)==(p_block);
  List_Input(Machine(block_services),unocc_block)==(p_block);
  List_Input(Machine(block_services),cond_unmask)==(p_block);
  List_Input(Machine(block_services),cond_mask)==(p_block);
  List_Input(Machine(block_services),cond_alarm)==(p_block);
  List_Input(Machine(block_services),cond_release)==(p_block);
  List_Input(Machine(block_services),cond_occupy)==(p_block)
END
&
THEORY ListOutputX IS
  List_Output(Machine(block_services),read_mb)==(p_res);
  List_Output(Machine(block_services),unmask_block)==(?);
  List_Output(Machine(block_services),mask_block)==(?);
  List_Output(Machine(block_services),read_tdla)==(p_res);
  List_Output(Machine(block_services),alarm_block)==(?);
  List_Output(Machine(block_services),unalarm_block)==(?);
  List_Output(Machine(block_services),clear_tdla)==(?);
  List_Output(Machine(block_services),read_ob)==(p_res);
  List_Output(Machine(block_services),occ_block)==(?);
  List_Output(Machine(block_services),unocc_block)==(?);
  List_Output(Machine(block_services),cond_unmask)==(p_res);
  List_Output(Machine(block_services),cond_mask)==(p_res);
  List_Output(Machine(block_services),cond_alarm)==(p_res);
  List_Output(Machine(block_services),cond_release)==(p_res);
  List_Output(Machine(block_services),cond_occupy)==(p_res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(block_services),read_mb)==(p_res <-- read_mb(p_block));
  List_Header(Machine(block_services),unmask_block)==(unmask_block(p_block));
  List_Header(Machine(block_services),mask_block)==(mask_block(p_block));
  List_Header(Machine(block_services),read_tdla)==(p_res <-- read_tdla(p_block));
  List_Header(Machine(block_services),alarm_block)==(alarm_block(p_block));
  List_Header(Machine(block_services),unalarm_block)==(unalarm_block(p_block));
  List_Header(Machine(block_services),clear_tdla)==(clear_tdla);
  List_Header(Machine(block_services),read_ob)==(p_res <-- read_ob(p_block));
  List_Header(Machine(block_services),occ_block)==(occ_block(p_block));
  List_Header(Machine(block_services),unocc_block)==(unocc_block(p_block));
  List_Header(Machine(block_services),cond_unmask)==(p_res <-- cond_unmask(p_block));
  List_Header(Machine(block_services),cond_mask)==(p_res <-- cond_mask(p_block));
  List_Header(Machine(block_services),cond_alarm)==(p_res <-- cond_alarm(p_block));
  List_Header(Machine(block_services),cond_release)==(p_res <-- cond_release(p_block));
  List_Header(Machine(block_services),cond_occupy)==(p_res <-- cond_occupy(p_block))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(block_services),read_mb)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),unmask_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),mask_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),read_tdla)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),alarm_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),unalarm_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),clear_tdla)==(btrue);
  List_Precondition(Machine(block_services),read_ob)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),occ_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),unocc_block)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),cond_unmask)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),cond_mask)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),cond_alarm)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),cond_release)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(block_services),cond_occupy)==(p_block: t_block_i & p_block: t_block)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(block_services),cond_occupy)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd));
  Expanded_List_Substitution(Machine(block_services),cond_release)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: cc_init\/t_block-tdla/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));
  Expanded_List_Substitution(Machine(block_services),cond_alarm)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob-mb-otd));
  Expanded_List_Substitution(Machine(block_services),cond_mask)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla));
  Expanded_List_Substitution(Machine(block_services),cond_unmask)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));
  Expanded_List_Substitution(Machine(block_services),unocc_block)==(p_block: t_block_i & p_block: t_block | ob:=ob-{p_block});
  Expanded_List_Substitution(Machine(block_services),occ_block)==(p_block: t_block_i & p_block: t_block | ob:=ob\/{p_block});
  Expanded_List_Substitution(Machine(block_services),read_ob)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob));
  Expanded_List_Substitution(Machine(block_services),clear_tdla)==(btrue | tdla:={});
  Expanded_List_Substitution(Machine(block_services),unalarm_block)==(p_block: t_block_i & p_block: t_block | tdla:=tdla-{p_block});
  Expanded_List_Substitution(Machine(block_services),alarm_block)==(p_block: t_block_i & p_block: t_block | tdla:=tdla\/{p_block});
  Expanded_List_Substitution(Machine(block_services),read_tdla)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: tdla));
  Expanded_List_Substitution(Machine(block_services),mask_block)==(p_block: t_block_i & p_block: t_block | mb:=mb\/{p_block});
  Expanded_List_Substitution(Machine(block_services),unmask_block)==(p_block: t_block_i & p_block: t_block | mb:=mb-{p_block});
  Expanded_List_Substitution(Machine(block_services),read_mb)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: mb));
  List_Substitution(Machine(block_services),read_mb)==(p_res:=bool(p_block: mb));
  List_Substitution(Machine(block_services),unmask_block)==(mb:=mb-{p_block});
  List_Substitution(Machine(block_services),mask_block)==(mb:=mb\/{p_block});
  List_Substitution(Machine(block_services),read_tdla)==(p_res:=bool(p_block: tdla));
  List_Substitution(Machine(block_services),alarm_block)==(tdla:=tdla\/{p_block});
  List_Substitution(Machine(block_services),unalarm_block)==(tdla:=tdla-{p_block});
  List_Substitution(Machine(block_services),clear_tdla)==(tdla:={});
  List_Substitution(Machine(block_services),read_ob)==(p_res:=bool(p_block: ob));
  List_Substitution(Machine(block_services),occ_block)==(ob:=ob\/{p_block});
  List_Substitution(Machine(block_services),unocc_block)==(ob:=ob-{p_block});
  List_Substitution(Machine(block_services),cond_unmask)==(p_res:=bool(p_block: t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));
  List_Substitution(Machine(block_services),cond_mask)==(p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla));
  List_Substitution(Machine(block_services),cond_alarm)==(p_res:=bool(p_block: ob-mb-otd));
  List_Substitution(Machine(block_services),cond_release)==(p_res:=bool(p_block: cc_init\/t_block-tdla/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));
  List_Substitution(Machine(block_services),cond_occupy)==(p_res:=bool(p_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(block_services))==(?);
  Inherited_List_Constants(Machine(block_services))==(?);
  List_Constants(Machine(block_services))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(block_services))==(?);
  Context_List_Defered(Machine(block_services))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(block_services))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(block_services))==(?);
  Inherited_List_Enumerated(Machine(block_services))==(?);
  Inherited_List_Defered(Machine(block_services))==(?);
  Inherited_List_Sets(Machine(block_services))==(?);
  List_Enumerated(Machine(block_services))==(?);
  List_Defered(Machine(block_services))==(?);
  List_Sets(Machine(block_services))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(block_services))==(?);
  Expanded_List_HiddenConstants(Machine(block_services))==(?);
  List_HiddenConstants(Machine(block_services))==(?);
  External_List_HiddenConstants(Machine(block_services))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(block_services))==(btrue);
  Context_List_Properties(Machine(block_services))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(block_services))==(btrue);
  List_Properties(Machine(block_services))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(block_services),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Machine(block_services))==(?);
  Seen_Context_List_Invariant(Machine(block_services))==(btrue);
  Seen_Context_List_Assertions(Machine(block_services))==(btrue);
  Seen_Context_List_Properties(Machine(block_services))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Machine(block_services))==(btrue);
  Seen_List_Precondition(Machine(block_services),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Machine(block_services),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Machine(block_services),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Machine(block_services),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Machine(block_services),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Machine(block_services),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Machine(block_services),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_services),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Machine(block_services),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_services),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Machine(block_services),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_services),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Machine(block_services),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Machine(block_services),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Machine(block_services),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(block_services),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_services),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(block_services),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_services),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(block_services),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(block_services),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(block_services),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(block_services),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(block_services),read_mb)==(?);
  List_ANY_Var(Machine(block_services),unmask_block)==(?);
  List_ANY_Var(Machine(block_services),mask_block)==(?);
  List_ANY_Var(Machine(block_services),read_tdla)==(?);
  List_ANY_Var(Machine(block_services),alarm_block)==(?);
  List_ANY_Var(Machine(block_services),unalarm_block)==(?);
  List_ANY_Var(Machine(block_services),clear_tdla)==(?);
  List_ANY_Var(Machine(block_services),read_ob)==(?);
  List_ANY_Var(Machine(block_services),occ_block)==(?);
  List_ANY_Var(Machine(block_services),unocc_block)==(?);
  List_ANY_Var(Machine(block_services),cond_unmask)==(?);
  List_ANY_Var(Machine(block_services),cond_mask)==(?);
  List_ANY_Var(Machine(block_services),cond_alarm)==(?);
  List_ANY_Var(Machine(block_services),cond_release)==(?);
  List_ANY_Var(Machine(block_services),cond_occupy)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(block_services)) == (? | ? | mb,tdla,ob | ? | read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,cond_unmask,cond_mask,cond_alarm,cond_release,cond_occupy | ? | seen(Machine(configuration)),seen(Machine(inputs)) | ? | block_services);
  List_Of_HiddenCst_Ids(Machine(block_services)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_services)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_services)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_services)) == (?: ?);
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
  Variables(Machine(block_services)) == (Type(mb) == Mvl(SetOf(atype(t_block_i,?,?)));Type(tdla) == Mvl(SetOf(atype(t_block_i,?,?)));Type(ob) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(block_services)) == (Type(cond_occupy) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_release) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_alarm) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_mask) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_unmask) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(unocc_block) == Cst(No_type,atype(t_block_i,?,?));Type(occ_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(clear_tdla) == Cst(No_type,No_type);Type(unalarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(alarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(mask_block) == Cst(No_type,atype(t_block_i,?,?));Type(unmask_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_mb) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)));
  Observers(Machine(block_services)) == (Type(cond_occupy) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_release) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_alarm) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_mask) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(cond_unmask) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_mb) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)))
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
