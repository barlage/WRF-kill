module da_grid_definitions
   
   !---------------------------------------------------------------------------
   ! Purpose: Calculation of analysis grid variables:
   !---------------------------------------------------------------------------
   
   use da_control, only : gravity, convert_fd2uv, gas_constant, convert_uv2fd, &
      pi, cone_factor, map_projection, phic,psi1,earth_radius,c2,pole, trace_use, &
      ycntr,truelat1_3dv,xlonc,ptop,t0,base_pres,base_lapse,base_temp, trace_use_dull, &
      trace_use_frequent
   use da_reporting, only : da_error,message
   use da_tracing, only : da_trace_entry, da_trace_exit
   
   implicit none
   
   contains
   
#include "da_ref_height.inc"
#include "da_ref_pres.inc"
#include "da_ffdduv.inc"
#include "da_ffdduv2.inc"
#include "da_earth_2_model_wind.inc"
#include "da_set_map_para.inc"
#include "da_uv_wind_adj.inc"
#include "da_uv_wind_tgl.inc"
#include "da_cal_sd.inc"

end module da_grid_definitions
