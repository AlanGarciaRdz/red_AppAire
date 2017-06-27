function [Y,Xf,Af] = COSantaFe9(X,~,~)
%COSANTAFE9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:07.
% 
% [Y] = COSantaFe9(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;10.752688172043;0.00341273633199099;27.7777777777778;0.00632111251580278;0.294117647058824;0.448430493273543;166.666666666667;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2368199475892809;3.1538070488132894;2.0800967373935246;-2.1480020296092923;-1.6747512261894131;-3.3024382795147553;0.23983543921957268;0.074725461574316129;-2.3671280873379268;0.98194464655412239;2.5776391135351666;3.2635155083889695;2.0911306537423755];
IW1_1 = [0.46796127980304297 0.16687035577537671 -0.096600941550971556 0.26916045415431444 -0.82409773496879857 0.043595260681226017 -0.38580284838960022 -1.258144035734166 -0.17851673447275296 -0.34037198909552524 -0.32858350565092287 -0.75810957621242225;0.15316024482289867 -2.5113595288988133 0.043717377885347672 -0.28618814209230231 0.20432727054361965 -0.27138742545538702 0.14019916101025559 0.18933688778949165 0.16086586089586544 0.2057853962264434 0.14410427706331974 0.11679821804254993;-0.45659002427567552 -2.3286226581064633 0.3129540887065963 -0.34678884552820977 -0.75104866626489464 -0.042444499341659496 0.3306096668322509 0.60188015177887411 1.098825174084396 0.28572904967385909 0.042589422720530574 -0.15075648071687878;-0.23075077036404085 -0.31081129327552692 0.1498756852750418 -0.6617264129505237 0.053905278332423895 -0.15615639296017986 0.75359958124915438 -0.027789968328866325 0.016236780942095741 -1.9404661883004644 -0.040809924427794256 0.068861202961007964;-2.1067295904691368 0.31194303866577305 0.098684743657201798 0.26885388500509644 -0.16315586962886053 0.25725209943046734 1.3886817516078183 -0.048295722771003718 -1.4829409126723971 -0.57960885507460691 -0.042871114843189166 0.053697884789785766;-0.060228846115135633 0.025729066623793363 0.73567416051568035 -2.5060834472159388 -0.24269560309683483 -0.72412213298995387 -1.8326279175873101 -1.8926751438733234 1.6894575825419769 2.6290221069861128 -1.2626710021156113 -0.41908225255017212;0.43797015034844222 0.93367626183893271 0.32280867664913737 1.9298365834410389 0.02226599585177989 0.38729344525576687 -1.3691221429870029 0.080166585042175081 -0.5636573039709103 -1.4990312509619033 -0.075212662515150075 -0.050099077797906018;-1.8448739376411056 -2.7640901470016006 0.98326002840041216 1.4803534357447969 0.95408889789930651 -0.40450990218965932 0.45902977880361701 -0.20593420104771334 1.2875748076004392 0.9563340335923054 -1.4557859061123424 1.0670138753973943;-0.092579068150323171 2.5519174767660258 -0.54598240744240167 0.078030262733938052 0.40893147945081965 -0.20134991765447488 -0.076247218679921208 -1.0693626780685086 -0.40910238290656897 0.11755271308497678 -0.43421462469294037 -0.084665433603061516;-0.12727615974490544 -0.12284489228084935 0.26517333201774285 -1.0852354470804038 0.4319706323041721 -0.95905329022378083 0.18341632937145314 0.22113878379105717 1.4156248117146299 1.8130469849379478 -0.35524518811303774 0.36235758525377848;0.31854672043507554 -0.032449703831398308 -0.51805838826704154 -0.072924846732042609 0.87369902626691243 -0.32473808301043999 -1.2292657950393049 -0.21546966764573738 1.8696032804896836 -0.54380040802898366 0.77137258829665689 -0.02851368258823345;-0.16281521934541596 2.8612199030829855 -0.35706032549477568 -0.57882181556246814 0.078604582309661705 -0.27685147451800501 1.3152367842084385 0.44516753162360978 0.12590181452302196 0.084101620628593318 0.17023925385366476 -0.38263723733910121;-0.44964281627266645 1.5504045057016476 -1.0892487708007632 -0.29162769963881513 0.1388727668919621 -0.27023681468320609 0.83950589212913984 0.67320369774052979 0.17821643964937955 -0.25329847160171703 0.45964830751496988 0.083670780016066759];

