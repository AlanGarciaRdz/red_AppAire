function [Y,Xf,Af] = SOXTlaquepaque11(X,~,~)
%SOXTLAQUEPAQUE11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:59.
% 
% [Y] = SOXTlaquepaque11(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.9823571023664739;-1.2512279741189605;1.3001763533479753;-0.59800102792242071;0.36896592775021031;-0.11807845999200205;-0.27371612032431819;-2.3531312463959262;-0.12876835584194429;1.9320930003018646;-1.982949369491203;-1.3648551454652254;3.2883862891586468];
IW1_1 = [-2.8274275532747621 0.088050937697654957 0.66275849839173928 -0.29120016841279972 0.71703409724099854 0.38102084913966694 -0.20841864677521529 -0.60959073217210791 -0.67780593221819052 -0.17679458910604734 -0.11232961461414101 -0.23447926710683153 0.55015651492483242 0.29364814096428726 0.16123930495466701;0.79453619090453365 0.15394171570848 -0.6212548949022626 0.054562240585731475 -0.21629005341664592 4.2405460884402819 0.34259142993188241 -0.16318663953206486 -1.5152726612635325 0.26794932253504439 0.0075400191036353557 -1.1320990975626408 0.047654002588786173 -3.3413824700238668 0.99004600896886918;-0.45281838563541332 0.2457139010210784 -0.54444329230700195 -0.42519461972877554 -0.40045465230908894 0.30211295808606525 0.31051390261577444 -0.70192052313142561 1.7456226784963398 0.91424121923644974 0.0065477927905687261 0.25409660924962263 -0.62662824326920963 -0.33354010009881485 0.5870201968255343;0.92230560969445707 0.35374660090056537 -0.77324887520421004 0.29261691221193264 1.1087877906961914 0.12738004297939187 0.94993379457794558 -0.70031769317444648 1.2299050957719651 0.035534584105576549 -0.23988783699627123 -3.6603443399818567 -0.16844110528989026 1.3729448441574015 1.2251910945231155;0.34177766401619042 -0.12686118481385156 -0.33493584016835976 -0.78743925909017309 0.2043553306624484 -0.056563296697960043 0.85989846679657844 -0.56332678280135606 0.89424681353992053 0.65975440861302381 0.23899694117180212 -0.99018617037416545 -1.1287236523266291 0.23531888198837428 1.0755742883556743;0.26794390708668026 -0.028394782654110315 -0.22994561555414633 -0.28752701379901646 0.19463096965987356 0.63401344738146892 0.38029329047394789 0.61521823491084315 0.048602165855740072 0.65812625583837736 0.4483214034741797 1.0265357734215204 0.39707942129723173 0.1551821169921048 0.46919117440609176;0.77148711237921985 -2.1998174847642029 0.87542311674943474 0.84944966915486453 0.030441612155914101 -1.6988716334085912 0.55730047352032352 0.14723059470501609 -1.9594227272538183 -0.040502760748828449 0.20789794866199632 1.1326021265781268 2.3687253673945903 -1.3154201796847653 -0.77341754738934587;-0.05047237714692638 0.052407564433127857 -0.64158653745171379 0.20224145037052152 -0.68019346071107756 0.40812905353123796 0.51834023777384874 0.93416851682097135 -0.49010992009672999 0.42047839793773695 0.23333079316688246 -2.3405745929377408 -0.98159491705484414 -0.24751748776692975 0.90450751637994564;0.47284692379619875 2.5534678406285694 1.2201237876341544 -0.83932697559837033 0.29953396283301448 -0.84962842631854218 -1.5798975136524451 -0.55600670839305555 -1.5112503392710772 -0.13528131452450626 -0.55946995781017295 0.35973453454085852 -0.67609435125753592 0.15622885208525664 1.5024789060621915;-0.062336690654462311 0.070645613590974432 -0.75691767912210017 0.24336042011451955 -0.58408028151492508 0.143000609946247 0.73032955285267731 0.77134939727193086 -0.2783030117516363 0.39558221446803288 0.21058309091322502 2.1281668073082587 -0.95787299658253056 -0.15705191871389257 0.99088680768573056;1.1697950513723603 1.8217091714458917 -0.29268788924792 -0.88616276930470583 1.7559164445056037 -0.22438537287559929 0.43855544613035408 -1.9800775962836954 0.40444626227795238 -0.45150832851240963 -0.68771737849036341 0.95072150778181541 0.034148629963659742 -0.99599697871969828 -0.53431159810103335;0.0325932363197994 -2.3706718783491674 2.2625867004996945 0.21422409971734527 -1.2345182655724984 -1.0984003574134529 0.69411820776745548 -0.541192622046892 0.18875082227943266 0.26957581466780828 0.88135559595301505 -0.65491745069046781 -0.1432791640097556 -1.024280716534292 -0.59239931531221302;2.5584671266799637 -0.20038930461449692 -0.88712712288318185 0.65497447410161325 -1.385837177433475 3.7161496936738612 -2.0934060933493508 0.70563539849296719 0.30669184252685355 0.069578780145323246 0.048294190965468657 -0.21514869978331008 0.10533724226630171 0.15515080215417648 -0.022444100724401825];

