\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Minimize
 obj: w1044 + w1043 + w1042 + w1041 + w1040 + w1034 + w1033 + w1032 + w1031
      + w1030 + w1024 + w1023 + w1022 + w1021 + w1020 + w1014 + w1013 + w1012
      + w1011 + w1010 + w1004 + w1003 + w1002 + w1001 + w1000 + w944 + w943
      + w942 + w941 + w940 + w934 + w933 + w932 + w931 + w930 + w924 + w923
      + w922 + w921 + w920 + w914 + w913 + w912 + w911 + w910 + w904 + w903
      + w902 + w901 + w900 + w844 + w843 + w842 + w841 + w840 + w834 + w833
      + w832 + w831 + w830 + w824 + w823 + w822 + w821 + w820 + w814 + w813
      + w812 + w811 + w810 + w804 + w803 + w802 + w801 + w800 + w744 + w743
      + w742 + w741 + w740 + w734 + w733 + w732 + w731 + w730 + w724 + w723
      + w722 + w721 + w720 + w714 + w713 + w712 + w711 + w710 + w704 + w703
      + w702 + w701 + w700 + w644 + w643 + w642 + w641 + w640 + w634 + w633
      + w632 + w631 + w630 + w624 + w623 + w622 + w621 + w620 + w614 + w613
      + w612 + w611 + w610 + w604 + w603 + w602 + w601 + w600 + w544 + w543
      + w542 + w541 + w540 + w534 + w533 + w532 + w531 + w530 + w524 + w523
      + w522 + w521 + w520 + w514 + w513 + w512 + w511 + w510 + w504 + w503
      + w502 + w501 + w500 + w444 + w443 + w442 + w441 + w440 + w434 + w433
      + w432 + w431 + w430 + w424 + w423 + w422 + w421 + w420 + w414 + w413
      + w412 + w411 + w410 + w404 + w403 + w402 + w401 + w400 + w344 + w343
      + w342 + w341 + w340 + w334 + w333 + w332 + w331 + w330 + w324 + w323
      + w322 + w321 + w320 + w314 + w313 + w312 + w311 + w310 + w304 + w303
      + w302 + w301 + w300 + w244 + w243 + w242 + w241 + w240 + w234 + w233
      + w232 + w231 + w230 + w224 + w223 + w222 + w221 + w220 + w214 + w213
      + w212 + w211 + w210 + w204 + w203 + w202 + w201 + w200 + w144 + w143
      + w142 + w141 + w140 + w134 + w133 + w132 + w131 + w130 + w124 + w123
      + w122 + w121 + w120 + w114 + w113 + w112 + w111 + w110 + w104 + w103
      + w102 + w101 + w100 + w044 + w043 + w042 + w041 + w040 + w034 + w033
      + w032 + w031 + w030 + w024 + w023 + w022 + w021 + w020 + w014 + w013
      + w012 + w011 + w010 + w004 + w003 + w002 + w001 + w000
