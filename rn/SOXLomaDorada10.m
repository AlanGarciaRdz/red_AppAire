function [Y,Xf,Af] = SOXLomaDorada10(X,~,~)
%SOXLOMADORADA10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:32.
% 
% [Y] = SOXLomaDorada10(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;11.9760479041916;17.6991150442478;0.00572573718866304;0.0175284837861525;62.5;0.0546448087431694;0.125;90.9090909090909;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.8096986110879199;3.3517123933708568;-2.3033055654321402;2.3013889561714276;-1.5922982160207757;-4.4577011664835515;1.9526264726777933;2.0186744531107403;-3.7664668841594096;-1.0265475517207097;-1.8706655778623171;5.4267155279424504];
IW1_1 = [-1.200602868181452 -0.88352077531777817 -1.3433647986683122 -0.36089987139508484 0.52650779328841524 -0.99175041427272292 0.54482876902672184 -2.8227693854495799 -0.0012487780641598223 0.77565587723437335 0.45193976974052852;0.28473241337615679 0.056379925950672705 0.89847122803570378 0.47271200161642019 -0.18360076713317242 1.0554098541235062 0.27974642788289311 0.73699743050341504 0.11114332539762325 2.0533093836605101 -0.68441983754535374;4.2439954392134611 -2.2389714006442394 0.018701159364088379 -1.2947261331307052 1.5420656124458882 0.11182748987540263 0.1166646837899766 -1.7063148918500555 0.51238135077378621 3.9300853577736072 -0.8100848580710851;-0.70401239179539299 0.95656925237856072 1.097020490539085 -0.17595161214796456 0.6814265938176356 2.4927039005954978 -0.56875943694389197 0.62740806491121814 0.66181627747140348 2.9578791948189789 -0.43437390363566952;5.9319672168991433 1.077475759494011 1.078358161603111 1.6579810584738375 -0.68143450700754116 1.6881870537322989 1.5581126645375951 -1.1800360718875627 0.27273236373120058 -4.7572347416608443 0.52511530279462426;-3.1036609546243321 0.051870175447486504 0.31777977968879295 0.85451699454089824 0.67832780464575659 -0.24906426392709122 -1.1574898547321186 -2.2030413279349035 0.18619431465027531 -0.87874160052061134 0.16033465050522749;2.4669862284744615 -0.3703346602953792 1.7101545158400207 1.0575420406774412 0.085779737417886748 2.3463686486543254 -1.6105872077996313 1.5056483279199691 -0.18838427825426415 2.3983865782491112 -0.32303265680753074;5.729717827852868 -0.099632155029896571 1.1119388768440344 0.76449407471591024 -0.39518078078258906 -0.31853125195800036 1.4707552543251021 -0.91266426844907578 0.42176840969245227 -0.66512193426026323 -0.84949993666352286;3.3076622142365077 2.4837679407746749 0.40359124067580415 0.4627825736182371 0.59614817368783546 1.1983727904823238 2.0261247937739104 1.7776104055306168 -1.9118664914697898 -5.439347518295981 2.5115541890989377;-5.4975538389911138 0.20677631771898264 0.13999696873574713 -1.7406764298592441 0.30016363606241925 2.0110210319771857 -0.85361366726075405 2.4741509162724133 0.42172802155912592 2.7644964013156583 -2.7366719357664215;-0.092398444374194491 0.020279593343310191 0.11318372676703498 0.44270574345474567 0.10283578322845978 0.21947920135543761 -0.70474977636454106 -0.29402993054838089 0.097714171809213365 0.79202927535550449 -0.1798810315407936;-0.74926538955092525 -0.011693601581696619 3.4196010201725819 2.0451224710214633 0.10514675861972528 3.0324884991444629 -0.19097275390378599 -0.67028522973026072 0.72269307199416188 2.8660461749973205 -1.2205851102390324];

