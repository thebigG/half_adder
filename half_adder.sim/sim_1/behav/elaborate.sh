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
ExecStep $xv_path/bin/xelab -wto 0c6d3add466c477394d7974f817ae2af -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot half_adder_behav xil_defaultlib.half_adder -log elaborate.log
