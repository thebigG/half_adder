#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim half_adder_behav -key {Behavioral:sim_1:Functional:half_adder} -tclbatch half_adder.tcl -log simulate.log
