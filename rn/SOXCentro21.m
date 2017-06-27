function [Y,Xf,Af] = SOXCentro21(X,~,~)
%SOXCENTRO21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:30.
% 
% [Y] = SOXCentro21(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 11xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;45.4545454545455;0.00627943485086342;0.132450331125828;27.7777777777778;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.425433259238138;2.6774368718050652;-0.025840053257737951;-1.676226519371472;-1.1829546179920565;0.16378587121378582;0.89250775695913886;1.4695740340047874;4.2885753558359214;0.38485499657749067];
IW1_1 = [-0.29162126581140696 -0.36436408704421275 -0.0040226484461234292 0.55387187750468603 0.34259132756768357 0.21956148081777685 0.74370007055992304 -0.50120209287350537 0.12422290932234943 2.6382110367196292 -3.2289185290382356;0.11060101613298437 0.23632668281942373 1.0577242417588899 -0.31474392955394648 2.3637696712357572 0.32299944190029428 1.512641962579131 -0.081843310284765769 -0.51208824015078758 -2.7424990685417181 0.52281020191683747;-1.3131984249755644 -0.036438190309274573 -0.44283790190684408 0.01337509142095239 -1.463557065081845 1.8924278401605841 3.0012347767573537 -0.44137413272920267 0.34027837222000074 -2.249330524035686 -0.60182303680744276;5.7281091656195038 -0.20233970430193632 0.35928154446037791 -0.13603808652919605 0.047590902970439733 -0.25972368095086856 0.27780555416581831 0.086458696932790971 -0.63983548333117357 3.7751234282210326 -2.0027134227492835;0.82999848188917613 0.99805355099765536 -0.8955328651700738 -0.25981084328132309 0.47862812359386964 0.10165749480213339 -0.79946106236174874 -0.020070534131102078 0.012690354780700602 1.9096686925567825 0.012657548966707908;0.49561879970880351 -2.6275625051387257 -0.22261550604160399 0.11847582651710317 -0.72948210532298741 0.1185942102720465 -0.024413174504045811 -0.15711750252483001 0.2015172246607978 0.91803020213310849 -1.2846207955681965;2.0674932942396125 0.37648849962235176 -0.7584281003755835 0.019946995346996614 -0.039531821092863635 0.12064161698189899 1.4356251464552165 -0.030987963279170083 -0.17787318624429424 -3.2630054853400061 2.344418260507374;0.12147842350386925 0.15337337814058588 0.074566300899918669 0.1036642255200164 0.35408851775007177 -0.57366428634566202 -0.82748860652549472 0.27083878990815391 0.17257424241161096 2.4372021348540058 -0.10383846467619749;-0.1793977141908481 -0.74701460910533568 -0.16687646766459599 -0.11031060195842628 0.31913971797276369 0.69474929947551489 0.59213876369342222 -0.20605299530008597 0.039464723165142275 1.0757631166502604 0.59960059434297031;0.47256934040255172 -0.070059464753730399 -0.26396978107281466 1.0844307385218297 -0.053761614731577687 0.3883320052582323 1.0935591006500349 -0.48347206667931364 0.24224390679203972 -0.0040699387038379414 -1.6084932933145011];

% Layer 2
b2 = [-0.40782566457331793;-2.4805657586415979;0.40111404973104903;0.34467473995653763;0.60982578004664656;-2.1395207490403858;0.1842213877549212;1.7661057670969822;-1.7672751901750021;1.9187777030465931];
LW2_1 = [-1.0720239064188248 0.69833138324975397 -0.7890747246124773 -1.7487972884516825 0.099092249545227357 -0.46525964557464428 -1.9190660525162531 -0.19063741967165854 1.4235862772753851 1.1893879826984186;0.98182557087750477 0.32555094494588943 0.093328048038690048 -0.15298533043116694 1.1616654966899271 -0.22197304647382418 -0.88712874471373737 -1.6953851776977535 -0.67658168531077456 0.71312782700980848;-0.92708311704009538 0.30317409896287545 -0.32641799118804649 1.2438049368166852 1.7193494239141507 0.33377354890953603 -0.10591439999013098 -0.7001737511385544 -1.7507295015060913 0.82864489057239943;1.4720286527732043 -2.6486893881106024 0.053235973039090889 1.3726410834443434 -1.4165102306565596 0.094711636831194546 2.4270714653854868 -1.9842199935627758 -0.71917939729853009 -1.7003926386105535;0.14401827451921209 0.57785224792170031 -0.17361705854887433 -0.93438830731088718 -1.3055902118442175 -1.4520801461966839 -2.2318520492366734 0.64897137315051778 0.61981924071120076 0.29147792554438312;-2.0349404702873639 0.31191091950603711 -0.9885574500997063 -1.8878472150076182 2.8365419098854061 2.0450843442056352 1.300401022001175 -0.96424994317655055 -0.021884238563482372 1.6115969696438162;0.021104389882079314 1.2259523678491107 0.21147042664583021 0.018644521651411696 -0.37949745566843818 0.22469186458090987 0.17122168892550382 2.0344917678706791 1.5078324484193395 -0.30255450252791705;0.61377053038413987 0.22582219342061713 0.2024350612234429 -2.8191994824512192 -1.0871461008534946 1.1866120259512409 0.05373274936298867 0.33679422523276237 -0.63596542199124595 -0.92643614481071357;0.1082858686398156 0.18747563160151898 0.11089659144332781 1.5278148521900452 -0.5649589439020315 -1.9891257453890858 -0.15418060401610142 0.97279646354197014 -1.2756774967754783 0.69644643067033596;0.74221068162330872 1.4380080416617427 -0.63001003443142967 -0.0067109188044598787 -0.62303618155556895 0.13609895774266181 0.27288681513124918 1.1999654642974298 -0.69139802737314615 -1.4511867988342184];

% Layer 3
b3 = 0.62833257397605102;
LW3_2 = [-0.8244887048249554 -0.42100143099948117 0.43212873639882593 -0.11429141790994804 0.71751085598741737 0.49982182541084719 -2.3062270698702609 0.29042768116630285 -0.40724584237093403 0.47599581170397931];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
y1_step1_xoffset = 0;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = tansig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = repmat(b3,1,Q) + LW3_2*a2;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a3,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(3,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
x = bsxfun(@minus,y,settings_ymin);
x = bsxfun(@rdivide,x,settings_gain);
x = bsxfun(@plus,x,settings_xoffset);
end