Subject To
 NF_0PlacementConstraint#0:      theta04 + theta03 + theta02 + theta01
                                 + theta00  = 1
 NF_1PlacementConstraint#1:      theta14 + theta13 + theta12 + theta11
                                 + theta10  = 1
 NF_2PlacementConstraint#2:      theta24 + theta23 + theta22 + theta21
                                 + theta20  = 1
 NF_3PlacementConstraint#3:      theta34 + theta33 + theta32 + theta31
                                 + theta30  = 1
 Source_of_E_0_Placement_Constraint#4: - theta00 + x00 <= 0
 Destination_of_E_0_Placement_Constraint#5: - theta10 + y00 <= 0
 Source_of_E_0_Placement_Constraint#6: - theta01 + x01 <= 0
 Destination_of_E_0_Placement_Constraint#7: - theta11 + y01 <= 0
 Source_of_E_0_Placement_Constraint#8: - theta02 + x02 <= 0
 Destination_of_E_0_Placement_Constraint#9: - theta12 + y02 <= 0
 Source_of_E_0_Placement_Constraint#10: - theta03 + x03 <= 0
 Destination_of_E_0_Placement_Constraint#11: - theta13 + y03 <= 0
 Source_of_E_0_Placement_Constraint#12: - theta04 + x04 <= 0
 Destination_of_E_0_Placement_Constraint#13: - theta14 + y04 <= 0
 Source_of_E_1_Placement_Constraint#14: - theta10 + x10 <= 0
 Destination_of_E_1_Placement_Constraint#15: - theta20 + y10 <= 0
 Source_of_E_1_Placement_Constraint#16: - theta11 + x11 <= 0
 Destination_of_E_1_Placement_Constraint#17: - theta21 + y11 <= 0
 Source_of_E_1_Placement_Constraint#18: - theta12 + x12 <= 0
 Destination_of_E_1_Placement_Constraint#19: - theta22 + y12 <= 0
 Source_of_E_1_Placement_Constraint#20: - theta13 + x13 <= 0
 Destination_of_E_1_Placement_Constraint#21: - theta23 + y13 <= 0
 Source_of_E_1_Placement_Constraint#22: - theta14 + x14 <= 0
 Destination_of_E_1_Placement_Constraint#23: - theta24 + y14 <= 0
 Source_of_E_2_Placement_Constraint#24: - theta20 + x20 <= 0
 Destination_of_E_2_Placement_Constraint#25: - theta30 + y20 <= 0
 Source_of_E_2_Placement_Constraint#26: - theta21 + x21 <= 0
 Destination_of_E_2_Placement_Constraint#27: - theta31 + y21 <= 0
 Source_of_E_2_Placement_Constraint#28: - theta22 + x22 <= 0
 Destination_of_E_2_Placement_Constraint#29: - theta32 + y22 <= 0
 Source_of_E_2_Placement_Constraint#30: - theta23 + x23 <= 0
 Destination_of_E_2_Placement_Constraint#31: - theta33 + y23 <= 0
 Source_of_E_2_Placement_Constraint#32: - theta24 + x24 <= 0
 Destination_of_E_2_Placement_Constraint#33: - theta34 + y24 <= 0
 Source_of_E_3_Placement_Constraint#34: - theta00 + x30 <= 0
 Destination_of_E_3_Placement_Constraint#35: - theta20 + y30 <= 0
 Source_of_E_3_Placement_Constraint#36: - theta01 + x31 <= 0
 Destination_of_E_3_Placement_Constraint#37: - theta21 + y31 <= 0
 Source_of_E_3_Placement_Constraint#38: - theta02 + x32 <= 0
 Destination_of_E_3_Placement_Constraint#39: - theta22 + y32 <= 0
 Source_of_E_3_Placement_Constraint#40: - theta03 + x33 <= 0
 Destination_of_E_3_Placement_Constraint#41: - theta23 + y33 <= 0
 Source_of_E_3_Placement_Constraint#42: - theta04 + x34 <= 0
 Destination_of_E_3_Placement_Constraint#43: - theta24 + y34 <= 0
 Destination_of_E_4_Placement_Constraint#44: - theta00 + y40 <= 0
 Source_of_E_4_Placement_Constraint#45: - theta20 + x40 <= 0
 Destination_of_E_4_Placement_Constraint#46: - theta01 + y41 <= 0
 Source_of_E_4_Placement_Constraint#47: - theta21 + x41 <= 0
 Destination_of_E_4_Placement_Constraint#48: - theta02 + y42 <= 0
 Source_of_E_4_Placement_Constraint#49: - theta22 + x42 <= 0
 Destination_of_E_4_Placement_Constraint#50: - theta03 + y43 <= 0
 Source_of_E_4_Placement_Constraint#51: - theta23 + x43 <= 0
 Destination_of_E_4_Placement_Constraint#52: - theta04 + y44 <= 0
 Source_of_E_4_Placement_Constraint#53: - theta24 + x44 <= 0
 Source_of_E_5_Placement_Constraint#54: - theta00 + x50 <= 0
 Destination_of_E_5_Placement_Constraint#55: - theta30 + y50 <= 0
 Source_of_E_5_Placement_Constraint#56: - theta01 + x51 <= 0
 Destination_of_E_5_Placement_Constraint#57: - theta31 + y51 <= 0
 Source_of_E_5_Placement_Constraint#58: - theta02 + x52 <= 0
 Destination_of_E_5_Placement_Constraint#59: - theta32 + y52 <= 0
 Source_of_E_5_Placement_Constraint#60: - theta03 + x53 <= 0
 Destination_of_E_5_Placement_Constraint#61: - theta33 + y53 <= 0
 Source_of_E_5_Placement_Constraint#62: - theta04 + x54 <= 0
 Destination_of_E_5_Placement_Constraint#63: - theta34 + y54 <= 0
 Destination_of_E_6_Placement_Constraint#64: - theta00 + y60 <= 0
 Source_of_E_6_Placement_Constraint#65: - theta30 + x60 <= 0
 Destination_of_E_6_Placement_Constraint#66: - theta01 + y61 <= 0
 Source_of_E_6_Placement_Constraint#67: - theta31 + x61 <= 0
 Destination_of_E_6_Placement_Constraint#68: - theta02 + y62 <= 0
 Source_of_E_6_Placement_Constraint#69: - theta32 + x62 <= 0
 Destination_of_E_6_Placement_Constraint#70: - theta03 + y63 <= 0
 Source_of_E_6_Placement_Constraint#71: - theta33 + x63 <= 0
 Destination_of_E_6_Placement_Constraint#72: - theta04 + y64 <= 0
 Source_of_E_6_Placement_Constraint#73: - theta34 + x64 <= 0
 Destination_of_E_7_Placement_Constraint#74: - theta10 + y70 <= 0
 Source_of_E_7_Placement_Constraint#75: - theta20 + x70 <= 0
 Destination_of_E_7_Placement_Constraint#76: - theta11 + y71 <= 0
 Source_of_E_7_Placement_Constraint#77: - theta21 + x71 <= 0
 Destination_of_E_7_Placement_Constraint#78: - theta12 + y72 <= 0
 Source_of_E_7_Placement_Constraint#79: - theta22 + x72 <= 0
 Destination_of_E_7_Placement_Constraint#80: - theta13 + y73 <= 0
 Source_of_E_7_Placement_Constraint#81: - theta23 + x73 <= 0
 Destination_of_E_7_Placement_Constraint#82: - theta14 + y74 <= 0
 Source_of_E_7_Placement_Constraint#83: - theta24 + x74 <= 0
 Source_of_E_8_Placement_Constraint#84: - theta10 + x80 <= 0
 Destination_of_E_8_Placement_Constraint#85: - theta30 + y80 <= 0
 Source_of_E_8_Placement_Constraint#86: - theta11 + x81 <= 0
 Destination_of_E_8_Placement_Constraint#87: - theta31 + y81 <= 0
 Source_of_E_8_Placement_Constraint#88: - theta12 + x82 <= 0
 Destination_of_E_8_Placement_Constraint#89: - theta32 + y82 <= 0
 Source_of_E_8_Placement_Constraint#90: - theta13 + x83 <= 0
 Destination_of_E_8_Placement_Constraint#91: - theta33 + y83 <= 0
 Source_of_E_8_Placement_Constraint#92: - theta14 + x84 <= 0
 Destination_of_E_8_Placement_Constraint#93: - theta34 + y84 <= 0
 Destination_of_E_9_Placement_Constraint#94: - theta10 + y90 <= 0
 Source_of_E_9_Placement_Constraint#95: - theta30 + x90 <= 0
 Destination_of_E_9_Placement_Constraint#96: - theta11 + y91 <= 0
 Source_of_E_9_Placement_Constraint#97: - theta31 + x91 <= 0
 Destination_of_E_9_Placement_Constraint#98: - theta12 + y92 <= 0
 Source_of_E_9_Placement_Constraint#99: - theta32 + x92 <= 0
 Destination_of_E_9_Placement_Constraint#100: - theta13 + y93 <= 0
 Source_of_E_9_Placement_Constraint#101: - theta33 + x93 <= 0
 Destination_of_E_9_Placement_Constraint#102: - theta14 + y94 <= 0
 Source_of_E_9_Placement_Constraint#103: - theta34 + x94 <= 0
 Destination_of_E_10_Placement_Constraint#104: - theta20 + y100 <= 0
 Source_of_E_10_Placement_Constraint#105: - theta30 + x100 <= 0
 Destination_of_E_10_Placement_Constraint#106: - theta21 + y101 <= 0
 Source_of_E_10_Placement_Constraint#107: - theta31 + x101 <= 0
 Destination_of_E_10_Placement_Constraint#108: - theta22 + y102 <= 0
 Source_of_E_10_Placement_Constraint#109: - theta32 + x102 <= 0
 Destination_of_E_10_Placement_Constraint#110: - theta23 + y103 <= 0
 Source_of_E_10_Placement_Constraint#111: - theta33 + x103 <= 0
 Destination_of_E_10_Placement_Constraint#112: - theta24 + y104 <= 0
 Source_of_E_10_Placement_Constraint#113: - theta34 + x104 <= 0
 CapacityConstraints_Node0#114:  theta00 + theta10 + theta20 + theta30 <= 1
 CapacityConstraints_Node1#115:  theta01 + theta11 + theta21 + theta31 <= 1
 CapacityConstraints_Node2#116:  theta02 + theta12 + theta22 + theta32 <= 1
 CapacityConstraints_Node3#117:  theta03 + theta13 + theta23 + theta33 <= 1
 CapacityConstraints_Node4#118:  theta04 + theta14 + theta24 + theta34 <= 1
 IloC119#119:                    x00 - y00 + x01 - y01 + x02 - y02 + x03 - y03
                                 + x04 - y04  = 0
 LinkPlacementConstraint0#120:   - 0.5 x00 - 0.5 y00 - 0.5 x01 - 0.5 y01
                                 - 0.5 x02 - 0.5 y02 - 0.5 x03 - 0.5 y03
                                 - 0.5 x04 - 0.5 y04 + z0 <= 0
 IloC121#121:                    x10 - y10 + x11 - y11 + x12 - y12 + x13 - y13
                                 + x14 - y14  = 0
 LinkPlacementConstraint1#122:   - 0.5 x10 - 0.5 y10 - 0.5 x11 - 0.5 y11
                                 - 0.5 x12 - 0.5 y12 - 0.5 x13 - 0.5 y13
                                 - 0.5 x14 - 0.5 y14 + z1 <= 0
 IloC123#123:                    x20 - y20 + x21 - y21 + x22 - y22 + x23 - y23
                                 + x24 - y24  = 0
 LinkPlacementConstraint2#124:   - 0.5 x20 - 0.5 y20 - 0.5 x21 - 0.5 y21
                                 - 0.5 x22 - 0.5 y22 - 0.5 x23 - 0.5 y23
                                 - 0.5 x24 - 0.5 y24 + z2 <= 0
 IloC125#125:                    x30 - y30 + x31 - y31 + x32 - y32 + x33 - y33
                                 + x34 - y34  = 0
 LinkPlacementConstraint3#126:   - 0.5 x30 - 0.5 y30 - 0.5 x31 - 0.5 y31
                                 - 0.5 x32 - 0.5 y32 - 0.5 x33 - 0.5 y33
                                 - 0.5 x34 - 0.5 y34 + z3 <= 0
 IloC127#127:                    - y40 + x40 - y41 + x41 - y42 + x42 - y43
                                 + x43 - y44 + x44  = 0
 LinkPlacementConstraint4#128:   - 0.5 y40 - 0.5 x40 - 0.5 y41 - 0.5 x41
                                 - 0.5 y42 - 0.5 x42 - 0.5 y43 - 0.5 x43
                                 - 0.5 y44 - 0.5 x44 + z4 <= 0
 IloC129#129:                    x50 - y50 + x51 - y51 + x52 - y52 + x53 - y53
                                 + x54 - y54  = 0
 LinkPlacementConstraint5#130:   - 0.5 x50 - 0.5 y50 - 0.5 x51 - 0.5 y51
                                 - 0.5 x52 - 0.5 y52 - 0.5 x53 - 0.5 y53
                                 - 0.5 x54 - 0.5 y54 + z5 <= 0
 IloC131#131:                    - y60 + x60 - y61 + x61 - y62 + x62 - y63
                                 + x63 - y64 + x64  = 0
 LinkPlacementConstraint6#132:   - 0.5 y60 - 0.5 x60 - 0.5 y61 - 0.5 x61
                                 - 0.5 y62 - 0.5 x62 - 0.5 y63 - 0.5 x63
                                 - 0.5 y64 - 0.5 x64 + z6 <= 0
 IloC133#133:                    - y70 + x70 - y71 + x71 - y72 + x72 - y73
                                 + x73 - y74 + x74  = 0
 LinkPlacementConstraint7#134:   - 0.5 y70 - 0.5 x70 - 0.5 y71 - 0.5 x71
                                 - 0.5 y72 - 0.5 x72 - 0.5 y73 - 0.5 x73
                                 - 0.5 y74 - 0.5 x74 + z7 <= 0
 IloC135#135:                    x80 - y80 + x81 - y81 + x82 - y82 + x83 - y83
                                 + x84 - y84  = 0
 LinkPlacementConstraint8#136:   - 0.5 x80 - 0.5 y80 - 0.5 x81 - 0.5 y81
                                 - 0.5 x82 - 0.5 y82 - 0.5 x83 - 0.5 y83
                                 - 0.5 x84 - 0.5 y84 + z8 <= 0
 IloC137#137:                    - y90 + x90 - y91 + x91 - y92 + x92 - y93
                                 + x93 - y94 + x94  = 0
 LinkPlacementConstraint9#138:   - 0.5 y90 - 0.5 x90 - 0.5 y91 - 0.5 x91
                                 - 0.5 y92 - 0.5 x92 - 0.5 y93 - 0.5 x93
                                 - 0.5 y94 - 0.5 x94 + z9 <= 0
 IloC139#139:                    - y100 + x100 - y101 + x101 - y102 + x102
                                 - y103 + x103 - y104 + x104  = 0
 LinkPlacementConstraint10#140:  - 0.5 y100 - 0.5 x100 - 0.5 y101 - 0.5 x101
                                 - 0.5 y102 - 0.5 x102 - 0.5 y103 - 0.5 x103
                                 - 0.5 y104 - 0.5 x104 + z10 <= 0
 IloC141#141:                    z0 + z1 + z2 + z3 + z4 + z5 + z6 + z7 + z8
                                 + z9 + z10  = 3
 BreakLoopsVG_17#142:            z1 + z7 <= 1
 BreakLoopsVG_210#143:           z2 + z10 <= 1
 BreakLoopsVG_34#144:            z3 + z4 <= 1
 BreakLoopsVG_43#145:            z3 + z4 <= 1
 BreakLoopsVG_56#146:            z5 + z6 <= 1
 BreakLoopsVG_65#147:            z5 + z6 <= 1
 BreakLoopsVG_71#148:            z1 + z7 <= 1
 BreakLoopsVG_89#149:            z8 + z9 <= 1
 BreakLoopsVG_98#150:            z8 + z9 <= 1
 BreakLoopsVG_102#151:           z2 + z10 <= 1
 IloC152#152:                    w010 + w001 <= 1
 IloC153#153:                    w020 + w002 <= 1
 Routing_Constraint_0#154:       - w020 - w010 + w002 + w001 - x00 + y00  = 0
 IloC155#155:                    w010 + w001 <= 1
 IloC156#156:                    w021 + w012 <= 1
 Routing_Constraint_0#157:       - w021 + w012 + w010 - w001 - x01 + y01  = 0
 IloC158#158:                    w020 + w002 <= 1
 IloC159#159:                    w021 + w012 <= 1
 IloC160#160:                    w032 + w023 <= 1
 Routing_Constraint_0#161:       - w032 + w023 + w021 + w020 - w012 - w002
                                 - x02 + y02  = 0
 IloC162#162:                    w032 + w023 <= 1
 IloC163#163:                    w043 + w034 <= 1
 Routing_Constraint_0#164:       - w043 + w034 + w032 - w023 - x03 + y03  = 0
 IloC165#165:                    w043 + w034 <= 1
 Routing_Constraint_0#166:       w043 - w034 - x04 + y04  = 0
 IloC167#167:                    w110 + w101 <= 1
 IloC168#168:                    w120 + w102 <= 1
 Routing_Constraint_1#169:       - w120 - w110 + w102 + w101 - x10 + y10  = 0
 IloC170#170:                    w110 + w101 <= 1
 IloC171#171:                    w121 + w112 <= 1
 Routing_Constraint_1#172:       - w121 + w112 + w110 - w101 - x11 + y11  = 0
 IloC173#173:                    w120 + w102 <= 1
 IloC174#174:                    w121 + w112 <= 1
 IloC175#175:                    w132 + w123 <= 1
 Routing_Constraint_1#176:       - w132 + w123 + w121 + w120 - w112 - w102
                                 - x12 + y12  = 0
 IloC177#177:                    w132 + w123 <= 1
 IloC178#178:                    w143 + w134 <= 1
 Routing_Constraint_1#179:       - w143 + w134 + w132 - w123 - x13 + y13  = 0
 IloC180#180:                    w143 + w134 <= 1
 Routing_Constraint_1#181:       w143 - w134 - x14 + y14  = 0
 IloC182#182:                    w210 + w201 <= 1
 IloC183#183:                    w220 + w202 <= 1
 Routing_Constraint_2#184:       - w220 - w210 + w202 + w201 - x20 + y20  = 0
 IloC185#185:                    w210 + w201 <= 1
 IloC186#186:                    w221 + w212 <= 1
 Routing_Constraint_2#187:       - w221 + w212 + w210 - w201 - x21 + y21  = 0
 IloC188#188:                    w220 + w202 <= 1
 IloC189#189:                    w221 + w212 <= 1
 IloC190#190:                    w232 + w223 <= 1
 Routing_Constraint_2#191:       - w232 + w223 + w221 + w220 - w212 - w202
                                 - x22 + y22  = 0
 IloC192#192:                    w232 + w223 <= 1
 IloC193#193:                    w243 + w234 <= 1
 Routing_Constraint_2#194:       - w243 + w234 + w232 - w223 - x23 + y23  = 0
 IloC195#195:                    w243 + w234 <= 1
 Routing_Constraint_2#196:       w243 - w234 - x24 + y24  = 0
 IloC197#197:                    w310 + w301 <= 1
 IloC198#198:                    w320 + w302 <= 1
 Routing_Constraint_3#199:       - w320 - w310 + w302 + w301 - x30 + y30  = 0
 IloC200#200:                    w310 + w301 <= 1
 IloC201#201:                    w321 + w312 <= 1
 Routing_Constraint_3#202:       - w321 + w312 + w310 - w301 - x31 + y31  = 0
 IloC203#203:                    w320 + w302 <= 1
 IloC204#204:                    w321 + w312 <= 1
 IloC205#205:                    w332 + w323 <= 1
 Routing_Constraint_3#206:       - w332 + w323 + w321 + w320 - w312 - w302
                                 - x32 + y32  = 0
 IloC207#207:                    w332 + w323 <= 1
 IloC208#208:                    w343 + w334 <= 1
 Routing_Constraint_3#209:       - w343 + w334 + w332 - w323 - x33 + y33  = 0
 IloC210#210:                    w343 + w334 <= 1
 Routing_Constraint_3#211:       w343 - w334 - x34 + y34  = 0
 IloC212#212:                    w410 + w401 <= 1
 IloC213#213:                    w420 + w402 <= 1
 Routing_Constraint_4#214:       - w420 - w410 + w402 + w401 + y40 - x40  = 0
 IloC215#215:                    w410 + w401 <= 1
 IloC216#216:                    w421 + w412 <= 1
 Routing_Constraint_4#217:       - w421 + w412 + w410 - w401 + y41 - x41  = 0
 IloC218#218:                    w420 + w402 <= 1
 IloC219#219:                    w421 + w412 <= 1
 IloC220#220:                    w432 + w423 <= 1
 Routing_Constraint_4#221:       - w432 + w423 + w421 + w420 - w412 - w402
                                 + y42 - x42  = 0
 IloC222#222:                    w432 + w423 <= 1
 IloC223#223:                    w443 + w434 <= 1
 Routing_Constraint_4#224:       - w443 + w434 + w432 - w423 + y43 - x43  = 0
 IloC225#225:                    w443 + w434 <= 1
 Routing_Constraint_4#226:       w443 - w434 + y44 - x44  = 0
 IloC227#227:                    w510 + w501 <= 1
 IloC228#228:                    w520 + w502 <= 1
 Routing_Constraint_5#229:       - w520 - w510 + w502 + w501 - x50 + y50  = 0
 IloC230#230:                    w510 + w501 <= 1
 IloC231#231:                    w521 + w512 <= 1
 Routing_Constraint_5#232:       - w521 + w512 + w510 - w501 - x51 + y51  = 0
 IloC233#233:                    w520 + w502 <= 1
 IloC234#234:                    w521 + w512 <= 1
 IloC235#235:                    w532 + w523 <= 1
 Routing_Constraint_5#236:       - w532 + w523 + w521 + w520 - w512 - w502
                                 - x52 + y52  = 0
 IloC237#237:                    w532 + w523 <= 1
 IloC238#238:                    w543 + w534 <= 1
 Routing_Constraint_5#239:       - w543 + w534 + w532 - w523 - x53 + y53  = 0
 IloC240#240:                    w543 + w534 <= 1
 Routing_Constraint_5#241:       w543 - w534 - x54 + y54  = 0
 IloC242#242:                    w610 + w601 <= 1
 IloC243#243:                    w620 + w602 <= 1
 Routing_Constraint_6#244:       - w620 - w610 + w602 + w601 + y60 - x60  = 0
 IloC245#245:                    w610 + w601 <= 1
 IloC246#246:                    w621 + w612 <= 1
 Routing_Constraint_6#247:       - w621 + w612 + w610 - w601 + y61 - x61  = 0
 IloC248#248:                    w620 + w602 <= 1
 IloC249#249:                    w621 + w612 <= 1
 IloC250#250:                    w632 + w623 <= 1
 Routing_Constraint_6#251:       - w632 + w623 + w621 + w620 - w612 - w602
                                 + y62 - x62  = 0
 IloC252#252:                    w632 + w623 <= 1
 IloC253#253:                    w643 + w634 <= 1
 Routing_Constraint_6#254:       - w643 + w634 + w632 - w623 + y63 - x63  = 0
 IloC255#255:                    w643 + w634 <= 1
 Routing_Constraint_6#256:       w643 - w634 + y64 - x64  = 0
 IloC257#257:                    w710 + w701 <= 1
 IloC258#258:                    w720 + w702 <= 1
 Routing_Constraint_7#259:       - w720 - w710 + w702 + w701 + y70 - x70  = 0
 IloC260#260:                    w710 + w701 <= 1
 IloC261#261:                    w721 + w712 <= 1
 Routing_Constraint_7#262:       - w721 + w712 + w710 - w701 + y71 - x71  = 0
 IloC263#263:                    w720 + w702 <= 1
 IloC264#264:                    w721 + w712 <= 1
 IloC265#265:                    w732 + w723 <= 1
 Routing_Constraint_7#266:       - w732 + w723 + w721 + w720 - w712 - w702
                                 + y72 - x72  = 0
 IloC267#267:                    w732 + w723 <= 1
 IloC268#268:                    w743 + w734 <= 1
 Routing_Constraint_7#269:       - w743 + w734 + w732 - w723 + y73 - x73  = 0
 IloC270#270:                    w743 + w734 <= 1
 Routing_Constraint_7#271:       w743 - w734 + y74 - x74  = 0
 IloC272#272:                    w810 + w801 <= 1
 IloC273#273:                    w820 + w802 <= 1
 Routing_Constraint_8#274:       - w820 - w810 + w802 + w801 - x80 + y80  = 0
 IloC275#275:                    w810 + w801 <= 1
 IloC276#276:                    w821 + w812 <= 1
 Routing_Constraint_8#277:       - w821 + w812 + w810 - w801 - x81 + y81  = 0
 IloC278#278:                    w820 + w802 <= 1
 IloC279#279:                    w821 + w812 <= 1
 IloC280#280:                    w832 + w823 <= 1
 Routing_Constraint_8#281:       - w832 + w823 + w821 + w820 - w812 - w802
                                 - x82 + y82  = 0
 IloC282#282:                    w832 + w823 <= 1
 IloC283#283:                    w843 + w834 <= 1
 Routing_Constraint_8#284:       - w843 + w834 + w832 - w823 - x83 + y83  = 0
 IloC285#285:                    w843 + w834 <= 1
 Routing_Constraint_8#286:       w843 - w834 - x84 + y84  = 0
 IloC287#287:                    w910 + w901 <= 1
 IloC288#288:                    w920 + w902 <= 1
 Routing_Constraint_9#289:       - w920 - w910 + w902 + w901 + y90 - x90  = 0
 IloC290#290:                    w910 + w901 <= 1
 IloC291#291:                    w921 + w912 <= 1
 Routing_Constraint_9#292:       - w921 + w912 + w910 - w901 + y91 - x91  = 0
 IloC293#293:                    w920 + w902 <= 1
 IloC294#294:                    w921 + w912 <= 1
 IloC295#295:                    w932 + w923 <= 1
 Routing_Constraint_9#296:       - w932 + w923 + w921 + w920 - w912 - w902
                                 + y92 - x92  = 0
 IloC297#297:                    w932 + w923 <= 1
 IloC298#298:                    w943 + w934 <= 1
 Routing_Constraint_9#299:       - w943 + w934 + w932 - w923 + y93 - x93  = 0
 IloC300#300:                    w943 + w934 <= 1
 Routing_Constraint_9#301:       w943 - w934 + y94 - x94  = 0
 IloC302#302:                    w1010 + w1001 <= 1
 IloC303#303:                    w1020 + w1002 <= 1
 Routing_Constraint_10#304:      - w1020 - w1010 + w1002 + w1001 + y100 - x100
                                  = 0
 IloC305#305:                    w1010 + w1001 <= 1
 IloC306#306:                    w1021 + w1012 <= 1
 Routing_Constraint_10#307:      - w1021 + w1012 + w1010 - w1001 + y101 - x101
                                  = 0
 IloC308#308:                    w1020 + w1002 <= 1
 IloC309#309:                    w1021 + w1012 <= 1
 IloC310#310:                    w1032 + w1023 <= 1
 Routing_Constraint_10#311:      - w1032 + w1023 + w1021 + w1020 - w1012
                                 - w1002 + y102 - x102  = 0
 IloC312#312:                    w1032 + w1023 <= 1
 IloC313#313:                    w1043 + w1034 <= 1
 Routing_Constraint_10#314:      - w1043 + w1034 + w1032 - w1023 + y103 - x103
                                  = 0
 IloC315#315:                    w1043 + w1034 <= 1
 Routing_Constraint_10#316:      w1043 - w1034 + y104 - x104  = 0
 A_single_VLink_originating_from_NF0#317: z0 + z3 + z5 <= 1
 A_single_VLink_destined_to_NF0#318: z4 + z6 <= 1
 A_single_VLink_originating_from_NF1#319: z1 + z8 <= 1
 A_single_VLink_destined_to_NF1#320: z0 + z7 + z9 <= 1
 A_single_VLink_originating_from_NF2#321: z2 + z4 + z7 <= 1
 A_single_VLink_destined_to_NF2#322: z1 + z3 + z10 <= 1
 A_single_VLink_originating_from_NF3#323: z6 + z9 + z10 <= 1
 A_single_VLink_destined_to_NF3#324: z2 + z5 + z8 <= 1
 IloC325#325:                    - x00 + q00 <= 0
 IloC326#326:                    - y00 + q00 <= 0
 IloC327#327:                    - x00 - y00 + q00 >= -1
 IloC328#328:                    - x10 + q10 <= 0
 IloC329#329:                    - y10 + q10 <= 0
 IloC330#330:                    - x10 - y10 + q10 >= -1
 IloC331#331:                    - x20 + q20 <= 0
 IloC332#332:                    - y20 + q20 <= 0
 IloC333#333:                    - x20 - y20 + q20 >= -1
 IloC334#334:                    - x30 + q30 <= 0
 IloC335#335:                    - y30 + q30 <= 0
 IloC336#336:                    - x30 - y30 + q30 >= -1
 IloC337#337:                    - x40 + q40 <= 0
 IloC338#338:                    - y40 + q40 <= 0
 IloC339#339:                    - y40 - x40 + q40 >= -1
 IloC340#340:                    - x50 + q50 <= 0
 IloC341#341:                    - y50 + q50 <= 0
 IloC342#342:                    - x50 - y50 + q50 >= -1
 IloC343#343:                    - x60 + q60 <= 0
 IloC344#344:                    - y60 + q60 <= 0
 IloC345#345:                    - y60 - x60 + q60 >= -1
 IloC346#346:                    - x70 + q70 <= 0
 IloC347#347:                    - y70 + q70 <= 0
 IloC348#348:                    - y70 - x70 + q70 >= -1
 IloC349#349:                    - x80 + q80 <= 0
 IloC350#350:                    - y80 + q80 <= 0
 IloC351#351:                    - x80 - y80 + q80 >= -1
 IloC352#352:                    - x90 + q90 <= 0
 IloC353#353:                    - y90 + q90 <= 0
 IloC354#354:                    - y90 - x90 + q90 >= -1
 IloC355#355:                    - x100 + q100 <= 0
 IloC356#356:                    - y100 + q100 <= 0
 IloC357#357:                    - y100 - x100 + q100 >= -1
 InternalSwitchingCapacity_0#358: q00 + q10 + q20 + q30 + q40 + q50 + q60 + q70
                                 + q80 + q90 + q100 <= 20
 IloC359#359:                    - x01 + q01 <= 0
 IloC360#360:                    - y01 + q01 <= 0
 IloC361#361:                    - x01 - y01 + q01 >= -1
 IloC362#362:                    - x11 + q11 <= 0
 IloC363#363:                    - y11 + q11 <= 0
 IloC364#364:                    - x11 - y11 + q11 >= -1
 IloC365#365:                    - x21 + q21 <= 0
 IloC366#366:                    - y21 + q21 <= 0
 IloC367#367:                    - x21 - y21 + q21 >= -1
 IloC368#368:                    - x31 + q31 <= 0
 IloC369#369:                    - y31 + q31 <= 0
 IloC370#370:                    - x31 - y31 + q31 >= -1
 IloC371#371:                    - x41 + q41 <= 0
 IloC372#372:                    - y41 + q41 <= 0
 IloC373#373:                    - y41 - x41 + q41 >= -1
 IloC374#374:                    - x51 + q51 <= 0
 IloC375#375:                    - y51 + q51 <= 0
 IloC376#376:                    - x51 - y51 + q51 >= -1
 IloC377#377:                    - x61 + q61 <= 0
 IloC378#378:                    - y61 + q61 <= 0
 IloC379#379:                    - y61 - x61 + q61 >= -1
 IloC380#380:                    - x71 + q71 <= 0
 IloC381#381:                    - y71 + q71 <= 0
 IloC382#382:                    - y71 - x71 + q71 >= -1
 IloC383#383:                    - x81 + q81 <= 0
 IloC384#384:                    - y81 + q81 <= 0
 IloC385#385:                    - x81 - y81 + q81 >= -1
 IloC386#386:                    - x91 + q91 <= 0
 IloC387#387:                    - y91 + q91 <= 0
 IloC388#388:                    - y91 - x91 + q91 >= -1
 IloC389#389:                    - x101 + q101 <= 0
 IloC390#390:                    - y101 + q101 <= 0
 IloC391#391:                    - y101 - x101 + q101 >= -1
 InternalSwitchingCapacity_1#392: q01 + q11 + q21 + q31 + q41 + q51 + q61 + q71
                                 + q81 + q91 + q101 <= 20
 IloC393#393:                    - x02 + q02 <= 0
 IloC394#394:                    - y02 + q02 <= 0
 IloC395#395:                    - x02 - y02 + q02 >= -1
 IloC396#396:                    - x12 + q12 <= 0
 IloC397#397:                    - y12 + q12 <= 0
 IloC398#398:                    - x12 - y12 + q12 >= -1
 IloC399#399:                    - x22 + q22 <= 0
 IloC400#400:                    - y22 + q22 <= 0
 IloC401#401:                    - x22 - y22 + q22 >= -1
 IloC402#402:                    - x32 + q32 <= 0
 IloC403#403:                    - y32 + q32 <= 0
 IloC404#404:                    - x32 - y32 + q32 >= -1
 IloC405#405:                    - x42 + q42 <= 0
 IloC406#406:                    - y42 + q42 <= 0
 IloC407#407:                    - y42 - x42 + q42 >= -1
 IloC408#408:                    - x52 + q52 <= 0
 IloC409#409:                    - y52 + q52 <= 0
 IloC410#410:                    - x52 - y52 + q52 >= -1
 IloC411#411:                    - x62 + q62 <= 0
 IloC412#412:                    - y62 + q62 <= 0
 IloC413#413:                    - y62 - x62 + q62 >= -1
 IloC414#414:                    - x72 + q72 <= 0
 IloC415#415:                    - y72 + q72 <= 0
 IloC416#416:                    - y72 - x72 + q72 >= -1
 IloC417#417:                    - x82 + q82 <= 0
 IloC418#418:                    - y82 + q82 <= 0
 IloC419#419:                    - x82 - y82 + q82 >= -1
 IloC420#420:                    - x92 + q92 <= 0
 IloC421#421:                    - y92 + q92 <= 0
 IloC422#422:                    - y92 - x92 + q92 >= -1
 IloC423#423:                    - x102 + q102 <= 0
 IloC424#424:                    - y102 + q102 <= 0
 IloC425#425:                    - y102 - x102 + q102 >= -1
 InternalSwitchingCapacity_2#426: q02 + q12 + q22 + q32 + q42 + q52 + q62 + q72
                                 + q82 + q92 + q102 <= 20
 IloC427#427:                    - x03 + q03 <= 0
 IloC428#428:                    - y03 + q03 <= 0
 IloC429#429:                    - x03 - y03 + q03 >= -1
 IloC430#430:                    - x13 + q13 <= 0
 IloC431#431:                    - y13 + q13 <= 0
 IloC432#432:                    - x13 - y13 + q13 >= -1
 IloC433#433:                    - x23 + q23 <= 0
 IloC434#434:                    - y23 + q23 <= 0
 IloC435#435:                    - x23 - y23 + q23 >= -1
 IloC436#436:                    - x33 + q33 <= 0
 IloC437#437:                    - y33 + q33 <= 0
 IloC438#438:                    - x33 - y33 + q33 >= -1
 IloC439#439:                    - x43 + q43 <= 0
 IloC440#440:                    - y43 + q43 <= 0
 IloC441#441:                    - y43 - x43 + q43 >= -1
 IloC442#442:                    - x53 + q53 <= 0
 IloC443#443:                    - y53 + q53 <= 0
 IloC444#444:                    - x53 - y53 + q53 >= -1
 IloC445#445:                    - x63 + q63 <= 0
 IloC446#446:                    - y63 + q63 <= 0
 IloC447#447:                    - y63 - x63 + q63 >= -1
 IloC448#448:                    - x73 + q73 <= 0
 IloC449#449:                    - y73 + q73 <= 0
 IloC450#450:                    - y73 - x73 + q73 >= -1
 IloC451#451:                    - x83 + q83 <= 0
 IloC452#452:                    - y83 + q83 <= 0
 IloC453#453:                    - x83 - y83 + q83 >= -1
 IloC454#454:                    - x93 + q93 <= 0
 IloC455#455:                    - y93 + q93 <= 0
 IloC456#456:                    - y93 - x93 + q93 >= -1
 IloC457#457:                    - x103 + q103 <= 0
 IloC458#458:                    - y103 + q103 <= 0
 IloC459#459:                    - y103 - x103 + q103 >= -1
 InternalSwitchingCapacity_3#460: q03 + q13 + q23 + q33 + q43 + q53 + q63 + q73
                                 + q83 + q93 + q103 <= 20
 IloC461#461:                    - x04 + q04 <= 0
 IloC462#462:                    - y04 + q04 <= 0
 IloC463#463:                    - x04 - y04 + q04 >= -1
 IloC464#464:                    - x14 + q14 <= 0
 IloC465#465:                    - y14 + q14 <= 0
 IloC466#466:                    - x14 - y14 + q14 >= -1
 IloC467#467:                    - x24 + q24 <= 0
 IloC468#468:                    - y24 + q24 <= 0
 IloC469#469:                    - x24 - y24 + q24 >= -1
 IloC470#470:                    - x34 + q34 <= 0
 IloC471#471:                    - y34 + q34 <= 0
 IloC472#472:                    - x34 - y34 + q34 >= -1
 IloC473#473:                    - x44 + q44 <= 0
 IloC474#474:                    - y44 + q44 <= 0
 IloC475#475:                    - y44 - x44 + q44 >= -1
 IloC476#476:                    - x54 + q54 <= 0
 IloC477#477:                    - y54 + q54 <= 0
 IloC478#478:                    - x54 - y54 + q54 >= -1
 IloC479#479:                    - x64 + q64 <= 0
 IloC480#480:                    - y64 + q64 <= 0
 IloC481#481:                    - y64 - x64 + q64 >= -1
 IloC482#482:                    - x74 + q74 <= 0
 IloC483#483:                    - y74 + q74 <= 0
 IloC484#484:                    - y74 - x74 + q74 >= -1
 IloC485#485:                    - x84 + q84 <= 0
 IloC486#486:                    - y84 + q84 <= 0
 IloC487#487:                    - x84 - y84 + q84 >= -1
 IloC488#488:                    - x94 + q94 <= 0
 IloC489#489:                    - y94 + q94 <= 0
 IloC490#490:                    - y94 - x94 + q94 >= -1
 IloC491#491:                    - x104 + q104 <= 0
 IloC492#492:                    - y104 + q104 <= 0
 IloC493#493:                    - y104 - x104 + q104 >= -1
 InternalSwitchingCapacity_4#494: q04 + q14 + q24 + q34 + q44 + q54 + q64 + q74
                                 + q84 + q94 + q104 <= 20
 LinkCapacity01#495:             w1010 + w1001 + w910 + w901 + w810 + w801
                                 + w710 + w701 + w610 + w601 + w510 + w501
                                 + w410 + w401 + w310 + w301 + w210 + w201
                                 + w110 + w101 + w010 + w001 <= 100
 LinkCapacity02#496:             w1020 + w1002 + w920 + w902 + w820 + w802
                                 + w720 + w702 + w620 + w602 + w520 + w502
                                 + w420 + w402 + w320 + w302 + w220 + w202
                                 + w120 + w102 + w020 + w002 <= 100
 LinkCapacity12#497:             w1021 + w1012 + w921 + w912 + w821 + w812
                                 + w721 + w712 + w621 + w612 + w521 + w512
                                 + w421 + w412 + w321 + w312 + w221 + w212
                                 + w121 + w112 + w021 + w012 <= 0
 LinkCapacity23#498:             w1032 + w1023 + w932 + w923 + w832 + w823
                                 + w732 + w723 + w632 + w623 + w532 + w523
                                 + w432 + w423 + w332 + w323 + w232 + w223
                                 + w132 + w123 + w032 + w023 <= 100
 LinkCapacity34#499:             w1043 + w1034 + w943 + w934 + w843 + w834
                                 + w743 + w734 + w643 + w634 + w543 + w534
                                 + w443 + w434 + w343 + w334 + w243 + w234
                                 + w143 + w134 + w043 + w034 <= 100
 IloC500#500:                    gamma021 - delta02 <= 0
 IloC501#501:                    gamma021 - delta21 <= 0
 IloC502#502:                    gamma021 - delta02 - delta21 >= -1
 IloC503#503:                    - z0 - gamma021 + delta01 >= 0
 IloC504#504:                    gamma031 - delta03 <= 0
 IloC505#505:                    gamma031 - delta31 <= 0
 IloC506#506:                    gamma031 - delta03 - delta31 >= -1
 IloC507#507:                    - z0 + delta01 - gamma031 >= 0
 IloC508#508:                    - delta01 + gamma012 <= 0
 IloC509#509:                    gamma012 - delta12 <= 0
 IloC510#510:                    - delta01 + gamma012 - delta12 >= -1
 IloC511#511:                    - z3 + delta02 - gamma012 >= 0
 IloC512#512:                    - delta03 + gamma032 <= 0
 IloC513#513:                    gamma032 - delta32 <= 0
 IloC514#514:                    - delta03 + gamma032 - delta32 >= -1
 IloC515#515:                    - z3 + delta02 - gamma032 >= 0
 IloC516#516:                    - delta01 + gamma013 <= 0
 IloC517#517:                    gamma013 - delta13 <= 0
 IloC518#518:                    - delta01 + gamma013 - delta13 >= -1
 IloC519#519:                    - z5 + delta03 - gamma013 >= 0
 IloC520#520:                    - delta02 + gamma023 <= 0
 IloC521#521:                    gamma023 - delta23 <= 0
 IloC522#522:                    - delta02 + gamma023 - delta23 >= -1
 IloC523#523:                    - z5 + delta03 - gamma023 >= 0
 IloC524#524:                    - delta12 + gamma120 <= 0
 IloC525#525:                    gamma120 - delta20 <= 0
 IloC526#526:                    - delta12 + gamma120 - delta20 >= -1
 IloC527#527:                    - gamma120 + delta10 >= 0
 IloC528#528:                    - delta13 + gamma130 <= 0
 IloC529#529:                    gamma130 - delta30 <= 0
 IloC530#530:                    - delta13 + gamma130 - delta30 >= -1
 IloC531#531:                    delta10 - gamma130 >= 0
 IloC532#532:                    - delta10 + gamma102 <= 0
 IloC533#533:                    - delta02 + gamma102 <= 0
 IloC534#534:                    - delta02 - delta10 + gamma102 >= -1
 IloC535#535:                    - z1 + delta12 - gamma102 >= 0
 IloC536#536:                    - delta13 + gamma132 <= 0
 IloC537#537:                    - delta32 + gamma132 <= 0
 IloC538#538:                    - delta32 - delta13 + gamma132 >= -1
 IloC539#539:                    - z1 + delta12 - gamma132 >= 0
 IloC540#540:                    - delta10 + gamma103 <= 0
 IloC541#541:                    - delta03 + gamma103 <= 0
 IloC542#542:                    - delta03 - delta10 + gamma103 >= -1
 IloC543#543:                    - z8 + delta13 - gamma103 >= 0
 IloC544#544:                    - delta12 + gamma123 <= 0
 IloC545#545:                    - delta23 + gamma123 <= 0
 IloC546#546:                    - delta12 - delta23 + gamma123 >= -1
 IloC547#547:                    - z8 + delta13 - gamma123 >= 0
 IloC548#548:                    - delta21 + gamma210 <= 0
 IloC549#549:                    - delta10 + gamma210 <= 0
 IloC550#550:                    - delta21 - delta10 + gamma210 >= -1
 IloC551#551:                    - z4 + delta20 - gamma210 >= 0
 IloC552#552:                    - delta23 + gamma230 <= 0
 IloC553#553:                    - delta30 + gamma230 <= 0
 IloC554#554:                    - delta23 - delta30 + gamma230 >= -1
 IloC555#555:                    - z4 + delta20 - gamma230 >= 0
 IloC556#556:                    - delta20 + gamma201 <= 0
 IloC557#557:                    - delta01 + gamma201 <= 0
 IloC558#558:                    - delta01 - delta20 + gamma201 >= -1
 IloC559#559:                    - z7 + delta21 - gamma201 >= 0
 IloC560#560:                    - delta23 + gamma231 <= 0
 IloC561#561:                    - delta31 + gamma231 <= 0
 IloC562#562:                    - delta31 - delta23 + gamma231 >= -1
 IloC563#563:                    - z7 + delta21 - gamma231 >= 0
 IloC564#564:                    - delta20 + gamma203 <= 0
 IloC565#565:                    - delta03 + gamma203 <= 0
 IloC566#566:                    - delta03 - delta20 + gamma203 >= -1
 IloC567#567:                    - z2 + delta23 - gamma203 >= 0
 IloC568#568:                    - delta21 + gamma213 <= 0
 IloC569#569:                    - delta13 + gamma213 <= 0
 IloC570#570:                    - delta21 - delta13 + gamma213 >= -1
 IloC571#571:                    - z2 + delta23 - gamma213 >= 0
 IloC572#572:                    - delta31 + gamma310 <= 0
 IloC573#573:                    - delta10 + gamma310 <= 0
 IloC574#574:                    - delta31 - delta10 + gamma310 >= -1
 IloC575#575:                    - z6 + delta30 - gamma310 >= 0
 IloC576#576:                    - delta32 + gamma320 <= 0
 IloC577#577:                    - delta20 + gamma320 <= 0
 IloC578#578:                    - delta32 - delta20 + gamma320 >= -1
 IloC579#579:                    - z6 + delta30 - gamma320 >= 0
 IloC580#580:                    - delta30 + gamma301 <= 0
 IloC581#581:                    - delta01 + gamma301 <= 0
 IloC582#582:                    - delta01 - delta30 + gamma301 >= -1
 IloC583#583:                    - z9 + delta31 - gamma301 >= 0
 IloC584#584:                    - delta32 + gamma321 <= 0
 IloC585#585:                    - delta21 + gamma321 <= 0
 IloC586#586:                    - delta21 - delta32 + gamma321 >= -1
 IloC587#587:                    - z9 + delta31 - gamma321 >= 0
 IloC588#588:                    - delta30 + gamma302 <= 0
 IloC589#589:                    - delta02 + gamma302 <= 0
 IloC590#590:                    - delta02 - delta30 + gamma302 >= -1
 IloC591#591:                    - z10 + delta32 - gamma302 >= 0
 IloC592#592:                    - delta31 + gamma312 <= 0
 IloC593#593:                    - delta12 + gamma312 <= 0
 IloC594#594:                    - delta31 - delta12 + gamma312 >= -1
 IloC595#595:                    - z10 + delta32 - gamma312 >= 0
 IloC596#596:                    delta00 <= 0
 IloC597#597:                    delta01 <= 1
 IloC598#598:                    delta02 <= 1
 IloC599#599:                    delta03 <= 1
 IloC600#600:                    delta10 <= 0
 IloC601#601:                    delta11 <= 0
 IloC602#602:                    delta12 <= 1
 IloC603#603:                    delta13 <= 1
 IloC604#604:                    delta20 <= 1
 IloC605#605:                    delta21 <= 1
 IloC606#606:                    delta22 <= 0
 IloC607#607:                    delta23 <= 1
 IloC608#608:                    delta30 <= 1
 IloC609#609:                    delta31 <= 1
 IloC610#610:                    delta32 <= 1
 IloC611#611:                    delta33 <= 0
