
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -2,-1,-1,-2,-2,-2,-3,-3,-4,-5,-5,-6,-7,-7,-8,-9,-10,-11,-12,-13,-14,-14,-15,-16,-17,-18,-19,-19,-20,-20,-21,-21,-21,-20,-20,-19,-18,-17,-15,-13,-11,-8,-5,-1,3,7,12,18,24,31,38,45,54,63,72,82,93,104,115,128,140,154,167,182,196,212,227,243,259,275,292,309,326,343,360,377,394,410,427,443,459,475,490,505,519,532,545,558,569,580,590,599,607,614,620,625,629,633,635,636,636,635,633,629,625,620,614,607,599,590,580,569,558,545,532,519,505,490,475,459,443,427,410,394,377,360,343,326,309,292,275,259,243,227,212,196,182,167,154,140,128,115,104,93,82,72,63,54,45,38,31,24,18,12,7,3,-1,-5,-8,-11,-13,-15,-17,-18,-19,-20,-20,-21,-21,-21,-20,-20,-19,-19,-18,-17,-16,-15,-14,-14,-13,-12,-11,-10,-9,-8,-7,-7,-6,-5,-5,-4,-3,-3,-2,-2,-2,-1,-1,-2
// chanpats: 173
// name: fir_compiler_0
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 40
// zero_pack_factor: 1
// coeff_padding: 20
// num_coeffs: 200
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 11
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 16
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 32
// output_fract_width: 0
// config_method: 0

const double fir_compiler_0_coefficients[200] = {-2,-1,-1,-2,-2,-2,-3,-3,-4,-5,-5,-6,-7,-7,-8,-9,-10,-11,-12,-13,-14,-14,-15,-16,-17,-18,-19,-19,-20,-20,-21,-21,-21,-20,-20,-19,-18,-17,-15,-13,-11,-8,-5,-1,3,7,12,18,24,31,38,45,54,63,72,82,93,104,115,128,140,154,167,182,196,212,227,243,259,275,292,309,326,343,360,377,394,410,427,443,459,475,490,505,519,532,545,558,569,580,590,599,607,614,620,625,629,633,635,636,636,635,633,629,625,620,614,607,599,590,580,569,558,545,532,519,505,490,475,459,443,427,410,394,377,360,343,326,309,292,275,259,243,227,212,196,182,167,154,140,128,115,104,93,82,72,63,54,45,38,31,24,18,12,7,3,-1,-5,-8,-11,-13,-15,-17,-18,-19,-20,-20,-21,-21,-21,-20,-20,-19,-19,-18,-17,-16,-15,-14,-14,-13,-12,-11,-10,-9,-8,-7,-7,-6,-5,-5,-4,-3,-3,-2,-2,-2,-1,-1,-2};

const xip_fir_v7_2_pattern fir_compiler_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_0";
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 40;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_0_coefficients[0];
  config.coeff_padding       = 20;
  config.num_coeffs          = 200;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 11;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 32;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_0_config = gen_fir_compiler_0_config();

