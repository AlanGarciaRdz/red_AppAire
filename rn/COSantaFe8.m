function [Y,Xf,Af] = COSantaFe8(X,~,~)
%COSANTAFE8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:07.
% 
% [Y] = COSantaFe8(X,~,~) takes these arguments:
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
b1 = [-5.9894694662997132;1.4481090320314878;-1.7172548074783494;-1.2323985103609119;-2.1042194224407154;0.40716338513539968;0.8283152248297212;1.2594315998122156;0.60660412727492075;-2.270326004634573;-1.8381471078025589;-1.3099991655976462;3.7442508419711533];
IW1_1 = [0.3872038898481498 -2.8336819841962075 -0.54470196453006026 -0.21128365934710702 -2.6274460987631421 0.75959076264145375 -0.015946851559718828 0.33105535007476627 -0.48099954181351906 0.52869374342160635 -0.039928798231415707 0.38797227656174299;0.19316016179127871 1.9679856788091135 0.12899531712720233 0.014894645335476095 -0.36662579214985158 -0.021430533191953267 -0.32599159031001457 0.36205589085727174 -0.39161663742546393 0.62284693587574858 -0.41446599701640635 -0.51843717509386722;-0.43992748677712223 -0.00050923668602280707 0.19995525569276049 0.25566843116416649 -1.5927025572045517 -0.18303948364017295 -0.58510705618161862 0.16038655125242046 -0.41542113824004406 0.75844259244520329 -0.57932561604745247 -0.25435625217196173;-0.95438456022777474 -0.39056231344951986 0.5994772323513915 0.12349097097038092 -0.94138660091209769 -0.52350699305432014 -0.02471380240127756 -0.66896795158813194 0.86980291669514098 -1.9884476572850793 0.80077488551667575 0.91177144242587005;1.5410290552768426 -0.72546701141590308 0.50518434049643057 -1.2822175423090756 -1.5422264789118421 -0.92091190253919919 0.034375210931121648 -0.21218374508390353 1.1185578239751706 -0.49755158062569727 0.4657454579305364 0.55073431280082807;1.7418717610034731 0.69132772753477545 0.79456800865481891 -0.98005821695906981 0.58766656608472534 0.39523020564718875 0.82021674283630475 0.21450548690772295 -0.13468570611911454 -0.028204218686471511 0.13696753055140803 0.07211321315876365;0.33039999150259347 -1.5486060213198607 0.28334149169182543 -0.11780881664992034 -0.38071898477761384 0.11394496013229378 0.62575611319117186 0.17121191524707488 -0.26192575164761106 0.067689621786466259 -0.27167529121773931 -0.18236633958286722;-0.099791415103222939 -0.28694224673536811 -0.088624301416259099 0.26138930308398312 -0.77852494447309362 -0.44911797576907919 -0.6377661898434881 -0.48588725439374936 0.66776887731760581 1.7135021660225878 0.42668146624681424 0.51455717149087732;0.13012573050916718 0.66244347181299612 0.17189487548144303 0.25663602640646932 -0.23208088347692238 -0.40500662704687268 -0.55391011911002819 -0.46285010311516389 0.25101649594015529 -0.37025157408360365 0.2401034343609498 0.45696242086577016;-3.4042585323008767 0.25820759779699315 0.21543493285110035 0.31051273788598877 0.10481758358961449 1.5961814459333998 1.2407835575162069 0.32424470445208764 -2.1010076081030427 0.28847060369909483 -0.79174472892761238 -0.35662782761314271;0.24838635702615133 3.2162743505308824 0.2080720729102071 0.1168103993993822 0.20489489202590458 -0.10965369393893883 -1.5894367163037142 -0.1473062910608415 0.12011058287228206 0.24896668906269687 0.041905389156393552 -0.0087939156804043624;-0.18427287088625749 0.70127911481078598 0.51407764524815525 0.33111158254337458 -0.044979614575723373 -0.32165237607849362 0.2956143873653248 -0.26869893741876155 0.12796588136087259 0.91587407941820409 0.01939888822415254 -0.26126083914208958;0.66034915928286708 2.4705800631701407 0.35286078137228305 0.69406596794770625 -0.10582046403851329 0.11527832496016172 -0.19190836638565395 -0.19809905956344784 0.16885991357033076 0.55961264359858431 0.090930249136806154 0.079695372409741366];

