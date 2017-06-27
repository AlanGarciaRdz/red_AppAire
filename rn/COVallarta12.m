function [Y,Xf,Af] = COVallarta12(X,~,~)
%COVALLARTA12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:21.
% 
% [Y] = COVallarta12(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.5980840366157438;2.3593882422322645;-1.614227331206243;-0.15519057184023571;3.0047127088974817;1.1146605728907117;0.23824844908758916;0.35246029441113352;-0.76777290895264594;-2.8834589495902425];
IW1_1 = [-2.0497264792783629 0.69238558671581563 0.065031788252396056 0.10237577223049804 -0.56551341654077802 1.3372951632300045 -0.090216534858819808 -1.1568364244042348 0.086764735321881836 -0.23430684003526478 0.1932962953240065 0.011975486602489132 0.063482639664820886 -0.18761427877449832 -0.1518571294047954;-1.4747315630142177 -0.18614915207024324 0.023727936359086182 0.6316207982487988 -2.0848718609339834 -1.2879512713651553 3.1079822644202575 -0.1714499543345932 -0.046917290625660718 -0.48097568419739528 -0.81794600781597682 0.12960029061168671 -0.12122481491993004 -0.43770923500953768 0.38038999281880936;4.3306818827044324 -0.28692013791664878 0.51289737924382139 -0.68680664428673444 -0.25352772752014946 -2.2644932319395643 0.050493905981802235 -1.0124201074370154 -0.28446215061164171 0.13482390274388006 0.10229982336948294 -0.17809198804830947 -0.23905279774228966 -0.59555702428480251 0.26625621883974554;0.12865033763393585 -0.36185734391728569 -0.19327469010720438 0.43045050979191257 0.095530605332769816 -0.46832628113366609 0.016276997744182529 -0.031138103403590876 0.15791475511243333 -0.16574090678328385 0.065011984847672621 -0.14474531454785186 0.2648314726844892 -0.65737475646197996 0.22161407838545333;-0.15517845798246346 -5.8315366517921738 -0.59830116873481409 -0.9838744355707203 -0.88612690304245545 0.59903121677049498 -0.078592164051226154 -0.38209531098553823 -0.025688989461738164 -0.047937550501559581 0.1200498403994314 -0.0011752953420572677 1.3214667825653517 1.4746467134316117 -1.9525577511376366;0.22203600081865316 -1.0485456655317762 0.14190288640727783 0.15197637636089148 1.2671477919037686 0.12780098772638282 0.097486973932448068 -0.29343022243976025 0.043862199045697846 -0.092247848677818434 -0.097331416664615741 -0.11017577673225282 -0.427130337811782 -0.40800417150585089 0.21547902111833434;0.094832655814135802 -0.72226669320267278 0.7623076294397596 -0.83701413880565179 -0.7226103550685401 0.90727659601235933 0.054815939539003794 0.44736842960513984 -0.44372769606413554 0.41782684811049248 -0.055331177143393834 0.36308713454299418 -0.93814272115714314 1.5176955327621187 -0.5284384643152128;0.53719989831349402 0.5998273256522052 -0.17115446005013069 0.63456277564254737 -0.10997665498103218 1.2368317563065003 0.064844998349841906 0.56942745969133435 -0.049334972748107511 0.040176323564388813 0.65250574873844602 -0.33597934279637098 -0.64559737453774857 0.24333758189321297 -0.22048737369525126;0.187427786246638 0.92218671810708741 -0.17131889593282562 0.32373293066723774 -2.0277336372354013 -0.051007368701837981 -0.032250136980528532 0.91556748869185545 0.0099361243824843716 0.089166627920349351 0.6157713240110696 -0.021196425339805786 0.37968578741732278 0.39920483201422252 -0.4872879253413897;0.97940410989319437 0.13428649996352038 0.43442844822880777 0.99444084126624888 -1.3588248720278515 -0.97030704279142532 -0.16691511209972076 0.16111734645897161 -1.0550620742334047 0.16997080347792765 -0.93437580666997622 -0.51434597660770776 1.3293070204772179 0.69355865470170863 -0.16174830788082831];

% Layer 2
b2 = [-1.367936740311771;2.0160465404146133;0.14246723726612964;-0.15073253216337362;1.2977681691698908;0.39163659508494769;-1.6446786669570119;0.78068156541756828;0.61768995400550708;2.225628184331748];
LW2_1 = [1.9285493241980256 1.1475857537309331 -0.68505998706352822 -0.30375623692732834 -1.3304585822367712 0.98765642776002061 0.24775741777689692 -1.3933581889669295 0.16993996568708178 0.47946283548425794;-0.2781964676187324 -1.0661012054312091 -0.20489281151221797 1.7621572292902601 0.12311235373452185 -0.78084103787909409 0.34799279543414119 0.037964321825882122 -1.2551620406100741 0.80885024271549744;-0.96017011388355222 1.2012524982761601 0.61698891681022694 0.89089913545110055 -0.055794137279707251 -3.1967729309195123 -0.62163241643111633 0.30366731455126666 -1.3001948154471097 -0.12606254945710194;1.3964187490893059 0.19534437459357043 -2.8990360928564578 0.69001063185705802 -0.11814732935081892 -0.16535706259845856 1.2429566238850573 -0.31111331872761816 -1.5683220572634833 -0.31341404875394224;0.42270427368110591 -0.118365541950544 -0.0099818052298318548 1.0848745078556314 0.81074978358879479 1.351653184511997 0.67101658863664304 -0.57990448671752814 0.79814497676229001 0.87097798501863144;-1.742165109654485 -0.6391985470737932 2.71242113466998 -0.62232077485129922 -0.094787944112581568 -0.034347888352505733 -1.2912952722124547 0.13192613613028864 1.4474517007148924 0.18759158794502626;0.059538419346368492 0.42243815177992072 0.086548695765079911 -1.9011739003929617 0.39138190763053698 1.9606321279186565 -0.27495842141716859 -0.4723467539199222 1.807037896880449 0.15192104652996058;1.6146306832471975 -1.3338970041372051 -0.44294580892028385 1.5025235505767112 -0.82318832585610369 -0.49654230900838542 1.2479578910790137 0.12757071955363666 -0.5317546235280588 -1.3921763875355302;-0.22442386295795896 0.17848003722327066 0.34560655820689212 -0.80471899583751338 0.35410579604532377 1.9911637662361719 -0.73676920309507155 -0.47063816407494896 1.4599028278342407 -0.042697826305155902;2.0859467956504307 1.1397803414081866 1.6384047665707557 -0.98092711457646486 1.1140889366047531 0.98526896537141095 -0.6829203613490743 0.55149654213935084 -1.0538934349670943 -1.1068480293489515];

% Layer 3
b3 = -1.7712422548502447;
LW3_2 = [-0.71835138092275619 1.5164875613291966 1.0477096756338353 -2.0896869006325516 -1.3253955666572397 -2.1220967605749039 1.7417750598365132 1.7381915582352976 3.1401738489502544 -0.72695406244712246];

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