function [Y,Xf,Af] = COLomaDorada17(X,~,~)
%COLOMADORADA17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:39.
% 
% [Y] = COLomaDorada17(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;17.6991150442478;0.00572573718866304;0.0175284837861525;0.0546448087431694];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.2447613876457559;0.11369682263632418;-1.7341013920985444;-2.7777401540093312;1.108147847544255;1.0621966035648029;-0.88625513525453392;-0.075075813087189872;0.62959896584764052;-4.3946501946239751;0.89465130909032564;2.6163626405103035;-2.1893698684829195;-1.9786900678217629];
IW1_1 = [1.2973559463656117 0.066203407741972142 -0.34653993621002749 -0.99163626620246226 0.13268382180326077 -0.62843536627314933 -0.079676209772493609;-1.3299046155554664 0.48176958569342321 -0.12101389553839495 -2.6165485059776494 -0.74459053231849459 -0.14030063019736533 3.0348792624894689;1.4903761314580817 1.0055873293175879 1.1719200039027606 -0.14313534706281783 1.025683366017444 -1.3369757782937826 0.85442840464491931;2.6864728299360268 -0.12699100078097664 0.36763797630453376 -1.0081169627646507 -0.13984479387414539 -0.039576163784362281 -0.88509173529196317;1.6453647609454576 -0.2814770155894708 -0.38836201675236481 1.8670826770310112 0.012471470400696467 -1.0202349515136528 0.63460540743428084;-0.26931160823377837 1.1570066292499066 -0.11002360308632037 1.2080232973015717 -0.23959716757193952 1.7072950701513885 0.6864486820149005;0.33831700061725228 3.2456504091742127 0.031634995387383701 -0.065508665480052325 -0.081638357122963606 -0.015190058482514235 -0.47487646552053236;0.12101747262925204 0.13606919206101231 0.55535383220136947 1.528593361324724 -0.48380692052749863 -1.4006023490193769 -0.014665628421467732;0.48255047408213148 -1.7753645338321997 0.35132295971194993 0.13850556684591078 -0.14321156137647367 -1.1580547779865957 -1.299476169809848;-4.4161574775114483 0.60322787478249895 -0.93976442185621611 0.51012243900245557 0.12784707891376096 -0.84986006116902957 -0.99014626958438035;-0.023212734821526075 0.13384189820184914 0.37138318367724499 -0.76202984100195981 -0.10286407852263915 -1.1404202246852628 -1.7128828093551041;-0.091593433492166032 -0.14496552747026392 2.4926102427529466 -0.68261195142154374 -0.22268680639793526 -0.012773416095197186 -0.99506459028196803;-2.5282248878428288 -2.8352265579979203 -0.29353030970342664 -0.10683995422886491 -0.1772424125062029 -0.067873824741416899 0.28346260651387528;-1.095510019283966 -1.8140190565971899 0.40097618216428732 0.3636109710194611 -0.34284820889542927 -0.67076648956768481 0.066061820722724887];