% Layer 2
b2 = [1.7728703687301641;-1.5750778522479663;-1.1116536661415497;-0.47224287536150766;1.3082499985030331;-0.43214807484327666;-0.45056580144561748;0.10437411844657463;1.4791906213099399;1.7616796490006015;-2.0516695532081641;-0.68813777639538742;-1.8700057882496941];
LW2_1 = [-0.42333629714401994 -0.74425173919613408 -0.39572885345291625 0.40377709262751982 0.29717983152938143 -0.76826513799617546 1.6059475478134677 0.087626551162557589 -0.42459515265638587 -0.19929846508654353 0.85695684699658936 0.2580640561801395 0.13495345773600595;0.038089069164707771 -0.7543295651633124 -0.99665764285146929 0.41038762986050864 -0.035856954808150363 0.34622919154493648 2.1721495840984963 -0.016047996280050904 2.6703554194070378 1.5304267772759339 1.2034954848412451 0.92617237675962705 -0.062945802004337845;1.5389435643815617 0.35236284136605744 0.21499395968396512 1.4595928991397673 0.55821839005223306 -0.34120709469381677 0.0026234894557069649 -2.5480394674147844 1.4542777135618319 -0.64133742195385623 -0.048707134901631942 -0.58161070312705043 -1.095636537342084;0.67992958076198096 1.2347108402676854 0.19809993919190227 1.2032687559737758 0.64653171420837074 0.50923165815872862 -0.48901818067931146 0.14242901999853302 -0.34057216854133171 0.40429958819637585 0.20082501947044507 -0.25907974341686274 -0.44070723509676785;-1.195219347148142 1.4989464429389718 -1.1084305304898756 -0.98756444253191722 0.64834584127983286 -1.964668457904984 -0.76610806850590718 -0.90915006422675038 -0.98912738545641909 1.8003131923567781 1.8451361414410714 0.075474545323248321 -0.65026032005680368;1.9316728579663687 -1.2704594017178676 0.35347281271004422 -0.32373659072572841 -0.10462770964411257 -0.092237641148877336 -0.18218301789990163 0.94818077997329664 1.1751646845409711 -0.5194999353308597 -2.5770939804126236 0.46712075538701364 -0.21277378329637048;2.0171826916466684 0.80828820798322898 -0.21654158949918145 -1.502805757150802 -0.37413785900990032 -0.23681961550059522 1.1427296521214731 0.81598317336754689 1.2436402499667518 -0.37004954031460541 -0.062818581221854131 0.71097665659081544 -1.7661811568337802;1.1092355857269254 1.103777182102726 0.099715851095648247 0.61651950475433237 0.40004011994482053 0.19636472573013233 -0.76915716651399246 0.32720012585684488 0.60973878899870704 0.77683107465213685 -0.48865328518851375 -0.49339383868883047 -0.84058894204187384;0.51959700887405624 -2.1503549043030898 -0.59227261301550693 -0.68490397854746454 0.51788772197790822 -0.5554444264224172 1.1387658878117712 0.15455019249413074 0.51890432009729437 0.18959857930879812 1.0088268343490769 -0.82988010625811859 -0.56777190235646546;0.81957977899302392 -1.8408072637398232 -0.5779952559460475 -0.88730656780817418 0.47099934939219962 -0.4371914337790147 0.9555326076265841 0.26871853427542092 0.85773305260481947 0.34032457778478459 0.8792151965343179 -0.87954214999173641 -1.0948637799831307;0.97880345559382598 -0.32081217382080623 3.2339482419021266 -1.6755687193831625 1.3531942001463508 1.1472742272660852 1.8155521728168469 0.54958628526601627 0.28038394794123062 1.1791293344567866 0.46237544238770473 0.84125908046161291 -1.0372000211763373;-0.87663492386736463 1.069268091453855 -1.8545025154942443 0.70276361008156008 -0.90233950830361398 -1.068504643532399 -0.28136129588192271 -0.60713506383646076 -0.089995268135229428 -0.88329580089935544 0.26454285359033508 -0.96508235420441468 1.1109215063263074;-1.8450932568062193 0.81913621612702292 0.06514494046466944 0.89382550717970544 0.51253707954027594 0.43334566257335028 -0.66555400290315336 0.18447730605799101 0.23329859847565301 0.82131250711567194 -0.25526163987474615 0.26563282939091803 -0.30681875868205261];

% Layer 3
b3 = 0.34177542587071619;
LW3_2 = [-1.2543425107919022 1.916715186478805 -1.1470433221805278 1.2230979840005749 -0.15436768991966118 -0.43590999403904307 0.5260918950308181 2.1073295191570129 2.0631521681542138 -1.8676896557489082 1.1122372071068154 2.728717710891964 -2.5790355816766772];

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