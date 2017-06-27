function [Y,Xf,Af] = COLasPintas19(X,~,~)
%COLASPINTAS19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:02.
% 
% [Y] = COLasPintas19(X,~,~) takes these arguments:
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
x1_step1_xoffset = [1;1;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.241545893719807;14.7058823529412;0.0179856115107914;0.0558659217877095;0.00576368876080692;0.212765957446809];
x1_step1_ymin = -1;

% Layer 1
b1 = [-4.6077973505827705;1.4926905927599263;-1.0549086355840285;0.62324766399508724;-0.1867646596959496;-2.7365476852478814;1.2085284283945739;-1.6457943858418342;-0.66240955405990676;-0.27576108727609117;3.2665600086607789;0.55072118424515093;0.84239554204689526];
IW1_1 = [2.5845955897829733 1.1280659731610403 -2.4364067071981688 -1.3983139655086467 -2.1525892038096459 -0.46331545113619782 0.96957530715562912 -0.35456013871032327;-0.20946657858414811 0.30279304153163888 -0.15224327817128772 -0.39891041091437907 0.09293960026392642 0.89625660918761152 0.43424826070618672 -0.10082909417888283;0.94525795136906909 -4.0824865052462824 -0.36784274029172764 0.18293669897656079 -0.60890202225315226 -0.075065632603378271 0.32119008760491091 -0.11825901197425406;-1.0724594340514007 -0.9104613254549293 0.14443647331729192 -0.50593650058842488 0.45739198098517331 -1.6967307341117408 0.32229465843936622 -0.4140161342819908;1.215836613847153 0.35093607157179119 1.0784844816586197 0.30819511600534266 0.94823268946413874 0.74949681979635985 -1.3056691190400034 -0.077780181370268653;-2.292708408022313 0.59089357520912356 0.59640305988076925 1.0723052248027112 -1.2454526610764649 0.079117557754453241 0.27547500597953006 -0.068623386193521319;-0.099858951724100031 -4.3596080659917789 -0.0042407969655080882 -0.029760550379909979 -0.24119066631406813 -0.23440305406246009 0.17108863062428531 -0.22800894184310427;-0.88588381613192513 -0.13685153669368647 0.24440845654292823 -1.0345684233568915 -1.1489826403837005 0.11774916696288504 -0.4108649305027755 0.24157929749444365;1.2421831290225844 0.68774708644684368 -0.017941502175823215 -0.62367078903536799 -1.1590872962445191 0.095298843747196632 -0.16152037695970811 -0.11497327287445544;-0.80954725745106415 -3.0938589615933836 -0.45911666313834687 -0.19678281992868565 0.53542321649232416 -0.24981050816853353 -0.034949006748758692 0.15478751984946978;3.3990323614242999 0.18450565242485517 -0.25593614438123952 0.49922527730731575 1.0173740674413698 0.60930785075137317 0.24578137866920113 -0.12289089374883545;0.082334873095808281 -0.15386549967018054 0.052655653272444175 -0.065517327245275939 1.9705582799016605 2.2535329395031702 0.41814714203264092 -0.23766425735140007;0.15759851452368531 -0.33167872501682449 -0.016059020222723656 0.69415315685788637 -2.0015301350694794 -1.8690966472226067 -0.059726210462947488 0.0014560632362657713];

