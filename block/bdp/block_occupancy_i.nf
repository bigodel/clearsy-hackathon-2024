Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(block_occupancy_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(block_occupancy_i))==(Machine(block_occupancy));
  Level(Implementation(block_occupancy_i))==(1);
  Upper_Level(Implementation(block_occupancy_i))==(Machine(block_occupancy))
END
&
THEORY LoadedStructureX IS
  Implementation(block_occupancy_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(block_occupancy_i))==(configuration,inputs)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(block_occupancy_i))==(block_occupancy_it,block_services);
  Inherited_List_Includes(Implementation(block_occupancy_i))==(block_services,block_occupancy_it)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(block_occupancy_i))==(read_tdla,read_ob)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(block_occupancy_i))==(?);
  Context_List_Variables(Implementation(block_occupancy_i))==(?);
  Abstract_List_Variables(Implementation(block_occupancy_i))==(tdla,mb,ob);
  Local_List_Variables(Implementation(block_occupancy_i))==(?);
  List_Variables(Implementation(block_occupancy_i))==(treated_block,block_to_treat,mb,tdla,ob);
  External_List_Variables(Implementation(block_occupancy_i))==(treated_block,block_to_treat,mb,tdla,ob)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(block_occupancy_i))==(?);
  Abstract_List_VisibleVariables(Implementation(block_occupancy_i))==(?);
  External_List_VisibleVariables(Implementation(block_occupancy_i))==(?);
  Expanded_List_VisibleVariables(Implementation(block_occupancy_i))==(?);
  List_VisibleVariables(Implementation(block_occupancy_i))==(?);
  Internal_List_VisibleVariables(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(block_occupancy_i))==(btrue);
  Abstract_List_Invariant(Implementation(block_occupancy_i))==(ob <: t_block & mb <: t_block & tdla <: t_block);
  Expanded_List_Invariant(Implementation(block_occupancy_i))==(block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & ob <: t_block & tdla <: t_block & mb <: t_block);
  Context_List_Invariant(Implementation(block_occupancy_i))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(block_occupancy_i))==(btrue);
  Expanded_List_Assertions(Implementation(block_occupancy_i))==(btrue);
  Context_List_Assertions(Implementation(block_occupancy_i))==(btrue);
  List_Assertions(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(block_occupancy_i))==(block_to_treat,treated_block:=t_block,{};ob,tdla,mb:=t_block,t_block,{});
  Context_List_Initialisation(Implementation(block_occupancy_i))==(skip);
  List_Initialisation(Implementation(block_occupancy_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(block_occupancy_i),Machine(block_occupancy_it))==(?);
  List_Instanciated_Parameters(Implementation(block_occupancy_i),Machine(block_services))==(?);
  List_Instanciated_Parameters(Implementation(block_occupancy_i),Machine(configuration))==(?);
  List_Instanciated_Parameters(Implementation(block_occupancy_i),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(block_occupancy_i),Machine(block_services))==(btrue);
  List_Constraints(Implementation(block_occupancy_i))==(btrue);
  List_Context_Constraints(Implementation(block_occupancy_i))==(btrue);
  List_Constraints(Implementation(block_occupancy_i),Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(block_occupancy_i))==(unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_tdla,read_ob);
  List_Operations(Implementation(block_occupancy_i))==(unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks,read_tdla,read_ob)
END
&
THEORY ListInputX IS
  List_Input(Implementation(block_occupancy_i),read_ob)==(p_block);
  List_Input(Implementation(block_occupancy_i),read_tdla)==(p_block);
  List_Input(Implementation(block_occupancy_i),unmask_blocks)==(?);
  List_Input(Implementation(block_occupancy_i),release_tdl_alarm)==(?);
  List_Input(Implementation(block_occupancy_i),set_tdl_alarm)==(?);
  List_Input(Implementation(block_occupancy_i),mask_blocks)==(?);
  List_Input(Implementation(block_occupancy_i),release_blocks)==(?);
  List_Input(Implementation(block_occupancy_i),occupy_blocks)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(block_occupancy_i),read_ob)==(p_res);
  List_Output(Implementation(block_occupancy_i),read_tdla)==(p_res);
  List_Output(Implementation(block_occupancy_i),unmask_blocks)==(?);
  List_Output(Implementation(block_occupancy_i),release_tdl_alarm)==(?);
  List_Output(Implementation(block_occupancy_i),set_tdl_alarm)==(?);
  List_Output(Implementation(block_occupancy_i),mask_blocks)==(?);
  List_Output(Implementation(block_occupancy_i),release_blocks)==(?);
  List_Output(Implementation(block_occupancy_i),occupy_blocks)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(block_occupancy_i),read_ob)==(p_res <-- read_ob(p_block));
  List_Header(Implementation(block_occupancy_i),read_tdla)==(p_res <-- read_tdla(p_block));
  List_Header(Implementation(block_occupancy_i),unmask_blocks)==(unmask_blocks);
  List_Header(Implementation(block_occupancy_i),release_tdl_alarm)==(release_tdl_alarm);
  List_Header(Implementation(block_occupancy_i),set_tdl_alarm)==(set_tdl_alarm);
  List_Header(Implementation(block_occupancy_i),mask_blocks)==(mask_blocks);
  List_Header(Implementation(block_occupancy_i),release_blocks)==(release_blocks);
  List_Header(Implementation(block_occupancy_i),occupy_blocks)==(occupy_blocks)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(block_occupancy_i),read_ob)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Implementation(block_occupancy_i),read_ob)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_occupancy_i),read_tdla)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Implementation(block_occupancy_i),read_tdla)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_occupancy_i),unmask_blocks)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),unmask_blocks)==(btrue);
  Own_Precondition(Implementation(block_occupancy_i),release_tdl_alarm)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),release_tdl_alarm)==(btrue);
  Own_Precondition(Implementation(block_occupancy_i),set_tdl_alarm)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),set_tdl_alarm)==(btrue);
  Own_Precondition(Implementation(block_occupancy_i),mask_blocks)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),mask_blocks)==(btrue);
  Own_Precondition(Implementation(block_occupancy_i),release_blocks)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),release_blocks)==(btrue);
  Own_Precondition(Implementation(block_occupancy_i),occupy_blocks)==(btrue);
  List_Precondition(Implementation(block_occupancy_i),occupy_blocks)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(block_occupancy_i),occupy_blocks)==(btrue | @l_cont.((btrue | block_to_treat,treated_block,l_cont:=t_block,{},bool(t_block/={}));WHILE l_cont = TRUE DO @(l_block,l_occ,l_put).((block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> l_block,block_to_treat,treated_block,l_cont:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));(l_block: t_block_i & l_block: t_block | l_occ:=bool(l_block: ob));(l_occ = FALSE ==> ((l_block: t_block_i & l_block: t_block | l_put:=bool(l_block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd));(l_put = TRUE ==> (l_block: t_block_i & l_block: t_block | ob:=ob\/{l_block}) [] not(l_put = TRUE) ==> skip)) [] not(l_occ = FALSE) ==> skip)) INVARIANT l_cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & ob <: t_block & ob = ob$0\/((cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd/\treated_block) VARIANT card(block_to_treat) END));
  Expanded_List_Substitution(Implementation(block_occupancy_i),release_blocks)==(btrue | @cont.((btrue | block_to_treat,treated_block,cont:=t_block,{},bool(t_block/={}));WHILE cont = TRUE DO @(block,is_released,should_release).((block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> block,block_to_treat,treated_block,cont:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));(block: t_block_i & block: t_block | is_released:=bool(block: cc_init\/t_block-tdla/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));(is_released = FALSE ==> ((block: t_block_i & block: t_block | should_release:=bool(block: cc_init\/t_block-tdla/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]));(should_release = TRUE ==> (block: t_block_i & block: t_block | ob:=ob-{block}) [] not(should_release = TRUE) ==> skip)) [] not(is_released = FALSE) ==> skip)) INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & ob <: t_block & ob = ob$0-(t_block-tdla\/cc_init/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]/\treated_block) VARIANT card(block_to_treat) END));
  Expanded_List_Substitution(Implementation(block_occupancy_i),mask_blocks)==(btrue | @cont.((btrue | block_to_treat,treated_block,cont:=t_block,{},bool(t_block/={}));WHILE cont = TRUE DO @(block,is_masked,should_mask).((block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> block,block_to_treat,treated_block,cont:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));(block: t_block_i & block: t_block | is_masked:=bool(block: mb));(is_masked = FALSE ==> ((block: t_block_i & block: t_block | should_mask:=bool(block: (cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla));(should_mask = TRUE ==> (block: t_block_i & block: t_block | mb:=mb\/{block}) [] not(should_mask = TRUE) ==> skip)) [] not(is_masked = FALSE) ==> skip)) INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & mb <: t_block & mb = mb$0\/((cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla/\treated_block) VARIANT card(block_to_treat) END));
  Expanded_List_Substitution(Implementation(block_occupancy_i),set_tdl_alarm)==(btrue | @cont.((btrue | block_to_treat,treated_block,cont:=t_block,{},bool(t_block/={}));WHILE cont = TRUE DO @(block,is_alarming,should_alarm).((block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> block,block_to_treat,treated_block,cont:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));(block: t_block_i & block: t_block | is_alarming:=bool(block: tdla));(is_alarming = FALSE ==> ((block: t_block_i & block: t_block | should_alarm:=bool(block: ob-mb-otd));(should_alarm = TRUE ==> (block: t_block_i & block: t_block | tdla:=tdla\/{block}) [] not(should_alarm = TRUE) ==> skip)) [] not(is_alarming = FALSE) ==> skip)) INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & tdla <: t_block & tdla = tdla$0\/((ob/\t_block-otd)-mb/\treated_block) VARIANT card(block_to_treat) END));
  Expanded_List_Substitution(Implementation(block_occupancy_i),release_tdl_alarm)==(btrue | @l_clear.((btrue | l_clear:=cc_tdl_ack);(l_clear = TRUE ==> (btrue | tdla:={}) [] not(l_clear = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_occupancy_i),unmask_blocks)==(btrue | @l_cont.((btrue | block_to_treat,treated_block,l_cont:=t_block,{},bool(t_block/={}));WHILE l_cont = TRUE DO @(l_block,l_mask,l_remove).((block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> l_block,block_to_treat,treated_block,l_cont:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));(l_block: t_block_i & l_block: t_block | l_mask:=bool(l_block: mb));(l_mask = TRUE ==> ((l_block: t_block_i & l_block: t_block | l_remove:=bool(l_block: t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])));(l_remove = TRUE ==> (l_block: t_block_i & l_block: t_block | mb:=mb-{l_block}) [] not(l_remove = TRUE) ==> skip)) [] not(l_mask = TRUE) ==> skip)) INVARIANT l_cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & mb <: t_block & mb = mb$0-(t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])/\treated_block) VARIANT card(block_to_treat) END));
  List_Substitution(Implementation(block_occupancy_i),read_ob)==(p_res:=bool(p_block: ob));
  Expanded_List_Substitution(Implementation(block_occupancy_i),read_ob)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: ob));
  List_Substitution(Implementation(block_occupancy_i),read_tdla)==(p_res:=bool(p_block: tdla));
  Expanded_List_Substitution(Implementation(block_occupancy_i),read_tdla)==(p_block: t_block_i & p_block: t_block | p_res:=bool(p_block: tdla));
  List_Substitution(Implementation(block_occupancy_i),unmask_blocks)==(VAR l_cont IN l_cont <-- init_iteration_t_block;WHILE l_cont = TRUE DO VAR l_block,l_mask,l_remove IN l_cont,l_block <-- iterate_t_block;l_mask <-- read_mb(l_block);IF l_mask = TRUE THEN l_remove <-- cond_unmask(l_block);IF l_remove = TRUE THEN unmask_block(l_block) END END END INVARIANT l_cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & mb <: t_block & mb = mb$0-(t_block-ob\/(cfg_b2b_up~[t_block-otd\/t_block-ob]/\cfg_b2b_down~[t_block-otd\/t_block-ob])/\treated_block) VARIANT card(block_to_treat) END END);
  List_Substitution(Implementation(block_occupancy_i),release_tdl_alarm)==(VAR l_clear IN l_clear <-- read_cc_tdl_ack;IF l_clear = TRUE THEN clear_tdla END END);
  List_Substitution(Implementation(block_occupancy_i),set_tdl_alarm)==(VAR cont IN cont <-- init_iteration_t_block;WHILE cont = TRUE DO VAR block,is_alarming,should_alarm IN cont,block <-- iterate_t_block;is_alarming <-- read_tdla(block);IF is_alarming = FALSE THEN should_alarm <-- cond_alarm(block);IF should_alarm = TRUE THEN alarm_block(block) END END END INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & tdla <: t_block & tdla = tdla$0\/((ob/\t_block-otd)-mb/\treated_block) VARIANT card(block_to_treat) END END);
  List_Substitution(Implementation(block_occupancy_i),mask_blocks)==(VAR cont IN cont <-- init_iteration_t_block;WHILE cont = TRUE DO VAR block,is_masked,should_mask IN cont,block <-- iterate_t_block;is_masked <-- read_mb(block);IF is_masked = FALSE THEN should_mask <-- cond_mask(block);IF should_mask = TRUE THEN mask_block(block) END END END INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & mb <: t_block & mb = mb$0\/((cfg_b2bd_up\/cfg_b2bd_down)~[obd]-tdla/\treated_block) VARIANT card(block_to_treat) END END);
  List_Substitution(Implementation(block_occupancy_i),release_blocks)==(VAR cont IN cont <-- init_iteration_t_block;WHILE cont = TRUE DO VAR block,is_released,should_release IN cont,block <-- iterate_t_block;is_released <-- cond_release(block);IF is_released = FALSE THEN should_release <-- cond_release(block);IF should_release = TRUE THEN unocc_block(block) END END END INVARIANT cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & ob <: t_block & ob = ob$0-(t_block-tdla\/cc_init/\(cfg_b2ed_up\/cfg_b2ed_down)~[oed_prev-oed]/\treated_block) VARIANT card(block_to_treat) END END);
  List_Substitution(Implementation(block_occupancy_i),occupy_blocks)==(VAR l_cont IN l_cont <-- init_iteration_t_block;WHILE l_cont = TRUE DO VAR l_block,l_occ,l_put IN l_cont,l_block <-- iterate_t_block;l_occ <-- read_ob(l_block);IF l_occ = FALSE THEN l_put <-- cond_occupy(l_block);IF l_put = TRUE THEN occ_block(l_block) END END END INVARIANT l_cont = bool(block_to_treat/={}) & block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block & ob <: t_block & ob = ob$0\/((cfg_b2bd_up\/cfg_b2bd_down)~[obd]\/otd/\treated_block) VARIANT card(block_to_treat) END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(block_occupancy_i))==(?);
  Inherited_List_Constants(Implementation(block_occupancy_i))==(?);
  List_Constants(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(block_occupancy_i))==(?);
  Context_List_Defered(Implementation(block_occupancy_i))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Implementation(block_occupancy_i))==(t_block_i,t_border_i,t_exit_i);
  List_Own_Enumerated(Implementation(block_occupancy_i))==(?);
  List_Valuable_Sets(Implementation(block_occupancy_i))==(?);
  Inherited_List_Enumerated(Implementation(block_occupancy_i))==(?);
  Inherited_List_Defered(Implementation(block_occupancy_i))==(?);
  Inherited_List_Sets(Implementation(block_occupancy_i))==(?);
  List_Enumerated(Implementation(block_occupancy_i))==(?);
  List_Defered(Implementation(block_occupancy_i))==(?);
  List_Sets(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(block_occupancy_i))==(?);
  Expanded_List_HiddenConstants(Implementation(block_occupancy_i))==(?);
  List_HiddenConstants(Implementation(block_occupancy_i))==(?);
  External_List_HiddenConstants(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(block_occupancy_i))==(btrue);
  Context_List_Properties(Implementation(block_occupancy_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Implementation(block_occupancy_i))==(btrue);
  List_Properties(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(block_occupancy_i))==(aa: aa);
  List_Values(Implementation(block_occupancy_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(block_occupancy_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Implementation(block_occupancy_i))==(?);
  Seen_Context_List_Invariant(Implementation(block_occupancy_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(block_occupancy_i))==(btrue);
  Seen_Context_List_Properties(Implementation(block_occupancy_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Implementation(block_occupancy_i))==(btrue);
  Seen_List_Precondition(Implementation(block_occupancy_i),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Implementation(block_occupancy_i),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Implementation(block_occupancy_i),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Implementation(block_occupancy_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Implementation(block_occupancy_i),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Implementation(block_occupancy_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Implementation(block_occupancy_i),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_i),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Implementation(block_occupancy_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Implementation(block_occupancy_i),Machine(configuration))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(block_occupancy_i),Machine(block_services))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,cond_unmask,cond_mask,cond_alarm,cond_release,cond_occupy);
  List_Included_Operations(Implementation(block_occupancy_i),Machine(block_occupancy_it))==(init_iteration_t_block,iterate_t_block);
  List_Included_Operations(Implementation(block_occupancy_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  List_Included_Operations(Implementation(block_occupancy_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(block_occupancy_i))==(Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(occupy_blocks) == Cst(No_type,No_type);Type(release_blocks) == Cst(No_type,No_type);Type(mask_blocks) == Cst(No_type,No_type);Type(set_tdl_alarm) == Cst(No_type,No_type);Type(release_tdl_alarm) == Cst(No_type,No_type);Type(unmask_blocks) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(block_occupancy_i),Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Constants_Env(Implementation(block_occupancy_i),Machine(configuration))==(Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)));
  List_Defered_Sets(Implementation(block_occupancy_i),Machine(configuration))==(t_block_i,t_border_i,t_exit_i)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(block_occupancy_i)) == (? | ? | ? | mb,tdla,ob,treated_block,block_to_treat | unmask_blocks,release_tdl_alarm,set_tdl_alarm,mask_blocks,release_blocks,occupy_blocks | ? | seen(Machine(configuration)),seen(Machine(inputs)),imported(Machine(block_occupancy_it)),imported(Machine(block_services)) | ? | block_occupancy_i);
  List_Of_HiddenCst_Ids(Implementation(block_occupancy_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(block_occupancy_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(block_occupancy_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(block_occupancy_i)) == (seen(Machine(configuration)): (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | ? | ? | bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ? | ?) | seen(Machine(inputs)): (? | ? | cc_tdl_ack,cc_init,oed_prev,oed,obd,otd | ? | ? | ? | ? | ? | ?));
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
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?);
  List_Of_Ids(Machine(block_occupancy_it)) == (? | ? | treated_block,block_to_treat | ? | init_iteration_t_block,iterate_t_block | ? | seen(Machine(configuration)) | ? | block_occupancy_it);
  List_Of_HiddenCst_Ids(Machine(block_occupancy_it)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_occupancy_it)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_occupancy_it)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_occupancy_it)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(block_occupancy_i),unmask_blocks, 2) == (Type(l_block) == Lvl(atype(t_block_i,?,?));Type(l_mask) == Lvl(btype(BOOL,?,?));Type(l_remove) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),unmask_blocks, 1) == (Type(l_cont) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),release_tdl_alarm, 1) == (Type(l_clear) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),set_tdl_alarm, 2) == (Type(block) == Lvl(atype(t_block_i,?,?));Type(is_alarming) == Lvl(btype(BOOL,?,?));Type(should_alarm) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),set_tdl_alarm, 1) == (Type(cont) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),mask_blocks, 2) == (Type(block) == Lvl(atype(t_block_i,?,?));Type(is_masked) == Lvl(btype(BOOL,?,?));Type(should_mask) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),mask_blocks, 1) == (Type(cont) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),release_blocks, 2) == (Type(block) == Lvl(atype(t_block_i,?,?));Type(is_released) == Lvl(btype(BOOL,?,?));Type(should_release) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),release_blocks, 1) == (Type(cont) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),occupy_blocks, 2) == (Type(l_block) == Lvl(atype(t_block_i,?,?));Type(l_occ) == Lvl(btype(BOOL,?,?));Type(l_put) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_occupancy_i),occupy_blocks, 1) == (Type(l_cont) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(block_occupancy_i))==(?)
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
  TypingPredicate(Implementation(block_occupancy_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(block_occupancy_i),Machine(block_occupancy_it))==(treated_block,block_to_treat);
  ImportedVisVariablesList(Implementation(block_occupancy_i),Machine(block_occupancy_it))==(?);
  ImportedVariablesList(Implementation(block_occupancy_i),Machine(block_services))==(mb,tdla,ob);
  ImportedVisVariablesList(Implementation(block_occupancy_i),Machine(block_services))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
