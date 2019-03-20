% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3645.172972601281799 ; 3650.458075132852628 ];

%-- Principal point:
cc = [ 1741.931987210232819 ; 2297.655400098002701 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.041859310715914 ; -0.191907443773060 ; -0.000126741097195 ; 0.001051689210432 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 22.432865585948676 ; 22.106957872903141 ];

%-- Principal point uncertainty:
cc_error = [ 20.808960229771024 ; 16.876956083151640 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.013101224037165 ; 0.041175571979525 ; 0.001544469968038 ; 0.001773007892575 ; 0.000000000000000 ];

%-- Image size:
nx = 3456;
ny = 4608;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 6;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.868156e+00 ; 2.218608e+00 ; 1.002601e+00 ];
Tc_1  = [ -7.339058e+01 ; -4.500096e+01 ; 2.848369e+02 ];
omc_error_1 = [ 5.909930e-03 ; 3.171371e-03 ; 7.242773e-03 ];
Tc_error_1  = [ 1.642354e+00 ; 1.343653e+00 ; 2.168140e+00 ];

%-- Image #2:
omc_2 = [ 2.110479e+00 ; 2.049187e+00 ; -1.768529e-01 ];
Tc_2  = [ -1.071549e+02 ; -1.362541e+01 ; 4.702704e+02 ];
omc_error_2 = [ 5.787771e-03 ; 5.641220e-03 ; 1.119804e-02 ];
Tc_error_2  = [ 2.685548e+00 ; 2.183025e+00 ; 2.947764e+00 ];

%-- Image #3:
omc_3 = [ 2.002527e+00 ; 2.040731e+00 ; 2.097803e-01 ];
Tc_3  = [ -9.152499e+01 ; -6.141221e+01 ; 2.291640e+02 ];
omc_error_3 = [ 4.113784e-03 ; 3.529701e-03 ; 6.944173e-03 ];
Tc_error_3  = [ 1.332865e+00 ; 1.086955e+00 ; 1.478013e+00 ];

%-- Image #4:
omc_4 = [ 2.196656e+00 ; 2.093918e+00 ; -5.876821e-01 ];
Tc_4  = [ -1.120611e+02 ; -4.276684e+01 ; 3.765981e+02 ];
omc_error_4 = [ 3.244572e-03 ; 4.512587e-03 ; 7.719614e-03 ];
Tc_error_4  = [ 2.105968e+00 ; 1.741174e+00 ; 2.113100e+00 ];

%-- Image #5:
omc_5 = [ 2.006966e+00 ; 2.004116e+00 ; -3.424025e-01 ];
Tc_5  = [ -1.107942e+02 ; -3.525444e+01 ; 3.858975e+02 ];
omc_error_5 = [ 3.774825e-03 ; 4.583064e-03 ; 7.531263e-03 ];
Tc_error_5  = [ 2.188265e+00 ; 1.788906e+00 ; 2.281717e+00 ];

%-- Image #6:
omc_6 = [ 2.217899e+00 ; 2.187116e+00 ; 1.522188e-02 ];
Tc_6  = [ -1.087248e+02 ; -6.422026e+01 ; 3.325033e+02 ];
omc_error_6 = [ 4.064288e-03 ; 3.933554e-03 ; 8.474501e-03 ];
Tc_error_6  = [ 1.918097e+00 ; 1.561686e+00 ; 2.133291e+00 ];