% Layer 2
b2 = [1.1923551390559646;-1.818724898335379;2.0544109418120131;1.1219411476323167;-0.3304864232682706;2.5318253968160334;3.6767394809654239;-0.49154320902036752;-0.41810404152800651;1.880892859372904;-1.6768888676248279;1.5437736361462151];
LW2_1 = [0.22149540080870497 -1.0710740615219227 -1.2679931161431661 0.26230990479338512 0.39438169974487974 0.79002308236173446 1.2423703840757498 0.54136506332292866 -0.13482595941531611 0.37022390009497569 -0.42096435197848109 0.21455956502337697;0.24197407977660323 -0.11194373777584787 -2.8797820557290499 0.014346711792341288 0.58084352557492913 1.0972185787357867 1.2346104711063086 2.2826856351568821 0.30321542954473335 1.5943329083509199 0.55106602242179026 0.88428269341904131;0.18499057358520293 0.86149787676258383 -1.2181722571222586 0.40775921562246897 -0.98437627829427721 -0.38992909354042471 0.098413698943405278 -2.3523815763959557 -0.22931971617246394 -0.30032267198943208 -0.15822940195882515 0.2443914953476739;0.48735597349326953 -1.1124357282491746 -0.20473680915685027 -0.77121017599090136 0.28271893995451486 0.081700479613961874 0.8399078641480876 -0.83147009004464623 -0.29158941389373955 1.5025203037908799 0.49543693903890501 0.042198077574554668;-0.23112053013707345 -0.42767620261165795 -0.017345885780163061 -0.12210722492517895 0.20977422266960283 0.96827019367738421 -0.37592254814427234 -0.24763067100019853 -0.1794112102672388 -0.20092387990642693 -1.0204755187819974 -0.53250497627972071;1.3950565837506994 2.98264344495544 -2.3347124982244098 5.3883551351527288 -4.2666459940409043 -1.3856437046548153 -0.33603304828802827 -2.4116526240530538 0.66093496839922805 -6.4281830673318723 -2.7728516382654718 0.26098239976405607;-1.19976335960023 1.2907592611276799 -3.9098166124541929 2.5467736316702401 -0.28762086119021674 -3.6133750827770483 -3.3336399972476003 -4.8753499588812925 -2.5699967553484235 -7.9273187998915198 -3.0687638374690054 5.2295604566602494;0.17192017416268929 0.4176559944915913 -0.33403950009324285 0.05618744798292042 -0.12402857984468586 0.091607503469764512 0.36910997739324486 0.40989434939707331 0.20159261267637485 0.28734515673948846 -0.61070347993398821 0.4834834971894213;-0.52081831474112006 0.83744296660485396 -0.041242050081661798 0.74887263764786249 -0.27190278491927639 -0.19365168683576145 -0.90927146388873481 0.82842908578103747 0.30802089495538665 -1.4997599806936404 0.29482720725338019 -0.003659728923354269;-0.41913218774746513 -0.40276278170490432 -0.33474975618161534 0.029575424767975977 0.12445616945071614 0.44987430166794956 1.2564555570849731 2.1902714001822194 -0.42369304805434416 1.7208142390695682 -0.63006510979813335 -0.55992999707875901;-0.32429286463564144 1.4229620879749318 1.5329172616242075 -0.38543457687194155 -0.52511766534709547 -0.99647923129308846 -1.3445369717943214 -0.32637911596941427 0.27979662073477363 -0.19022573875969123 0.20718674719128438 -0.16273532450503858;-0.37477254720624259 1.5620791534582315 -1.5099214962072569 0.20810880431643058 -0.86880840216485566 0.56169906770115241 0.49802430917106494 0.61504097564633209 0.053979612846963662 0.65379284272552107 0.65086337999146449 0.60552828522818392];

% Layer 3
b3 = 4.1503492564002888;
LW3_2 = [-2.3780710623818013 -0.10995260209374683 0.80089716577168701 -1.0922684890919341 1.6964005660824213 -3.2562471827908297 -2.2587553801005367 2.6136611868416111 -1.0598693676963495 0.444848126634039 -1.698100690072768 -0.90878394856067723];

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