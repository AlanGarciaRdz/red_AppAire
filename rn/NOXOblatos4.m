function [Y,Xf,Af] = NOXOblatos4(X,~,~)
%NOXOBLATOS4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:31.
% 
% [Y] = NOXOblatos4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;-10;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;4.05679513184584;0.195790504160548;0.00618238021638331;117.647058823529;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.20575035550647375;-1.0678330461077818;2.3518574504063285;2.289459166417668;-1.9596718797841521;3.0208069362583809;3.4632198061602062;-1.6147904407209679;0.78117598895157614;1.2158803296632352;2.3989498503947342];
IW1_1 = [1.5270398045477456 -0.96713300236228383 1.6379795157153136 -1.8918851951286499 0.081405344363729301 1.0097155736068189 1.2876217053066146 1.4713265567785954;0.15232608019072513 3.0246195797256945 -1.8649430114498045 0.52679863419089468 -0.0020495966104473705 0.4695837462414883 0.31695770744451446 0.4774020135435012;-1.8788433522899464 -0.54441332363404926 0.52779427871014217 1.4806181479454705 -0.79633981769569884 0.04242841748093349 -0.68893674654611392 -0.91900093516469872;-0.064616504460630331 4.370845626686001 0.083259502561270737 -0.3851753678338023 -0.35097468350439442 -0.47213670634165411 0.33014863875979511 0.032394405889719237;0.47963900119711272 1.5502431481842489 -4.2638673078268914 -1.2974998537277651 -0.59007193985059392 -0.73535993803969724 1.2090567031086557 1.2368977708613342;0.50025843352974153 5.490405038211188 -2.0769960719248486 0.81674513273017701 0.26531251215703655 0.42359935840778457 -0.070258002663682068 -0.098111990882278857;-2.2203739290830309 2.4972078280818057 3.972796394925612 -4.4389266916901864 -3.4018695261378178 -0.67985938908084464 0.5979761768234273 -0.0049745778037944364;-1.8465778623760178 0.70437039614527597 2.8074312979267657 -0.030190494199148092 -0.31272983514422792 0.36578392458116332 -0.91145742926298012 -2.2647350750856372;1.8785484000246699 -1.6856900134863515 -0.9474941495601763 -1.1191509217204008 -0.0096517046057193953 -0.54487167504263634 0.36249136569424623 0.026952593691839503;5.813634691798379 -0.49062127250691373 -0.78183343568830088 0.015060689601990057 -3.3163387528949673 0.91172855973543288 1.4642945419391982 1.6183477483701236;-1.2472141340950256 1.1035771212390255 0.96731626191840769 0.62166961394092879 0.14168902039522632 -0.22426092761083738 -0.97619677426035245 -1.461394937284922];

% Layer 2
b2 = [2.1333171077132316;-1.9117176492955672;-1.6054723418292542;1.5483049819871229;-2.4816989046233076;0.83575372970099859;0.28129113978304088;1.551862660146242;-0.56429394260039034;2.3744308553830615;-2.1322642998460104];
LW2_1 = [-0.95550257473310984 0.27121009990814982 -0.09392050815496214 -0.53043713513221957 0.53169483411877927 0.68191785540192529 -0.42869681020070449 -0.14814996666739721 0.53996209098367198 -0.50778503237853934 0.45786671737829326;0.73206162105657957 -0.40779119362581201 1.4169955981874069 -2.628643023440131 0.75434413960000024 2.1891881489128773 0.46749998491928985 1.1645939111524306 -0.54891614012272449 0.43218681304072198 -0.57855726881369129;-0.39864021353092333 -0.52311114852384921 0.78384310001333257 0.73104004692675295 0.45418534550904027 1.005663049391712 0.066176110888157447 1.0101477165880688 1.2253940831073558 0.27974534286243269 -0.71965006539824161;2.1009973554770931 -4.2412313586254236 3.2449539665276887 3.4644192509187852 2.4548903613769246 -3.2695430258836318 2.1528356379437636 0.097106842009045749 1.8381819350009196 -1.3782502930103286 1.7794510392227361;0.92685289929976467 0.031773961880113742 4.6325771789321735 -1.5115406637192537 0.68613962791361183 1.4627249474057424 -0.50135313474961463 1.3842089094843779 0.23103929158890149 0.55902892211363453 -2.0487782122519897;0.98165984798749473 1.7708893421937042 0.6281837065088306 -2.2744476311947679 0.81069198754086658 -0.19142932270552859 -0.05557980857381168 1.1327124868201932 1.8358441225451303 -0.14063470746200565 -0.44215442335899618;-0.43006149331558108 -0.46819229376725591 0.58088561421376728 0.62288991640990299 0.34426349608768431 -0.7928660398931735 0.050355166641963406 1.076878597205176 1.5734251183913828 0.23412396615434655 -0.56469388842717916;2.3797328068848129 -3.2690646447541147 4.5771316608761188 0.0014836818291787332 2.0142992941330911 1.4900924616542923 3.395317297383718 -2.3264725013623044 0.44295844647839816 0.5436640289851975 0.29163364178138218;-1.4819359870339084 -1.798679207536775 -0.19379578582157186 1.83820826350565 -0.10524836141045442 -1.2305184339480206 0.17291178889946762 -0.55188821379389519 0.34761253402220138 -0.030235468262456856 -1.3980491137844793;1.6687522446500465 -2.4711581616417928 3.4432433735741546 1.2702921328331942 1.3638023233235259 -0.2840077194911757 2.647400055151059 -0.58368180382833135 0.32882225175790936 -0.38596704161101392 1.13843044218173;-0.36158746627782751 -0.33658145037174447 -0.059867139044258853 -0.09427098494858295 0.76663677587327139 -0.52618048487838398 -0.70651419582797703 3.3092240052235398 -0.17318180316736151 -0.30745879962070055 -0.93411852997748757];

% Layer 3
b3 = -0.72243888896919628;
LW3_2 = [-0.83232664354925556 3.4020077288460349 -0.88538908285182094 0.38632580666596367 -1.8328840515159472 -0.92316549102815171 1.7150598407547257 -1.1899521115865204 -0.8956202906998455 1.0215683920898992 -1.1624901951356146];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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