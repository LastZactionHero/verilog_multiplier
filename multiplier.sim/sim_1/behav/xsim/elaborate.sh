#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed May 23 16:00:05 MDT 2018
# SW Build 2188600 on Wed Apr  4 18:39:19 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto a87e675cf6d44d3aa5078394a9b3ed27 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot multiplier_tb_behav xil_defaultlib.multiplier_tb xil_defaultlib.glbl -log elaborate.log