% Layer 2
b2 = [-3.6392657862778806;-1.423763383568726;0.34060186564082895;2.8961979025075091;-0.2975270718801023;-0.74673271890275139;0.28328687187734136;-0.56704671212071256;-1.0138909219671293;-0.16613058151046434;-0.502745133567569;1.1833242092140279;-1.5815357354561679];
LW2_1 = [0.94105517254033078 3.0710996310404512 -1.3524175584450082 -1.1176756316109067 1.0702116865117515 -0.14848582901613025 0.29348589025906607 -0.49784712280768117 -1.7517345309266983 0.67452820151690551 -1.4978388980799664 -1.7409002951357253 1.4481354906893749;-0.31249341990630713 0.087811585512187179 -0.21886512222722768 0.74095946487357767 0.40936786772772066 -0.55121820762521057 -0.83324569580559782 0.40325746882375374 0.067075999526755734 0.46107555876227313 0.095782641945570318 -0.39555476518658705 -0.3655279740167906;-0.54182223358425974 -1.150018520552597 1.1316887104592088 0.67168623566703867 -0.30514042854922974 0.10641292166553881 0.35144186069188027 -0.23750966176853427 0.78232819435540046 0.20715835191326562 0.039801111993334672 0.044554851479904609 -0.093963389144472498;-0.9982794027726779 0.3827397964215622 -1.3094829223968267 1.3527867925227988 -1.1679686879224604 0.20478480643875713 0.11612764877409416 0.56011880338060027 1.6618256323845244 -0.34126125024860537 1.8017200965010802 1.7168805306181558 -1.6569321831628911;-1.648615959104339 -1.3219719386693431 0.39065430932795792 -1.7642819249017858 -0.95479071870611054 1.0711573014622666 -0.17212062376119 -1.5809091409333131 -0.43516380109285269 -2.264454256245461 -1.9056761770804684 0.33228364083610745 1.5108917641494319;-0.17199738091597105 2.1150844659084886 1.3155176787456118 -3.7743860989770144 0.72744681701798031 0.23733969062179153 -0.95126389670999445 -0.24505701267531171 1.0001184179326483 -0.10767455406749732 0.59336737904120418 1.0300576480160883 -1.8317823974835075;0.32876583200859755 0.45233854240088317 -1.1677389091275996 -0.55526629820733731 -0.085247711388922259 0.14694651006501483 -1.3133623696560743 0.59462819958433422 -0.37446397727598391 -1.2090386296433522 -0.18942764457343914 0.47543178466637143 -1.1766823434520284;-0.76687833908173531 -0.32623186383171743 -0.87105010717510334 -0.1816240855067652 -3.4756266835475151 0.3798407039273119 0.80125449001521587 1.6488481970095308 0.14805022168508877 -1.1840485549636315 -0.13049955430301421 -2.3056252036985847 0.74279707606742607;0.15630911604655384 -0.56837322814383118 -1.6904313223938341 0.22600672974857441 -3.2540314189663397 0.5512712235331505 2.0111938448791924 -1.0183673564832592 -1.9424229605405021 0.80092530805928108 1.0966011935849791 1.9911089880327499 -1.531768962959738;0.43434244090130186 0.86639168031060221 -0.79861961675259452 -0.44990489779576825 0.54635073801063627 -0.12926104245165618 -0.28583632153165817 0.44630482728838838 -0.56727532646281975 -0.061359873615192684 0.069212162341377254 0.35587782018093761 -0.16464679410448788;-0.17805068109347072 -1.5440787580581696 -0.67966664848916847 0.71488346547395709 -0.079360102992851109 -0.054248181391514924 -0.33583607731850373 0.66771834261912411 -0.34921601169670552 0.17176574359232799 0.89498396241784905 -0.683931267343313 1.3530029236077492;0.068159021215274118 -0.49833635413024502 -0.87178228298448368 -0.48988753889675307 -0.1821212258818003 0.37406231669948975 -1.4621026373194359 0.58657180376322382 -0.15047719177457058 -1.5030247254232236 0.19956934450273559 0.20597520943246417 -1.3675013409146393;-0.28821994091642239 -0.19743588504742232 -0.7006522358335896 -0.043803780390689259 -3.1016614313441733 0.29241143187479335 0.22666878803653814 -2.0201630787279581 -0.35885395726119029 -0.67259520498392067 -1.4631173506046691 -1.9190599108198423 1.8466921935402185];

% Layer 3
b3 = -0.12200170311483484;
LW3_2 = [3.1032498528121968 -0.66559883530408481 -2.7077229272624175 2.621499078267381 0.90807733258444612 1.7403875582800017 2.2468046393508785 -0.26682996535274017 -0.40011133563097889 -4.0054536680243178 3.2737308958635971 -1.5573181784186534 -0.4326566662139022];

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