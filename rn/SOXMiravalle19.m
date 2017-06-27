function [Y,Xf,Af] = SOXMiravalle19(X,~,~)
%SOXMIRAVALLE19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:37.
% 
% [Y] = SOXMiravalle19(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.0208986415882968;90.9090909090909;0.056980056980057;0.0063552589768033;166.666666666667;45.4545454545455;117.647058823529;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.2800695982050327;3.5262608811729614;-2.0896784444791083;-2.1851283684277489;2.7712896824736677;-3.9834295526441577;-3.421720288761291;1.8802965968176761;0.01675378033299612;-0.70102649547545448;-2.8297226423507675;4.5926795937930969;-0.12459429494333572;-2.7343915848526659;2.7032271169489337];
IW1_1 = [-3.5122243302755258 0.40698501849655555 1.7518653282185528 0.22321073619245685 1.8539526145305911 0.12649571617238003 0.72193850523299052 -1.1082434190656174 0.38098097976774981 -0.87433009011947216;-3.2464690728301382 -0.11128306505049436 0.71698322630913558 -0.70444824232246506 0.50581590606347626 -0.41882552781393434 0.65715899969828273 0.56486701551651897 1.5255517560226661 1.4619513015866143;0.20864853673269221 0.1944695392622858 -0.42869485237711907 -1.5177569178874235 0.076463233392127572 0.77008358192276016 0.093589820612891769 -1.5950950955606793 0.29836586207611171 -0.39319553147256431;1.7919544337733371 -0.064337027509002651 -1.503321271839384 -0.35405660308940096 -1.8614077173630468 -0.18620428756320984 -1.9706558904681306 2.1512487478423656 -0.057320192445138474 1.5103563969557467;0.11449624388899803 -0.14056825434813125 -0.11414759306245843 0.23510349200628777 -1.1879548283643235 -0.57705350256860988 0.05888325255572175 -0.36504854574654128 -0.33979817769508019 1.8963100154277355;-0.8274387496097052 -0.074648372819056605 -0.27716343402374682 -0.96301330315646072 -0.14332411922128491 -0.35194775594575373 0.86160012489953219 -1.5138575814277995 0.0015189339504856816 -1.2418942293015944;1.3310533731325827 0.097658465753962698 1.4530722257076085 0.81503908752554688 1.857531343828285 0.44608353708776344 0.63011870751166155 -2.4344703268717187 0.13434778544613085 -1.4731113192527214;-14.515847853467953 -0.079070645949940441 1.4184841688570471 -0.74467525560461967 2.4251709991959047 0.070468903999372431 1.2279394101372203 -1.1702791990673083 -0.73848116438253886 -3.0269680820262321;1.7894755718889126 -0.012140587734405312 -0.11508033721519735 -0.26465392436861729 -0.55715583531311674 0.21280333508291879 -0.00046108910109266389 -0.15238951122158295 0.48647107226260233 0.75979268617407836;-3.3400436733749403 -5.3588137135129683 -0.29041548570584341 1.4131688251005847 -0.82626907873877165 0.13437184319043843 -0.2935979272581381 -0.42863411244220251 0.80125619335724141 0.86378655649285208;-1.3148663665128286 0.086841334448938962 0.40037595167573026 -3.1928882143509787 0.10642037198158388 -0.023753073607174914 0.92056808327845263 -0.56362111744510324 0.024160589154901567 -0.3172238614151705;2.47465866678598 -0.0018711789663452471 1.5525884588295864 1.1688749702566872 2.0310634900693172 -0.61597400734194707 0.11726099442767633 2.025303926704181 -0.6067661184539126 1.0523990661499256;-6.7133971583031116 -0.10346789693405813 0.74907453882281416 -0.098564141680332409 1.9353501477139559 0.23592861054781039 -0.086497125772715192 1.0094388814213868 -0.48091357460332729 -2.8208079262817991;-0.081497104971589365 -5.7468883172337826 -0.19757198612618004 2.6824467754267083 -3.1463514808081894 -3.3384251824177649 -1.7254352477383024 3.0118360815098062 0.097867407385439961 -0.067166221587474109;0.67660727290286971 0.043367908416040567 -1.1177371585872915 -0.82805717117801725 -2.0189566766879681 0.081652681327262167 -0.042695275370626257 1.2676500725494741 0.27856972977856265 0.24826119141431177];

