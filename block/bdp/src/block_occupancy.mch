  /***************************************************************************
    Module Name:
    block_occupancy

    Description:
    Management of block occupancy and Trackside Detector Loss (TDL) alarm

    *************************************************************************/
MACHINE
  block_occupancy

SEES
  configuration ,
  inputs


































ABSTRACT_VARIABLES
  ob ,
  /***************************************************************************
    Variable Name: ob
  
    Typing: ob <: t_block
  
    Description: Set of blocks considered as occupied
  
    Initialization: ob := t_block
  
    *************************************************************************/

  mb ,
  /***************************************************************************
    Variable Name: mb
  
    Typing: mb <: t_block
  
    Description: Set of masked blocks for TDL alarm
  
    Initialization: mb := {}
  
    *************************************************************************/

  tdla
  /***************************************************************************
    Variable Name: tdla
  
    Typing: tdla <: t_block
  
    Description: Set of blocks in Trackside Detector Loss (TDL) alarm
  
    Initialization: tdla := t_block
  
    *************************************************************************/

INVARIANT
  ob   <: t_block &
  mb   <: t_block &
  tdla <: t_block

INITIALISATION
  ob   := t_block ||
  mb   := {}      ||
  tdla := t_block

OPERATIONS

  unmask_blocks =
  /***************************************************************************
    Operation Name: mask_blocks
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality:
    This function unmasks some blocks (for TDL alarm). Blocks which do not
    become unmasked remain unchanged.
    A block is unmasked when the block is free or when all of the following
    conditions are true:
    1) The upward block has a free trackside detector or the upward block
    is free.
    2) The downward block has a free trackside detector or the downward block
    is free.
    *************************************************************************/
  BEGIN
    // leave all previously masked blocks, but unmask
    mb := mb - (
      // blocks that are free (d_free_b), or
      ( t_block - ob ) \/
      // 1) whose upward block (cfg_b2b_up~) has a free trackside detector or
      // is free (d_free_td \/ d_free_b), and
      ( cfg_b2b_up ~ [ ( t_block - otd ) \/ ( t_block - ob ) ] /\
        // 2) whose downard block (cfg_b2b_down~) has a free trackside detector
        // or is free (d_free_td \/ d_free_b)
        cfg_b2b_down ~ [ ( t_block - otd ) \/ ( t_block - ob ) ] )
    )
  END ;

  release_tdl_alarm =
  /***************************************************************************
    Operation Name: release_tdl_alarm
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality:
    This function releases Trackside Detector Loss (TDL) alarm.
    When a TDL alarm acknowledgment is received from the Control Center,
    then TDL alarm is released for all blocks.
    If no TDL alarm acknowledgment is received then TDL alarm remains
    unchanged.
    *************************************************************************/
  BEGIN
    IF cc_tdl_ack = TRUE
    THEN tdla := {}
    END
  END ;

  set_tdl_alarm =
  /***************************************************************************
    Operation Name: set_tdl_alarm
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality :
    This function sets Trackside Detector Loss (TDL) alarm. When a block does
    not become in TDL alarm, then the alarm remains unchanged.
    A block becomes in TDL alarm, when the following conditions are true:
    1) The block is occupied.
    2) The block is not masked.
    3) The block trackside detector is free.
    *************************************************************************/
  BEGIN
    // tdla remains unchanged, but set the alarm to all blocks that
    tdla := tdla \/ (
      // 1) are occupied, 3) have free trackside detectors (ob /\ d_free_td) 
      // and 2) are not masked (- mb)
      ( ob /\ ( t_block - otd ) ) - mb
      // Remember to prove that (ob /\ (t_block - otd)) - mb = ob - mb - otd
      //                                d_free_td
    )
  END ;

  mask_blocks =
  /***************************************************************************
    Operation Name: mask_blocks
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality:
    This function mask some blocks (for TDL alarm).
    A block is masked when the folowing conditions are true:
    1) The block is not in TDL alarm.
    2) One of the block borders is occupied.
    Blocks which do not become unmasked remain unchanged.
    *************************************************************************/
  BEGIN
    // leave mb unchanged, but mask all blocks where
    mb := mb \/ (
      // 2) one of its borders (d_bd2b) is occupied (obd) and 1) is not in TDL
      // alarm (- tdla)
      ( cfg_b2bd_up \/ cfg_b2bd_down ) ~ [ obd ] - tdla
    )
  END ;

  release_blocks =
  /***************************************************************************
    Operation Name: release_blocks
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality:
    This function manages released blocks. Blocks which are not released
    remain unchanged.
    A block is consider to be released when the following conditions are true:
    1) The block is not in TDL alarm or the block is beeing initialized by the
    Control Center.
    2) A block exit detector, which was occupied during the previous cycle, is
    now released.
    ************************************************************************/
  BEGIN
    // leave occupied blocks as is, but release blocks that
    ob := ob - (
      // 1) are not in TDL alarm or being initialized (tdla \/ cc_init), and
      ( ( t_block - tdla ) \/ cc_init ) /\
      // 2) had an exit previously occupied, but not anymore (oed_prev - oed,
      // d_be2b is used to grab the blocks for those exit detectors)
      ( cfg_b2ed_up \/ cfg_b2ed_down ) ~ [ oed_prev - oed ]
    )
  END ;

  occupy_blocks =
  /***************************************************************************
    Operation Name: occupy_blocks
  
    Input parameters: none
  
    Output parameters: none
  
    Functionality:
    This function manages occupied blocks. Blocks which do not become occupied
    remain unchanged.
    A block is consider to be occupied when one of its border detector is
    occupied or when its trackside detector is occupied.
    ************************************************************************/
  BEGIN
    // consider new blocks to be occupied when either or its border detectors
    // (d_bd2b) are occupied (obd) or its trackside detector is occupied (otd)
    ob := ob \/ ( cfg_b2bd_up \/ cfg_b2bd_down ) ~ [ obd ] \/ otd
  END ;

  p_res <-- read_ob ( p_block ) =
  PRE
    p_block : t_block_i &
    p_block : t_block
  THEN
    p_res := bool ( p_block : ob )
  END ;

  p_res <-- read_tdla ( p_block ) =
  PRE
    p_block : t_block_i &
    p_block : t_block
  THEN
    p_res := bool ( p_block : tdla )
  END

END
