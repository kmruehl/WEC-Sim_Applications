
% load('hydroData.mat', 'T', 'w', 'bodyNames','nFreq','nBody','scaled','depth','nDir','wave_dir');
% nDir = 0;
% wave_dir =0;

load('hydroData.mat', 'bodyNames','scaled');
nBody = 2;

load('RM3_matlabWorkspace.mat')
depth = waves.waterDepth;
wave_dir = waves.waveDir;
nDir = 1;
nFreq = 260;
w = body(1).hydroData.simulation_parameters.w;
T = body(1).hydroData.simulation_parameters.T;
clearvars body constraint output simu waves pto

load('rm3_hydroData.mat');
b1_cb = b1.properties.cb;
b1_cg = b1.properties.cg;
b1_dispVol = b1.properties.disp_vol;
b1_k = b1.hydro_coeffs.linear_restoring_stiffness ;
b1_reEx = b1.hydro_coeffs.excitation.re;
b1_imEx = b1.hydro_coeffs.excitation.im;
b1_am = b1.hydro_coeffs.added_mass.all;
b1_am2 = b1.hydro_coeffs.added_mass.all;
b1_amInf = b1.hydro_coeffs.added_mass.inf_freq;
b1_rd = b1.hydro_coeffs.radiation_damping.all;
b1_rd_irf = b1.hydro_coeffs.radiation_damping.impulse_response_fun;
b1_rd_ss = b1.hydro_coeffs.radiation_damping.state_space;

b2_cb = b2.properties.cb;
b2_cg = b2.properties.cg;
b2_dispVol = b2.properties.disp_vol;
b2_k = b2.hydro_coeffs.linear_restoring_stiffness ;
b2_reEx = b2.hydro_coeffs.excitation.re;
b2_imEx = b2.hydro_coeffs.excitation.im;
b2_am = b2.hydro_coeffs.added_mass.all;
b2_amInf = b2.hydro_coeffs.added_mass.inf_freq;
b2_rd = b2.hydro_coeffs.radiation_damping.all;
b2_rd_irf = b2.hydro_coeffs.radiation_damping.impulse_response_fun;
b2_rd_ss = b2.hydro_coeffs.radiation_damping.state_space;
clearvars b1 b2

g = 9.81;
rho = 1000;
irf = 1001;
ss = 10;

save('rm3_hydroData2.mat');
