Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(configuration))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(configuration))==(Machine(configuration));
  Level(Machine(configuration))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(configuration)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(configuration))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(configuration))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(configuration))==(?);
  List_Includes(Machine(configuration))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(configuration))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(configuration))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(configuration))==(?);
  Context_List_Variables(Machine(configuration))==(?);
  Abstract_List_Variables(Machine(configuration))==(?);
  Local_List_Variables(Machine(configuration))==(?);
  List_Variables(Machine(configuration))==(?);
  External_List_Variables(Machine(configuration))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(configuration))==(?);
  Abstract_List_VisibleVariables(Machine(configuration))==(?);
  External_List_VisibleVariables(Machine(configuration))==(?);
  Expanded_List_VisibleVariables(Machine(configuration))==(?);
  List_VisibleVariables(Machine(configuration))==(?);
  Internal_List_VisibleVariables(Machine(configuration))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(configuration))==(btrue);
  Gluing_List_Invariant(Machine(configuration))==(btrue);
  Expanded_List_Invariant(Machine(configuration))==(btrue);
  Abstract_List_Invariant(Machine(configuration))==(btrue);
  Context_List_Invariant(Machine(configuration))==(btrue);
  List_Invariant(Machine(configuration))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(configuration))==(btrue);
  Abstract_List_Assertions(Machine(configuration))==(btrue);
  Context_List_Assertions(Machine(configuration))==(btrue);
  List_Assertions(Machine(configuration))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(configuration))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(configuration))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(configuration))==(skip);
  Context_List_Initialisation(Machine(configuration))==(skip);
  List_Initialisation(Machine(configuration))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(configuration))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(configuration))==(btrue);
  List_Constraints(Machine(configuration))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  List_Operations(Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY ListInputX IS
  List_Input(Machine(configuration),read_bijection_t_block)==(rg);
  List_Input(Machine(configuration),read_card_t_block)==(?);
  List_Input(Machine(configuration),read_all_cfg_b2b_up)==(p_block);
  List_Input(Machine(configuration),read_all_cfg_b2b_down)==(p_block);
  List_Input(Machine(configuration),read_all_cfg_b2bd_up)==(p_block);
  List_Input(Machine(configuration),read_all_cfg_b2bd_down)==(p_block);
  List_Input(Machine(configuration),read_all_cfg_b2ed_up)==(p_block);
  List_Input(Machine(configuration),read_all_cfg_b2ed_down)==(p_block)
END
&
THEORY ListOutputX IS
  List_Output(Machine(configuration),read_bijection_t_block)==(ee);
  List_Output(Machine(configuration),read_card_t_block)==(ee);
  List_Output(Machine(configuration),read_all_cfg_b2b_up)==(p_belongs,p_up);
  List_Output(Machine(configuration),read_all_cfg_b2b_down)==(p_belongs,p_down);
  List_Output(Machine(configuration),read_all_cfg_b2bd_up)==(p_belongs,p_up);
  List_Output(Machine(configuration),read_all_cfg_b2bd_down)==(p_belongs,p_down);
  List_Output(Machine(configuration),read_all_cfg_b2ed_up)==(p_belongs,p_up);
  List_Output(Machine(configuration),read_all_cfg_b2ed_down)==(p_belongs,p_down)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(configuration),read_bijection_t_block)==(ee <-- read_bijection_t_block(rg));
  List_Header(Machine(configuration),read_card_t_block)==(ee <-- read_card_t_block);
  List_Header(Machine(configuration),read_all_cfg_b2b_up)==(p_belongs,p_up <-- read_all_cfg_b2b_up(p_block));
  List_Header(Machine(configuration),read_all_cfg_b2b_down)==(p_belongs,p_down <-- read_all_cfg_b2b_down(p_block));
  List_Header(Machine(configuration),read_all_cfg_b2bd_up)==(p_belongs,p_up <-- read_all_cfg_b2bd_up(p_block));
  List_Header(Machine(configuration),read_all_cfg_b2bd_down)==(p_belongs,p_down <-- read_all_cfg_b2bd_down(p_block));
  List_Header(Machine(configuration),read_all_cfg_b2ed_up)==(p_belongs,p_up <-- read_all_cfg_b2ed_up(p_block));
  List_Header(Machine(configuration),read_all_cfg_b2ed_down)==(p_belongs,p_down <-- read_all_cfg_b2ed_down(p_block))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(configuration),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  List_Precondition(Machine(configuration),read_card_t_block)==(btrue);
  List_Precondition(Machine(configuration),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(configuration),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(configuration),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(configuration),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(configuration),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  List_Precondition(Machine(configuration),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Expanded_List_Substitution(Machine(configuration),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block | p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Expanded_List_Substitution(Machine(configuration),read_card_t_block)==(btrue | ee:=card(t_block));
  Expanded_List_Substitution(Machine(configuration),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block) | ee:=bijection_t_block(rg));
  List_Substitution(Machine(configuration),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  List_Substitution(Machine(configuration),read_card_t_block)==(ee:=card(t_block));
  List_Substitution(Machine(configuration),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || IF p_block: dom(cfg_b2b_up) THEN p_up:=cfg_b2b_up(p_block) ELSE p_up:=c_block_undet END);
  List_Substitution(Machine(configuration),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || IF p_block: dom(cfg_b2b_down) THEN p_down:=cfg_b2b_down(p_block) ELSE p_down:=c_block_undet END);
  List_Substitution(Machine(configuration),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || IF p_block: dom(cfg_b2bd_up) THEN p_up:=cfg_b2bd_up(p_block) ELSE p_up:=c_border_undet END);
  List_Substitution(Machine(configuration),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || IF p_block: dom(cfg_b2bd_down) THEN p_down:=cfg_b2bd_down(p_block) ELSE p_down:=c_border_undet END);
  List_Substitution(Machine(configuration),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || IF p_block: dom(cfg_b2ed_up) THEN p_up:=cfg_b2ed_up(p_block) ELSE p_up:=c_exit_undet END);
  List_Substitution(Machine(configuration),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || IF p_block: dom(cfg_b2ed_down) THEN p_down:=cfg_b2ed_down(p_block) ELSE p_down:=c_exit_undet END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  Inherited_List_Constants(Machine(configuration))==(?);
  List_Constants(Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(configuration),t_block_i)==(?);
  Context_List_Enumerated(Machine(configuration))==(?);
  Context_List_Defered(Machine(configuration))==(?);
  Context_List_Sets(Machine(configuration))==(?);
  List_Valuable_Sets(Machine(configuration))==(t_block_i,t_border_i,t_exit_i);
  Inherited_List_Enumerated(Machine(configuration))==(?);
  Inherited_List_Defered(Machine(configuration))==(?);
  Inherited_List_Sets(Machine(configuration))==(?);
  List_Enumerated(Machine(configuration))==(?);
  List_Defered(Machine(configuration))==(t_block_i,t_border_i,t_exit_i);
  List_Sets(Machine(configuration))==(t_block_i,t_border_i,t_exit_i);
  Set_Definition(Machine(configuration),t_border_i)==(?);
  Set_Definition(Machine(configuration),t_exit_i)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(configuration))==(?);
  Expanded_List_HiddenConstants(Machine(configuration))==(?);
  List_HiddenConstants(Machine(configuration))==(bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up);
  External_List_HiddenConstants(Machine(configuration))==(bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(configuration))==(btrue);
  Context_List_Properties(Machine(configuration))==(btrue);
  Inherited_List_Properties(Machine(configuration))==(btrue);
  List_Properties(Machine(configuration))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(configuration),read_bijection_t_block)==(?);
  List_ANY_Var(Machine(configuration),read_card_t_block)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2b_up)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2b_down)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2bd_up)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2bd_down)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2ed_up)==(?);
  List_ANY_Var(Machine(configuration),read_all_cfg_b2ed_down)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down | ? | ? | ? | configuration);
  List_Of_HiddenCst_Ids(Machine(configuration)) == (bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ?);
  List_Of_VisibleCst_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Of_VisibleVar_Ids(Machine(configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(configuration)) == (Type(t_block_i) == Cst(SetOf(atype(t_block_i,"[t_block_i","]t_block_i")));Type(t_border_i) == Cst(SetOf(atype(t_border_i,"[t_border_i","]t_border_i")));Type(t_exit_i) == Cst(SetOf(atype(t_exit_i,"[t_exit_i","]t_exit_i"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(configuration)) == (Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(configuration)) == (Type(bijection_t_block) == HCst(SetOf(btype(INTEGER,?,?)*atype(t_block_i,?,?)));Type(cfg_b2ed_down) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_exit_i,?,?)));Type(cfg_b2ed_up) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_exit_i,?,?)));Type(cfg_b2bd_down) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_border_i,?,?)));Type(cfg_b2bd_up) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_border_i,?,?)));Type(cfg_b2b_down) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_block_i,?,?)));Type(cfg_b2b_up) == HCst(SetOf(atype(t_block_i,?,?)*atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(configuration)) == (Type(read_all_cfg_b2ed_down) == Cst(btype(BOOL,?,?)*atype(t_exit_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2ed_up) == Cst(btype(BOOL,?,?)*atype(t_exit_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2bd_down) == Cst(btype(BOOL,?,?)*atype(t_border_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2bd_up) == Cst(btype(BOOL,?,?)*atype(t_border_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2b_down) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2b_up) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),atype(t_block_i,?,?));Type(read_card_t_block) == Cst(btype(INTEGER,?,?),No_type);Type(read_bijection_t_block) == Cst(atype(t_block_i,?,?),btype(INTEGER,?,?)));
  Observers(Machine(configuration)) == (Type(read_all_cfg_b2ed_down) == Cst(btype(BOOL,?,?)*atype(t_exit_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2ed_up) == Cst(btype(BOOL,?,?)*atype(t_exit_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2bd_down) == Cst(btype(BOOL,?,?)*atype(t_border_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2bd_up) == Cst(btype(BOOL,?,?)*atype(t_border_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2b_down) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),atype(t_block_i,?,?));Type(read_all_cfg_b2b_up) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),atype(t_block_i,?,?));Type(read_card_t_block) == Cst(btype(INTEGER,?,?),No_type);Type(read_bijection_t_block) == Cst(atype(t_block_i,?,?),btype(INTEGER,?,?)))
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
