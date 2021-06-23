write_codes = true; #sending triggers to the port (I think)
pulse_width = 12; #connected to the port setting
response_matching = simple_matching;
default_font_size=46;
default_font="arial";
default_text_color=0,0,0;
active_buttons=3;
button_codes = 222, 223, 99; #appears when incorrect 
target_button_codes = 242, 243, 99; # appears when correct
default_background_color =180,180,180;
begin;

#arrays with pictures

########all the arrays for the subtraction condition. The first shape is the full shape
#############ang 25 same big###########
array{
	bitmap { filename = "M1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M1_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_M1;	

array{
	bitmap { filename = "M2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M2_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_M2;	

array{
	bitmap { filename = "M3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M3_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_M3;	

array{
	bitmap { filename = "N1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N1_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_N1;	

array{
	bitmap { filename = "N2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N2_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_N2;	

array{
	bitmap { filename = "N3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N3_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_N3;	

array{
	bitmap { filename = "P1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P1_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_P1;	

array{
	bitmap { filename = "P2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P2_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_P2;	

array{
	bitmap { filename = "P3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P3_ang_0.jpg";scale_factor=0.7;};
}ang_0_same_P3;	



######################ang_25_same#########################################
array{
	bitmap { filename = "A1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_A1;	

array{
	bitmap { filename = "A2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_A2;	

array{
	bitmap { filename = "A3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_A3;	

array{
	bitmap { filename = "B1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_B1;	

array{
	bitmap { filename = "B2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_B2;	

array{
	bitmap { filename = "B3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_B3;	

array{
	bitmap { filename = "C1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_C1;	

array{
	bitmap { filename = "C2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_C2;	

array{
	bitmap { filename = "C3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_same_SB_C3;

################################################



######################ang_50_same#########################################
array{
	bitmap { filename = "Y1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Y1;	

array{
	bitmap { filename = "Y2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Y2;	

array{
	bitmap { filename = "Y3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Y3;	

array{
	bitmap { filename = "Z1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Z1;	

array{
	bitmap { filename = "Z2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Z2;	

array{
	bitmap { filename = "Z3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_Z3;	

array{
	bitmap { filename = "X1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_X1;	

array{
	bitmap { filename = "X2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_X2;	

array{
	bitmap { filename = "X3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_same_SB_X3;	

#######################################################
#########same triangle

#############tri 25 same big###########
array{
	bitmap { filename = "M1_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M1_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_M1;	

array{
	bitmap { filename = "M2_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M2_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_M2;	

array{
	bitmap { filename = "M3_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M3_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_M3;	

array{
	bitmap { filename = "N1_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N1_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_N1;	

array{
	bitmap { filename = "N2_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N2_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_N2;	

array{
	bitmap { filename = "N3_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N3_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_N3;	

array{
	bitmap { filename = "P1_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P1_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_P1;	

array{
	bitmap { filename = "P2_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P2_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_P2;	

array{
	bitmap { filename = "P3_tri_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P3_tri_0.jpg";scale_factor=0.7;};
}tri_0_same_P3;	

#############tri 25 same small###########


######################ang_25_same#########################################
array{
	bitmap { filename = "A1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_A1;	

array{
	bitmap { filename = "A2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_A2;	

array{
	bitmap { filename = "A3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_A3;	

array{
	bitmap { filename = "B1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_B1;	

array{
	bitmap { filename = "B2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_B2;	

array{
	bitmap { filename = "B3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_B3;	

array{
	bitmap { filename = "C1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_C1;	

array{
	bitmap { filename = "C2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_C2;	

array{
	bitmap { filename = "C3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_same_SB_C3;

################################################




######################tri_50_same#########################################
array{
	bitmap { filename = "Y1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Y1;	

array{
	bitmap { filename = "Y2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Y2;	

array{
	bitmap { filename = "Y3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Y3;	

array{
	bitmap { filename = "Z1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Z1;	

array{
	bitmap { filename = "Z2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Z2;	

array{
	bitmap { filename = "Z3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_Z3;	

array{
	bitmap { filename = "X1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_X1;	

array{
	bitmap { filename = "X2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_X2;	

array{
	bitmap { filename = "X3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_same_SB_X3;	

###################################diff
#############ang 0 diff big###########
array{
	bitmap { filename = "M1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M1_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_M1;	


array{
	bitmap { filename = "M2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M2_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_M2;	

array{
	bitmap { filename = "M3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "M3_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_M3;	

array{
	bitmap { filename = "N1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N1_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_N1;	

array{
	bitmap { filename = "N2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N2_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_N2;	

array{
	bitmap { filename = "N3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "N3_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_N3;	


array{
	bitmap { filename = "P1_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P1_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_P1;	

array{
	bitmap { filename = "P2_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P2_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_P2;	

array{
	bitmap { filename = "P3_ang_0.jpg";scale_factor=0.7;};
	bitmap { filename = "P3_ang_0_diff.jpg";scale_factor=0.7;};
}ang_0_diff_P3;	
#############ang 25 _diff small###########


######################ang_25_ S diff#########################################
array{
	bitmap { filename = "A1_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_A1;	

array{
	bitmap { filename = "A2_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_A2;	

array{
	bitmap { filename = "A3_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_A3;	

array{
	bitmap { filename = "B1_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_B1;	

array{
	bitmap { filename = "B2_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_B2;	

array{
	bitmap { filename = "B3_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_B3;	

array{
	bitmap { filename = "C1_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_C1;	

array{
	bitmap { filename = "C2_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_C2;	

array{
	bitmap { filename = "C3_ang_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_ang_25_B.jpg";scale_factor=0.7;};
}ang_25_diff_SB_C3;	

################################################
######################ang_25_B diff#########################################
array{
	bitmap { filename = "A1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_A1;	

array{
	bitmap { filename = "A2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_A2;	

array{
	bitmap { filename = "A3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_A3;	

array{
	bitmap { filename = "B1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_B1;	

array{
	bitmap { filename = "B2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_B2;	

array{
	bitmap { filename = "B3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_B3;	

array{
	bitmap { filename = "C1_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_C1;	

array{
	bitmap { filename = "C2_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_C2;	

array{
	bitmap { filename = "C3_ang_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_ang_25_B_diff.jpg";scale_factor=0.7;};
}ang_25_diff_BS_C3;	


######################ang_50_diff S#########################################
array{
	bitmap { filename = "Y1_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Y1;	

array{
	bitmap { filename = "Y2_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Y2;	

array{
	bitmap { filename = "Y3_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Y3;	

array{
	bitmap { filename = "Z1_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Z1;	

array{
	bitmap { filename = "Z2_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Z2;	

array{
	bitmap { filename = "Z3_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_Z3;	

array{
	bitmap { filename = "X1_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_X1;	

array{
	bitmap { filename = "X2_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_X2;	

array{
	bitmap { filename = "X3_ang_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_ang_50_B.jpg";scale_factor=0.7;};
}ang_50_diff_SB_X3;

######################ang_50_diff B#########################################
array{
	bitmap { filename = "Y1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Y1;	

array{
	bitmap { filename = "Y2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Y2;	

array{
	bitmap { filename = "Y3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Y3;	

array{
	bitmap { filename = "Z1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Z1;	

array{
	bitmap { filename = "Z2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Z2;	

array{
	bitmap { filename = "Z3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_Z3;	

array{
	bitmap { filename = "X1_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_X1;	

array{
	bitmap { filename = "X2_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_X2;	

array{
	bitmap { filename = "X3_ang_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_ang_50_B_diff.jpg";scale_factor=0.7;};
}ang_50_diff_BS_X3;	


#######################################################
#########diff triangle

#############tri 25 _diff big###########
array{
	bitmap { filename = "M1_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "M1_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_M1;	

array{
	bitmap { filename = "M2_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "M2_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_M2;	

array{
	bitmap { filename = "M3_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "M3_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_M3;	

array{
	bitmap { filename = "N1_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "N1_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_N1;	

array{
	bitmap { filename = "N2_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "N2_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_N2;	

array{
	bitmap { filename = "N3_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "N3_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_N3;	

array{
	bitmap { filename = "P1_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "P1_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_P1;	

array{
	bitmap { filename = "P2_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "P2_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_P2;	

array{
	bitmap { filename = "P3_tri_0_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "P3_tri_0.jpg";scale_factor=0.7;};
}tri_0_diff_P3;	

#############tri 25 _diff small###########

######################ang_25_diff S#########################################
array{
	bitmap { filename = "A1_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_A1;	

array{
	bitmap { filename = "A2_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_A2;	

array{
	bitmap { filename = "A3_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_A3;	

array{
	bitmap { filename = "B1_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_B1;	

array{
	bitmap { filename = "B2_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_B2;	

array{
	bitmap { filename = "B3_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_B3;	

array{
	bitmap { filename = "C1_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_C1;	

array{
	bitmap { filename = "C2_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_C2;	

array{
	bitmap { filename = "C3_tri_25_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_tri_25_B.jpg";scale_factor=0.7;};
}tri_25_diff_SB_C3;	


######################ang_25_diff B#########################################
array{
	bitmap { filename = "A1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A1_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_A1;	

array{
	bitmap { filename = "A2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A2_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_A2;	

array{
	bitmap { filename = "A3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "A3_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_A3;	

array{
	bitmap { filename = "B1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B1_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_B1;	

array{
	bitmap { filename = "B2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B2_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_B2;	

array{
	bitmap { filename = "B3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "B3_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_B3;	

array{
	bitmap { filename = "C1_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C1_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_C1;	

array{
	bitmap { filename = "C2_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C2_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_C2;	

array{
	bitmap { filename = "C3_tri_25_S.jpg";scale_factor=0.7;};
	bitmap { filename = "C3_tri_25_B_diff.jpg";scale_factor=0.7;};
}tri_25_diff_BS_C3;	

################################################





######################tri_50_diff S#########################################
array{
	bitmap { filename = "Y1_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Y1;	

array{
	bitmap { filename = "Y2_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Y2;	

array{
	bitmap { filename = "Y3_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Y3;	

array{
	bitmap { filename = "Z1_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Z1;	

array{
	bitmap { filename = "Z2_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Z2;	

array{
	bitmap { filename = "Z3_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_Z3;	

array{
	bitmap { filename = "X1_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_X1;	

array{
	bitmap { filename = "X2_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_X2;	

array{
	bitmap { filename = "X3_tri_50_S_diff.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_tri_50_B.jpg";scale_factor=0.7;};
}tri_50_diff_SB_X3;	

######################tri_50_diff B#########################################
array{
	bitmap { filename = "Y1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y1_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Y1;	

array{
	bitmap { filename = "Y2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y2_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Y2;	

array{
	bitmap { filename = "Y3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Y3_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Y3;	

array{
	bitmap { filename = "Z1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z1_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Z1;	

array{
	bitmap { filename = "Z2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z2_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Z2;	

array{
	bitmap { filename = "Z3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "Z3_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_Z3;	


array{
	bitmap { filename = "X1_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X1_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_X1;	

array{
	bitmap { filename = "X2_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X2_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_X2;	

array{
	bitmap { filename = "X3_tri_50_S.jpg";scale_factor=0.7;};
	bitmap { filename = "X3_tri_50_B_diff.jpg";scale_factor=0.7;};
}tri_50_diff_BS_X3;	


##########################################################################################################


###############################################################################################




#start recording trial
trial { #start recording trial - send a code to make biosemi start recode (254)
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=200;
		duration=50;
		};
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=50;
		duration=200;
		port_code = 254;
		}start_recording;
	stimulus_event {
		picture {
		text {caption = " ";}; x = 0; y = 0;
		};
		deltat=200;
		duration=50;
	};
}start_recording_trial; #there is no need for a stop recording code, you just stop biosemy

###########instructions
text{
	caption=" אם הזוויות המסומנות זהות, לחצי על
	F
	אם הזוויות המסומנות שונות לחצי על
	J
	להמשך הקישי רווח";
}instructions_different_right;#instructions_mirror_right

text{
	caption="  אם הזוויות המסומנות זהות, לחצי על
	J
	אם הזוויות המסומנות שונות לחצי על
	F
	להמשך הקישי רווח";
}instructions_different_left;#instructions_mirror_left

trial{
	trial_duration=forever;
	trial_type= specific_response;
	terminator_button = 3;
	stimulus_event{
		picture{
			text instructions_different_left;
				x=0; y=200;
			text {
				caption=" ";
			}example;
			x=0; y=-200;
		}first_instructions;
		time=0;
		response_active=true;
	}inst;
}instruct;

#Arrows
trial{
	stimulus_event{
		picture{
			bitmap{
				filename= "Right.jpg"; scale_factor=0.8;
			};
			x=0; y=80;
			bitmap{
			filename= "Right.jpg"; scale_factor=0.8;
			};
			x=0; y=-80;
			text {
				caption="+";
			};
			x=0; y=0;
		};
		time=0;
		duration=200;
	}Arrows_r_event;
	
}Arrows_right;
 
trial{
	stimulus_event{
		picture{
			bitmap{
				filename= "Left.jpg"; scale_factor=0.8;
			};
			x=0; y=80;
			bitmap{
			filename= "Left.jpg"; scale_factor=0.8;
			};
			x=0; y=-80;
			text {
				caption="+";
			};
			x=0; y=0;
		};
		time=0;
		duration=200;
	}Arrows_l_event;
}Arrows_left; 

#break between blocks

trial{
	trial_duration=forever;
	trial_type= specific_response;
	terminator_button = 3;
	stimulus_event{
		picture {
			text{
				caption="הפסקה";
			};
		x=0; y=0;
		};
		time=0;
		response_active=true;
	}break_stim;
}takebreak;

#between the practice and the begining of the exp

trial{
	trial_duration=forever;
	trial_type= specific_response;
	terminator_button = 3;
	stimulus_event{
		picture {
			text{
				caption="ועכשיו לניסוי";
			};
		x=0; y=0;
		};
		time=0;
		response_active=true;
	}begining_stim;
}exp_start;

############feedback

trial{
	trial_duration=500;
	picture{
		bitmap{
			filename= "V.jpg";
		};
	x=0; y=0;
	};
	time=0;
}correct; 

trial{
	trial_duration=500;
	picture{
		bitmap{
			filename= "X.jpg";
		};
	x=0; y=0;
	};
	time=0;
}mistake; 
		
##########fixation;
picture{
	text{
		caption="+";
	}fix_text;
	x=0; y=0;
}default; 

trial{ 
	stimulus_event{
		picture default;
		deltat= 0;
		duration= 150; 
	}fix1;
	stimulus_event{
		picture default;
		deltat= 150;
		duration=150; 
	}fix2;	
	stimulus_event{
		picture default;
		deltat= 150;
		duration=150; 
	}fix3;	
	stimulus_event{
		picture default;
		deltat= 150;
		duration=150; 
	}fix4;	
	stimulus_event{
		picture default;
		deltat= 150;
		duration=150; 
	}fix5;	
	stimulus_event{
		picture default;
		deltat= 150;
		duration=150; 
	}fix6;	
	#stimulus_event{
	#	picture default;
	#	deltat= 150;
	#	duration=150; 
	#}fix7;	
	stimulus_event{
		picture default;
		deltat= 200;
		duration=200; 
	}fix7;	
	
}first_fixation;

#empty screen
trial{	
	stimulus_event{
		picture {
		};
		deltat=0; 
		response_active=false;
		duration=400;
	}empty_screen;
}empty_trial;
	
 # total of 1250 ms of fixation before the main stimuli is presented

#######main trial#############

picture{
	bitmap{
		filename= "A1_ang_25_B.jpg";
	}part1;
	x=190; y=160; #right side
	bitmap{
		filename= "A1_ang_25_B.jpg";
	}part2;
	x=190; y=-160; #left side
	bitmap{
		filename= "A1_ang_25_B.jpg";
	}part3;
	x=-190; y=160; #right side
	bitmap{
		filename= "A1_ang_25_B.jpg";
	}part4;
	x=-190; y=-160; #left side
	text{
			caption="+";
	}part5;
		x=0; y=0; #fixation during the appearance of the stimuli
}main_picture;


trial{
	trial_type= first_response; 
	all_responses=false; 
	
	stimulus_event{
		picture main_picture;
		time=0;
		duration=response; 
		response_active=true;
	}main_event;
	
	#stimulus_event{
	#	picture default;
	#	time=200; #fixation after the stimulus disapears;  
	#	duration=response;
	#}fixation_event;
	
}main_trial;
 
#jitter
trial{
	stimulus_event{
		picture{
				text{
				caption="+";
				}fix_text2;
			x=0; y=0;
			};
		deltat=0;
		response_active=false;
		duration=800;
	}jitter_event;
}jitter_trial; #an empty screen during the jitter (no fixation)

#goodbye
trial{
	trial_duration=forever;
	trial_type= first_response;
	stimulus_event{
		picture{
			text{
				caption="זהו! נגמר! \n תודה על השתתפותך בניסוי";
			};
		x=0; y=0;
		};
		time=0;
		response_active=true;
	}last_screen;
}goodbye;


#########################################################################   PCL   #########################################################################
###########################################################################################################################################################

begin_pcl;

preset int age; # Age  
preset int gender;  # Gender:(1) male (2) female

#log files
string subject_ID = logfile.subject();
output_file out = new output_file;
out.open( "Similar_triangles_exp1_" + subject_ID + ".txt"); 
out.print( "subjectID\ age\ gender\ buttons\ jitter\ screen_side\ button_press\ Irr_order\ Irr_break\ Irr_size\ Irr_diff\ Irr_same_or_diff\ trial_number\ block_number\ Tar_order\ Tar_break\ Tar_size\ Tar_diff\ Tar_same_or_diff\ ang_or_tri\ rt\ accuracy \n" );  



		
		
output_file indexes = new output_file;
indexes.open( "Indexes_similar_triangles_exp1" + subject_ID + ".txt"); 
#decideing which color is the target for each subject and which buttons will he use


bool different_right=false;
bool different_left=false;
int ID= int(logfile.subject());
if mod(ID ,2)==0  then
		different_right=true;
elseif mod(ID ,2)==1  then
		different_left=true;

end;

#will be used to save information about color and buttons for the log files

int which_buttons=6;
if different_left then
	which_buttons=2;
elseif different_right then
	which_buttons=1;
end;

#jitter options
array <int> jitter[5]={300,350,400,550,500};

#debugging 
bool ok = false;

#stimuli arrays
#ang 25 same
array <bitmap> ang_0_samev1[0][0];
ang_0_samev1.add(ang_0_same_M1);
ang_0_samev1.add(ang_0_same_M2);
ang_0_samev1.add(ang_0_same_M3);
ang_0_samev1.add(ang_0_same_N1);
ang_0_samev1.add(ang_0_same_N2);
ang_0_samev1.add(ang_0_same_N3);
ang_0_samev1.add(ang_0_same_P1);
ang_0_samev1.add(ang_0_same_P2);
ang_0_samev1.add(ang_0_same_P3);

#######ang_50_same
array <bitmap> ang_0_same[0][0][0]; 
ang_0_same.add(ang_0_samev1);
ang_0_same.add(ang_0_samev1);



array <bitmap> ang_25_same_SB[0][0];
ang_25_same_SB.add(ang_25_same_SB_A1);
ang_25_same_SB.add(ang_25_same_SB_A2);
ang_25_same_SB.add(ang_25_same_SB_A3);
ang_25_same_SB.add(ang_25_same_SB_B1);
ang_25_same_SB.add(ang_25_same_SB_B2);
ang_25_same_SB.add(ang_25_same_SB_B3);
ang_25_same_SB.add(ang_25_same_SB_C1);
ang_25_same_SB.add(ang_25_same_SB_C2);
ang_25_same_SB.add(ang_25_same_SB_C3);


#######ang_25_same
array <bitmap> ang_25_same[0][0][0]; 
ang_25_same.add(ang_25_same_SB);
ang_25_same.add(ang_25_same_SB);



array <bitmap> ang_50_same_SB[0][0];
ang_50_same_SB.add(ang_50_same_SB_Z1);
ang_50_same_SB.add(ang_50_same_SB_Z2);
ang_50_same_SB.add(ang_50_same_SB_Z3);
ang_50_same_SB.add(ang_50_same_SB_Y1);
ang_50_same_SB.add(ang_50_same_SB_Y2);
ang_50_same_SB.add(ang_50_same_SB_Y3);
ang_50_same_SB.add(ang_50_same_SB_X1);
ang_50_same_SB.add(ang_50_same_SB_X2);
ang_50_same_SB.add(ang_50_same_SB_X3);

#######ang_50_same
array <bitmap> ang_50_same[0][0][0]; 
ang_50_same.add(ang_50_same_SB);
ang_50_same.add(ang_50_same_SB);

#########################################
#######ang same
array <bitmap> ang_same[0][0][0][0]; 
ang_same.add(ang_0_same);
ang_same.add(ang_25_same);
ang_same.add(ang_50_same);

#tri 25 same
array <bitmap> tri_0_samev1[0][0];
tri_0_samev1.add(tri_0_same_M1);
tri_0_samev1.add(tri_0_same_M2);
tri_0_samev1.add(tri_0_same_M3);
tri_0_samev1.add(tri_0_same_N1);
tri_0_samev1.add(tri_0_same_N2);
tri_0_samev1.add(tri_0_same_N3);
tri_0_samev1.add(tri_0_same_P1);
tri_0_samev1.add(tri_0_same_P2);
tri_0_samev1.add(tri_0_same_P3);

#######tri_50_same
array <bitmap> tri_0_same[0][0][0]; 
tri_0_same.add(tri_0_samev1);
tri_0_same.add(tri_0_samev1);


array <bitmap> tri_25_same_SB[0][0];
tri_25_same_SB.add(tri_25_same_SB_A1);
tri_25_same_SB.add(tri_25_same_SB_A2);
tri_25_same_SB.add(tri_25_same_SB_A3);
tri_25_same_SB.add(tri_25_same_SB_B1);
tri_25_same_SB.add(tri_25_same_SB_B2);
tri_25_same_SB.add(tri_25_same_SB_B3);
tri_25_same_SB.add(tri_25_same_SB_C1);
tri_25_same_SB.add(tri_25_same_SB_C2);
tri_25_same_SB.add(tri_25_same_SB_C3);

#######tri_50_same
array <bitmap> tri_25_same[0][0][0]; 
tri_25_same.add(tri_25_same_SB);
tri_25_same.add(tri_25_same_SB);

array <bitmap> tri_50_same_SB[0][0];
tri_50_same_SB.add(tri_50_same_SB_Z1);
tri_50_same_SB.add(tri_50_same_SB_Z2);
tri_50_same_SB.add(tri_50_same_SB_Z3);
tri_50_same_SB.add(tri_50_same_SB_Y1);
tri_50_same_SB.add(tri_50_same_SB_Y2);
tri_50_same_SB.add(tri_50_same_SB_Y3);
tri_50_same_SB.add(tri_50_same_SB_X1);
tri_50_same_SB.add(tri_50_same_SB_X2);
tri_50_same_SB.add(tri_50_same_SB_X3);

#######tri_50_same
array <bitmap> tri_50_same[0][0][0]; 
tri_50_same.add(tri_50_same_SB);
tri_50_same.add(tri_50_same_SB);

#########################################
#######tri 25 same
array <bitmap> tri_same[0][0][0][0]; 
tri_same.add(tri_0_same);
tri_same.add(tri_25_same);
tri_same.add(tri_50_same);




#####diff
#ang 25 diff
array <bitmap> ang_0_diffv1[0][0];
ang_0_diffv1.add(ang_0_diff_M1);
ang_0_diffv1.add(ang_0_diff_M2);
ang_0_diffv1.add(ang_0_diff_M3);
ang_0_diffv1.add(ang_0_diff_N1);
ang_0_diffv1.add(ang_0_diff_N2);
ang_0_diffv1.add(ang_0_diff_N3);
ang_0_diffv1.add(ang_0_diff_P1);
ang_0_diffv1.add(ang_0_diff_P2);
ang_0_diffv1.add(ang_0_diff_P3);

#######ang 0 diff
array <bitmap> ang_0_diff[0][0][0]; 

ang_0_diff.add(ang_0_diffv1);
ang_0_diff.add(ang_0_diffv1);



array <bitmap> ang_25_diff_SB[0][0];
ang_25_diff_SB.add(ang_25_diff_SB_A1);
ang_25_diff_SB.add(ang_25_diff_SB_A2);
ang_25_diff_SB.add(ang_25_diff_SB_A3);
ang_25_diff_SB.add(ang_25_diff_SB_B1);
ang_25_diff_SB.add(ang_25_diff_SB_B2);
ang_25_diff_SB.add(ang_25_diff_SB_B3);
ang_25_diff_SB.add(ang_25_diff_SB_C1);
ang_25_diff_SB.add(ang_25_diff_SB_C2);
ang_25_diff_SB.add(ang_25_diff_SB_C3);

array <bitmap> ang_25_diff_BS[0][0];
ang_25_diff_BS.add(ang_25_diff_BS_A1);
ang_25_diff_BS.add(ang_25_diff_BS_A2);
ang_25_diff_BS.add(ang_25_diff_BS_A3);
ang_25_diff_BS.add(ang_25_diff_BS_B1);
ang_25_diff_BS.add(ang_25_diff_BS_B2);
ang_25_diff_BS.add(ang_25_diff_BS_B3);
ang_25_diff_BS.add(ang_25_diff_BS_C1);
ang_25_diff_BS.add(ang_25_diff_BS_C2);
ang_25_diff_BS.add(ang_25_diff_BS_C3);

#######ang 25 diff
array <bitmap> ang_25_diff[0][0][0]; 

ang_25_diff.add(ang_25_diff_SB);
ang_25_diff.add(ang_25_diff_BS);


### ang 50 diff
array <bitmap> ang_50_diff_SB[0][0];
ang_50_diff_SB.add(ang_50_diff_SB_Z1);
ang_50_diff_SB.add(ang_50_diff_SB_Z2);
ang_50_diff_SB.add(ang_50_diff_SB_Z3);
ang_50_diff_SB.add(ang_50_diff_SB_Y1);
ang_50_diff_SB.add(ang_50_diff_SB_Y2);
ang_50_diff_SB.add(ang_50_diff_SB_Y3);
ang_50_diff_SB.add(ang_50_diff_SB_X1);
ang_50_diff_SB.add(ang_50_diff_SB_X2);
ang_50_diff_SB.add(ang_50_diff_SB_X3);

array <bitmap> ang_50_diff_BS[0][0];
ang_50_diff_BS.add(ang_50_diff_BS_Z1);
ang_50_diff_BS.add(ang_50_diff_BS_Z2);
ang_50_diff_BS.add(ang_50_diff_BS_Z3);
ang_50_diff_BS.add(ang_50_diff_BS_Y1);
ang_50_diff_BS.add(ang_50_diff_BS_Y2);
ang_50_diff_BS.add(ang_50_diff_BS_Y3);
ang_50_diff_BS.add(ang_50_diff_BS_X1);
ang_50_diff_BS.add(ang_50_diff_BS_X2);
ang_50_diff_BS.add(ang_50_diff_BS_X3);

#######ang 50 diff
array <bitmap> ang_50_diff[0][0][0]; 
ang_50_diff.add(ang_50_diff_SB);
ang_50_diff.add(ang_50_diff_BS);

##################################################
#######tri diff
array <bitmap> ang_diff[0][0][0][0]; 
ang_diff.add(ang_0_diff);
ang_diff.add(ang_25_diff);
ang_diff.add(ang_50_diff);



#tri 25 diff
array <bitmap> tri_0_diffv1[0][0];
tri_0_diffv1.add(tri_0_diff_M1);
tri_0_diffv1.add(tri_0_diff_M2);
tri_0_diffv1.add(tri_0_diff_M3);
tri_0_diffv1.add(tri_0_diff_N1);
tri_0_diffv1.add(tri_0_diff_N2);
tri_0_diffv1.add(tri_0_diff_N3);
tri_0_diffv1.add(tri_0_diff_P1);
tri_0_diffv1.add(tri_0_diff_P2);
tri_0_diffv1.add(tri_0_diff_P3);


#######tri 0 diff
array <bitmap> tri_0_diff[0][0][0]; 
tri_0_diff.add(tri_0_diffv1);
tri_0_diff.add(tri_0_diffv1);



array <bitmap> tri_25_diff_SB[0][0];
tri_25_diff_SB.add(tri_25_diff_SB_A1);
tri_25_diff_SB.add(tri_25_diff_SB_A2);
tri_25_diff_SB.add(tri_25_diff_SB_A3);
tri_25_diff_SB.add(tri_25_diff_SB_B1);
tri_25_diff_SB.add(tri_25_diff_SB_B2);
tri_25_diff_SB.add(tri_25_diff_SB_B3);
tri_25_diff_SB.add(tri_25_diff_SB_C1);
tri_25_diff_SB.add(tri_25_diff_SB_C2);
tri_25_diff_SB.add(tri_25_diff_SB_C3);

array <bitmap> tri_25_diff_BS[0][0];
tri_25_diff_BS.add(tri_25_diff_BS_A1);
tri_25_diff_BS.add(tri_25_diff_BS_A2);
tri_25_diff_BS.add(tri_25_diff_BS_A3);
tri_25_diff_BS.add(tri_25_diff_BS_B1);
tri_25_diff_BS.add(tri_25_diff_BS_B2);
tri_25_diff_BS.add(tri_25_diff_BS_B3);
tri_25_diff_BS.add(tri_25_diff_BS_C1);
tri_25_diff_BS.add(tri_25_diff_BS_C2);
tri_25_diff_BS.add(tri_25_diff_BS_C3);

#######tri 25 diff
array <bitmap> tri_25_diff[0][0][0]; 
tri_25_diff.add(tri_25_diff_SB);
tri_25_diff.add(tri_25_diff_BS);


array <bitmap> tri_50_diff_SB[0][0];
tri_50_diff_SB.add(tri_50_diff_SB_Z1);
tri_50_diff_SB.add(tri_50_diff_SB_Z2);
tri_50_diff_SB.add(tri_50_diff_SB_Z3);
tri_50_diff_SB.add(tri_50_diff_SB_Y1);
tri_50_diff_SB.add(tri_50_diff_SB_Y2);
tri_50_diff_SB.add(tri_50_diff_SB_Y3);
tri_50_diff_SB.add(tri_50_diff_SB_X1);
tri_50_diff_SB.add(tri_50_diff_SB_X2);
tri_50_diff_SB.add(tri_50_diff_SB_X3);


array <bitmap> tri_50_diff_BS[0][0];
tri_50_diff_BS.add(tri_50_diff_BS_Z1);
tri_50_diff_BS.add(tri_50_diff_BS_Z2);
tri_50_diff_BS.add(tri_50_diff_BS_Z3);
tri_50_diff_BS.add(tri_50_diff_BS_Y1);
tri_50_diff_BS.add(tri_50_diff_BS_Y2);
tri_50_diff_BS.add(tri_50_diff_BS_Y3);
tri_50_diff_BS.add(tri_50_diff_BS_X1);
tri_50_diff_BS.add(tri_50_diff_BS_X2);
tri_50_diff_BS.add(tri_50_diff_BS_X3);

#######tri 50 diff
array <bitmap> tri_50_diff[0][0][0]; 
tri_50_diff.add(tri_50_diff_SB);
tri_50_diff.add(tri_50_diff_BS);

############################################
#######tri diff
array <bitmap> tri_diff[0][0][0][0]; 
tri_diff.add(tri_0_diff);
tri_diff.add(tri_25_diff);
tri_diff.add(tri_50_diff);


##################################################################################


array <bitmap> same[0][0][0][0][0]; 
same.add(ang_same);
same.add(tri_same);


array <bitmap> diff[0][0][0][0][0]; 
diff.add(ang_diff);
diff.add(tri_diff);

array <bitmap> which_shape[0][0][0][0][0][0]; 
which_shape.add(same);
which_shape.add(diff);



################################################################################################################################################################
sub the_experiment(int num_of_trials, int block_num) 
begin

		int trials_count=1;
	loop int t=1 until t> num_of_trials
	begin
		
		int side_rand= random(1,2); #choosing the side of the target, 1- right, 2-left
		int same_diff_tar=random(1,2); #1-same, 2-diff
		int same_diff_irr=random(1,2);#1-same, 2-diff
		int ang_or_tri=random(1,2);#determine whether both the target and the irr will be ang or tri. 1-ang, 2- tri
		int scaling_size_tar=random(1,3); #1-0%, 2-25%, 3-50%
		int scaling_size_irr=random(1,3); #1-0%, 2-25%, 3-50%
		int shape_group1_diff_tar=random(1,2);#which group of shapes the target will be from
		int shape_group1_diff_irr=random(1,2);
		int shape_break1_tar=random(1,9); #which break of the shape will be presented for the target
		int shape_break2_irr=random(1,9);
		int a_b_order_tar1=random(1,2);
		int a_b_order_tar2=1;
		if a_b_order_tar1== a_b_order_tar2 then
			a_b_order_tar2=2;
		end;
		
		int a_b_order_irr1=random(1,2);
		int a_b_order_irr2=1;
		if a_b_order_irr1== a_b_order_irr2 then
			a_b_order_irr2=2;
		end;
		
		

		
		if side_rand==1 then #target left side

			main_picture.set_part(1,which_shape[same_diff_tar][ang_or_tri][scaling_size_tar][shape_group1_diff_tar][shape_break1_tar][a_b_order_tar1]);
			main_picture.set_part(2,which_shape[same_diff_tar][ang_or_tri][scaling_size_tar][shape_group1_diff_tar][shape_break1_tar][a_b_order_tar2]);
			main_picture.set_part(3,which_shape[same_diff_irr][ang_or_tri][scaling_size_irr][shape_group1_diff_irr][shape_break2_irr][a_b_order_irr1]);
			main_picture.set_part(4,which_shape[same_diff_irr][ang_or_tri][scaling_size_irr][shape_group1_diff_irr][shape_break2_irr][a_b_order_irr2]);
		elseif side_rand==2 then
			main_picture.set_part(1,which_shape[same_diff_irr][ang_or_tri][scaling_size_irr][shape_group1_diff_irr][shape_break2_irr][a_b_order_irr1]);
			main_picture.set_part(2,which_shape[same_diff_irr][ang_or_tri][scaling_size_irr][shape_group1_diff_irr][shape_break2_irr][a_b_order_irr2]);
			main_picture.set_part(3,which_shape[same_diff_tar][ang_or_tri][scaling_size_tar][shape_group1_diff_tar][shape_break1_tar][a_b_order_tar1]);
			main_picture.set_part(4,which_shape[same_diff_tar][ang_or_tri][scaling_size_tar][shape_group1_diff_tar][shape_break1_tar][a_b_order_tar2]);
		end;
		
		int jitter_index=random(1,5);
		jitter_event.set_duration(jitter[jitter_index]);
		jitter_event.set_port_code(90+scaling_size_tar); 
		
				##########port codes##########
		fix1.set_port_code(trials_count); 
		fix2.set_port_code(140+jitter_index);
		#fix3.set_port_code(150+same_diff_irr);
		fix3.set_port_code(150+shape_group1_diff_tar);
		fix4.set_port_code(160+a_b_order_tar1);
		fix5.set_port_code(170+shape_break1_tar);
		fix6.set_port_code(180+same_diff_tar);
		fix7.set_port_code(100+block_num);
		
		main_event.set_port_code(200+side_rand); 
		
		#out.print(subject_ID + " " + string(age) + " " + string(gender) + " " + string(which_buttons) + " " + string(jitter_index) + " " + string(side_rand) + " " + string(response_manager.last_response())+
		#" " + string(a_b_order_irr1)+ " " + string(shape_break2_irr)+ " " + string(scaling_size_irr)+ " " + string(shape_group1_diff_irr)+ " " + string(same_diff_irr)+ " " + string(trials_count)+ " " + string(block_num)+
		#" " + string(a_b_order_tar1)+ " " + string(shape_break1_tar)+ " " + string(scaling_size_tar)+ " " + string(shape_group1_diff_tar)+ " " + string(same_diff_tar)+ " " + string(last.reaction_time())+ " " + string(acc)+ "\n"); 

		empty_trial.present();
		first_fixation.present();
		
		if side_rand==1 then
			Arrows_r_event.set_port_code(130+ang_or_tri);
			Arrows_right.present();
		else
			Arrows_l_event.set_port_code(130+ang_or_tri);
			Arrows_left.present();
		end;
		
		jitter_trial.present();
		

		

		#what is the button that shouid be identified as the right response	
		int response_i=9;
		if same_diff_tar == 1 && which_buttons == 1 then
			response_i=1;
		elseif same_diff_tar == 2 && which_buttons == 1 then
			response_i=2;
		elseif same_diff_tar == 1 && which_buttons == 2 then
			response_i=2;
		elseif same_diff_tar == 2 && which_buttons == 2 then
			response_i=1;
		end;
		

		
	
		main_event.set_target_button(response_i);
		main_trial.present();
		
		stimulus_data first = stimulus_manager.last_stimulus_data();
		int retention_RT= first.reaction_time();
		stimulus_data last = stimulus_manager.last_stimulus_data();
		int acc=9;
		
		if last.type() == last.HIT then  # The stimulus was a target and was associated with a correct response. 
				acc = 1;
		elseif last.type() == last.INCORRECT then  # The stimulus was a target and was associated with an incorrect response. 
				acc = 0;
		end;
			
			
				#presenting feedback only in the practice ####
		if block_num== 0 then
			if last.type() == last.INCORRECT then
				mistake.present();
			else
				correct.present();
			end;
		end;
		
		
		#saving information in the logfiles
		out.print(subject_ID + " " + string(age) + " " + string(gender) + " " + string(which_buttons) + " " + string(jitter_index) + " " + string(side_rand) + " " + string(response_manager.last_response())+
		" " + string(a_b_order_irr1)+ " " + string(shape_break2_irr)+ " " + string(scaling_size_irr)+ " " + string(shape_group1_diff_irr)+ " " + string(same_diff_irr)+ " " + string(trials_count)+ " " + string(block_num)+
		" " + string(a_b_order_tar1)+ " " + string(shape_break1_tar)+ " " + string(scaling_size_tar)+ " " + string(shape_group1_diff_tar)+ " " + string(same_diff_tar)+ " " + string(ang_or_tri)+ " "+ string(last.reaction_time())+ " " + string(acc)+ "\n"); 

		
		trials_count=trials_count+1;
		t=t+1;
end;



end;




		

#end of experiment sub
##########################################################################################
##instructions##



###################the experiment###################
####################################################



######start recording
start_recording_trial.present();


 #(int num_of_trials, int block_num, int cond) 
int practice_trials=20; #should be 20###############################
int block_trials=2; #72


int block_n=0;


inst.set_target_button(3);
if different_right then #changing the buttons instructions according to the participant number
	first_instructions.set_part(1,instructions_different_right);
end;
instruct.present();





the_experiment(practice_trials,block_n); 



begining_stim.set_target_button(3);
exp_start.present();
			
			
block_n=block_n+1;
loop int b=1 until b>15 ######change according to number of blocks
begin
	if b>1 then
		break_stim.set_target_button(3);
		takebreak.present();
	end;
	
	
	
	the_experiment(block_trials,block_n);
	b=b+1;
	###########add break screen
	block_n=block_n+1;
end;

goodbye.present();
last_screen.set_target_button(3);

#The END#


