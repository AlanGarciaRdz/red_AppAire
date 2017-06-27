function [Y,Xf,Af] = SOXOblatos3(X,~,~)
%SOXOBLATOS3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:39.
% 
% [Y] = SOXOblatos3(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.6194026601419593;1.4534304514870897;-2.1491002668011268;1.5494382138176221;-0.54434083937633049;1.8993435500448788;-0.24932958796518631;-2.3838340683030075;-0.66365492217902589;0.89866156271846653;-1.2399447933623429;-2.2773017767697263;-1.7647520975312487;1.5372733709639606];
IW1_1 = [0.3599185642079219 -1.2428512980520245 -0.81953843673933557 -2.5398864936567915 -1.7145656822136415 -0.38444828390971597 0.37983294731546446 0.93564610466326781 0.95540754207763223 2.373702810225482 2.3002164199406865;-0.4639406899070343 -2.6707148736256956 -0.19704508005940735 2.410328215370269 1.3100239203516846 -0.081416249665764009 -1.3252481214205789 1.1313525233779624 -1.2728322187705279 -1.5300423564184307 -1.3260148568185282;0.69229475565725673 -0.052303478339779316 1.036292289574291 0.029076960112589364 0.80278424350867361 -1.3319753451820551 -0.07172924533575975 -0.34396395552595022 -0.62092563902128428 -0.16449800171720316 -0.69761097850874765;-1.7264016434817415 -1.8368689714240156 -1.1929027008553457 -1.0694330339434419 2.4009801803158877 0.80897941243020921 -0.83309516280124829 2.5218256481283188 0.26299522728895736 1.7103863940631523 1.8292367118393908;-3.9550174415640211 0.15361505397334915 0.2952798598723963 1.0446246369019554 -2.5859066678245779 -1.6370091949924246 -0.1357512626779605 -0.65029633067320392 0.17423075853835718 -0.15584217467051292 -0.64929603815876802;-1.4016760872329654 0.060177183949649923 -1.2057046288451236 0.53091066199123105 3.9566903635171631 -0.086752186139877924 0.66404583716739718 -0.53552314374655852 0.31127793329705378 0.026540285624426507 -2.6240180145562828;-1.2884733608334895 -0.24384559314839918 0.15115359184358729 3.58335250655951 -3.4192410786254466 1.2890335811789835 0.64778123242818331 1.3111723408494595 0.5856687687493376 1.0167287252119594 -2.0536144550179243;2.7636026788052588 0.073613944047671395 -0.78721525548082383 0.12229876916719207 0.23837332128547872 -0.81794959281976809 -0.0016403584928199148 -0.63439526362439158 0.29539254933165954 -0.18490560361157615 -1.5547610554071953;-0.82850703243960366 0.11480039124155272 -0.37574689932986699 0.14735038679020465 0.40556895488481909 0.58658182653508784 0.62442272112018826 -0.084543128993702615 -0.85641988779356726 -0.0050582140526396896 1.3934329758847053;1.0663286216454346 1.082473129407268 0.23412855289812193 -0.61509343873578326 -0.75756549884389823 -1.8135627698836401 -0.93410461951092738 3.1587154416311032 1.5048516237554084 1.3143182621035328 -2.2705701340708733;-0.029968633462850568 0.090162136339019677 -1.8973783239731006 -1.9051348336143854 -0.17206994288229105 0.88666414003185035 2.2288406609865987 1.8553953616747125 -0.34288797807512816 0.023701539192104701 0.29370651070598419;-2.1451530035404769 1.9045774398540454 -1.3773398032156574 -1.0505880544772703 -1.5508829990298798 1.4355171074362816 -0.16328945104654277 -1.8468347753217458 0.076936034597793829 0.85805249899247105 2.676149067298959;-0.14081664562832474 -0.28341601098708658 0.58938156531811325 -0.2253406907876585 0.91114740873872158 -0.13760586931570296 0.58971411451668898 0.75072195198762803 -0.45560837588911596 0.717487957833012 0.35431892803818399;0.77209208269487395 -0.6398560631719602 0.71540938492355588 0.70146822862887603 0.2112570477360014 1.0341804220754443 -0.78403612847794402 -0.82257556600413584 0.73764568718149437 0.92444649310097582 -0.13805137273485379];

