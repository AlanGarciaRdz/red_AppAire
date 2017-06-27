function [Y,Xf,Af] = SOXCentro13(X,~,~)
%SOXCENTRO13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:28.
% 
% [Y] = SOXCentro13(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;45.4545454545455;0.00627943485086342;0.132450331125828;27.7777777777778;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.535018902724836;1.59380511526438;-3.0104086081361094;-1.3133027769559682;1.2800814781785723;2.0846277423245665;-2.1748494243294032;-2.0265824015735103;1.0279035785592827;0.2974210703429796;3.5513168489262643;-1.4295427040587194;1.733191745550712];
IW1_1 = [-1.0233811659680918 0.28820558480029035 0.30150572647124979 0.18290101271766229 -0.40734244628989563 1.1285294245272428 -0.60649453693789113 -0.0051077299200027355 -0.11752088700543886 0.42236453940330893 -0.13249717334509914;1.3131900169912483 -0.59942714080549353 2.4333576819531375 -0.42384592198480808 0.1703305431173488 -0.8290638167561154 -1.1581587550590735 -0.865704104943818 -0.4036475484299098 -0.80615508670401947 -0.15858163703620443;3.1252680199190497 0.38356445941090567 1.7715020991350172 -2.0364258113011915 1.969909237059098 -0.19985930995777601 -1.8250389177827668 0.54138313438485441 0.086200328513598157 -3.1667889637233047 0.68248736062482507;0.23368105538760275 0.057552142735848764 0.4925868407035785 0.82917536940400138 0.28312610871765603 -0.69948819841827037 -0.08318280978228812 0.39326746621400549 0.91561241712788488 0.6892312967172185 0.63846438447919762;-0.72294848608627427 0.16419373133973419 0.31498347407362437 0.12957721291467617 -0.75793507390936976 1.6196719104003536 0.18083034009065485 0.043640771116404589 -0.36999821115417458 0.049233580249921721 -0.65671705568117744;0.94894135206400354 0.15550927083723692 -1.3649128749273687 -0.85619111404413306 -0.21063569107067875 0.037627984934651151 5.314222641544732 -0.73265512639776709 0.24326216286299557 -2.2982970984479678 0.1777540819776707;-0.077995362279116603 -0.059510001302746918 0.47177530882496033 0.24109395816175558 -1.5075905555064555 -0.37215300844234556 -2.7402557099166378 0.12765583153973789 0.12430751540694836 2.3832700411519312 -1.4671894145074891;-3.4392766958266843 -0.076575999127368663 -0.49464475472916558 0.49045093153826386 -1.4560730452779667 0.50803658465678359 0.47387205303296531 -1.2255524726089213 -0.24632990899389084 -1.2606845218561145 -0.2530077217078982;-2.5010706028900924 -0.46331594478294547 -0.64981372720200492 0.33982093130667368 -0.96700147017705707 -1.6165861454457326 2.4501196195946378 0.1337964087856805 -0.15126850691078236 4.4798758205629809 -3.3660307566895753;-4.2508845459510463 0.05624162845672237 0.31850978665275431 -2.2559373399311631 -0.24203477754355002 -0.60832184277596446 1.5133344974432772 0.14767569204239289 -0.07730142505312626 -1.3168633473796358 0.31045130577314783;1.8833698167462529 0.068306190956879828 0.99670468009961222 0.69209806233806392 0.44907732115557236 0.51030931639387134 -0.69027271159608239 -0.0027388853082854631 -0.072562747652796633 0.85377824755167808 0.046078035729654951;-0.34419576557078085 0.26635456418549452 -0.091643697588059722 -0.082295093688162874 -0.98691633278343638 0.14413080528269751 0.54772574789143869 -0.71709991584357913 -0.074860461435078657 0.49967891522209706 0.14560554266117684;-0.3645493017930565 0.36589963133960157 1.4073161445597453 1.080637284864844 -0.11716589067371408 1.1611654190780458 -1.4749809151178779 -0.050298251316128126 0.41536944020006544 0.94921435069437732 0.34149171700937148];