Bounds
 0 <= w1044 <= 1
 0 <= w1043 <= 1
 0 <= w1042 <= 1
 0 <= w1041 <= 1
 0 <= w1040 <= 1
 0 <= w1034 <= 1
 0 <= w1033 <= 1
 0 <= w1032 <= 1
 0 <= w1031 <= 1
 0 <= w1030 <= 1
 0 <= w1024 <= 1
 0 <= w1023 <= 1
 0 <= w1022 <= 1
 0 <= w1021 <= 1
 0 <= w1020 <= 1
 0 <= w1014 <= 1
 0 <= w1013 <= 1
 0 <= w1012 <= 1
 0 <= w1011 <= 1
 0 <= w1010 <= 1
 0 <= w1004 <= 1
 0 <= w1003 <= 1
 0 <= w1002 <= 1
 0 <= w1001 <= 1
 0 <= w1000 <= 1
 0 <= w944 <= 1
 0 <= w943 <= 1
 0 <= w942 <= 1
 0 <= w941 <= 1
 0 <= w940 <= 1
 0 <= w934 <= 1
 0 <= w933 <= 1
 0 <= w932 <= 1
 0 <= w931 <= 1
 0 <= w930 <= 1
 0 <= w924 <= 1
 0 <= w923 <= 1
 0 <= w922 <= 1
 0 <= w921 <= 1
 0 <= w920 <= 1
 0 <= w914 <= 1
 0 <= w913 <= 1
 0 <= w912 <= 1
 0 <= w911 <= 1
 0 <= w910 <= 1
 0 <= w904 <= 1
 0 <= w903 <= 1
 0 <= w902 <= 1
 0 <= w901 <= 1
 0 <= w900 <= 1
 0 <= w844 <= 1
 0 <= w843 <= 1
 0 <= w842 <= 1
 0 <= w841 <= 1
 0 <= w840 <= 1
 0 <= w834 <= 1
 0 <= w833 <= 1
 0 <= w832 <= 1
 0 <= w831 <= 1
 0 <= w830 <= 1
 0 <= w824 <= 1
 0 <= w823 <= 1
 0 <= w822 <= 1
 0 <= w821 <= 1
 0 <= w820 <= 1
 0 <= w814 <= 1
 0 <= w813 <= 1
 0 <= w812 <= 1
 0 <= w811 <= 1
 0 <= w810 <= 1
 0 <= w804 <= 1
 0 <= w803 <= 1
 0 <= w802 <= 1
 0 <= w801 <= 1
 0 <= w800 <= 1
 0 <= w744 <= 1
 0 <= w743 <= 1
 0 <= w742 <= 1
 0 <= w741 <= 1
 0 <= w740 <= 1
 0 <= w734 <= 1
 0 <= w733 <= 1
 0 <= w732 <= 1
 0 <= w731 <= 1
 0 <= w730 <= 1
 0 <= w724 <= 1
 0 <= w723 <= 1
 0 <= w722 <= 1
 0 <= w721 <= 1
 0 <= w720 <= 1
 0 <= w714 <= 1
 0 <= w713 <= 1
 0 <= w712 <= 1
 0 <= w711 <= 1
 0 <= w710 <= 1
 0 <= w704 <= 1
 0 <= w703 <= 1
 0 <= w702 <= 1
 0 <= w701 <= 1
 0 <= w700 <= 1
 0 <= w644 <= 1
 0 <= w643 <= 1
 0 <= w642 <= 1
 0 <= w641 <= 1
 0 <= w640 <= 1
 0 <= w634 <= 1
 0 <= w633 <= 1
 0 <= w632 <= 1
 0 <= w631 <= 1
 0 <= w630 <= 1
 0 <= w624 <= 1
 0 <= w623 <= 1
 0 <= w622 <= 1
 0 <= w621 <= 1
 0 <= w620 <= 1
 0 <= w614 <= 1
 0 <= w613 <= 1
 0 <= w612 <= 1
 0 <= w611 <= 1
 0 <= w610 <= 1
 0 <= w604 <= 1
 0 <= w603 <= 1
 0 <= w602 <= 1
 0 <= w601 <= 1
 0 <= w600 <= 1
 0 <= w544 <= 1
 0 <= w543 <= 1
 0 <= w542 <= 1
 0 <= w541 <= 1
 0 <= w540 <= 1
 0 <= w534 <= 1
 0 <= w533 <= 1
 0 <= w532 <= 1
 0 <= w531 <= 1
 0 <= w530 <= 1
 0 <= w524 <= 1
 0 <= w523 <= 1
 0 <= w522 <= 1
 0 <= w521 <= 1
 0 <= w520 <= 1
 0 <= w514 <= 1
 0 <= w513 <= 1
 0 <= w512 <= 1
 0 <= w511 <= 1
 0 <= w510 <= 1
 0 <= w504 <= 1
 0 <= w503 <= 1
 0 <= w502 <= 1
 0 <= w501 <= 1
 0 <= w500 <= 1
 0 <= w444 <= 1
 0 <= w443 <= 1
 0 <= w442 <= 1
 0 <= w441 <= 1
 0 <= w440 <= 1
 0 <= w434 <= 1
 0 <= w433 <= 1
 0 <= w432 <= 1
 0 <= w431 <= 1
 0 <= w430 <= 1
 0 <= w424 <= 1
 0 <= w423 <= 1
 0 <= w422 <= 1
 0 <= w421 <= 1
 0 <= w420 <= 1
 0 <= w414 <= 1
 0 <= w413 <= 1
 0 <= w412 <= 1
 0 <= w411 <= 1
 0 <= w410 <= 1
 0 <= w404 <= 1
 0 <= w403 <= 1
 0 <= w402 <= 1
 0 <= w401 <= 1
 0 <= w400 <= 1
 0 <= w344 <= 1
 0 <= w343 <= 1
 0 <= w342 <= 1
 0 <= w341 <= 1
 0 <= w340 <= 1
 0 <= w334 <= 1
 0 <= w333 <= 1
 0 <= w332 <= 1
 0 <= w331 <= 1
 0 <= w330 <= 1
 0 <= w324 <= 1
 0 <= w323 <= 1
 0 <= w322 <= 1
 0 <= w321 <= 1
 0 <= w320 <= 1
 0 <= w314 <= 1
 0 <= w313 <= 1
 0 <= w312 <= 1
 0 <= w311 <= 1
 0 <= w310 <= 1
 0 <= w304 <= 1
 0 <= w303 <= 1
 0 <= w302 <= 1
 0 <= w301 <= 1
 0 <= w300 <= 1
 0 <= w244 <= 1
 0 <= w243 <= 1
 0 <= w242 <= 1
 0 <= w241 <= 1
 0 <= w240 <= 1
 0 <= w234 <= 1
 0 <= w233 <= 1
 0 <= w232 <= 1
 0 <= w231 <= 1
 0 <= w230 <= 1
 0 <= w224 <= 1
 0 <= w223 <= 1
 0 <= w222 <= 1
 0 <= w221 <= 1
 0 <= w220 <= 1
 0 <= w214 <= 1
 0 <= w213 <= 1
 0 <= w212 <= 1
 0 <= w211 <= 1
 0 <= w210 <= 1
 0 <= w204 <= 1
 0 <= w203 <= 1
 0 <= w202 <= 1
 0 <= w201 <= 1
 0 <= w200 <= 1
 0 <= w144 <= 1
 0 <= w143 <= 1
 0 <= w142 <= 1
 0 <= w141 <= 1
 0 <= w140 <= 1
 0 <= w134 <= 1
 0 <= w133 <= 1
 0 <= w132 <= 1
 0 <= w131 <= 1
 0 <= w130 <= 1
 0 <= w124 <= 1
 0 <= w123 <= 1
 0 <= w122 <= 1
 0 <= w121 <= 1
 0 <= w120 <= 1
 0 <= w114 <= 1
 0 <= w113 <= 1
 0 <= w112 <= 1
 0 <= w111 <= 1
 0 <= w110 <= 1
 0 <= w104 <= 1
 0 <= w103 <= 1
 0 <= w102 <= 1
 0 <= w101 <= 1
 0 <= w100 <= 1
 0 <= w044 <= 1
 0 <= w043 <= 1
 0 <= w042 <= 1
 0 <= w041 <= 1
 0 <= w040 <= 1
 0 <= w034 <= 1
 0 <= w033 <= 1
 0 <= w032 <= 1
 0 <= w031 <= 1
 0 <= w030 <= 1
 0 <= w024 <= 1
 0 <= w023 <= 1
 0 <= w022 <= 1
 0 <= w021 <= 1
 0 <= w020 <= 1
 0 <= w014 <= 1
 0 <= w013 <= 1
 0 <= w012 <= 1
 0 <= w011 <= 1
 0 <= w010 <= 1
 0 <= w004 <= 1
 0 <= w003 <= 1
 0 <= w002 <= 1
 0 <= w001 <= 1
 0 <= w000 <= 1
 0 <= theta04 <= 1
 0 <= theta03 <= 1
 0 <= theta02 <= 1
 0 <= theta01 <= 1
 0 <= theta00 <= 1
 0 <= theta14 <= 1
 0 <= theta13 <= 1
 0 <= theta12 <= 1
 0 <= theta11 <= 1
 0 <= theta10 <= 1
 0 <= theta24 <= 1
 0 <= theta23 <= 1
 0 <= theta22 <= 1
 0 <= theta21 <= 1
 0 <= theta20 <= 1
 0 <= theta34 <= 1
 0 <= theta33 <= 1
 0 <= theta32 <= 1
 0 <= theta31 <= 1
 0 <= theta30 <= 1
 0 <= x00 <= 1
 0 <= y00 <= 1
 0 <= x01 <= 1
 0 <= y01 <= 1
 0 <= x02 <= 1
 0 <= y02 <= 1
 0 <= x03 <= 1
 0 <= y03 <= 1
 0 <= x04 <= 1
 0 <= y04 <= 1
 0 <= x10 <= 1
 0 <= y10 <= 1
 0 <= x11 <= 1
 0 <= y11 <= 1
 0 <= x12 <= 1
 0 <= y12 <= 1
 0 <= x13 <= 1
 0 <= y13 <= 1
 0 <= x14 <= 1
 0 <= y14 <= 1
 0 <= x20 <= 1
 0 <= y20 <= 1
 0 <= x21 <= 1
 0 <= y21 <= 1
 0 <= x22 <= 1
 0 <= y22 <= 1
 0 <= x23 <= 1
 0 <= y23 <= 1
 0 <= x24 <= 1
 0 <= y24 <= 1
 0 <= x30 <= 1
 0 <= y30 <= 1
 0 <= x31 <= 1
 0 <= y31 <= 1
 0 <= x32 <= 1
 0 <= y32 <= 1
 0 <= x33 <= 1
 0 <= y33 <= 1
 0 <= x34 <= 1
 0 <= y34 <= 1
 0 <= y40 <= 1
 0 <= x40 <= 1
 0 <= y41 <= 1
 0 <= x41 <= 1
 0 <= y42 <= 1
 0 <= x42 <= 1
 0 <= y43 <= 1
 0 <= x43 <= 1
 0 <= y44 <= 1
 0 <= x44 <= 1
 0 <= x50 <= 1
 0 <= y50 <= 1
 0 <= x51 <= 1
 0 <= y51 <= 1
 0 <= x52 <= 1
 0 <= y52 <= 1
 0 <= x53 <= 1
 0 <= y53 <= 1
 0 <= x54 <= 1
 0 <= y54 <= 1
 0 <= y60 <= 1
 0 <= x60 <= 1
 0 <= y61 <= 1
 0 <= x61 <= 1
 0 <= y62 <= 1
 0 <= x62 <= 1
 0 <= y63 <= 1
 0 <= x63 <= 1
 0 <= y64 <= 1
 0 <= x64 <= 1
 0 <= y70 <= 1
 0 <= x70 <= 1
 0 <= y71 <= 1
 0 <= x71 <= 1
 0 <= y72 <= 1
 0 <= x72 <= 1
 0 <= y73 <= 1
 0 <= x73 <= 1
 0 <= y74 <= 1
 0 <= x74 <= 1
 0 <= x80 <= 1
 0 <= y80 <= 1
 0 <= x81 <= 1
 0 <= y81 <= 1
 0 <= x82 <= 1
 0 <= y82 <= 1
 0 <= x83 <= 1
 0 <= y83 <= 1
 0 <= x84 <= 1
 0 <= y84 <= 1
 0 <= y90 <= 1
 0 <= x90 <= 1
 0 <= y91 <= 1
 0 <= x91 <= 1
 0 <= y92 <= 1
 0 <= x92 <= 1
 0 <= y93 <= 1
 0 <= x93 <= 1
 0 <= y94 <= 1
 0 <= x94 <= 1
 0 <= y100 <= 1
 0 <= x100 <= 1
 0 <= y101 <= 1
 0 <= x101 <= 1
 0 <= y102 <= 1
 0 <= x102 <= 1
 0 <= y103 <= 1
 0 <= x103 <= 1
 0 <= y104 <= 1
 0 <= x104 <= 1
 0 <= z0 <= 1
 0 <= z1 <= 1
 0 <= z2 <= 1
 0 <= z3 <= 1
 0 <= z4 <= 1
 0 <= z5 <= 1
 0 <= z6 <= 1
 0 <= z7 <= 1
 0 <= z8 <= 1
 0 <= z9 <= 1
 0 <= z10 <= 1
 0 <= q00 <= 1
 0 <= q10 <= 1
 0 <= q20 <= 1
 0 <= q30 <= 1
 0 <= q40 <= 1
 0 <= q50 <= 1
 0 <= q60 <= 1
 0 <= q70 <= 1
 0 <= q80 <= 1
 0 <= q90 <= 1
 0 <= q100 <= 1
 0 <= q01 <= 1
 0 <= q11 <= 1
 0 <= q21 <= 1
 0 <= q31 <= 1
 0 <= q41 <= 1
 0 <= q51 <= 1
 0 <= q61 <= 1
 0 <= q71 <= 1
 0 <= q81 <= 1
 0 <= q91 <= 1
 0 <= q101 <= 1
 0 <= q02 <= 1
 0 <= q12 <= 1
 0 <= q22 <= 1
 0 <= q32 <= 1
 0 <= q42 <= 1
 0 <= q52 <= 1
 0 <= q62 <= 1
 0 <= q72 <= 1
 0 <= q82 <= 1
 0 <= q92 <= 1
 0 <= q102 <= 1
 0 <= q03 <= 1
 0 <= q13 <= 1
 0 <= q23 <= 1
 0 <= q33 <= 1
 0 <= q43 <= 1
 0 <= q53 <= 1
 0 <= q63 <= 1
 0 <= q73 <= 1
 0 <= q83 <= 1
 0 <= q93 <= 1
 0 <= q103 <= 1
 0 <= q04 <= 1
 0 <= q14 <= 1
 0 <= q24 <= 1
 0 <= q34 <= 1
 0 <= q44 <= 1
 0 <= q54 <= 1
 0 <= q64 <= 1
 0 <= q74 <= 1
 0 <= q84 <= 1
 0 <= q94 <= 1
 0 <= q104 <= 1
 0 <= gamma021 <= 1
 0 <= delta02 <= 1
 0 <= delta21 <= 1
 0 <= delta01 <= 1
 0 <= gamma031 <= 1
 0 <= delta03 <= 1
 0 <= delta31 <= 1
 0 <= gamma012 <= 1
 0 <= delta12 <= 1
 0 <= gamma032 <= 1
 0 <= delta32 <= 1
 0 <= gamma013 <= 1
 0 <= delta13 <= 1
 0 <= gamma023 <= 1
 0 <= delta23 <= 1
 0 <= gamma120 <= 1
 0 <= delta20 <= 1
 0 <= delta10 <= 1
 0 <= gamma130 <= 1
 0 <= delta30 <= 1
 0 <= gamma102 <= 1
 0 <= gamma132 <= 1
 0 <= gamma103 <= 1
 0 <= gamma123 <= 1
 0 <= gamma210 <= 1
 0 <= gamma230 <= 1
 0 <= gamma201 <= 1
 0 <= gamma231 <= 1
 0 <= gamma203 <= 1
 0 <= gamma213 <= 1
 0 <= gamma310 <= 1
 0 <= gamma320 <= 1
 0 <= gamma301 <= 1
 0 <= gamma321 <= 1
 0 <= gamma302 <= 1
 0 <= gamma312 <= 1
 0 <= delta00 <= 1
 0 <= delta11 <= 1
 0 <= delta22 <= 1
 0 <= delta33 <= 1
