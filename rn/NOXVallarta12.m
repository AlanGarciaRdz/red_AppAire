function [Y,Xf,Af] = NOXVallarta12(X,~,~)
%NOXVALLARTA12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:27.
% 
% [Y] = NOXVallarta12(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;16.1290322580645;0.00782778864970646;0.0208333333333333;0.02710027100271;0.00632111251580278];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.129402510909594;-4.7627173060580388;-5.7051453835359514;3.8398104562038728;0.065982027881496569;4.6440880479384612;2.4340170365366731;1.1096370163737665;0.36899076272829034;-0.2537001323705862;-2.3659885797505886;-1.4191757066389961];
IW1_1 = [0.94614999485020812 -0.54825114017323839 -0.062897758563875791 -0.55078619466783119 0.19961676367566031 0.010014615820576795 -0.59534681669107747 -2.1309437472280335 -0.025025740152978811;0.58296082275437056 0.23270528230878038 -0.51869402280660626 -4.267225647745172 0.29223798017190278 0.25020088102103399 -0.16183794805741436 1.7052747771840062 0.036286218059966423;9.3268199510278365 -0.02590824564981074 -0.32436332256778833 -0.035453889834508381 1.8356315252316413 1.1752387475362895 0.2327090541305929 1.3210455894283208 -0.2797038664671917;-1.028624410617768 -3.1744688431266241 -0.1301578260804867 1.289620065344075 -0.18197384227182126 -0.69312268332207971 0.89436689061828989 0.37874104436617601 -0.11568874504125973;-0.22657460277797192 0.91385132819385495 -0.30620089331518408 0.70594501075334148 0.30551345601101748 -0.16748499309644174 0.46060826868508653 -0.84040305241794222 -0.04259828154491338;-0.10624412624588055 -5.365290939665635 -0.10850034059982032 0.85290545825518649 -0.053781314056256774 -0.13508597942598305 0.62599826177498152 0.34670120485090017 -0.2339347959491537;0.5861150383857705 -0.35371149551534992 0.59958036717987284 1.0050808479567876 -0.23013204266116577 -0.5232965529168373 1.6225334586374318 0.93909155235581487 -0.011004187216551206;-0.90271643470433327 -3.4335617769566129 0.0235300781713524 -1.6205699485879943 -0.070688937953308828 -1.5087090520958877 2.0821580961348425 -1.4199086974998041 1.0083145814584449;-0.14893058192316666 -1.4869730586736243 0.43712723641379286 -0.072776034513191409 -0.30843165338787187 -0.24469717521367002 0.19275733284729302 0.83116595993072973 0.00042452765753437402;-1.77150652114367 -0.15299844802009577 -0.7511879768358789 0.54191743569324324 0.72688419531078441 0.21144694300136813 0.065920530124370547 3.0312310583364237 -0.086610172247313308;-2.7345898510343738 0.58909250969810623 -0.4366980840430334 0.92121309197091461 0.17722614202423659 -0.36771373979993011 0.28857884758154684 0.65598689030573087 -0.045359485226012936;-0.54143139290144504 -1.4357329874092546 2.3953712210098552 -2.7512885968573935 -2.0140402457083977 -1.6066306625856404 -1.820186980191715 1.9397126869598196 0.13569220886719657];

% Layer 2
b2 = [-2.3236855564672831;-1.7073376047450448;-1.1001195598420928;2.805948927815447;-0.62993373480561032;1.2049523349660214;-1.6788974138780564;1.3019600349394596;1.0096301364774696;0.29168508952510841;-2.2022291746845806;2.4647563058890452];
LW2_1 = [1.8194064156052481 1.9793771029359009 -0.46443031539107593 1.2802022875264585 4.053196133018087 0.64447431217152096 -0.11302211904643329 0.88766109110882763 0.087915990494218776 -0.36738824502581358 0.74921912420647363 -0.21986995490455721;0.78593762994336114 -0.46024913194781131 0.32706840907852902 2.0976459265001122 -0.68781310531162021 -0.71896653815302458 0.23764404623825158 -0.23197810277626768 1.6211740320927446 1.1580502703563404 -0.79019404048268571 -0.17675686602043381;-0.58492831507611276 0.50925865033504691 -0.45585151470334634 0.39922743781034287 1.5558812182496675 -0.26689448574217761 -0.29863401038979559 0.52299529332547623 0.85487780905785737 -0.29973408179186029 0.38993564358985922 -0.30037294141813853;1.9539303291108332 -1.0958407037182212 -3.4453440530919872 -0.31853131246711619 1.3967980934109001 2.2739577486874318 3.6496164786365233 -2.3576080906527541 -0.89877338430630616 0.21255197886871718 0.89087201665331051 0.38635418998198851;1.2745781376554868 -1.3458401915667364 1.2289686077891973 2.0599812396338564 -2.5500134183949776 0.67257780590732441 0.011471035419429856 0.62638905675787571 -1.6116297633358339 0.5240947484495152 0.31743957397395156 0.4412643873526928;-0.63075943366106091 0.016848767298653547 -0.63053909126331276 -0.67254109478337853 0.34353337904368175 -1.3945059506557536 0.022506759435743002 0.12264926150170408 -2.1287074132501935 -1.0669249752235461 -0.12424419746412935 -0.042883389693964012;-0.64952521176684908 0.70129919903755089 -0.26960184522663916 0.32580984324411366 1.8908673460903331 0.052820477287941293 0.35557398003227364 0.4350887026427947 1.1416627600124911 -0.091363119766854614 -0.2156197322664197 -0.15110769133184226;0.39755080401375475 -0.12189470668357305 0.08053743852317935 0.8336032468586756 -1.6381120488575527 -0.51194123961867033 -0.73955310544524588 0.33133993183980553 -0.80080098194808447 -0.56129376113301044 1.5646389433125816 0.13099298927387237;-0.50446845772443516 0.51569117866932335 0.31930349863324087 1.1533193343523531 -0.84933751624534126 -0.51424009550325711 -0.12978108936405716 0.11985555040933514 0.5452991151017067 -0.61647608778424978 0.99472229103897669 0.27269882028040521;-0.0066005347457031988 -0.41776873438894202 -0.11421959813741667 -2.042667676014069 0.97638239849173858 1.1641955833679563 -0.91877985259398864 -0.20347654517649302 0.50980925254045795 -1.6094544374602191 2.5737872006942744 0.73174698187963316;-0.47829681140639763 -0.96528648020712482 0.62124641038477479 0.90759892925835051 1.489552602745015 -0.073915775239294421 -0.99916429303594789 0.10237930517646796 1.1851467448376445 -0.61604271574320324 1.0263321322979666 0.31651860978929208;-1.4639742685150234 -0.85890236809283904 -1.0486313549946735 -1.0659590477974594 -1.0884365308680648 1.9391624115970085 0.091115955703028662 -0.45743004794657355 1.8171155973970985 0.91402730774466723 -1.6351701263245082 -0.081025210470705766];

% Layer 3
b3 = 1.4827766075663287;
LW3_2 = [-0.33620070856066503 1.6055349895187674 -1.454956635428053 -1.6015709211893177 -0.2906930309080521 1.6197591582378461 1.6734468235562048 1.2575507195617255 -1.0044553628742423 -0.89349982794346361 2.2628791265623796 0.5959091247527214];

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
