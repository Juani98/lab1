
|
Command: %s
53*	vivadotcl2K
7synth_design -top sistema_digital -part xc7z020clg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 712.992 ; gain = 177.574
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2#
sistema_digital2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
222default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter cnt_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter initial_value bound to: 4'b0001 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
counter_Nbits2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteE_counter/lab1_parteE_counter.srcs/sources_1/new/counter_Nbits.vhd2default:default2
62default:default2$
counter1_binario2default:default2!
counter_Nbits2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1132default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
counter_Nbits2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteE_counter/lab1_parteE_counter.srcs/sources_1/new/counter_Nbits.vhd2default:default2
222default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter cnt_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
counter_Nbits2default:default2
12default:default2
12default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteE_counter/lab1_parteE_counter.srcs/sources_1/new/counter_Nbits.vhd2default:default2
222default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BCD_counter2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteF_BCD/lab1_parteF_BCD.srcs/sources_1/new/BCD_counter.vhd2default:default2
72default:default2 
counter2_BCD2default:default2
BCD_counter2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1242default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
BCD_counter2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteF_BCD/lab1_parteF_BCD.srcs/sources_1/new/BCD_counter.vhd2default:default2
192default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter cnt_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
BCD_counter2default:default2
22default:default2
12default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteF_BCD/lab1_parteF_BCD.srcs/sources_1/new/BCD_counter.vhd2default:default2
192default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

LFSR_4bits2default:default2s
_C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/LSFR_4bits.vhd2default:default2
62default:default2!
counter3_LFSR2default:default2

LFSR_4bits2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1312default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

LFSR_4bits2default:default2u
_C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/LSFR_4bits.vhd2default:default2
212default:default8@Z8-638h px? 
X
%s
*synth2@
,	Parameter initial_value bound to: 4'b1000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter lfsr_width bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