% Layer 2
b2 = [1.8110683368650959;-1.2209908902486843;1.5086957182518808;1.5062103022282896;0.87206888540117555;-0.4183792406306906;0.47067457821346514;-0.3955178024057372;-2.9177028172732031;-1.0321495853005533;-1.1682049643753283;1.8916284937045893;-2.0500559581661766];
LW2_1 = [-0.049327436444605327 -0.074994844601384211 -0.72548703658717395 -0.43836967148380546 0.6337826061745887 -0.29002108382059316 -0.9438238734764528 0.59068725911013653 -0.59725403316410186 -1.572565315361774 0.12830334649803873 -0.18746571214146024 -0.22429860695805132;1.2104052247424075 -0.13947016485330288 -0.2921069468925912 -0.0095408172016872017 0.5093955516230273 -0.28793133321202791 -0.92585427099560136 0.36383149718184404 0.48294254929410108 -0.46707519478429899 1.0083212449941812 0.57539465718685456 -0.89763110002401658;0.10863443250278379 0.30143260275795281 -0.25743967313065597 -0.6576701567681067 0.97732993868887463 0.35101817075080644 -0.60858843946148822 -0.12809126822527356 -0.42406993612409882 -0.345390751013885 0.53291152079707904 -1.2370324180046357 0.5552195732769003;-0.2571575008641791 -0.096425986246637105 -0.85729445107414359 -0.90046123824768798 0.52349647461292292 -0.51908079773687954 -0.46811648231164937 0.63021319638986251 0.084237366119255849 1.9447208939328573 -0.33408928082848727 -0.60627188974897694 0.30480312149941058;0.57658296741989867 -0.30042555612480565 -0.54746352460821868 -0.93776030868153948 -0.64672962363208952 -0.23169472628554544 -0.72281020755694925 0.43054694255927584 -0.14816465174050888 -0.98597962489129121 1.0809402053638173 0.49220005467786193 -0.083381426084190177;-0.98987002580129524 -0.43805274320299048 -0.30757309717423875 0.052968964342509299 -0.63764771691033539 0.5341064419200372 0.40291687049133651 -0.41676004782419585 -0.19270712049146274 0.48162933769119498 2.043721079636887 0.68227147156749568 -1.1199279541666178;0.36384779920075699 -0.1475796203255319 -0.53857556752830194 -1.0486049395390771 0.16277654261149793 -0.064266451057335777 -0.47606844893788669 0.44454813805585464 -0.18002721645708988 -1.0484958408675435 0.83099383960916151 0.29509862742006043 -0.14754031728683398;-0.20426577222778844 -0.45682947978773475 -0.22921757616680558 0.0042145481508054083 -0.93568638639690649 0.5117505954617555 0.45206526512820544 -0.19318360566053225 -0.18279876949033166 0.42687596338192635 1.5738036356970873 0.69830737225376316 -1.2601964819446054;-2.9591074379628366 2.246816660960163 -4.1063723622015047 2.8222876560394079 -3.1042145178184977 3.1476309857103906 2.9184228450157654 -4.2586268221743042 -4.2522861224782194 4.276513813511035 -3.6333556644949838 0.71796720766235311 0.85431805671985128;-0.40132160275655815 0.048442699079852991 0.80084896880626322 -0.5269919692730477 0.0098316108513518546 0.46468238501807835 0.5079436617768508 -0.7328274149435785 -0.28720626881481959 -1.7608600459883483 -1.1815270220607736 1.1166316626531756 -0.06250446657154976;0.053801922777113445 -0.08068463682813419 0.026747043181907598 0.32716134951434406 -0.46161037824147627 0.37383971101122476 1.5463629046490519 0.12070487287174515 -0.44780770882243359 0.84577893712028296 -0.058353604909106224 -0.14074674703608134 -0.42084764410075348;1.1403723599903008 0.40850842112567032 0.26169133943416756 -0.81844890873304388 -0.69770328944414239 0.047719143553180271 -2.0381684105589897 -0.59813719050773295 0.7498798216916428 -0.66393447498490554 -0.40401638390250066 -0.38298534413878849 0.85247492093065758;-0.64560657529194709 0.0043759240265686533 0.060357399132623057 0.60872744903708398 -0.095985583055754831 -0.066957379675781248 -0.0095571569010376167 0.44752814222250031 -0.13010970482683595 0.58864975816885912 0.18338038608565393 0.070812979205739646 -1.0550318819756586];

% Layer 3
b3 = 0.28389750481884496;
LW3_2 = [-0.34901685062303683 -0.11843223472207896 1.5548196879872287 -0.85490737455649779 -0.68734424488739554 -0.47950972377247747 1.3034121152742435 0.57878090818363725 3.994159467771953 -0.93335398896078858 -0.41688089650407734 -1.0110367628508112 -1.5941114011271602];

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