Generals
 w1044  w1043  w1042  w1041  w1040  w1034  w1033  w1032  w1031  w1030  w1024 
 w1023  w1022  w1021  w1020  w1014  w1013  w1012  w1011  w1010  w1004  w1003 
 w1002  w1001  w1000  w944  w943  w942  w941  w940  w934  w933  w932  w931 
 w930  w924  w923  w922  w921  w920  w914  w913  w912  w911  w910  w904  w903 
 w902  w901  w900  w844  w843  w842  w841  w840  w834  w833  w832  w831  w830 
 w824  w823  w822  w821  w820  w814  w813  w812  w811  w810  w804  w803  w802 
 w801  w800  w744  w743  w742  w741  w740  w734  w733  w732  w731  w730  w724 
 w723  w722  w721  w720  w714  w713  w712  w711  w710  w704  w703  w702  w701 
 w700  w644  w643  w642  w641  w640  w634  w633  w632  w631  w630  w624  w623 
 w622  w621  w620  w614  w613  w612  w611  w610  w604  w603  w602  w601  w600 
 w544  w543  w542  w541  w540  w534  w533  w532  w531  w530  w524  w523  w522 
 w521  w520  w514  w513  w512  w511  w510  w504  w503  w502  w501  w500  w444 
 w443  w442  w441  w440  w434  w433  w432  w431  w430  w424  w423  w422  w421 
 w420  w414  w413  w412  w411  w410  w404  w403  w402  w401  w400  w344  w343 
 w342  w341  w340  w334  w333  w332  w331  w330  w324  w323  w322  w321  w320 
 w314  w313  w312  w311  w310  w304  w303  w302  w301  w300  w244  w243  w242 
 w241  w240  w234  w233  w232  w231  w230  w224  w223  w222  w221  w220  w214 
 w213  w212  w211  w210  w204  w203  w202  w201  w200  w144  w143  w142  w141 
 w140  w134  w133  w132  w131  w130  w124  w123  w122  w121  w120  w114  w113 
 w112  w111  w110  w104  w103  w102  w101  w100  w044  w043  w042  w041  w040 
 w034  w033  w032  w031  w030  w024  w023  w022  w021  w020  w014  w013  w012 
 w011  w010  w004  w003  w002  w001  w000  theta04  theta03  theta02  theta01 
 theta00  theta14  theta13  theta12  theta11  theta10  theta24  theta23 
 theta22  theta21  theta20  theta34  theta33  theta32  theta31  theta30  x00 
 y00  x01  y01  x02  y02  x03  y03  x04  y04  x10  y10  x11  y11  x12  y12 
 x13  y13  x14  y14  x20  y20  x21  y21  x22  y22  x23  y23  x24  y24  x30 
 y30  x31  y31  x32  y32  x33  y33  x34  y34  y40  x40  y41  x41  y42  x42 
 y43  x43  y44  x44  x50  y50  x51  y51  x52  y52  x53  y53  x54  y54  y60 
 x60  y61  x61  y62  x62  y63  x63  y64  x64  y70  x70  y71  x71  y72  x72 
 y73  x73  y74  x74  x80  y80  x81  y81  x82  y82  x83  y83  x84  y84  y90 
 x90  y91  x91  y92  x92  y93  x93  y94  x94  y100  x100  y101  x101  y102 
 x102  y103  x103  y104  x104  z0  z1  z2  z3  z4  z5  z6  z7  z8  z9  z10 
 q00  q10  q20  q30  q40  q50  q60  q70  q80  q90  q100  q01  q11  q21  q31 
 q41  q51  q61  q71  q81  q91  q101  q02  q12  q22  q32  q42  q52  q62  q72 
 q82  q92  q102  q03  q13  q23  q33  q43  q53  q63  q73  q83  q93  q103  q04 
 q14  q24  q34  q44  q54  q64  q74  q84  q94  q104  gamma021  delta02  delta21 
 delta01  gamma031  delta03  delta31  gamma012  delta12  gamma032  delta32 
 gamma013  delta13  gamma023  delta23  gamma120  delta20  delta10  gamma130 
 delta30  gamma102  gamma132  gamma103  gamma123  gamma210  gamma230  gamma201 
 gamma231  gamma203  gamma213  gamma310  gamma320  gamma301  gamma321 
 gamma302  gamma312  delta00  delta11  delta22  delta33 
End
