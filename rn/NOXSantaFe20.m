function [Y,Xf,Af] = NOXSantaFe20(X,~,~)
%NOXSANTAFE20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:52.
% 
% [Y] = NOXSantaFe20(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;22.7272727272727;0.00341273633199099;0.00632111251580278;0.294117647058824;5.42005420054201;4.04040404040404;3.03490136570561;3.96825396825397];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.7172955247394945;1.0574103147240528;0.72192868359486173;-3.0779365386785349;1.2128372612864724;-1.0228431042426778;-0.23040574183732535;-0.88958233475532433;-0.68605396506694272;0.4877939476999909;-0.0070744294225286164;-1.7501790161074953;-2.7646226608472788];
IW1_1 = [-2.8321114515923762 0.38209536064197214 -0.37576757002786071 0.051236632993196515 0.27747047027101102 0.4450460847063471 0.38248145860489191 0.29337041146433224 0.11344555073844677 -0.2590524600356589 -0.41307116593274368 -0.33193217495786276;-1.2836306633119527 0.35016929964993515 -0.67087592037079802 0.29317105271902677 -0.38406854716137107 0.36259798339186194 0.098490362769356049 0.33524132373878668 0.095990131922926686 -0.27475716291566549 -0.26701701385586618 0.047817641025144811;0.34939543482658109 -2.6540283142334498 -0.29596791457981342 0.12550846264865689 -0.51476453060908356 -0.55385943637927804 0.027846908912745709 0.14658494169624481 0.63219228316159304 0.62036792338548652 -0.53386640009175923 -0.13755289534806234;0.39350068567364538 -0.1711140946208112 -0.27797490280885212 0.36361251974148595 -0.068278013305232657 -0.20693626045467411 -0.2015076278742241 -0.70773704049698538 0.41707110081333726 -1.9476969031667821 -0.63644415656730691 -0.056633894566539812;-0.96672443508759998 0.38868310063025896 1.6062806980962208 0.0031122310036759658 -0.46276030719224359 -2.7586629675032874 -1.0222138734202493 0.21078063197473376 -0.040763821527317112 0.65253903026834181 1.0068444606603215 -0.2733219060548675;1.5194439820941081 -0.089761679952747073 -1.8258815564538955 1.4286009451698687 -0.80200639854224265 -0.2690150882940347 -0.63805045979526209 0.14635835554521023 -0.44281510059488022 0.36522898831370559 0.90957290867569096 0.33991814842863977;-0.60344545379219217 -4.6940104188623266 0.65595941597735352 -0.73680496357647884 0.098943941404195074 0.1892369070604859 0.14069031837981663 -0.04667012214282272 0.26343360571915009 -0.084046013442252987 -0.067428594710918416 0.29501300211816139;-1.2161529025967388 -0.77773347196880849 0.29441086585061094 1.1843009321642446 1.409623742824538 -0.52360587060149955 -0.26816091967721661 -0.44853294245637387 0.91300143084459717 0.1453681090202672 -0.37457119646086345 -0.94013722094218011;1.3327128002984652 0.73359841768474632 -0.24630232619903203 -0.34419644976721064 -0.29579882231671739 -0.54643898436086558 0.3576857538082423 0.81428205231476081 -0.60138875168851369 0.71828977233140301 0.74591960782309119 -1.5237695918990763;2.9977410032095726 -1.9439717990263579 -0.23647375785373201 -0.95651691876395484 -0.80023882566175053 0.39853397667098589 0.10522414670825743 -0.44105479366657807 -0.59900885530320014 -0.40763262484684137 -0.51594645928809835 -0.012164098858458011;0.2804020112708181 -0.44570112560706565 -0.72636661023081239 1.0323740717323735 -0.11785082250887413 -1.108350997901822 -0.57295567275257098 -0.27962960826655103 0.67634539358831602 1.6135578808047535 -1.2603540668696365 -0.41556645165233869;-0.44126135453843368 0.075596599298751344 -0.13638727312988674 0.2280566793459389 0.8518392030193227 0.40936603970392504 -0.22691549237268038 0.77431207869176821 0.62767372082238537 0.48537042977851313 0.66858025326814485 -0.40366924278752714;-0.48187675309679184 -0.1930002204767875 -0.12651758886305817 -0.75885083291382516 0.20310882625377361 0.19517362689269668 0.4824494193797193 -0.31356982896018409 -0.41441613520706438 -1.7782752909089263 0.3962832194167647 -0.34282408005962628];

