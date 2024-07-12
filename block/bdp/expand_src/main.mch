        /***************************************************************************
	  Module Name:
	  main
	  
	  Description:
	  Entry point of project 'block'
	  
	  *************************************************************************/
MACHINE
        main

SEES
        configuration

DEFINITIONS
        /* The set of free blocks (non-occupied blocks) */
        d_free_b == ( t_block - ob ) ;


        d_free_bd == ( t_border - obd ) ;


        d_free_td == ( t_block - otd ) ;




        d_b2b == ( cfg_b2bd_up \/ cfg_b2bd_down ) ~

ABSTRACT_VARIABLES
        /* inputs variables */
        otd ,
        obd ,

        /* block_occupancy variables */
        ob ,
        tdla

INVARIANT
        otd  <: t_block  &
        obd  <: t_border &

        ob   <: t_block  &
        tdla <: t_block

INITIALISATION
        otd ,
        obd ,
        ob ,
        tdla : (
          otd  <: t_block  &
          obd  <: t_border &
          ob   <: t_block  &
          tdla <: t_block
        )

OPERATIONS

        execute_cycle =
        /***************************************************************************
	  Operation Name : execute_cycle
	  
	  Input parameters: none
	  
	  Output parameters: none
	  
	  Functionality:
	  This function gathers all treatment made during one execute cycle,
	  by calling operations in the following order:
	  - read_inputs
	  - save_inputs_prev
	  - set_block_occupancy
	  - ...

	  Properties:
	  - Property 1:
	  A block having one of its border detector occupied or having its trackside
	  detector occupied has to be occupied.
	  *************************************************************************/
        BEGIN
                otd ,
                obd ,
                ob ,
                tdla : (
                  otd  <: t_block  &
                  obd  <: t_border &
                  ob   <: t_block  &
                  tdla <: t_block  &
                  d_b2b [ obd ] \/ otd <: ob
                )
        END

END
