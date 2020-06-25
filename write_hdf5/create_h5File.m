
% create or load data
% load('rm3_hydroData.mat')
load('./xArchive/rm3_hydroData2.mat')

% create h5 file and write string datasets
h5bem_create('rm3.h5', nBody, nFreq, nDir, bodyNames, scaled, irf, ss);

% write simulation_parameters datasets
h5bem_writeParameters('rm3.h5', wave_dir, depth, w, T, g, rho);

% write each body
h5bem_writeBody('rm3.h5', 1, b1_cb, b1_cg, b1_dispVol, b1_k, b1_reEx, b1_imEx, b1_am, b1_amInf, b1_rd,...
    b1_rd_irf.K, b1_rd_irf.t, b1_rd_ss.it, b1_rd_ss.A, b1_rd_ss.B, b1_rd_ss.C, b1_rd_ss.D); 
h5bem_writeBody('rm3.h5', 2, b2_cb, b2_cg, b2_dispVol, b2_k, b2_reEx, b2_imEx, b2_am, b2_amInf, b2_rd,...
    b2_rd_irf.K, b2_rd_irf.t, b2_rd_ss.it, b2_rd_ss.A, b2_rd_ss.B, b2_rd_ss.C, b2_rd_ss.D); 