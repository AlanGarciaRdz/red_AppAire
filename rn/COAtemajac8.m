function [Y,Xf,Af] = COAtemajac8(X,~,~)
%COATEMAJAC8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:23.
% 
% [Y] = COAtemajac8(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.4348330074301805;2.5094582406569139;-1.2305538018724254;0.22794799153337331;-1.3012641441249981;-2.8802258292472849;-1.3545803547814745;-1.8257317692872892;-1.8362628509907988;0.89272241553700238;2.113229764388409;-2.6307601745575759];
IW1_1 = [-0.15679053283122682 -4.0415986318256278 2.3400031627826179 2.1971388856811216 -0.081895232302091031 -0.4606871872375769 -1.2534669691066391 -0.63022543815287901 0.083133889487179188 -4.2934019241505572;-2.2141400958684598 -1.8612922281047743 -0.26309399004918943 -0.64274937658376596 -0.16034301329594339 0.10073421171392714 0.66612159811729543 0.23857801951062974 0.13115530770961206 -0.16143115370299138;1.7165132341589715 -2.7526276600279704 3.1800575942355844 0.51885428187510507 -1.5393234544818288 -0.94534667475661938 0.13945518251845224 0.7839922675054537 0.51839570622115483 0.46606390122817992;-0.74394346057751037 -0.060116188858047717 0.011916351406667462 -0.85948682966296619 -0.29008637737514764 -0.24280372088630256 0.86783359126823201 -0.76963696181422225 0.40731407694506216 -0.61246623300931602;0.36750737994381533 -0.64112646795136707 -0.7070490974214384 -0.31961328062087174 0.025001254434980854 -0.44779947621834476 -0.19486629581883075 -1.7203879770270099 -0.88865786948693537 -0.34481616051139646;-0.23968089088674821 -4.2439900017784771 0.7470661485119704 -0.16451963301855371 0.25624418208945804 -0.1987379673667882 0.12005092265379236 0.54226526064987524 0.39459386688861942 -0.12913602066271085;-0.25599557349361141 0.50561754886808397 -2.4455751941072275 -1.0347369711040861 1.2053693635446234 -0.5752151889827658 1.3042895381766111 -0.30566609686186552 0.14564310199722047 1.5246976971388508;0.094335340466499232 -0.90158576465112872 -0.016460198734644618 -2.4666633134802316 0.98154476453335038 1.3465208356128819 -0.91240142874864405 -0.12657356788353413 -1.4982025627226196 -0.1509950517300423;-0.45081802942614385 -0.74763687553966296 -1.3407842090992255 -0.37901545098146688 0.10630332298301925 -0.7917227898388649 -0.036731267431574982 -2.3078975454959307 -0.85961879714271705 -0.45398589864417804;0.66796770505398717 -2.5389610006244476 0.16132932524416846 -0.42808596843783175 -0.022316923074467032 0.16310082125119996 0.03738398154071778 0.45017162265833327 0.62541168918092582 0.042752102148930451;0.58857568764671053 -3.1807311497054691 -0.65193153064119858 -0.81786482436225738 0.7471162415234871 0.077418334045524215 0.44809750628344769 1.1075082725362959 1.0043560494093475 1.5810481824901621;-1.5290886936060906 -0.83882948244234035 -1.4109244091385251 -1.1510540468029371 0.64195257626805935 -0.11294210321481596 0.45457488352312847 -0.11297542830289864 -1.2552461251630602 0.40670657118710174];

% Layer 2
b2 = [1.9792442396693126;3.2226323066744058;4.8169873975619089;0.26567543364762347;2.4134212937143018;-0.13564280639376061;-0.68107538622725916;1.8792441361778505;-1.5730102989203056;-3.1851032135897119;0.20655392420150703;0.90061617414455886];
LW2_1 = [-0.20694420905810246 1.3103122289134315 0.22634270336573389 -1.9429613482288 3.1059749798498721 -1.2859590372440441 0.97335125493983743 0.38272972236829678 -1.5942225604844336 2.8142432658412173 -1.4807037339042297 -1.26733367149848;-0.11393860501625346 -0.24842668494131601 -0.44701144041883223 -0.29212642707458214 -1.7567714765033371 0.47413464810211392 -0.14176974761737962 0.21608262853918922 1.7903128146913125 -1.6854976412732963 -0.021062157180945382 -0.28402918208943584;-2.4977728818584257 -2.8488468077989264 -2.5557180284777372 -1.838501893034316 2.311635930995863 1.4974481584996526 0.95405886526103589 -0.2869872593204385 0.825623470191029 0.46233644542229546 -0.88760715026369696 1.4596311605802927;0.44150554970048111 -0.95005999107658168 0.44927823212867118 1.0112999078055402 -2.602236859872852 -1.0354500192328906 1.9667280446391673 -0.2389642867414688 1.8916126502166182 2.2944205994089173 -1.9798117914015843 -0.96413783194150948;0.040090246984286496 -0.30722542511648476 -0.39180998411967621 -0.24447068323181242 -1.6793663232567679 0.34564283477460839 -0.0093557086494973213 0.20247156381216933 1.7167839382742225 -0.82747713582571536 -0.20279895684673854 -0.27940709519463519;0.22585359797670765 -1.4102267822242016 -0.33388039892292132 1.0718201793574291 2.7601973201642362 0.795605500426248 0.10369000840666359 -1.0556959293676162 -1.5485890159969249 -0.087648274707467777 -0.8612929516832929 -0.54360965944120399;-0.7070677896416272 1.5923091076444342 -0.2564875304910601 0.070522911588539572 -0.36714341414330787 0.63237469292114845 0.37607696129607487 1.04447451494009 0.41627632921863233 0.83868892974395259 0.26986322485066561 -0.98214188792652579;0.43294979282517354 -2.3087228871015948 -0.31131235851343397 0.0067532450653004922 -0.84129865427690664 0.31320774117611611 0.74359316857343849 0.25752098595107181 0.8378679275541977 1.2471246951983619 -0.12277721161779084 -0.40868174737426716;-0.41739445466172881 2.0227125082653741 0.31678673240958244 -0.0072613481988297104 1.0883428468244527 -0.25477754602345615 -0.72840673042871518 -0.24640123386365753 -1.129958129028418 -1.1069073136658929 0.1870222289628348 0.48017082519656501;-1.6639157390992116 -2.013558046138296 -0.30351477257071924 -0.5639735564969508 2.9661420744671996 1.2045964839755217 -0.0814957977203149 -0.2791099338302262 -1.1876762060406716 1.2211987898264323 -1.9819900029302671 -4.5209804837134531;0.46710644055682182 -1.2018857570163923 0.55139915251837601 -0.55467510330891856 -0.8268460233716175 -0.81299743344098951 -0.16967039873442025 -0.0061973644218704929 -0.48411215086841891 -0.35481278004837424 -0.52937478140237837 0.053683116722945984;0.24600451232384146 4.1117905471362679 -0.38111448585269703 -1.3859206662813148 -1.0837222204073764 0.88499693252170819 -1.9772853222150744 -0.58271652064772028 0.079217267005074643 -2.9275156956626427 0.1894399062697959 1.6339075712186564];

% Layer 3
b3 = 0.039934505443043264;
LW3_2 = [-0.26589862833494743 3.4558874708831175 0.047266354854412343 -0.11509579842043036 -4.2568188166850458 0.34450529798986101 0.22152719190704354 -2.2130090853587459 -2.5094341114127157 -0.18064762703126619 0.27759308904276403 0.16356990589087592];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.201288244766506;
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