LFSR_4bits2default:default2
32default:default2
12default:default2u
_C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/LSFR_4bits.vhd2default:default2
212default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
synchronizer2default:default2u
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
342default:default2!
synchronizer12default:default2 
synchronizer2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1382default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
synchronizer2default:default2w
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
412default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FF_D2default:default2m
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
342default:default2
FF_D12default:default2
FF_D2default:default2w
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
542default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
FF_D2default:default2o
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
412default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
FF_D2default:default2
42default:default2
12default:default2o
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
412default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FF_D2default:default2m
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
342default:default2
FF_D22default:default2
FF_D2default:default2w
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
612default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
synchronizer2default:default2
52default:default2
12default:default2w
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
412default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
synchronizer2default:default2u
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
342default:default2!
synchronizer22default:default2 
synchronizer2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1452default:default8@Z8-3491h px? 
^
%s
*synth2F
2	Parameter rst_width bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
rst_async_ass_synch_deass2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
32default:default2.
rst_async_ass_synch_deass12default:default2-
rst_async_ass_synch_deass2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1522default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2-
rst_async_ass_synch_deass2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
152default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter rst_width bound to: 2 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter rst_active_value bound to: 1'b1 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
rst_async_ass_synch_deass2default:default2
62default:default2
12default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
152default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
divisor_frecuencia2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
52default:default2'
divisor_frecuencia12default:default2&
divisor_frecuencia2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1582default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
divisor_frecuencia2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
162default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter cnt_width bound to: 28 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
counter_28bits2default:default2w
cC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/counter_28bits.vhd2default:default2
62default:default2
counter12default:default2"
counter_28bits2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
662default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
counter_28bits2default:default2y
cC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/counter_28bits.vhd2default:default2
222default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter cnt_width bound to: 28 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
counter_28bits2default:default2
72default:default2
12default:default2y
cC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/counter_28bits.vhd2default:default2
222default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2-
rst_async_ass_synch_deass2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
32default:default2.
rst_async_ass_synch_deass12default:default2-
rst_async_ass_synch_deass2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
772default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2=
)rst_async_ass_synch_deass__parameterized12default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
152default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter rst_width bound to: 2 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter rst_active_value bound to: 1'b1 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2=
)rst_async_ass_synch_deass__parameterized12default:default2
72default:default2
12default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteC/lab1_parteC.srcs/sources_1/new/PowerOnReset.vhd2default:default2
152default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
synchronizer2default:default2u
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
342default:default2!
synchronizer12default:default2 
synchronizer2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
832default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
synchronizer2default:default2u
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
342default:default2!
synchronizer22default:default2 
synchronizer2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
892default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
synchronizer2default:default2u
aC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/synchronizer.vhd2default:default2
342default:default2!
synchronizer32default:default2 
synchronizer2default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
952default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
divisor_frecuencia2default:default2
82default:default2
12default:default2?
oC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/new/divisor_frecuencia.vhd2default:default2
162default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
sistema_digital2default:default2
92default:default2
12default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
222default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 776.922 ; gain = 241.504
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 776.922 ; gain = 241.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 776.922 ; gain = 241.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 33]]2default:default2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default2
3622default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 34]]2default:default2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default2
3672default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 35]]2default:default2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default2
3722default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 13]]2default:default2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default2
3752default:default8@Z12-584h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
zC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/constrs_1/imports/new/zedboard_master_XDC_RevC_D_v3.xdc2default:default25
!.Xil/sistema_digital_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
888.2622default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.1062default:default2
892.4572default:default2
4.1952default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2?
?C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/imports/lab1/lab1_parteE_counter/lab1_parteE_counter.srcs/sources_1/new/counter_Nbits.vhd2default:default2
402default:default8@Z8-5818h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2y
cC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/counter_28bits.vhd2default:default2
402default:default8@Z8-5818h px? 
?
!inferring latch for variable '%s'327*oasys23
internal_reset_LFSR_counter_reg2default:default2z
dC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/sistema_digital.vhd2default:default2
1142default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
D
%s
*synth2,
Module sistema_digital 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
B
%s
*synth2*
Module counter_Nbits 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module BCD_counter 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module LFSR_4bits 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
Module FF_D 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
N
%s
*synth26
"Module rst_async_ass_synch_deass 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module counter_28bits 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
^
%s
*synth2F
2Module rst_async_ass_synch_deass__parameterized1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module divisor_frecuencia 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys2A
-divisor_frecuencia1/synchronizer3/FF_D1/q_reg2default:default2A
-divisor_frecuencia1/synchronizer1/FF_D1/q_reg2default:default2o
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
482default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2A
-divisor_frecuencia1/synchronizer3/FF_D2/q_reg2default:default2A
-divisor_frecuencia1/synchronizer1/FF_D2/q_reg2default:default2o
YC:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.srcs/sources_1/new/FF_D.vhd2default:default2
482default:default8@Z8-4471h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\divisor_frecuencia1/synchronizer1/FF_D1/q_reg 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-divisor_frecuencia1/synchronizer1/FF_D2/q_reg2default:default2
FDC2default:default2A
-divisor_frecuencia1/synchronizer1/FF_D1/q_reg2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2p_0_out_inferred/\counter1_binario/counter_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Q
=\counter2_BCD/counter_inferred /\counter2_BCD/counter_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\counter3_LFSR/q_lfsr_4b_i_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2p_0_out_inferred/\counter1_binario/counter_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Q
=\counter2_BCD/counter_inferred /\counter2_BCD/counter_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\counter3_LFSR/q_lfsr_4b_i_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2p_0_out_inferred/\counter1_binario/counter_reg[2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Q
=\counter2_BCD/counter_inferred /\counter2_BCD/counter_reg[2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\counter3_LFSR/q_lfsr_4b_i_reg[2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2p_0_out_inferred/\counter1_binario/counter_reg[3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2Q
=\counter2_BCD/counter_inferred /\counter2_BCD/counter_reg[3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default26
"\counter3_LFSR/q_lfsr_4b_i_reg[3] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 892.457 ; gain = 357.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT2 |     1|
2default:defaulth px? 
B
%s*synth2*
|3     |FDCE |     4|
2default:defaulth px? 
B
%s*synth2*
|4     |FDPE |     2|
2default:defaulth px? 
B
%s*synth2*
|5     |IBUF |     4|
2default:defaulth px? 
B
%s*synth2*
|6     |OBUF |     4|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+-----------------------------+--------------------------+------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Instance                     |Module                    |Cells |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+-----------------------------+--------------------------+------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |top                          |                          |    16|
2default:defaulth p
x
? 
u
%s
*synth2]
I|2     |  rst_async_ass_synch_deass1 |rst_async_ass_synch_deass |     2|
2default:defaulth p
x
? 
u
%s
*synth2]
I|3     |  synchronizer1              |synchronizer              |     2|
2default:defaulth p
x
? 
u
%s
*synth2]
I|4     |    FF_D1                    |FF_D_2                    |     1|
2default:defaulth p
x
? 
u
%s
*synth2]
I|5     |    FF_D2                    |FF_D_3                    |     1|
2default:defaulth p
x
? 
u
%s
*synth2]
I|6     |  synchronizer2              |synchronizer_0            |     3|
2default:defaulth p
x
? 
u
%s
*synth2]
I|7     |    FF_D1                    |FF_D                      |     1|
2default:defaulth p
x
? 
u
%s
*synth2]
I|8     |    FF_D2                    |FF_D_1                    |     2|
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+-----------------------------+--------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:31 . Memory (MB): peak = 897.637 ; gain = 246.684
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 897.637 ; gain = 362.219
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
918.1372default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
622default:default2
62default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:422default:default2
00:00:442default:default2
918.1372default:default2
629.4652default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
918.1372default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^C:/xilinx_proyectos/Laboratorios/lab1/lab1_parteF/lab1_parteF.runs/synth_1/sistema_digital.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
tExecuting : report_utilization -file sistema_digital_utilization_synth.rpt -pb sistema_digital_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed May 18 12:09:31 20222default:defaultZ17-206h px? 


End Record