% Layer 2
b2 = [1.5472618589307743;-2.2436943377376188;-1.6698629916305949;2.2548304840250926;-0.1670949963312035;2.6097979456476699;2.7785818282732802;0.61382339612509929;0.51221085215954143;-1.3646068305101684;-3.8022055657471605;-2.7930934678336352;1.6557400865839766];
LW2_1 = [-0.61214117752334529 -1.3853343936522959 0.48346064481768408 -0.37000104513601551 -0.41902642007457147 -0.42015872263010767 0.28157688071978326 0.35920706266867541 -0.055350589602490757 -0.5207117796498868 1.320961413298678 -0.35730994138748534 -0.1674980425119349;1.5482688875192718 -0.18886089867815548 -1.0377605352030119 -3.1659377747797612 -1.5953776652863159 0.78586263040721738 1.9100066821637509 1.8439839508274853 -0.8338146320626445 -0.080493767934502303 -1.6507348714455217 0.56647468017786051 1.5336285036182402;0.24817188537047352 0.89781433606895 -0.26364720554106869 0.012966522380390028 0.60485545065430424 -0.63161104343030683 0.26177703581218209 0.48128604131678349 0.84861688802501234 1.0784027414006063 2.4848095038000118 -1.1613831049039613 -0.63088283934922584;1.242504355731358 1.4097273233589931 0.04044145379376396 0.22899381038106098 0.81950197558209259 0.3908777238897429 1.0750044432707562 1.0796809470806548 -1.6896103507938178 0.56085690322126469 -2.430244813772406 2.3464391537566684 1.7976927046868076;-0.38376652146298545 1.0644338896929919 0.71814071445333461 -0.019398249809891209 -0.11406928347355713 -0.84063705435036884 -0.33333531636870589 -0.10212878334906528 0.38113946882516647 1.0799859183106737 0.64670133641545668 -0.60883145367888836 -0.57502470215993529;-0.33894999471965698 -2.2070909379161816 0.20609729583569333 0.48411397071400408 -0.30192763207413525 1.2087971600134115 -0.11175589386305225 -0.33519632727165416 1.3881785826317343 0.14289148081368891 -2.7184006241437197 2.8191555344450836 1.634982909049862;-0.67973273838995818 2.9447170920955767 2.2347583015478665 1.6248570356788612 -0.94314774838986193 1.2675107023819869 -0.84655638984554848 1.1526861916363684 1.2857927249022365 2.1622835084920635 3.0885792137016481 -4.2218190288291391 1.4056085195200794;-0.6714631035508154 -0.29533172770356336 -0.016242987347010469 -0.13085730948226915 -0.52633478336551087 0.95471898820275913 0.0054975967932402448 0.6196051470383962 0.628439299149397 0.50496632368508521 1.517476944397413 -0.1853304958843762 -0.11789425931387368;0.11088848424792139 0.77964602050893039 -0.30215030344216764 0.048831477876839245 0.22998959988639478 -0.50396080520100983 0.67313911913077773 0.8424349225665354 -0.19715125172348369 0.55717087185998337 0.6300236973035559 -0.71103034081806338 -0.56438832499364167;-0.12133456668638809 0.78018505526923476 -1.3008222999136039 -1.1224740823269306 -0.475603780848257 0.086128213349307967 -1.6414107080569924 0.25564101506406084 -1.2701289896981445 1.0984200128208974 -1.3126349906979438 0.13301210415384773 -0.1508288285300432;-1.3272269058976838 -1.3240081388460418 2.8046507264480502 -1.6587478131825695 -0.89544454454570577 1.4018318786296387 -1.9875236914986507 -2.7784087609143526 0.7558054215742912 3.245936351052463 -0.25360893783187888 -1.5961853300898228 -0.42737383546229213;-0.2039934904054638 0.20656158533331792 -1.1589211559912487 0.40929429861442823 -0.227531879029717 0.91955012582439188 -0.95909452124756789 -0.85133235958616815 1.0088866658075708 -0.27943265564968467 -0.17691500195344234 0.67724716236261262 0.50751141240045505;0.61069114980866579 0.2767287318352401 0.01962524345447219 0.069161075152009727 0.53855076968312998 1.2728395128157359 -0.35201971509842028 0.71749936785528134 -0.33470477246648467 -0.86773772677862393 -0.39558779809850425 -0.066201921791810295 -0.29897328050257854];

% Layer 3
b3 = 1.5157050764617861;
LW3_2 = [1.9754584886902842 0.55352081832236888 0.31268473620391396 -0.27933348702918115 -1.9459754858874425 0.1633756298828884 -0.14187383397875752 -0.95234136683722181 2.0071514173926843 0.497759708085524 2.0504724753247574 1.1051239940588109 -1.0645150810191499];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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