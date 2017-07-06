\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Minimize
 obj: w244 + w243 + w242 + w241 + w240 + w234 + w233 + w232 + w231 + w230
      + w224 + w223 + w222 + w221 + w220 + w214 + w213 + w212 + w211 + w210
      + w204 + w203 + w202 + w201 + w200 + w144 + w143 + w142 + w141 + w140
      + w134 + w133 + w132 + w131 + w130 + w124 + w123 + w122 + w121 + w120
      + w114 + w113 + w112 + w111 + w110 + w104 + w103 + w102 + w101 + w100
      + w044 + w043 + w042 + w041 + w040 + w034 + w033 + w032 + w031 + w030
      + w024 + w023 + w022 + w021 + w020 + w014 + w013 + w012 + w011 + w010
      + w004 + w003 + w002 + w001 + w000
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
 CapacityConstraints_Node0#34:   theta00 + theta10 + theta20 + theta30 <= 1
 CapacityConstraints_Node1#35:   theta01 + theta11 + theta21 + theta31 <= 1
 CapacityConstraints_Node2#36:   theta02 + theta12 + theta22 + theta32 <= 1
 CapacityConstraints_Node3#37:   theta03 + theta13 + theta23 + theta33 <= 1
 CapacityConstraints_Node4#38:   theta04 + theta14 + theta24 + theta34 <= 1
 IloC39#39:                      x00 - y00 + x01 - y01 + x02 - y02 + x03 - y03
                                 + x04 - y04  = 0
 LinkPlacementConstraint0#40:    - 0.5 x00 - 0.5 y00 - 0.5 x01 - 0.5 y01
                                 - 0.5 x02 - 0.5 y02 - 0.5 x03 - 0.5 y03
                                 - 0.5 x04 - 0.5 y04 + z0 <= 0
 IloC41#41:                      x10 - y10 + x11 - y11 + x12 - y12 + x13 - y13
                                 + x14 - y14  = 0
 LinkPlacementConstraint1#42:    - 0.5 x10 - 0.5 y10 - 0.5 x11 - 0.5 y11
                                 - 0.5 x12 - 0.5 y12 - 0.5 x13 - 0.5 y13
                                 - 0.5 x14 - 0.5 y14 + z1 <= 0
 IloC43#43:                      x20 - y20 + x21 - y21 + x22 - y22 + x23 - y23
                                 + x24 - y24  = 0
 LinkPlacementConstraint2#44:    - 0.5 x20 - 0.5 y20 - 0.5 x21 - 0.5 y21
                                 - 0.5 x22 - 0.5 y22 - 0.5 x23 - 0.5 y23
                                 - 0.5 x24 - 0.5 y24 + z2 <= 0
 IloC45#45:                      z0 + z1 + z2  = 3
 IloC46#46:                      w010 + w001 <= 1
 IloC47#47:                      w020 + w002 <= 1
 FlowCons30_0#48:                - w020 - w010 + w002 + w001  = 0
 IloC49#49:                      w010 + w001 <= 1
 IloC50#50:                      w021 + w012 <= 1
 FlowCons30_1#51:                - w021 + w012 + w010 - w001  = 0
 IloC52#52:                      w020 + w002 <= 1
 IloC53#53:                      w021 + w012 <= 1
 IloC54#54:                      w032 + w023 <= 1
 FlowCons30_2#55:                - w032 + w023 + w021 + w020 - w012 - w002  = 0
 IloC56#56:                      w032 + w023 <= 1
 IloC57#57:                      w043 + w034 <= 1
 FlowCons30_3#58:                - w043 + w034 + w032 - w023  = 0
 IloC59#59:                      w043 + w034 <= 1
 FlowCons30_4#60:                w043 - w034  = 0
 IloC61#61:                      w110 + w101 <= 1
 IloC62#62:                      w120 + w102 <= 1
 FlowCons31_0#63:                - w120 - w110 + w102 + w101  = 0
 IloC64#64:                      w110 + w101 <= 1
 IloC65#65:                      w121 + w112 <= 1
 FlowCons31_1#66:                - w121 + w112 + w110 - w101  = 0
 IloC67#67:                      w120 + w102 <= 1
 IloC68#68:                      w121 + w112 <= 1
 IloC69#69:                      w132 + w123 <= 1
 FlowCons31_2#70:                - w132 + w123 + w121 + w120 - w112 - w102  = 0
 IloC71#71:                      w132 + w123 <= 1
 IloC72#72:                      w143 + w134 <= 1
 FlowCons31_3#73:                - w143 + w134 + w132 - w123  = 0
 IloC74#74:                      w143 + w134 <= 1
 FlowCons31_4#75:                w143 - w134  = 0
 IloC76#76:                      w210 + w201 <= 1
 IloC77#77:                      w220 + w202 <= 1
 FlowCons32_0#78:                - w220 - w210 + w202 + w201  = 0
 IloC79#79:                      w210 + w201 <= 1
 IloC80#80:                      w221 + w212 <= 1
 FlowCons32_1#81:                - w221 + w212 + w210 - w201  = 0
 IloC82#82:                      w220 + w202 <= 1
 IloC83#83:                      w221 + w212 <= 1
 IloC84#84:                      w232 + w223 <= 1
 FlowCons32_2#85:                - w232 + w223 + w221 + w220 - w212 - w202  = 0
 IloC86#86:                      w232 + w223 <= 1
 IloC87#87:                      w243 + w234 <= 1
 FlowCons32_3#88:                - w243 + w234 + w232 - w223  = 0
 IloC89#89:                      w243 + w234 <= 1
 FlowCons32_4#90:                w243 - w234  = 0
 A_single_VLink_originating_from_NF0#91: z0 <= 1
 A_single_VLink_destined_to_NF0#92: <= 1
 A_single_VLink_originating_from_NF1#93: z1 <= 1
 A_single_VLink_destined_to_NF1#94: z0 <= 1
 A_single_VLink_originating_from_NF2#95: z2 <= 1
 A_single_VLink_destined_to_NF2#96: z1 <= 1
 A_single_VLink_originating_from_NF3#97: <= 1
 A_single_VLink_destined_to_NF3#98: z2 <= 1
 min_01#99:                      - w010 - w001 + c01 <= 0
 min_01#100:                     - w110 - w101 + c01 <= 0
 min_01#101:                     - w210 - w201 + c01 <= 0
 LinkCapacity01#102:             w210 + w201 + w110 + w101 + w010 + w001 - c01
                                 <= 0
 min_02#103:                     - w020 - w002 + c02 <= 0
 min_02#104:                     - w120 - w102 + c02 <= 0
 min_02#105:                     - w220 - w202 + c02 <= 0
 LinkCapacity02#106:             w220 + w202 + w120 + w102 + w020 + w002 - c02
                                 <= 0
 min_12#107:                     - w021 - w012 + c12 <= 0
 min_12#108:                     - w121 - w112 + c12 <= 0
 min_12#109:                     - w221 - w212 + c12 <= 0
 LinkCapacity12#110:             w221 + w212 + w121 + w112 + w021 + w012 - c12
                                 <= 0
 min_23#111:                     - w032 - w023 + c23 <= 0
 min_23#112:                     - w132 - w123 + c23 <= 0
 min_23#113:                     - w232 - w223 + c23 <= 0
 LinkCapacity23#114:             w232 + w223 + w132 + w123 + w032 + w023 - c23
                                 <= 0
 min_34#115:                     - w043 - w034 + c34 <= 0
 min_34#116:                     - w143 - w134 + c34 <= 0
 min_34#117:                     - w243 - w234 + c34 <= 0
 LinkCapacity34#118:             w243 + w234 + w143 + w134 + w043 + w034 - c34
                                 <= 0
Bounds
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
 0 <= z0 <= 1
 0 <= z1 <= 1
 0 <= z2 <= 1
 0 <= c01 <= 1
 0 <= c02 <= 1
 0 <= c12 <= 1
 0 <= c23 <= 1
 0 <= c34 <= 1
End
