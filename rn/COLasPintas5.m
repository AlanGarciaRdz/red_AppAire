function [Y,Xf,Af] = COLasPintas5(X,~,~)
%COLASPINTAS5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:59.
% 
% [Y] = COLasPintas5(X,~,~) takes these arguments:
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
b1 = [-4.3687079111104765;1.9124276584772799;1.6753659807562822;0.977795582658322;2.7522951844201482;0.36810046450072553;1.6780730572027376;-0.50959519787124707;0.54910849347176893;-0.37767242967898984;1.0164448734376894;-7.9230072326918641;4.3283160591919749;1.8688226856462469];
IW1_1 = [1.0012442459428941 2.1546675979253291 -2.1020180869785787 -0.99646865760284054 -0.96598522203712867 -2.0375144059268542 -0.41245906255356124 0.47445455325536318;-0.78519845690652046 0.0064051058428791514 -0.12098687453329356 0.18453564019687824 -1.6569031265776362 0.87207675193046474 -0.18201082917473865 -0.57000711987147634;-1.7529562539041956 -2.0707462939095405 -0.87106967951253356 -0.032582901430934771 -0.26436479887359621 -1.6439848722530417 -0.21210014689041654 -0.40962828009078184;-0.82638146859633732 -1.2894244379922977 0.17716170236228687 0.23954333409292342 0.053491497573471672 -0.44656235780800846 -0.065466646859601935 -0.26577484753132025;-2.1344434724954002 0.55961775702698646 -0.1732991673088605 -0.70850045257512928 -3.0744047733328146 -4.5929323842889502 -0.065561210441650086 0.32263570834871308;0.084241613964056064 -1.5007189974831618 0.36056969566728819 0.24778377231699319 0.75885098147719465 1.327969308832216 0.25169855037442312 -0.043148540693744554;-0.36993997573209725 2.1897720099092011 0.24340282167421698 -0.047129952035634512 0.31699117343155159 0.12251013405980084 0.014582145713380379 0.21665668508342328;1.5017600506596445 -2.4696979035746929 -1.1166648129573682 0.48416739544666498 1.0695858386008499 0.089680469798871426 -1.273840908414271 0.39813517509531726;-1.0769744931295924 1.3474494034346769 0.75738927377872289 -0.72326467818139628 1.0671474167120207 -0.069097992721496554 0.048038168234759267 0.19860926003295956;-1.4294737196590339 -0.036355929739250115 1.6731579190779695 -0.30539215026975414 -0.22820189759755041 1.1792359871720743 -0.172500193066707 0.69005502645901695;0.51274909290604886 2.1738677472107191 0.2354395353190904 -0.35435228237748406 -0.32834285499348559 -0.67888050306223913 -0.0026575626823164009 0.02176777773080027;-12.593313455673746 -0.29126661280613148 2.6059478564205416 1.0476786373748086 1.0884207955824212 1.6057882760474969 0.39703280035653465 -1.302001513544323;1.0340662624328056 2.1096550813070873 -2.7526105561166307 2.6451919393688526 0.18157475907279019 0.80005346962825097 -0.50088382541603127 0.48407144822950443;1.6966645558554281 -1.1840124099723079 1.1003178548882349 0.50363119979750215 -0.87612022448516003 -1.8838292254410358 -0.1544594403650815 -0.21819377895493408];

