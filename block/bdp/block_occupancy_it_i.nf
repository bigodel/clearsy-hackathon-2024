Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(block_occupancy_it_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(block_occupancy_it_i))==(Machine(block_occupancy_it));
  Level(Implementation(block_occupancy_it_i))==(1);
  Upper_Level(Implementation(block_occupancy_it_i))==(Machine(block_occupancy_it))
END
&
THEORY LoadedStructureX IS
  Implementation(block_occupancy_it_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(block_occupancy_it_i))==(configuration)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(block_occupancy_it_i))==(?);
  Inherited_List_Includes(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(block_occupancy_it_i))==(?);
  Context_List_Variables(Implementation(block_occupancy_it_i))==(?);
  Abstract_List_Variables(Implementation(block_occupancy_it_i))==(treated_block,block_to_treat);
  Local_List_Variables(Implementation(block_occupancy_it_i))==(?);
  List_Variables(Implementation(block_occupancy_it_i))==(?);
  External_List_Variables(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(block_occupancy_it_i))==(?);
  Abstract_List_VisibleVariables(Implementation(block_occupancy_it_i))==(?);
  External_List_VisibleVariables(Implementation(block_occupancy_it_i))==(?);
  Expanded_List_VisibleVariables(Implementation(block_occupancy_it_i))==(?);
  List_VisibleVariables(Implementation(block_occupancy_it_i))==(rg_t_block_current);
  Internal_List_VisibleVariables(Implementation(block_occupancy_it_i))==(rg_t_block_current)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(block_occupancy_it_i))==(btrue);
  Expanded_List_Invariant(Implementation(block_occupancy_it_i))==(btrue);
  Abstract_List_Invariant(Implementation(block_occupancy_it_i))==(block_to_treat <: t_block & treated_block <: t_block & block_to_treat/\treated_block = {} & block_to_treat\/treated_block = t_block);
  Context_List_Invariant(Implementation(block_occupancy_it_i))==(btrue);
  List_Invariant(Implementation(block_occupancy_it_i))==(rg_t_block_current: NAT & rg_t_block_current: 0..size(bijection_t_block) & block_to_treat = bijection_t_block[1..rg_t_block_current])
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(block_occupancy_it_i))==(btrue);
  Abstract_List_Assertions(Implementation(block_occupancy_it_i))==(btrue);
  Context_List_Assertions(Implementation(block_occupancy_it_i))==(btrue);
  List_Assertions(Implementation(block_occupancy_it_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(block_occupancy_it_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(block_occupancy_it_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(block_occupancy_it_i))==(btrue | rg_t_block_current:=card(t_block));
  Context_List_Initialisation(Implementation(block_occupancy_it_i))==(skip);
  List_Initialisation(Implementation(block_occupancy_it_i))==(rg_t_block_current <-- read_card_t_block)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(block_occupancy_it_i),Machine(configuration))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(block_occupancy_it_i))==(btrue);
  List_Context_Constraints(Implementation(block_occupancy_it_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(block_occupancy_it_i))==(init_iteration_t_block,iterate_t_block);
  List_Operations(Implementation(block_occupancy_it_i))==(init_iteration_t_block,iterate_t_block)
END
&
THEORY ListInputX IS
  List_Input(Implementation(block_occupancy_it_i),init_iteration_t_block)==(?);
  List_Input(Implementation(block_occupancy_it_i),iterate_t_block)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(block_occupancy_it_i),init_iteration_t_block)==(cond);
  List_Output(Implementation(block_occupancy_it_i),iterate_t_block)==(cond,bl)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(block_occupancy_it_i),init_iteration_t_block)==(cond <-- init_iteration_t_block);
  List_Header(Implementation(block_occupancy_it_i),iterate_t_block)==(cond,bl <-- iterate_t_block)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(block_occupancy_it_i),init_iteration_t_block)==(btrue);
  List_Precondition(Implementation(block_occupancy_it_i),init_iteration_t_block)==(btrue);
  Own_Precondition(Implementation(block_occupancy_it_i),iterate_t_block)==(btrue);
  List_Precondition(Implementation(block_occupancy_it_i),iterate_t_block)==(block_to_treat/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(block_occupancy_it_i),iterate_t_block)==(block_to_treat/={} | (rg_t_block_current: NAT & rg_t_block_current: dom(bijection_t_block) | bl:=bijection_t_block(rg_t_block_current));(rg_t_block_current-1: INT & rg_t_block_current: INT & 1: INT | rg_t_block_current:=rg_t_block_current-1);cond:=bool(rg_t_block_current>=1));
  Expanded_List_Substitution(Implementation(block_occupancy_it_i),init_iteration_t_block)==(btrue | (btrue | rg_t_block_current:=card(t_block));cond:=bool(rg_t_block_current>=1));
  List_Substitution(Implementation(block_occupancy_it_i),init_iteration_t_block)==(rg_t_block_current <-- read_card_t_block;cond:=bool(rg_t_block_current>=1));
  List_Substitution(Implementation(block_occupancy_it_i),iterate_t_block)==(bl <-- read_bijection_t_block(rg_t_block_current);rg_t_block_current:=rg_t_block_current-1;cond:=bool(rg_t_block_current>=1))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(block_occupancy_it_i))==(?);
  Inherited_List_Constants(Implementation(block_occupancy_it_i))==(?);
  List_Constants(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(block_occupancy_it_i))==(?);
  Context_List_Defered(Implementation(block_occupancy_it_i))==(t_block_i,t_border_i,t_exit_i);
  Context_List_Sets(Implementation(block_occupancy_it_i))==(t_block_i,t_border_i,t_exit_i);
  List_Own_Enumerated(Implementation(block_occupancy_it_i))==(?);
  List_Valuable_Sets(Implementation(block_occupancy_it_i))==(?);
  Inherited_List_Enumerated(Implementation(block_occupancy_it_i))==(?);
  Inherited_List_Defered(Implementation(block_occupancy_it_i))==(?);
  Inherited_List_Sets(Implementation(block_occupancy_it_i))==(?);
  List_Enumerated(Implementation(block_occupancy_it_i))==(?);
  List_Defered(Implementation(block_occupancy_it_i))==(?);
  List_Sets(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(block_occupancy_it_i))==(?);
  Expanded_List_HiddenConstants(Implementation(block_occupancy_it_i))==(?);
  List_HiddenConstants(Implementation(block_occupancy_it_i))==(?);
  External_List_HiddenConstants(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(block_occupancy_it_i))==(btrue);
  Context_List_Properties(Implementation(block_occupancy_it_i))==(t_block <: t_block_i & c_block_undet: t_block_i & c_block_undet/:t_block & t_border <: t_border_i & c_border_undet: t_border_i & c_border_undet/:t_border & t_exit <: t_exit_i & c_exit_undet: t_exit_i & c_exit_undet/:t_exit & cfg_b2b_up: t_block +-> t_block & cfg_b2b_down: t_block +-> t_block & cfg_b2bd_up: t_block +-> t_border & cfg_b2bd_down: t_block +-> t_border & cfg_b2ed_up: t_block +-> t_exit & cfg_b2ed_down: t_block +-> t_exit & bijection_t_block: NAT +-> t_block_i & bijection_t_block: perm(t_block) & card(t_block) = size(bijection_t_block) & card(t_block)<=MAXINT & t_block_i: FIN(INTEGER) & not(t_block_i = {}) & t_border_i: FIN(INTEGER) & not(t_border_i = {}) & t_exit_i: FIN(INTEGER) & not(t_exit_i = {}));
  Inherited_List_Properties(Implementation(block_occupancy_it_i))==(btrue);
  List_Properties(Implementation(block_occupancy_it_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(block_occupancy_it_i))==(aa: aa);
  List_Values(Implementation(block_occupancy_it_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(block_occupancy_it_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Context_List_Enumerated(Implementation(block_occupancy_it_i))==(?);
  Seen_Context_List_Invariant(Implementation(block_occupancy_it_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(block_occupancy_it_i))==(btrue);
  Seen_Context_List_Properties(Implementation(block_occupancy_it_i))==(btrue);
  Seen_List_Constraints(Implementation(block_occupancy_it_i))==(btrue);
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2ed_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2ed_down)==(p_belongs:=bool(p_block: dom(cfg_b2ed_down)) || (p_block: dom(cfg_b2ed_down) ==> p_down:=cfg_b2ed_down(p_block) [] not(p_block: dom(cfg_b2ed_down)) ==> p_down:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2ed_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2ed_up)==(p_belongs:=bool(p_block: dom(cfg_b2ed_up)) || (p_block: dom(cfg_b2ed_up) ==> p_up:=cfg_b2ed_up(p_block) [] not(p_block: dom(cfg_b2ed_up)) ==> p_up:=c_exit_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2bd_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2bd_down)==(p_belongs:=bool(p_block: dom(cfg_b2bd_down)) || (p_block: dom(cfg_b2bd_down) ==> p_down:=cfg_b2bd_down(p_block) [] not(p_block: dom(cfg_b2bd_down)) ==> p_down:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2bd_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2bd_up)==(p_belongs:=bool(p_block: dom(cfg_b2bd_up)) || (p_block: dom(cfg_b2bd_up) ==> p_up:=cfg_b2bd_up(p_block) [] not(p_block: dom(cfg_b2bd_up)) ==> p_up:=c_border_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2b_down)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2b_down)==(p_belongs:=bool(p_block: dom(cfg_b2b_down)) || (p_block: dom(cfg_b2b_down) ==> p_down:=cfg_b2b_down(p_block) [] not(p_block: dom(cfg_b2b_down)) ==> p_down:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_all_cfg_b2b_up)==(p_block: t_block_i & p_block: t_block);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_all_cfg_b2b_up)==(p_belongs:=bool(p_block: dom(cfg_b2b_up)) || (p_block: dom(cfg_b2b_up) ==> p_up:=cfg_b2b_up(p_block) [] not(p_block: dom(cfg_b2b_up)) ==> p_up:=c_block_undet));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_card_t_block)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_card_t_block)==(ee:=card(t_block));
  Seen_List_Precondition(Implementation(block_occupancy_it_i),read_bijection_t_block)==(rg: NAT & rg: dom(bijection_t_block));
  Seen_Expanded_List_Substitution(Implementation(block_occupancy_it_i),read_bijection_t_block)==(ee:=bijection_t_block(rg));
  Seen_List_Operations(Implementation(block_occupancy_it_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down);
  Seen_Expanded_List_Invariant(Implementation(block_occupancy_it_i),Machine(configuration))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(block_occupancy_it_i),Machine(configuration))==(read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(block_occupancy_it_i))==(Type(rg_t_block_current) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(block_occupancy_it_i))==(Type(iterate_t_block) == Cst(btype(BOOL,?,?)*atype(t_block_i,?,?),No_type);Type(init_iteration_t_block) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(block_occupancy_it_i),Machine(configuration))==(t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Constants_Env(Implementation(block_occupancy_it_i),Machine(configuration))==(Type(t_block) == Cst(SetOf(atype(t_block_i,"[t_block","]t_block")));Type(c_block_undet) == Cst(atype(t_block_i,?,?));Type(t_border) == Cst(SetOf(atype(t_border_i,"[t_border","]t_border")));Type(c_border_undet) == Cst(atype(t_border_i,?,?));Type(t_exit) == Cst(SetOf(atype(t_exit_i,"[t_exit","]t_exit")));Type(c_exit_undet) == Cst(atype(t_exit_i,?,?)));
  List_Defered_Sets(Implementation(block_occupancy_it_i),Machine(configuration))==(t_block_i,t_border_i,t_exit_i)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(block_occupancy_it_i)) == (? | ? | ? | ? | init_iteration_t_block,iterate_t_block | ? | seen(Machine(configuration)) | ? | block_occupancy_it_i);
  List_Of_HiddenCst_Ids(Implementation(block_occupancy_it_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(block_occupancy_it_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(block_occupancy_it_i)) == (rg_t_block_current | ?);
  List_Of_Ids_SeenBNU(Implementation(block_occupancy_it_i)) == (?: ?);
  List_Of_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet,t_block_i,t_border_i,t_exit_i | ? | ? | ? | read_bijection_t_block,read_card_t_block,read_all_cfg_b2b_up,read_all_cfg_b2b_down,read_all_cfg_b2bd_up,read_all_cfg_b2bd_down,read_all_cfg_b2ed_up,read_all_cfg_b2ed_down | ? | ? | ? | configuration);
  List_Of_HiddenCst_Ids(Machine(configuration)) == (bijection_t_block,cfg_b2ed_down,cfg_b2ed_up,cfg_b2bd_down,cfg_b2bd_up,cfg_b2b_down,cfg_b2b_up | ?);
  List_Of_VisibleCst_Ids(Machine(configuration)) == (t_block,c_block_undet,t_border,c_border_undet,t_exit,c_exit_undet);
  List_Of_VisibleVar_Ids(Machine(configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(configuration)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(block_occupancy_it_i)) == (Type(rg_t_block_current) == Mvv(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(block_occupancy_it_i))==(?)
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
  TypingPredicate(Implementation(block_occupancy_it_i))==(rg_t_block_current: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