% Layer 2
b2 = [-2.1009625468682644;-2.004038259905355;-2.0250690067524255;-0.92821276712778011;-0.8045551367178182;-0.78213995421130023;0.67094340960231635;0.62953323092210678;0.7752486866525139;0.049303411874945684;-1.0870444856099615;-2.3666525879632894;-2.145607485658978];
LW2_1 = [0.11811436671072598 -0.5827516999114799 -1.3629529507625353 1.3973991986685914 -0.3481252528218593 -0.64179010949258097 -0.62613933837499036 -0.47055927750789589 0.68734386678312753 -0.63845332672521393 -0.5307762861763291 0.17748194735897738 -1.0038074757353217;1.3394569223887427 0.099894108755981287 -3.9181091376458292 0.57849545589531104 -0.71398185491222155 1.3032701236312352 3.2345360363071838 0.38881034524846747 -0.17339589005525446 0.75021966867151213 1.0884031651769814 0.80551768469934326 0.425755758050962;0.95176956959100045 -0.86813390800558699 1.9350388562775196 -0.12479973300069437 -0.68612145738900832 0.81663647468042178 -1.4941114571447909 0.95848296755536122 -0.59956237721712935 0.33606635609919311 1.15642447919755 1.2838800759779376 0.97316199378648394;0.5767371641260256 0.22811598948453779 -0.13479781771073557 0.58675364935663754 0.37908548337451714 -0.54984448432658806 -0.25462109234581604 0.34950602255062052 0.45415013076857941 -0.22961174355481337 -0.77580175731368273 0.81607296017858277 -0.78907089508662764;0.057148810104751618 0.68153079331387645 -0.18726544847406704 0.10656873344246096 -0.012403219368411759 -0.29843768978573953 -0.89649601932132539 0.43332551265715213 0.84972089402044126 0.058509751174088707 0.17671424106119829 0.95037087425313094 0.46548996838829482;-0.19909292496378278 -1.3302364897856798 1.1025012832654912 4.0215479001325187 0.47331817973518459 0.45108774459868911 -1.1704202796987424 0.41735923428835403 -1.1297340978060646 0.48991299135918248 -1.3561691153009388 0.91362502648213695 2.770696594644539;1.0069046649926596 -0.36651515335609425 1.4597775412027574 -0.99672432158794133 0.5483521691976242 0.15513238817925412 -0.080341311576443808 0.3830405252818756 0.18681387236209354 -0.10618515020497368 -0.094577180917355091 -0.18514692481774686 0.11187925187695516;-0.56450862343261354 -0.33290737810073323 -0.94573885978371797 0.22904376305003307 0.24910413177821089 -1.3075311102026805 -0.10137241473882805 -0.73221845783402173 0.18834989013108369 -1.0209791775483545 -0.21200764080201012 -0.71009454352606305 -0.85153654420597069;0.78516743264245692 0.79375437987593422 -1.1404284127644362 -0.44476586720523359 0.88263104119675106 -0.21273628554732102 0.53643158625013676 -0.50349764132168418 -0.46295660190712595 0.96830641651851557 -0.80447140907475001 -0.32758352769422711 0.18559510447451144;0.092504751319179374 -0.25794692003486674 -2.0247647209467159 -1.9494270127291879 -0.60357437630110877 0.88765054502307339 1.5146940432033527 0.88720314308777015 -0.52495265968629845 0.62086513923050202 1.3097253837471936 1.1420692806103538 2.0500962489599304;-0.70840066709789218 -0.36777124104310144 -1.8215120394979669 -1.814361084809988 -0.62927969970620268 -0.055361031535653159 1.3557721346070388 0.86631491041556319 -0.3750275887182456 0.43136394082842022 1.2810242659432332 0.11745132355421907 2.0987361276729182;0.58805155761267214 -1.6724378780673217 2.4406485068926913 -1.5526127095530551 0.028530289124647133 -0.042890981702838366 -2.2348440977390709 1.2299788121906168 -1.4746953526118896 0.90349450311015433 -0.57146994033705467 1.3526000065568156 0.80257516584278144;0.059597751292798748 -1.6634010469049669 1.5338572972990239 0.68104604089506293 -0.77709721417427402 0.56081304107789964 -0.35863044105914316 1.6329578900968096 0.53104678540032035 0.79550700400667274 0.19507235556639174 -0.39798219168458465 -0.63594873300429366];

% Layer 3
b3 = 1.1660974166211078;
LW3_2 = [0.25826125746273743 2.2046704513237785 2.1882904468850373 -0.13358608262842231 0.013079961405616077 -3.513636366589469 0.29089204759915777 0.14108007787222215 2.0235229946456847 1.1588290198345941 -1.3700818217319988 2.3045244661974036 1.3530887238190912];

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