%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'Baxter_King';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Baxter_King.log');
M_.exo_names = 'epsi_z';
M_.exo_names_tex = 'epsi\_z';
M_.exo_names_long = 'epsi_z';
M_.exo_names = char(M_.exo_names, 'epsi_gb');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsi\_gb');
M_.exo_names_long = char(M_.exo_names_long, 'epsi_gb');
M_.exo_names = char(M_.exo_names, 'epsi_ib');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsi\_ib');
M_.exo_names_long = char(M_.exo_names_long, 'epsi_ib');
M_.exo_names = char(M_.exo_names, 'epsi_tau');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsi\_tau');
M_.exo_names_long = char(M_.exo_names_long, 'epsi_tau');
M_.endo_names = 'Y_t';
M_.endo_names_tex = 'Y\_t';
M_.endo_names_long = 'Y_t';
M_.endo_names = char(M_.endo_names, 'C_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'C\_t');
M_.endo_names_long = char(M_.endo_names_long, 'C_t');
M_.endo_names = char(M_.endo_names, 'I_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'I\_t');
M_.endo_names_long = char(M_.endo_names_long, 'I_t');
M_.endo_names = char(M_.endo_names, 'GB_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'GB\_t');
M_.endo_names_long = char(M_.endo_names_long, 'GB_t');
M_.endo_names = char(M_.endo_names, 'IB_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'IB\_t');
M_.endo_names_long = char(M_.endo_names_long, 'IB_t');
M_.endo_names = char(M_.endo_names, 'lambda_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambda\_t');
M_.endo_names_long = char(M_.endo_names_long, 'lambda_t');
M_.endo_names = char(M_.endo_names, 'K_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'K\_t');
M_.endo_names_long = char(M_.endo_names_long, 'K_t');
M_.endo_names = char(M_.endo_names, 'KB_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'KB\_t');
M_.endo_names_long = char(M_.endo_names_long, 'KB_t');
M_.endo_names = char(M_.endo_names, 'r_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'r\_t');
M_.endo_names_long = char(M_.endo_names_long, 'r_t');
M_.endo_names = char(M_.endo_names, 'w_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'w\_t');
M_.endo_names_long = char(M_.endo_names_long, 'w_t');
M_.endo_names = char(M_.endo_names, 'tau_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'tau\_t');
M_.endo_names_long = char(M_.endo_names_long, 'tau_t');
M_.endo_names = char(M_.endo_names, 'TR_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'TR\_t');
M_.endo_names_long = char(M_.endo_names_long, 'TR_t');
M_.endo_names = char(M_.endo_names, 'z_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'z\_t');
M_.endo_names_long = char(M_.endo_names_long, 'z_t');
M_.endo_names = char(M_.endo_names, 'N_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'N\_t');
M_.endo_names_long = char(M_.endo_names_long, 'N_t');
M_.endo_names = char(M_.endo_names, 'dY_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dY\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dY_t');
M_.endo_names = char(M_.endo_names, 'dC_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dC\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dC_t');
M_.endo_names = char(M_.endo_names, 'dI_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dI\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dI_t');
M_.endo_names = char(M_.endo_names, 'dw_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dw\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dw_t');
M_.endo_names = char(M_.endo_names, 'dGB_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dGB\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dGB_t');
M_.endo_names = char(M_.endo_names, 'dIB_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dIB\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dIB_t');
M_.endo_names = char(M_.endo_names, 'dN_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dN\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dN_t');
M_.endo_names = char(M_.endo_names, 'dr_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dr\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dr_t');
M_.endo_names = char(M_.endo_names, 'dTR_t');
M_.endo_names_tex = char(M_.endo_names_tex, 'dTR\_t');
M_.endo_names_long = char(M_.endo_names_long, 'dTR_t');
M_.param_names = 'betta';
M_.param_names_tex = 'betta';
M_.param_names_long = 'betta';
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'alphaa');
M_.param_names_tex = char(M_.param_names_tex, 'alphaa');
M_.param_names_long = char(M_.param_names_long, 'alphaa');
M_.param_names = char(M_.param_names, 'theta_l');
M_.param_names_tex = char(M_.param_names_tex, 'theta\_l');
M_.param_names_long = char(M_.param_names_long, 'theta_l');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'rho_GB');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_GB');
M_.param_names_long = char(M_.param_names_long, 'rho_GB');
M_.param_names = char(M_.param_names, 'rho_IB');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_IB');
M_.param_names_long = char(M_.param_names_long, 'rho_IB');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_z');
M_.param_names_long = char(M_.param_names_long, 'rho_z');
M_.param_names = char(M_.param_names, 'rho_tau');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_tau');
M_.param_names_long = char(M_.param_names_long, 'rho_tau');
M_.param_names = char(M_.param_names, 'Y_ts');
M_.param_names_tex = char(M_.param_names_tex, 'Y\_ts');
M_.param_names_long = char(M_.param_names_long, 'Y_ts');
M_.param_names = char(M_.param_names, 'C_ts');
M_.param_names_tex = char(M_.param_names_tex, 'C\_ts');
M_.param_names_long = char(M_.param_names_long, 'C_ts');
M_.param_names = char(M_.param_names, 'I_ts');
M_.param_names_tex = char(M_.param_names_tex, 'I\_ts');
M_.param_names_long = char(M_.param_names_long, 'I_ts');
M_.param_names = char(M_.param_names, 'GB_ts');
M_.param_names_tex = char(M_.param_names_tex, 'GB\_ts');
M_.param_names_long = char(M_.param_names_long, 'GB_ts');
M_.param_names = char(M_.param_names, 'IB_ts');
M_.param_names_tex = char(M_.param_names_tex, 'IB\_ts');
M_.param_names_long = char(M_.param_names_long, 'IB_ts');
M_.param_names = char(M_.param_names, 'lambda_ts');
M_.param_names_tex = char(M_.param_names_tex, 'lambda\_ts');
M_.param_names_long = char(M_.param_names_long, 'lambda_ts');
M_.param_names = char(M_.param_names, 'K_ts');
M_.param_names_tex = char(M_.param_names_tex, 'K\_ts');
M_.param_names_long = char(M_.param_names_long, 'K_ts');
M_.param_names = char(M_.param_names, 'KB_ts');
M_.param_names_tex = char(M_.param_names_tex, 'KB\_ts');
M_.param_names_long = char(M_.param_names_long, 'KB_ts');
M_.param_names = char(M_.param_names, 'r_ts');
M_.param_names_tex = char(M_.param_names_tex, 'r\_ts');
M_.param_names_long = char(M_.param_names_long, 'r_ts');
M_.param_names = char(M_.param_names, 'w_ts');
M_.param_names_tex = char(M_.param_names_tex, 'w\_ts');
M_.param_names_long = char(M_.param_names_long, 'w_ts');
M_.param_names = char(M_.param_names, 'tau_ts');
M_.param_names_tex = char(M_.param_names_tex, 'tau\_ts');
M_.param_names_long = char(M_.param_names_long, 'tau_ts');
M_.param_names = char(M_.param_names, 'TR_ts');
M_.param_names_tex = char(M_.param_names_tex, 'TR\_ts');
M_.param_names_long = char(M_.param_names_long, 'TR_ts');
M_.param_names = char(M_.param_names, 'z_ts');
M_.param_names_tex = char(M_.param_names_tex, 'z\_ts');
M_.param_names_long = char(M_.param_names_long, 'z_ts');
M_.param_names = char(M_.param_names, 'N_ts');
M_.param_names_tex = char(M_.param_names_tex, 'N\_ts');
M_.param_names_long = char(M_.param_names_long, 'N_ts');
M_.param_names = char(M_.param_names, 'sigma_z');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_z');
M_.param_names_long = char(M_.param_names_long, 'sigma_z');
M_.param_names = char(M_.param_names, 'sigma_gb');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_gb');
M_.param_names_long = char(M_.param_names_long, 'sigma_gb');
M_.param_names = char(M_.param_names, 'sigma_ib');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_ib');
M_.param_names_long = char(M_.param_names_long, 'sigma_ib');
M_.param_names = char(M_.param_names, 'sigma_tau');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_tau');
M_.param_names_long = char(M_.param_names_long, 'sigma_tau');
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 23;
M_.param_nbr = 27;
M_.orig_endo_nbr = 23;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('Baxter_King_static');
erase_compiled_function('Baxter_King_dynamic');
M_.lead_lag_incidence = [
 0 7 0;
 0 8 0;
 0 9 0;
 1 10 0;
 2 11 0;
 0 12 30;
 3 13 0;
 4 14 0;
 0 15 31;
 0 16 0;
 5 17 32;
 0 18 0;
 6 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;]';
M_.nstatic = 15;
M_.nfwrd   = 2;
M_.npred   = 5;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 6;
M_.ndynamic   = 8;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(23, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(27, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 70;
M_.NNZDerivatives(2) = 47;
M_.NNZDerivatives(3) = -1;
M_.params( 1 ) = 0.988;
betta = M_.params( 1 );
M_.params( 2 ) = 0.05;
eta = M_.params( 2 );
M_.params( 5 ) = 0.05;
delta = M_.params( 5 );
M_.params( 6 ) = 0.75;
rho_GB = M_.params( 6 );
M_.params( 7 ) = 0.75;
rho_IB = M_.params( 7 );
M_.params( 8 ) = 0.75;
rho_z = M_.params( 8 );
M_.params( 9 ) = 0.75;
rho_tau = M_.params( 9 );
M_.params( 24 ) = 0.01;
sigma_z = M_.params( 24 );
M_.params( 25 ) = 0.01;
sigma_gb = M_.params( 25 );
M_.params( 26 ) = 0.01;
sigma_ib = M_.params( 26 );
M_.params( 27 ) = 0.01;
sigma_tau = M_.params( 27 );
M_.params( 21 ) = 0;
TR_ts = M_.params( 21 );
M_.params( 10 ) = 1;
Y_ts = M_.params( 10 );
M_.params( 13 ) = 0.2*M_.params(10);
GB_ts = M_.params( 13 );
M_.params( 14 ) = M_.params(10)*0.02;
IB_ts = M_.params( 14 );
M_.params( 17 ) = M_.params(14)/M_.params(5);
KB_ts = M_.params( 17 );
M_.params( 23 ) = 0.3333333333333333;
N_ts = M_.params( 23 );
M_.params( 19 ) = 2;
w_ts = M_.params( 19 );
M_.params( 3 ) = 1-M_.params(19)*M_.params(23)/M_.params(10);
alphaa = M_.params( 3 );
M_.params( 20 ) = (M_.params(14)+M_.params(13))/M_.params(10);
tau_ts = M_.params( 20 );
M_.params( 18 ) = (M_.params(5)+1/M_.params(1)-1)/(1-M_.params(20));
r_ts = M_.params( 18 );
M_.params( 16 ) = M_.params(10)*M_.params(3)/M_.params(18);
K_ts = M_.params( 16 );
M_.params( 12 ) = M_.params(5)*M_.params(16);
I_ts = M_.params( 12 );
M_.params( 11 ) = M_.params(10)-(M_.params(14)+M_.params(13)+M_.params(12));
C_ts = M_.params( 11 );
M_.params( 22 ) = M_.params(10)/(M_.params(17)^M_.params(2)*M_.params(16)^M_.params(3)*M_.params(23)^(1-M_.params(3)));
z_ts = M_.params( 22 );
M_.params( 4 ) = M_.params(19)*(1-M_.params(20))/(M_.params(11)/(1-M_.params(23)));
theta_l = M_.params( 4 );
M_.params( 15 ) = 1/M_.params(11);
lambda_ts = M_.params( 15 );
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 1 ) = M_.params(10);
oo_.steady_state( 2 ) = M_.params(11);
oo_.steady_state( 3 ) = M_.params(12);
oo_.steady_state( 4 ) = M_.params(13);
oo_.steady_state( 5 ) = M_.params(14);
oo_.steady_state( 6 ) = M_.params(15);
oo_.steady_state( 7 ) = M_.params(16);
oo_.steady_state( 8 ) = M_.params(17);
oo_.steady_state( 9 ) = M_.params(18);
oo_.steady_state( 10 ) = M_.params(19);
oo_.steady_state( 11 ) = M_.params(20);
oo_.steady_state( 12 ) = M_.params(21);
oo_.steady_state( 13 ) = M_.params(22);
oo_.steady_state( 14 ) = M_.params(23);
oo_.steady_state( 15 ) = 0;
oo_.steady_state( 16 ) = 0;
oo_.steady_state( 17 ) = 0;
oo_.steady_state( 18 ) = 0;
oo_.steady_state( 19 ) = 0;
oo_.steady_state( 20 ) = 0;
oo_.steady_state( 21 ) = 0;
oo_.steady_state( 22 ) = 0;
oo_.steady_state( 23 ) = 0;
if M_.exo_nbr > 0;
	oo_.exo_simul = [ones(M_.maximum_lag,1)*oo_.exo_steady_state'];
end;
if M_.exo_det_nbr > 0;
	oo_.exo_det_simul = [ones(M_.maximum_lag,1)*oo_.exo_det_steady_state'];
end;
resid(1);
steady;
save('Baxter_King_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Baxter_King_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Baxter_King_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Baxter_King_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Baxter_King_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