% Layer 2
b2 = [-1.2020012033058227;2.5184591523917232;-1.0855034409297004;-0.69951767278244137;-0.51412558681425014;0.25628945264833974;0.57516237539284709;-2.5363949413002218;-0.055548975729308808;1.1504215178986568;-1.0352741014839619;-1.2682067931828165;1.9000250521076971];
LW2_1 = [0.68565760695700451 0.90683242380994966 0.96603093299575082 -0.42536298474770157 0.72050558520189656 -1.0447217815341179 -0.66761480259170736 0.7451241311103235 0.22458384757420993 -1.356149084493286 -0.014373069579012847 1.2792708407424038 -0.31897572688204323;-1.1504204963616549 0.73410883176291308 0.67892603012202368 -1.2114176038667201 0.40996381648126234 -1.7625908647561972 0.07935548758405496 -0.37474978714075702 -0.18170330690782568 -0.53529047149288533 -0.78657807518066536 0.0096024328213370289 -0.55598120130711959;0.76741095171782758 -0.59823407615009438 -1.0055029226730159 -0.27375482886467634 -0.58366446860095988 0.60970551728411371 -0.54820210943846426 0.7910879553277006 0.17878131025778768 -0.4992462493654084 0.33937614799423677 -0.61222061725079557 0.09540748591708105;0.49027982149752058 0.26656001169689364 -0.033741185592950973 -0.31754783012146809 0.383248509316304 -0.58222535213780247 -0.017041193432959949 -1.3092009783713228 -0.23325918974353288 1.6225933736366003 -0.079255964718822278 -0.39114342238597322 0.19123953787113795;-0.66613622847697596 -1.1972271036398396 -0.73920217667581312 0.63906509500473785 -1.2444189128935188 -0.62153591850270329 0.93997317362259392 -0.56561359957164004 -0.037584726842028703 1.2718399676086241 0.30055644977166845 -1.3819694674090606 0.35794449571012138;-0.2044186632227577 0.55757799335178837 0.51620038344569086 -0.22279557644534331 0.70877029105199607 -0.22406771396349717 0.0089218022254862663 0.11536038077883179 0.13094168858414629 -0.75475023768236282 -0.28904837301303304 0.55726726256920189 -0.44612637816607748;2.0591973935227381 -0.33261657723624521 1.4408419187652572 3.3513831440371988 0.74823777412786585 -0.86675207145011401 0.89985053994503372 -1.9079772838285498 1.1729923312119834 -1.0787484873616415 1.2058893416831826 1.884371007326795 0.9286216556153406;1.8610123485790546 -5.1819199428781486 -1.1662677085490336 0.33031966002876839 -3.4891856106178043 3.0070070072672732 3.4881276812743409 4.8498778202287296 -2.6305047741954328 2.3008639540687414 3.8872603668584014 -2.4815670056755734 3.3180363036500293;-1.5375713429882341 0.085713568091373371 -0.054538641911535256 1.0565199889636978 -0.99370109683971786 -0.83550116744746517 0.24592253929607905 0.39182301709292999 0.46463076267305986 -0.17404321589944327 0.0038355680479028914 0.70170889341360576 0.41491596919096518;0.15398565702528835 -0.12109717885864728 -0.082688411806144779 0.56513241314081808 -0.079772519051285726 0.45322738636957477 0.13130311404287681 0.080992157997458417 0.037521527404709779 0.50731658011994796 -0.075759803991981803 -0.32941993791819307 0.28526245131776751;-0.028487639746106252 0.24214318595673581 0.22604397518632219 -1.4365321515717613 -0.25104980134270871 0.4830997568127447 -0.44945599044715101 0.71191505632613805 -0.45548476823216727 -1.5210614796164303 -0.080764477874805451 0.58716449853265695 -0.83337973971046608;0.39718675796994429 0.37329356629352822 0.25608921875373947 -0.0097922668504538575 0.12640789919867387 -0.53087870109507695 -0.1782870995417406 -0.74221023494826943 -0.64080663575950425 0.92172235064098684 -0.027147247551692857 -0.51392686711119162 0.93797165919117109;0.51990090188339499 1.0850843852401393 0.57835847138093588 -0.28289852067629079 0.056075253299311713 -0.8186824439326027 -0.50200223560958335 0.37075407375571484 0.66457007853153061 -1.2312513067435089 0.39706773781594851 -0.7097892470341336 -0.59369890874516495];

% Layer 3
b3 = 0.60506173604667068;
LW3_2 = [0.68357214113549558 2.1220218875475858 -0.24883607953581277 0.16007729887251734 0.45404807175387446 -0.38692999284295848 -1.4316863924414502 2.1569995738122332 0.070199562889176462 -0.26719734102331166 -0.11314259960413343 -0.039854725098025089 -0.18244711407764277];

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