Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(block_occupancy_it))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(block_occupancy_it))==(Machine(block_occupancy_it));
  Level(Machine(block_occupancy_it))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(block_occupancy_it)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(block_occupancy_it))==(configuration)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(block_occupancy_it))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(block_occupancy_it))==(?);
  List_Includes(Machine(block_occupancy_it))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(block_occupancy_it))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(block_occupancy_it))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(block_occupancy_it))==(?);
  Context_List_Variables(Machine(block_occupancy_it))==(?);
  Abstract_List_Variables(Machine(block_occupancy_it))==(?);
  Local_List_Variables(Machine(block_occupancy_it))==(treated_block,block_to_treat);
  List_Variables(Machine(block_occupancy_it))==(treated_block,block_to_treat);
  External_List_Variables(Machine(block_occupancy_it))==(treated_block,block_to_treat)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(block_occupancy_it))==(?);
  Abstract_List_VisibleVariables(Machine(block_occupancy_it))==(?);
  External_List_VisibleVariables(Machine(block_occupancy_it))==(?);
  Expanded_List_VisibleVariables(Machine(block_occupancy_it))==(?);
  List_VisibleVariables(Machine(block_occupancy_it))==(?);
  Internal_List_VisibleVariables(Machine(block_occupancy_it))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(block_occupancy_it))==(btrue);
  Gluing_List_Invariant(Machine(block_occupancy_it))==(btrue);
  Expanded_List_Invariant(Machine(block_occupancy_it))==(btrue);
  Abstract_List_Invariant(Machine(block_occupancy_it))==(btrue);
  Context_List_Invariant(Machine(block_occupancy_it))==(btrue);
  List_Invariant(Machine(block_occupancy_it))==(block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(block_occupancy_it))==(btrue);
  Abstract_List_Assertions(Machine(block_occupancy_it))==(btrue);
  Context_List_Assertions(Machine(block_occupancy_it))==(btrue);
  List_Assertions(Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(block_occupancy_it))==(block_to_treat,treated_block:=t_block,{});
  Context_List_Initialisation(Machine(block_occupancy_it))==(skip);
  List_Initialisation(Machine(block_occupancy_it))==(block_to_treat:=t_block || treated_block:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(block_occupancy_it))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(block_occupancy_it),Machine(configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(block_occupancy_it))==(btrue);
  List_Constraints(Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(block_occupancy_it))==(init_iteration_t_block,iterate_t_block);
  List_Operations(Machine(block_occupancy_it))==(init_iteration_t_block,iterate_t_block)
END
&
THEORY ListInputX IS
  List_Input(Machine(block_occupancy_it),init_iteration_t_block)==(?);
  List_Input(Machine(block_occupancy_it),iterate_t_block)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(block_occupancy_it),init_iteration_t_block)==(cond);
  List_Output(Machine(block_occupancy_it),iterate_t_block)==(cond,bl)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(block_occupancy_it),init_iteration_t_block)==(cond <-- init_iteration_t_block);
  List_Header(Machine(block_occupancy_it),iterate_t_block)==(cond,bl <-- iterate_t_block)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(block_occupancy_it),init_iteration_t_block)==(btrue);
  List_Precondition(Machine(block_occupancy_it),iterate_t_block)==(block_to_treat/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(block_occupancy_it),iterate_t_block)==(block_to_treat/={} | @n_bl.(n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat ==> bl,block_to_treat,treated_block,cond:=n_bl,block_to_treat-{n_bl},treated_block\/{n_bl},bool(block_to_treat/={n_bl})));
  Expanded_List_Substitution(Machine(block_occupancy_it),init_iteration_t_block)==(btrue | block_to_treat,treated_block,cond:=t_block,{},bool(t_block/={}));
  List_Substitution(Machine(block_occupancy_it),init_iteration_t_block)==(block_to_treat:=t_block || treated_block:={} || cond:=bool(t_block/={}));
  List_Substitution(Machine(block_occupancy_it),iterate_t_block)==(ANY n_bl WHERE n_bl: t_block_i & n_bl: t_block & n_bl: block_to_treat THEN bl:=n_bl || block_to_treat:=block_to_treat-{n_bl} || treated_block:=treated_block\/{n_bl} || cond:=bool(block_to_treat/={n_bl}) END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(block_occupancy_it))==(?);
  Inherited_List_Constants(Machine(block_occupancy_it))==(?);
  List_Constants(Machine(block_occupancy_it))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(block_occupancy_it))==(?);
  Context_List_Defered(Machine(block_occupancy_it))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Machine(block_occupancy_it))==(t_block_i,t_border_i,t_exit_i);
  List_Valuable_Sets(Machine(block_occupancy_it))==(?);
  Inherited_List_Enumerated(Machine(block_occupancy_it))==(?);
  Inherited_List_Defered(Machine(block_occupancy_it))==(?);
  Inherited_List_Sets(Machine(block_occupancy_it))==(?);
  List_Enumerated(Machine(block_occupancy_it))==(?);
  List_Defered(Machine(block_occupancy_it))==(?);
  List_Sets(Machine(block_occupancy_it))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(block_occupancy_it))==(?);
  Expanded_List_HiddenConstants(Machine(block_occupancy_it))==(?);
  List_HiddenConstants(Machine(block_occupancy_it))==(?);
  External_List_HiddenConstants(Machine(block_occupancy_it))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(block_occupancy_it))==(btrue);
  Context_List_Properties(Machine(block_occupancy_it))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Machine(block_occupancy_it))==(btrue);
  List_Properties(Machine(block_occupancy_it))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(block_occupancy_it),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Context_List_Enumerated(Machine(block_occupancy_it))==(?);
  Seen_Context_List_Invariant(Machine(block_occupancy_it))==(btrue);
  Seen_Context_List_Assertions(Machine(block_occupancy_it))==(btrue);
  Seen_Context_List_Properties(Machine(block_occupancy_it))==(btrue);
  Seen_List_Constraints(Machine(block_occupancy_it))==(btrue);
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Machine(block_occupancy_it),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Machine(block_occupancy_it),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Machine(block_occupancy_it),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Machine(block_occupancy_it),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Machine(block_occupancy_it),Machine(configuration))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(block_occupancy_it),init_iteration_t_block)==(?);
  List_ANY_Var(Machine(block_occupancy_it),iterate_t_block)==(Var(n_bl) == atype(t_block_i,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(block_occupancy_it)) == (? | ? | treated_block,block_to_treat | ? | init_iteration_t_block,iterate_t_block | ? | seen(Machine(configuration)) | ? | block_occupancy_it);
  List_Of_HiddenCst_Ids(Machine(block_occupancy_it)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(block_occupancy_it)) == (?);
  List_Of_VisibleVar_Ids(Machine(block_occupancy_it)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(block_occupancy_it)) == (?: ?);
  List_Of_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down | ? | ? | ? | configuration);
  List_Of_HiddenCst_Ids(Machine(configuration)) == (bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ?);
  List_Of_VisibleCst_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Of_VisibleVar_Ids(Machine(configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(block_occupancy_it)) == (Type(treated_block) == Mvl(SetOf(atype(t_block_i,?,?)));Type(block_to_treat) == Mvl(SetOf(atype(t_block_i,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(block_occupancy_it)) == (Type(iterate_t_block) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),No_type);Type(init_iteration_t_block) == Cst(btype(BOOL,?,?),No_type))
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