% Layer 2
b2 = [-2.3585317376689225;-1.6699568947931809;1.4931633548854595;-0.77354751499534169;-0.93969853342739151;-1.4456417729529154;0.76355849096173289;-0.90462013574025169;0.66942194235990526;-0.54099217390425691;-0.65903735324735269;-0.38218540009113355;1.657175711359802;2.7702721662807996];
LW2_1 = [0.64444595704538921 1.744858316866958 -1.4481672910197427 0.25824466128914403 0.14860127638891665 -0.077287662842580457 -0.22125749104266865 0.84911776621389456 -0.1861927007560944 -0.03527362552847961 2.7241592450734862 0.070786497463419418 -0.64406492863420695 -1.3430980712767129;0.24448117563323429 -0.33613179455741421 0.92833571799150882 -2.0170127130599775 -0.14254601280972332 0.76546825543353991 -0.50609712436001564 -0.062108691556542535 -0.31561122550764065 0.28503317343943885 2.4813935590003324 0.41631502576782614 -0.27909977742265041 0.1702869892744206;-1.9576805341174282 -0.48012236565208682 0.32383280660519831 -1.7515691042266395 0.59207615174252104 1.1632237742986034 -0.20033895866825538 -0.59897234731068494 0.20848446390259384 -2.0288264188937695 -3.091249225352632 0.32354347471117717 -0.75858936334090776 0.4820981566893579;0.35947569411524649 -0.94557025282654339 -1.8456022684764741 3.6662460965402182 -0.024116276462840175 0.60910574599806433 -3.7989686547540495 -0.83065086389045351 0.89338995050507575 0.55020886220661114 0.61390507579757647 1.1021719931242975 1.3505761192370964 1.0147868322480322;-0.24172949918366368 0.22827911899310566 1.2780213203633004 -1.0167255584244563 -0.21089021059970053 -0.3768379730714459 -0.70742804425828143 -0.45683990238212541 0.28292001568046393 -0.2306370720440637 0.40353183320843261 0.10479679908914968 0.79025078002424864 0.61712773565555068;-2.1814141250693169 2.2095491797269613 -1.5974404682526711 0.41372045492889159 -0.30693182997799656 -0.54824639604427572 3.7212473903353174 0.29891108122218391 -1.085115748683019 -1.383039746637285 1.0638343675642907 -0.37415900985729533 -0.85205400961623334 -0.92473542950808729;1.2504901386917571 1.3388114864557166 0.66007814010144894 -2.8231402566252344 -0.23075517070748119 1.2931308506851511 0.34318766740638429 -0.59597094840564724 0.64523745880062044 -0.8851226481162644 1.8163113951558112 -1.6699473980440167 -1.1632431833531305 0.047625326416567346;-0.051055815518647435 -0.39752765486947095 1.3318677517669362 -0.63567920713917681 -0.10510076605428821 0.79922999859483868 1.3028439565807111 -0.18318717010785018 0.085184491624398256 0.34757391009753269 0.0017635757098435701 0.56363056854515625 0.67771236979035288 0.62704499671179026;0.90697313083349962 2.1216943024054422 -0.52597832217993423 1.0727101278137667 0.15164133518511899 0.68919957378530206 -0.18699162222752205 1.5409129286713337 0.25637511488503295 0.97937011189369994 0.10577831856715333 -0.64677735967350858 -0.059388588366816576 -1.914413641062028;-0.14605790762958654 0.46148020882435509 0.34999109540549955 0.12040796699535986 0.026234291250729361 -0.52827286283609254 -1.2965740467176603 -0.2017386216485906 0.23304824198321838 0.16435628330494087 0.29793099051621696 -0.36357884130345219 -0.02724544447215695 -0.081992994308274308;-0.31692188658849557 0.42681260320179809 -1.7531596700933394 -0.082689853295233123 -0.37174457783788467 -1.8710878902299499 -1.4924086343458343 0.76796230114982733 0.35005421218829869 -0.10296022402179114 1.2774077238832322 1.5696717195619396 -1.6653015625750243 -0.55530324126843722;-0.2223702071756416 -0.69604921573741108 0.39787549608236628 -1.5636491334630511 -0.11456710498312891 0.11014428760890208 0.21691827052832235 -0.27542104015015934 -0.18501662773616859 0.06749395885105508 0.27653842993035394 0.19372653589110647 -0.14590546737265706 0.5211921951397388;-0.015652976361858827 -0.71327919056693634 -0.81963007145190958 0.36264182014084234 -0.40573674966495965 0.25701620397875208 -0.019797675118884667 0.19840339013933037 -0.31987138595792308 -0.8781143535844429 0.44426530522516439 0.068079521032529136 -0.14725060515754321 0.047355563414771332;1.1189780059704382 -0.67607703044492695 -1.2617707849293516 3.5606758165983439 0.70550047117866399 2.528560940997802 -1.6006186130027058 -0.059486132643051734 1.5895005023929303 -0.0041303895387852715 2.0144713874069731 -2.5342761705891306 1.0577523313204682 -0.96360181288449354];

% Layer 3
b3 = 0.55991350045703892;
LW3_2 = [0.62706423501330388 -2.2053032536714143 -0.25673729738216389 0.61824389926987233 -1.0067384446043735 0.78177253901511079 -0.3116057445221242 1.7341292755291093 0.37285090886990846 2.1813985453914921 -1.1787071130904812 2.5887158637504437 1.5563703840476837 -2.7372057413873212];

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