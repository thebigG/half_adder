General Workflow For Vivado:

1. Add clock(best to do this from "Board" view)
2. Double click on new clck wizard. This will bring up configuration for this block.
3. Configure output clocks freq(to whatever best fits the use case)
4. Click  "Ok"
5. Right-click on board view. Click on "Add IP".
6. Select "Memory Interface Generator"
7. Folllow the wizard.
8. Set Input clock period to (2000ps)200HZ.
9. Do not touch Additional Clocks
10. Set System Clock To "No Buffer"
11. Set XADC to "Enabled". This is supposed to let you monitor temp and things like that.
12. Add Zynq IP
13. Click "Run Block Automation"
14. Run "Connection Automation"
15. Connect "sys_rst" of mig7 to "locked" of clk_wz
16. Double click on "clk_wiz" and set Reset Type under output clocks to "Active Low"
17. From Board View add "UART".
18. Run Connection Automation
19. Import VHDL code
20. Right-click on "design_1". Click on "Create HDL Wrapper"