% Layer 2
b2 = [1.8148491838167111;-3.3210991159155698;-1.5904246899168704;-1.476738229817893;0.66805229914738096;-0.14149079414317967;0.077980208211552646;0.75960765151478071;0.20724595784514538;-0.51657973122780698;-1.4066704590852912;-0.65254424354104057;2.4160064147620774;0.61248608812798266];
LW2_1 = [-0.15021768629785645 -0.19578067141793365 1.1434761493291079 0.016791690584877408 -0.39091532334383083 -0.6075429116663642 0.45447232311951247 -0.35825047869018523 0.53176387726955165 0.31554475590016084 -0.32142316953562411 -0.17117929418249697 -0.63189450156335303 0.062923333138266174;3.0878728782311526 4.4185182134587748 2.0071288081398513 -4.0623290673040922 4.6642720332067498 -5.76077796114365 4.1803944018812045 3.8838316126903636 2.0626387622817339 -2.5652002133299954 3.2073166597943708 4.0328446736233881 1.4623601610929777 4.0730665104118282;0.12089902071579582 0.084767174350422678 0.93557473331898722 0.34063798217194191 0.072332037088511533 0.29893581775623379 -0.75489480489727678 1.2095040666402082 0.97982710864411693 -0.21098831771335361 0.50215671257919114 -0.022225726324459197 0.29770839589613074 0.084718092310449578;0.64375544568620358 0.68991492756356942 1.2175114167206234 -0.21104414334248869 0.48596348977719672 -0.82448990258538402 -0.3707276388744799 0.09989239376103734 1.2399782064495122 0.42759643249770957 -0.061438500581721595 -0.88274357637318412 1.036232086551677 -1.98689308527807;-0.25425528251360585 0.33896271190173305 0.59296808540999535 0.20735281940529404 1.0240690395849643 0.80050406178203271 -0.67052321880720755 -0.024557456435608211 -0.13174984207086959 0.045343164631533595 -0.86188136647387403 -0.38936753605010033 -0.95402875925983588 0.28841598250368811;-0.24049336526250656 0.055016678861757956 1.0465194144109264 0.15253506654056584 0.12037091469905239 0.20483445349387633 0.3515211697257774 -0.6341739082865463 0.55699471282034352 0.6519033632418465 0.53710596927324317 0.18382874584305819 -0.13334197232415274 0.37160579684547879;-0.36944341789841384 0.20773926244629043 -0.070134787331566265 0.35200729901971434 -0.89288142165932316 0.80202821837487526 0.6263013638183581 -0.34573929547768079 0.55607621952228536 -0.48083278316771749 -0.43535535584042595 0.17478373494955352 0.36352472027011917 0.33673228943548156;0.61740358604201595 -0.24605887080799213 -0.63206151356906604 -0.33492551217317712 -1.001308559880558 -0.49400984073248189 -0.034511214846380311 1.1423685757585447 -0.76197246035458566 -0.73875019986501811 0.37869145444311952 -0.4942586280470147 -0.6196405478196011 -0.58960578333272518;0.43112899693885492 -0.57616427447754837 0.19002538644478081 -0.37516334824757414 -0.2534551742527747 0.01020454843153719 -0.51988526299531956 1.677399034655028 0.16910939489303703 -0.44504390747176353 -0.0077569950382082864 0.40727807050146253 -0.090001842137069021 -0.49278383572420897;-0.07187261236626119 -0.052067504784392114 -1.1255331625067382 -0.14703358309562395 0.097226550734854283 0.041619623956481874 -0.27731869178242874 0.18693647725139495 0.091713942128865938 -0.15465045450305281 -0.26302822748364507 -0.22241862805522677 -0.966891356709352 0.2419785934893528;-0.26573178112531742 0.073795842945155232 -0.18680219471038115 0.15976806539528271 0.33133259937700776 0.35299910438148369 0.21587462865512858 -0.6479663652977411 -0.012944146156900149 0.74416711343852271 0.85482405369497816 0.20635071756691026 0.47122697067047464 0.45592839809346924;-0.89388321853448094 -0.55264661624536682 -1.0475802833970134 0.35302383912415253 -0.70962252158417904 -0.84567215896023984 0.50945532144153571 -0.66166776047992193 -0.36601503068743346 0.4439366728914213 -0.21533756237236415 0.037130124577843843 -1.1230538863715454 1.1214498683744705;-0.11828723038762576 -0.12312283618586037 -0.78179743683661085 -1.0060390388254361 -0.61983565507093963 -0.98654173727769456 0.28396834766580309 2.30587601042191 -0.66716064348807491 0.38799643644764314 0.10339012620022026 -0.58328988109287505 -0.71273049309995196 1.0478217729802251;0.078697512729139607 0.14631154322183645 1.5171135508447076 0.41605704028869495 0.042671145102090108 0.17404205925514749 0.19915488826210437 0.055177302979802945 -0.81350267221123018 0.036751682831232466 0.21981597548877943 0.4115918092909458 1.2679871434830161 -0.51918262321330788];

% Layer 3
b3 = 1.2208856291045591;
LW3_2 = [-0.36067666178936236 3.4228553527611032 -1.7512455671603666 0.9691086314536641 -0.071757449739597565 0.70714996881967784 -0.063882997890022997 0.10747075769983806 -0.058617164273006145 1.3696076254706304 -0.50891412714333062 0.187350455812268 0.10430906316226238 0.73657038458719715];

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