% Layer 2
b2 = [-0.86992913129734994;4.3042616407941683;0.23773022697861354;1.1219483169415221;-1.1512309816387283;-1.0191345540996402;-0.37385311661905318;2.6832814226842405;2.3060651101601022;1.1544433890230121;-0.22410742081040269;2.5905017858506678;2.2603729068883638;1.8857397197984656;2.0239955346996625];
LW2_1 = [-0.10137224593875238 -0.14895374679919227 0.44135999546394244 -0.082159920806600562 1.1517139390332483 -0.78609705495778781 0.044434682189221253 1.4973560760667786 -1.4511288695462878 0.27894580418799791 0.04350459997093642 -0.13038678525531275 -0.3241709352980166 -0.16951114689083674 1.4736414942134934;-4.6091519207077898 3.3700681509871848 0.0774393194337539 -2.4020755312394479 4.1564028230467054 -2.2969505589371932 2.4465881603880852 -3.3807706204473664 1.7312235074576183 -1.1186199940459991 3.8903164953614784 0.2555868658914483 6.8726252982260991 1.1243904203207797 0.67796409359998133;0.1412983754575545 0.23775801386739975 0.019582528449332719 -0.57870914237843374 -0.024783979295540479 -0.82742016864093415 0.20429714803817275 1.448603261685331 -1.1264698430281876 -0.010834391799945411 -0.35691909483488349 -0.80181214405540124 -1.4498350515408889 0.008682225660272852 0.047380054822011165;-1.6816879252904058 2.2773681474999568 -0.42812500621929167 -1.6513640596698176 2.1373073863217456 -1.1073809172876483 -0.73487059112518738 -1.764861529726355 1.0472423535973567 -0.64164048938729634 0.6390605683252284 0.92410823086894833 4.1685467405084617 0.33492286287636464 2.2772819114280241;-0.27413710115369821 0.39706987688588063 -0.49418922404438353 1.3964503027033419 -0.35490527654908421 -0.52499854646969213 0.47690849602091417 -0.41168142716813305 -0.97972128064785879 -0.68696393950989876 -0.35901002320015957 -0.25131324724763637 1.1018851178196039 0.58211651265366282 -0.62160778997231014;1.2793839219729521 -1.9429773074175547 0.4481112890115283 1.5760888015926575 -0.82549811010224794 1.5018383037649798 1.7304035151161201 1.0799593323042314 -0.79091042845628101 0.43786490959169971 0.51742988445079574 -0.71385970731876791 -2.5631474915216459 0.2503072969615795 -0.80957936754491888;-0.26216287350125567 -0.2501017068869455 0.0067800594183275911 0.92117887319341873 -0.19438842291239533 1.1335817622048621 -0.39801521220969632 -1.8942471027101551 0.78297336481416013 -0.0046064400647175567 0.81793992597872667 1.0435372723664176 1.6179216014972788 0.014712670034196133 0.74273675092561442;-2.0674963319570798 2.2314801569046923 3.9659092858500555 -1.3614585484459543 0.30001992468295408 -0.14994550379031624 -0.69430549082345161 -0.51847028634392467 -1.844052135229701 1.3403724940509585 -1.9307671297396294 3.3612632967630183 -1.568557154579427 -0.62632758683644862 0.29486369233917514;0.21600734233188107 -0.60022356789378672 -0.62530915902279838 0.21080457261213109 -0.39401473574832002 -1.3480174492299175 0.35170267303457325 0.24308864308570996 1.6596020388613386 0.28015783372228942 1.2795074715647101 -0.77910545789006636 0.72415436103415898 -0.19446625913224272 0.3557633903576542;0.33496870268105011 -0.71958722517755225 -0.23609713976706936 -1.6166413011798644 0.78744702877125705 1.4377385592224035 1.8183082136536726 -0.64888573042201558 0.83754614966070773 -0.08947031105705347 1.4057706387543478 -0.10171591218819326 0.39534272701215939 0.19689586027371517 -2.4273182573494885;0.076438999189529289 -0.015963369635428114 -0.2130437530287235 0.16329369610534933 -0.43951401578776661 0.70385833087757765 -0.013467134113957302 -1.1023447057686031 1.2256418150368504 -0.11123584482219141 -0.14416802718356184 0.29962843580162957 0.62536307494789489 0.06823766920210414 -0.38324803693414577;0.73159306838924831 0.30842208661462578 -0.18320693801924234 -0.31537027960218239 -0.72330306188957261 0.8698349501473478 -1.1255572306261119 0.081764216924680305 -0.48448410688571197 0.04164082276147741 -1.2434839736337981 -3.5706957543634541 -0.29126042124415358 -0.13031414078809028 2.4310796838944637;-0.33119103968037705 0.12462593899532759 2.0620897339520488 -1.5796537714944974 0.58733368868640534 -1.332639195600855 -1.2050259563393542 0.54169650536981406 0.96901167371087826 0.80920336525357783 -0.9561351567962445 1.1901491260774895 -2.0489909189162638 -0.44891534738730954 0.38164192703757172;-0.73218254666131621 -0.11360398342145335 0.18433686084135287 -0.47933580223632954 0.17874320984266684 -0.81080007218945072 1.2009956206239036 3.0581906662833878 2.9208943936806908 0.1002810506413548 1.151803556643896 1.1740402662639153 1.1517475217857789 0.06114307387782715 1.203748712461997;-0.065538469189040272 -0.5053653482242656 -0.51770875825984641 -0.43728577262338519 -0.34414239789626833 -1.1699613289408586 0.24841806149727672 0.44535896698704253 2.4437476898235597 0.32647607299278375 1.2027583601907603 -0.6703542856244934 0.9300549814881971 -0.24002808305071113 0.39209584688158533];

% Layer 3
b3 = 1.303347225639746;
LW3_2 = [-0.69312177322108237 -3.9997433267882649 -1.386458502104178 3.1614232980951575 0.23200624604892253 1.2257349948596934 -0.77811963424212682 -2.2913520347534231 -1.8043447903449223 0.14883622054398266 -1.4416069198962695 0.17930528960793576 2.497502768985798 -0.18273681462049268 1.597206638510406];

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