% Layer 2
b2 = [-1.8827787658722748;1.1284585073587052;-1.5509209685431349;0.68964881855550586;-0.61824914507028061;0.097568986333198035;0.4484542534756748;-0.18005464387610623;0.087550721762963107;-0.76111515474877189;-1.3887060161524758;-1.125890372350101;1.701994588442348;1.7622033888362605];
LW2_1 = [0.36176480573193676 0.84757942795213548 -0.27853495191530847 0.89576079248735396 0.74697858112968363 0.14447142961248532 -1.1721436976546065 0.18510112595107342 -0.39510635554666867 1.3232492916450418 -0.31874695868763991 0.73176708493244735 0.47423053235894191 -1.5934330819281526;0.50583526389641498 -0.099758932786216184 -0.49876683433801888 1.0319254727631881 -0.71228413555306447 0.3869319166414516 -1.8586641970282005 -0.44047216541359874 1.389550116885327 0.61515309892545067 -0.42172099467234953 -0.59343229607670744 -1.4379355793604345 -0.17798897225288229;-1.3250971648347754 0.42566583529628943 -0.63473689777430753 1.185650911476837 -0.91361974099223076 -1.2922360357998002 -1.630392730475019 1.7137922893632569 -3.3368339448353805 1.2650300317627465 1.2225665086365174 -0.27583089506273328 -1.5858922550528642 0.15004851100241581;-0.66859810795129926 0.05765223882647403 -0.61558582712431464 -0.2423666388535749 0.36323732284927446 0.17553740524956113 -0.42329050322506823 -0.49198648521226751 0.97684099340239594 -1.2614894117027742 0.30040899464773713 -0.60045235874846048 0.0083031732410299829 -0.65446217464388101;0.30133136799109433 -1.2853334955176703 -0.031689499862629159 -0.32313398443730179 0.52569637823437299 -0.019847887236193421 1.2927622087916875 -0.93687949852288577 0.4996958660396561 0.10919503135471509 -0.74218201106294945 1.2666857577942987 0.27964904057420431 -0.91134795898792642;0.02580410780743244 0.07240444896204197 0.31545715900667376 -1.1218827003013747 -0.84775039731171886 0.70888365809154397 0.87452234020397401 0.70881696112277892 0.3825951467978092 -1.6687470791728045 1.0983197484960754 1.3529078384307327 -0.28728795789379241 0.16086224113020658;0.11054740949131471 0.92826775555221097 -0.31520367642358427 0.94744261678609154 -0.055143766382795292 -0.080284941931346471 0.27918600074306399 0.20777573841436422 0.715887364108448 1.1830571447039433 -0.10808043052443177 -0.55910856419244293 0.29907541096139173 0.040012762179783931;-0.22627899850788127 1.8154830249782739 0.29596397734475871 0.072998428947606109 -0.19436083072550914 0.29536012355147778 -0.63257668720553828 -0.034046109779907602 -0.34755098348901875 1.6374274408159535 -0.74617834259890792 0.89858873249728255 -0.16271944721025719 0.69670015175118161;-0.28781639010683113 0.98067653139196997 0.19990837867589348 0.24011292325852948 0.15568744569878359 -0.33306129059434658 -0.75091366910823765 0.58490106566848921 -0.32322824759989033 0.37889924562067157 0.14933355398353523 -0.65487558719669792 0.0098028374997369792 -0.23501628532034807;-0.19791743763993211 -1.1602339088626343 0.38208989104214364 0.030315888049557958 -0.61130448976465257 -1.1353695158081225 0.011702880662744374 -0.078327541043934315 -0.38389784237535374 -0.45224908365179073 -0.097108030999702222 -0.57727418030123845 0.85265924233717494 0.20151126282266538;-0.76936556666277922 0.038365905437897953 0.80816601157517087 -1.0235625388963616 0.68110257212787506 -0.36854453853435615 1.7446239620429105 0.23239749107009552 -0.56068353275505389 -1.6650655883866019 0.46853061453735617 0.25609823018369904 0.49306117560949958 0.42557813558199431;0.29935694146540687 0.4259629929894917 -0.764934388932626 0.84319978921997485 -0.00023141609079227563 0.29423882606415175 -0.11222963290094348 -0.19817162003624603 0.60621486315284279 0.82565012100974122 0.28771102091956091 -0.61719138577134769 0.12954864465865781 -0.19642845391085853;0.78731266072469208 0.078645087325978247 -0.84232970631627435 -0.36877460409117691 -0.17868575142833659 0.17052348388577118 0.89196822401090059 0.037829182820784832 -0.76036237519560179 0.68937275763259698 -0.65784842180961356 0.75314741863499701 -0.20597861996999317 0.21489505784978932;0.11286437629407618 0.65928731828372533 -0.32325622201964188 -0.67097418326459979 0.24670932605850915 0.57835825142288166 0.48922564606591717 -0.020793507858005173 0.65847181844947267 -0.4362116771561228 0.77144279862393761 -0.14303224115616395 0.029736643524558293 -0.22968893065910184];

% Layer 3
b3 = 0.10478120373066308;
LW3_2 = [-0.69207720868152345 0.8666052837848689 1.2940888660158358 1.0257416813729123 0.81850329411519762 2.1645284373145062 -1.17274658942521 0.68914853303221046 1.2371409900763886 0.88850849159661938 0.86379152041309237 1.5833443293835689 -1.4297014810387023 0.30282188980016739];

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
