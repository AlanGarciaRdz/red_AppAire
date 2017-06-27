function [Y,Xf,Af] = PM10LasPintas5(X,~,~)
%PM10LASPINTAS5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:27.
% 
% [Y] = PM10LasPintas5(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.452636370367959;16.301264010556022;2.067251333835757;0.95185471055569082;-2.0859479438676853;-0.79098384888572593;0.61017641845394022;1.6170886030180827;-3.457289911440605;-1.5814108512702514];
IW1_1 = [-5.3179120327124156 2.6714935906887143 -2.363270919012868 2.066418301169334 -1.8903958721276763 5.8890410325989802 -1.2321254301494093 0.42372487295122635 -1.6145087202001975;0.16317297929875846 0.35829203615609906 15.591540770253102 -0.47652428107173839 0.26491432154268618 -0.23911909851752836 -0.28953248904433859 -0.012806629936762508 -0.13350942565606366;0.070806241467736147 0.025501631152180151 0.1702168514083055 1.145031254418041 0.091826493008013085 0.26741918461671343 0.57421017548901021 0.019857619433619515 1.4137865592617946;0.40223055749202147 -0.96064320650387791 0.072445901807134921 0.3635395935834832 -0.010963218321201958 0.52561707459424922 -0.074683649511170166 -0.038188362358399661 -0.12346767445097422;0.85747069304432455 0.2893677381837173 0.05938890691551147 0.6161085877284993 0.55646342818204275 -1.6578585930271228 1.1129232788968819 -0.19293362541863801 -0.027406237954977718;-3.6215878562079116 0.059038272081719051 -0.15258325696705077 -0.11995730687381073 -0.097805817343497956 -0.2123307580290702 -1.4315928326845593 0.40370378685367103 1.5857405372415254;-0.061256576775308318 3.0221198636679043 0.020091909906458642 -0.9577479560393598 -0.1275428336255793 0.011982034969062224 0.59565993164245346 0.085570194321604912 -0.079451650241524202;-0.8170983903245973 -1.0343652323897976 0.29989102019128255 -0.59544192063896739 0.7789767862845367 0.83315900240630258 0.48819491694973777 0.48031335956711441 0.24516261902086717;-0.037432418896727403 -3.0106461825423376 -0.024404806925963522 -2.0240454774288321 0.11956790999308696 0.044226573304436086 -0.4986983276733799 -0.081408104462146524 0.082296005633743077;0.40634729375384726 -1.1166551581594562 -0.81695111180246627 1.2938621135122583 -0.29728493856577631 1.9110909889647056 -2.3753489816838718 0.31145016127271058 -6.3262417716417225];

% Layer 2
b2 = [-5.8795222639512383;-7.7266993306050837;0.35948492903337442;5.1837327645304585;3.3339560050578716;-4.3919484718220074;-3.8746263793262128;-1.0803101086149853;1.6953118215208605;3.4245498169628155];
LW2_1 = [-6.97559925687555 0.70168714508649432 -2.913064444733382 7.2578064133435536 0.6954178071419802 8.9301095735971732 2.0979691640337643 0.75968953383305537 -0.28630503692054055 -0.67110228454664733;-0.28754229120401759 -3.7743891220446648 -0.15801633906535723 -1.0479400239442733 -0.046678269588130039 -0.70270946250646216 11.502924059533544 0.27172662582682011 3.2466200570426915 0.14536262150930701;0.20412617732984681 0.078111649104783798 1.2155445522302262 -3.2941442753128021 -0.19677353668952574 -0.39356751045186811 -1.6606812357434944 0.0022203530632698967 1.2697010246044407 0.65861962529937579;0.58284429253352343 0.54593316035062478 -0.29028516991914699 -0.91440646684806182 3.7893375959089526 -1.5541960102393895 -10.360857915021493 1.6810257816242038 -10.482519832340003 -0.070514115781537892;0.11937971966741207 -3.4572263658092832 -0.75018316111161132 -0.061147713912206067 -0.3430152418983905 0.10082535632566156 -0.1911345796214384 -0.23040720808399509 0.15131969833661893 0.010114511801799385;1.1999305835691951 5.9062414714643579 1.907287212699162 -1.0007400166605003 0.32083699423625489 -0.95358280365397785 -1.6767596573467343 -0.28380833719986953 0.18684318660703556 0.47974507370182939;0.35400036960505726 3.4594566754647955 1.5067412558849758 -0.83508860627002957 0.11484537037964837 -0.4468337815133831 0.42633701026448317 -0.050844053984148208 -0.22019380107448794 0.21930544522019424;-0.68977863992030908 -1.3171609623984193 0.38820990248389958 1.185273173647754 -0.4389303183373951 1.9904468406553535 12.557205090367084 -2.1671485494857192 12.734826697972981 0.1073035905034794;-0.62323498338520755 -4.2080653628668223 -1.2603941944019408 3.3327615748583845 -0.41585273362052605 -0.81156979333440094 2.5050140519508046 0.21986485367575809 0.69867222231248016 -1.0458806066713418;0.056507722930802758 -3.5779400757785234 -0.97832614913864957 0.2716558308168936 -0.2365034427101384 0.080066822847922825 -0.15041874326987476 -0.1313036963760032 0.14087725395675887 -0.081600381771700273];

% Layer 3
b3 = -3.1911857584036891;
LW3_2 = [0.087783873527715411 3.9351358748483327 -0.25807129475835311 13.609770291428129 1.8397011392318932 0.32593908664533999 -0.68017749517834503 7.4202973029579002 0.2603887301370032 -2.2358333933272516];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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
