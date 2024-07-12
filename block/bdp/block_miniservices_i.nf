Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(block_miniservices_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(block_miniservices_i))==(Machine(block_miniservices));
  Level(Implementation(block_miniservices_i))==(1);
  Upper_Level(Implementation(block_miniservices_i))==(Machine(block_miniservices))
END
&
THEORY LoadedStructureX IS
  Implementation(block_miniservices_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(block_miniservices_i))==(configuration,inputs)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(block_miniservices_i))==(?);
  Inherited_List_Includes(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(block_miniservices_i))==(?);
  Context_List_Variables(Implementation(block_miniservices_i))==(?);
  Abstract_List_Variables(Implementation(block_miniservices_i))==(mb,tdla,ob);
  Local_List_Variables(Implementation(block_miniservices_i))==(?);
  List_Variables(Implementation(block_miniservices_i))==(?);
  External_List_Variables(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(block_miniservices_i))==(?);
  Abstract_List_VisibleVariables(Implementation(block_miniservices_i))==(?);
  External_List_VisibleVariables(Implementation(block_miniservices_i))==(?);
  Expanded_List_VisibleVariables(Implementation(block_miniservices_i))==(?);
  List_VisibleVariables(Implementation(block_miniservices_i))==(tab_tdla,tab_mb,tab_ob);
  Internal_List_VisibleVariables(Implementation(block_miniservices_i))==(tab_tdla,tab_mb,tab_ob)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(block_miniservices_i))==(btrue);
  Expanded_List_Invariant(Implementation(block_miniservices_i))==(btrue);
  Abstract_List_Invariant(Implementation(block_miniservices_i))==(ob <: t_block & tdla <: t_block & mb <: t_block);
  Context_List_Invariant(Implementation(block_miniservices_i))==(otd <: t_block & obd <: t_border & oed <: t_exit & oed_prev <: t_exit & cc_init <: t_block & cc_tdl_ack: BOOL);
  List_Invariant(Implementation(block_miniservices_i))==(tab_ob: t_block_i --> BOOL & tab_mb: t_block_i --> BOOL & tab_tdla: t_block_i --> BOOL & ob = tab_ob~[{TRUE}]/\t_block & tdla = tab_tdla~[{TRUE}]/\t_block & mb = tab_mb~[{TRUE}]/\t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(block_miniservices_i))==(btrue);
  Abstract_List_Assertions(Implementation(block_miniservices_i))==(btrue);
  Context_List_Assertions(Implementation(block_miniservices_i))==(btrue);
  List_Assertions(Implementation(block_miniservices_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(block_miniservices_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(block_miniservices_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(block_miniservices_i))==(tab_ob:=t_block_i*{TRUE};tab_tdla:=t_block_i*{TRUE};tab_mb:=t_block_i*{FALSE});
  Context_List_Initialisation(Implementation(block_miniservices_i))==(skip);
  List_Initialisation(Implementation(block_miniservices_i))==(tab_ob:=t_block_i*{TRUE};tab_tdla:=t_block_i*{TRUE};tab_mb:=t_block_i*{FALSE})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(block_miniservices_i),Machine(configuration))==(?);
  List_Instanciated_Parameters(Implementation(block_miniservices_i),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(block_miniservices_i))==(btrue);
  List_Context_Constraints(Implementation(block_miniservices_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(block_miniservices_i))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed);
  List_Operations(Implementation(block_miniservices_i))==(read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed)
END
&
THEORY ListInputX IS
  List_Input(Implementation(block_miniservices_i),read_mb)==(p_block);
  List_Input(Implementation(block_miniservices_i),unmask_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),mask_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),read_tdla)==(p_block);
  List_Input(Implementation(block_miniservices_i),alarm_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),unalarm_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),clear_tdla)==(?);
  List_Input(Implementation(block_miniservices_i),read_ob)==(p_block);
  List_Input(Implementation(block_miniservices_i),occ_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),unocc_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),is_free_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),has_up_free_or_freetd)==(p_block);
  List_Input(Implementation(block_miniservices_i),has_down_free_or_freetd)==(p_block);
  List_Input(Implementation(block_miniservices_i),has_occupied_bd)==(p_block);
  List_Input(Implementation(block_miniservices_i),is_occ_unmasked_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(p_block);
  List_Input(Implementation(block_miniservices_i),has_up_tr_ed)==(p_block);
  List_Input(Implementation(block_miniservices_i),has_down_tr_ed)==(p_block)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(block_miniservices_i),read_mb)==(p_res);
  List_Output(Implementation(block_miniservices_i),unmask_block)==(?);
  List_Output(Implementation(block_miniservices_i),mask_block)==(?);
  List_Output(Implementation(block_miniservices_i),read_tdla)==(p_res);
  List_Output(Implementation(block_miniservices_i),alarm_block)==(?);
  List_Output(Implementation(block_miniservices_i),unalarm_block)==(?);
  List_Output(Implementation(block_miniservices_i),clear_tdla)==(?);
  List_Output(Implementation(block_miniservices_i),read_ob)==(p_res);
  List_Output(Implementation(block_miniservices_i),occ_block)==(?);
  List_Output(Implementation(block_miniservices_i),unocc_block)==(?);
  List_Output(Implementation(block_miniservices_i),is_free_block)==(p_res);
  List_Output(Implementation(block_miniservices_i),has_up_free_or_freetd)==(p_res);
  List_Output(Implementation(block_miniservices_i),has_down_free_or_freetd)==(p_res);
  List_Output(Implementation(block_miniservices_i),has_occupied_bd)==(p_res);
  List_Output(Implementation(block_miniservices_i),is_occ_unmasked_block)==(p_res);
  List_Output(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(p_res);
  List_Output(Implementation(block_miniservices_i),has_up_tr_ed)==(p_res);
  List_Output(Implementation(block_miniservices_i),has_down_tr_ed)==(p_res)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(block_miniservices_i),read_mb)==(p_res <-- read_mb(p_block));
  List_Header(Implementation(block_miniservices_i),unmask_block)==(unmask_block(p_block));
  List_Header(Implementation(block_miniservices_i),mask_block)==(mask_block(p_block));
  List_Header(Implementation(block_miniservices_i),read_tdla)==(p_res <-- read_tdla(p_block));
  List_Header(Implementation(block_miniservices_i),alarm_block)==(alarm_block(p_block));
  List_Header(Implementation(block_miniservices_i),unalarm_block)==(unalarm_block(p_block));
  List_Header(Implementation(block_miniservices_i),clear_tdla)==(clear_tdla);
  List_Header(Implementation(block_miniservices_i),read_ob)==(p_res <-- read_ob(p_block));
  List_Header(Implementation(block_miniservices_i),occ_block)==(occ_block(p_block));
  List_Header(Implementation(block_miniservices_i),unocc_block)==(unocc_block(p_block));
  List_Header(Implementation(block_miniservices_i),is_free_block)==(p_res <-- is_free_block(p_block));
  List_Header(Implementation(block_miniservices_i),has_up_free_or_freetd)==(p_res <-- has_up_free_or_freetd(p_block));
  List_Header(Implementation(block_miniservices_i),has_down_free_or_freetd)==(p_res <-- has_down_free_or_freetd(p_block));
  List_Header(Implementation(block_miniservices_i),has_occupied_bd)==(p_res <-- has_occupied_bd(p_block));
  List_Header(Implementation(block_miniservices_i),is_occ_unmasked_block)==(p_res <-- is_occ_unmasked_block(p_block));
  List_Header(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(p_res <-- is_init_or_unalarmed_block(p_block));
  List_Header(Implementation(block_miniservices_i),has_up_tr_ed)==(p_res <-- has_up_tr_ed(p_block));
  List_Header(Implementation(block_miniservices_i),has_down_tr_ed)==(p_res <-- has_down_tr_ed(p_block))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(block_miniservices_i),read_mb)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),read_mb)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),unmask_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),unmask_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),mask_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),mask_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),read_tdla)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),read_tdla)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),alarm_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),alarm_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),unalarm_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),unalarm_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),clear_tdla)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),clear_tdla)==(btrue);
  Own_Precondition(Implementation(block_miniservices_i),read_ob)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),read_ob)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),occ_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),occ_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),unocc_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),unocc_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),is_free_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),is_free_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),has_up_free_or_freetd)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),has_up_free_or_freetd)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),has_down_free_or_freetd)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),has_down_free_or_freetd)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),has_occupied_bd)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),has_occupied_bd)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),is_occ_unmasked_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),is_occ_unmasked_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),has_up_tr_ed)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),has_up_tr_ed)==(p_block: t_block_i & p_block: t_block);
  Own_Precondition(Implementation(block_miniservices_i),has_down_tr_ed)==(btrue);
  List_Precondition(Implementation(block_miniservices_i),has_down_tr_ed)==(p_block: t_block_i & p_block: t_block)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(block_miniservices_i),has_down_tr_ed)==(p_block: t_block_i & p_block: t_block | @(has_down_exit,down_exit).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | has_down_exit:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> down_exit:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> down_exit:=c_exit_undet));(has_down_exit = TRUE ==> @is_newly_released.((down_exit: t_exit_i & down_exit: t_exit | is_newly_released:=bool(down_exit: oed_prev-oed));(is_newly_released = TRUE ==> p_res:=TRUE [] not(is_newly_released = TRUE) ==> skip)) [] not(has_down_exit = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),has_up_tr_ed)==(p_block: t_block_i & p_block: t_block | @(has_up_exit,up_exit).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | has_up_exit:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> up_exit:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> up_exit:=c_exit_undet));(has_up_exit = TRUE ==> @is_newly_released.((up_exit: t_exit_i & up_exit: t_exit | is_newly_released:=bool(up_exit: oed_prev-oed));(is_newly_released = TRUE ==> p_res:=TRUE [] not(is_newly_released = TRUE) ==> skip)) [] not(has_up_exit = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(p_block: t_block_i & p_block: t_block | @(is_init,is_alarming).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | is_init:=bool(p_block: cc_init));(p_block: dom(tab_tdla) | is_alarming:=tab_tdla(p_block));(is_init = TRUE or is_alarming = FALSE ==> p_res:=TRUE [] not(is_init = TRUE or is_alarming = FALSE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),is_occ_unmasked_block)==(p_block: t_block_i & p_block: t_block | @(is_occupied,is_masked).(p_res:=FALSE;(p_block: dom(tab_ob) | is_occupied:=tab_ob(p_block));(p_block: dom(tab_mb) | is_masked:=tab_mb(p_block));(is_occupied = TRUE & is_masked = FALSE ==> p_res:=TRUE [] not(is_occupied = TRUE & is_masked = FALSE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),has_occupied_bd)==(p_block: t_block_i & p_block: t_block | @(has_up_bd,up_bd,has_down_bd,down_bd,is_up_bd_occupied,is_down_bd_occupied).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | has_up_bd:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> up_bd:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> up_bd:=c_border_undet));(p_block: t_block_i & p_block: t_block | has_down_bd:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> down_bd:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> down_bd:=c_border_undet));is_up_bd_occupied:=FALSE;is_down_bd_occupied:=FALSE;(has_up_bd = TRUE ==> (up_bd: t_border_i & up_bd: t_border | is_up_bd_occupied:=bool(up_bd: obd)) [] not(has_up_bd = TRUE) ==> skip);(has_down_bd = TRUE ==> (down_bd: t_border_i & down_bd: t_border | is_down_bd_occupied:=bool(down_bd: obd)) [] not(has_down_bd = TRUE) ==> skip);(is_up_bd_occupied = TRUE or is_down_bd_occupied = TRUE ==> p_res:=TRUE [] not(is_up_bd_occupied = TRUE or is_down_bd_occupied = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),has_down_free_or_freetd)==(p_block: t_block_i & p_block: t_block | @(has_down_block,down_block).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | has_down_block:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> down_block:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> down_block:=c_block_undet));(has_down_block = TRUE ==> @(is_down_free,is_down_td_occupied).((down_block: dom(tab_ob) | is_down_free:=tab_ob(down_block));(down_block: t_block_i & down_block: t_block | is_down_td_occupied:=bool(down_block: otd));(is_down_free = TRUE or is_down_td_occupied = FALSE ==> p_res:=TRUE [] not(is_down_free = TRUE or is_down_td_occupied = FALSE) ==> p_res:=FALSE)) [] not(has_down_block = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),has_up_free_or_freetd)==(p_block: t_block_i & p_block: t_block | @(has_up_block,up_block).(p_res:=FALSE;(p_block: t_block_i & p_block: t_block | has_up_block:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> up_block:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> up_block:=c_block_undet));(has_up_block = TRUE ==> @(is_up_free,is_up_td_occupied).((up_block: dom(tab_ob) | is_up_free:=tab_ob(up_block));(up_block: t_block_i & up_block: t_block | is_up_td_occupied:=bool(up_block: otd));(is_up_free = TRUE or is_up_td_occupied = FALSE ==> p_res:=TRUE [] not(is_up_free = TRUE or is_up_td_occupied = FALSE) ==> skip)) [] not(has_up_block = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),is_free_block)==(p_block: t_block_i & p_block: t_block | @is_occupied.(p_res:=FALSE;(p_block: dom(tab_ob) | is_occupied:=tab_ob(p_block));(is_occupied = FALSE ==> p_res:=TRUE [] not(is_occupied = FALSE) ==> skip)));
  Expanded_List_Substitution(Implementation(block_miniservices_i),unocc_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_ob) | tab_ob:=tab_ob<+{p_block|->FALSE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),occ_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_ob) | tab_ob:=tab_ob<+{p_block|->TRUE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),read_ob)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_ob) | p_res:=tab_ob(p_block));
  Expanded_List_Substitution(Implementation(block_miniservices_i),clear_tdla)==(btrue | tab_tdla:=t_block_i*{FALSE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),unalarm_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_tdla) | tab_tdla:=tab_tdla<+{p_block|->FALSE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),alarm_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_tdla) | tab_tdla:=tab_tdla<+{p_block|->TRUE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),read_tdla)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_tdla) | p_res:=tab_tdla(p_block));
  Expanded_List_Substitution(Implementation(block_miniservices_i),mask_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_mb) | tab_mb:=tab_mb<+{p_block|->TRUE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),unmask_block)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_mb) | tab_mb:=tab_mb<+{p_block|->FALSE});
  Expanded_List_Substitution(Implementation(block_miniservices_i),read_mb)==(p_block: t_block_i & p_block: t_block & p_block: dom(tab_mb) | p_res:=tab_mb(p_block));
  List_Substitution(Implementation(block_miniservices_i),read_mb)==(p_res:=tab_mb(p_block));
  List_Substitution(Implementation(block_miniservices_i),unmask_block)==(tab_mb(p_block):=FALSE);
  List_Substitution(Implementation(block_miniservices_i),mask_block)==(tab_mb(p_block):=TRUE);
  List_Substitution(Implementation(block_miniservices_i),read_tdla)==(p_res:=tab_tdla(p_block));
  List_Substitution(Implementation(block_miniservices_i),alarm_block)==(tab_tdla(p_block):=TRUE);
  List_Substitution(Implementation(block_miniservices_i),unalarm_block)==(tab_tdla(p_block):=FALSE);
  List_Substitution(Implementation(block_miniservices_i),clear_tdla)==(tab_tdla:=t_block_i*{FALSE});
  List_Substitution(Implementation(block_miniservices_i),read_ob)==(p_res:=tab_ob(p_block));
  List_Substitution(Implementation(block_miniservices_i),occ_block)==(tab_ob(p_block):=TRUE);
  List_Substitution(Implementation(block_miniservices_i),unocc_block)==(tab_ob(p_block):=FALSE);
  List_Substitution(Implementation(block_miniservices_i),is_free_block)==(VAR is_occupied IN p_res:=FALSE;is_occupied:=tab_ob(p_block);IF is_occupied = FALSE THEN p_res:=TRUE END END);
  List_Substitution(Implementation(block_miniservices_i),has_up_free_or_freetd)==(VAR has_up_block,up_block IN p_res:=FALSE;has_up_block,up_block <-- read_all_cfg_b2b_up(p_block);IF has_up_block = TRUE THEN VAR is_up_free,is_up_td_occupied IN is_up_free:=tab_ob(up_block);is_up_td_occupied <-- read_otd(up_block);IF is_up_free = TRUE or is_up_td_occupied = FALSE THEN p_res:=TRUE END END END END);
  List_Substitution(Implementation(block_miniservices_i),has_down_free_or_freetd)==(VAR has_down_block,down_block IN p_res:=FALSE;has_down_block,down_block <-- read_all_cfg_b2b_down(p_block);IF has_down_block = TRUE THEN VAR is_down_free,is_down_td_occupied IN is_down_free:=tab_ob(down_block);is_down_td_occupied <-- read_otd(down_block);IF is_down_free = TRUE or is_down_td_occupied = FALSE THEN p_res:=TRUE ELSE p_res:=FALSE END END END END);
  List_Substitution(Implementation(block_miniservices_i),has_occupied_bd)==(VAR has_up_bd,up_bd,has_down_bd,down_bd,is_up_bd_occupied,is_down_bd_occupied IN p_res:=FALSE;has_up_bd,up_bd <-- read_all_cfg_b2bd_up(p_block);has_down_bd,down_bd <-- read_all_cfg_b2bd_down(p_block);is_up_bd_occupied:=FALSE;is_down_bd_occupied:=FALSE;IF has_up_bd = TRUE THEN is_up_bd_occupied <-- read_obd(up_bd) END;IF has_down_bd = TRUE THEN is_down_bd_occupied <-- read_obd(down_bd) END;IF is_up_bd_occupied = TRUE or is_down_bd_occupied = TRUE THEN p_res:=TRUE END END);
  List_Substitution(Implementation(block_miniservices_i),is_occ_unmasked_block)==(VAR is_occupied,is_masked IN p_res:=FALSE;is_occupied:=tab_ob(p_block);is_masked:=tab_mb(p_block);IF is_occupied = TRUE & is_masked = FALSE THEN p_res:=TRUE END END);
  List_Substitution(Implementation(block_miniservices_i),is_init_or_unalarmed_block)==(VAR is_init,is_alarming IN p_res:=FALSE;is_init <-- read_cc_init(p_block);is_alarming:=tab_tdla(p_block);IF is_init = TRUE or is_alarming = FALSE THEN p_res:=TRUE END END);
  List_Substitution(Implementation(block_miniservices_i),has_up_tr_ed)==(VAR has_up_exit,up_exit IN p_res:=FALSE;has_up_exit,up_exit <-- read_all_cfg_b2ed_up(p_block);IF has_up_exit = TRUE THEN VAR is_newly_released IN is_newly_released <-- is_exit_newly_released(up_exit);IF is_newly_released = TRUE THEN p_res:=TRUE END END END END);
  List_Substitution(Implementation(block_miniservices_i),has_down_tr_ed)==(VAR has_down_exit,down_exit IN p_res:=FALSE;has_down_exit,down_exit <-- read_all_cfg_b2ed_down(p_block);IF has_down_exit = TRUE THEN VAR is_newly_released IN is_newly_released <-- is_exit_newly_released(down_exit);IF is_newly_released = TRUE THEN p_res:=TRUE END END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(block_miniservices_i))==(?);
  Inherited_List_Constants(Implementation(block_miniservices_i))==(?);
  List_Constants(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(block_miniservices_i))==(?);
  Context_List_Defered(Implementation(block_miniservices_i))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Implementation(block_miniservices_i))==(t_block_i,t_border_i,t_exit_i);
  List_Own_Enumerated(Implementation(block_miniservices_i))==(?);
  List_Valuable_Sets(Implementation(block_miniservices_i))==(?);
  Inherited_List_Enumerated(Implementation(block_miniservices_i))==(?);
  Inherited_List_Defered(Implementation(block_miniservices_i))==(?);
  Inherited_List_Sets(Implementation(block_miniservices_i))==(?);
  List_Enumerated(Implementation(block_miniservices_i))==(?);
  List_Defered(Implementation(block_miniservices_i))==(?);
  List_Sets(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(block_miniservices_i))==(?);
  Expanded_List_HiddenConstants(Implementation(block_miniservices_i))==(?);
  List_HiddenConstants(Implementation(block_miniservices_i))==(?);
  External_List_HiddenConstants(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(block_miniservices_i))==(btrue);
  Context_List_Properties(Implementation(block_miniservices_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Implementation(block_miniservices_i))==(btrue);
  List_Properties(Implementation(block_miniservices_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(block_miniservices_i))==(aa: aa);
  List_Values(Implementation(block_miniservices_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(block_miniservices_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Context_List_Enumerated(Implementation(block_miniservices_i))==(?);
  Seen_Context_List_Invariant(Implementation(block_miniservices_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(block_miniservices_i))==(btrue);
  Seen_Context_List_Properties(Implementation(block_miniservices_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Seen_List_Constraints(Implementation(block_miniservices_i))==(btrue);
  Seen_List_Precondition(Implementation(block_miniservices_i),is_exit_newly_released)==(p_exit: t_exit_i & p_exit: t_exit);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),is_exit_newly_released)==(res:=bool(p_exit: oed_prev-oed));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_obd)==(p_border: t_border_i & p_border: t_border);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_obd)==(res:=bool(p_border: obd));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_cc_init)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_cc_init)==(res:=bool(p_block: cc_init));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_otd)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_otd)==(res:=bool(p_block: otd));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_cc_tdl_ack)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_cc_tdl_ack)==(res:=cc_tdl_ack);
  Seen_List_Precondition(Implementation(block_miniservices_i),save_inputs_prev)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),save_inputs_prev)==(oed_prev:=oed);
  Seen_List_Precondition(Implementation(block_miniservices_i),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_inputs)==(@(otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1).(otd$1 <: t_block & obd$1 <: t_border & oed$1 <: t_exit & cc_init$1 <: t_block & cc_tdl_ack$1: BOOL ==> otd,obd,oed,cc_init,cc_tdl_ack:=otd$1,obd$1,oed$1,cc_init$1,cc_tdl_ack$1));
  Seen_List_Operations(Implementation(block_miniservices_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  Seen_Expanded_List_Invariant(Implementation(block_miniservices_i),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Implementation(block_miniservices_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Implementation(block_miniservices_i),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Implementation(block_miniservices_i),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Implementation(block_miniservices_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Implementation(block_miniservices_i),Machine(configuration))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(block_miniservices_i),Machine(inputs))==(read_inputs,save_inputs_prev,read_cc_tdl_ack,read_otd,read_cc_init,read_obd,is_exit_newly_released);
  List_Included_Operations(Implementation(block_miniservices_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(block_miniservices_i))==(Type(tab_ob) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1)));Type(tab_mb) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1)));Type(tab_tdla) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1))));
  Operations(Implementation(block_miniservices_i))==(Type(has_down_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_tr_ed) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_init_or_unalarmed_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_occ_unmasked_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_occupied_bd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_down_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(has_up_free_or_freetd) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(is_free_block) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(unocc_block) == Cst(No_type,atype(t_block_i,?,?));Type(occ_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_ob) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(clear_tdla) == Cst(No_type,No_type);Type(unalarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(alarm_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_tdla) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?));Type(mask_block) == Cst(No_type,atype(t_block_i,?,?));Type(unmask_block) == Cst(No_type,atype(t_block_i,?,?));Type(read_mb) == Cst(btype(BOOL,?,?),atype(t_block_i,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(block_miniservices_i),Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Constants_Env(Implementation(block_miniservices_i),Machine(configuration))==(Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)));
  List_Defered_Sets(Implementation(block_miniservices_i),Machine(configuration))==(t_block_i,t_border_i,t_exit_i)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(block_miniservices_i)) == (? | ? | ? | ? | read_mb,unmask_block,mask_block,read_tdla,alarm_block,unalarm_block,clear_tdla,read_ob,occ_block,unocc_block,is_free_block,has_up_free_or_freetd,has_down_free_or_freetd,has_occupied_bd,is_occ_unmasked_block,is_init_or_unalarmed_block,has_up_tr_ed,has_down_tr_ed | ? | seen(Machine(configuration)),seen(Machine(inputs)) | ? | block_miniservices_i);
  List_Of_HiddenCst_Ids(Implementation(block_miniservices_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(block_miniservices_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(block_miniservices_i)) == (tab_tdla,tab_mb,tab_ob | ?);
  List_Of_Ids_SeenBNU(Implementation(block_miniservices_i)) == (?: ?);
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
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(block_miniservices_i)) == (Type(tab_tdla) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1)));Type(tab_mb) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1)));Type(tab_ob) == Mvv(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")*btype(BOOL,0,1))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(block_miniservices_i),is_free_block, 1) == (Type(is_occupied) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_up_free_or_freetd, 2) == (Type(is_up_free) == Lvl(btype(BOOL,?,?));Type(is_up_td_occupied) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_up_free_or_freetd, 1) == (Type(has_up_block) == Lvl(btype(BOOL,?,?));Type(up_block) == Lvl(atype(t_block_i,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_down_free_or_freetd, 2) == (Type(is_down_free) == Lvl(btype(BOOL,?,?));Type(is_down_td_occupied) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_down_free_or_freetd, 1) == (Type(has_down_block) == Lvl(btype(BOOL,?,?));Type(down_block) == Lvl(atype(t_block_i,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_occupied_bd, 1) == (Type(has_up_bd) == Lvl(btype(BOOL,?,?));Type(up_bd) == Lvl(atype(t_border_i,?,?));Type(has_down_bd) == Lvl(btype(BOOL,?,?));Type(down_bd) == Lvl(atype(t_border_i,?,?));Type(is_up_bd_occupied) == Lvl(btype(BOOL,?,?));Type(is_down_bd_occupied) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),is_occ_unmasked_block, 1) == (Type(is_occupied) == Lvl(btype(BOOL,?,?));Type(is_masked) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),is_init_or_unalarmed_block, 1) == (Type(is_init) == Lvl(btype(BOOL,?,?));Type(is_alarming) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_up_tr_ed, 2) == (Type(is_newly_released) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_up_tr_ed, 1) == (Type(has_up_exit) == Lvl(btype(BOOL,?,?));Type(up_exit) == Lvl(atype(t_exit_i,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_down_tr_ed, 2) == (Type(is_newly_released) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(block_miniservices_i),has_down_tr_ed, 1) == (Type(has_down_exit) == Lvl(btype(BOOL,?,?));Type(down_exit) == Lvl(atype(t_exit_i,?,?)))
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
  List_Local_Operations(Implementation(block_miniservices_i))==(?)
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
  TypingPredicate(Implementation(block_miniservices_i))==(tab_ob: POW(t_block_i*BOOL) & tab_mb: POW(t_block_i*BOOL) & tab_tdla: POW(t_block_i*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
