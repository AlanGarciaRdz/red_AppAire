function [Y,Xf,Af] = COVallarta17(X,~,~)
%COVALLARTA17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:23.
% 
% [Y] = COVallarta17(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.0020732783047426;-0.32107839401686028;-0.85116214215598773;-2.3501891406779825;1.1689163337549435;1.8549352375603545;-1.3036529131976047;0.0014857119414168896;2.8463096531947176;1.5352711785481556;-1.0374193802158194;-0.6242772160065756;-1.13057666784524;3.0038616522973993;1.6690461542691841];
IW1_1 = [-1.4498002162933536 0.18307647981416703 -0.73004094132766961 -0.082749619744127062 0.11915952769193452 1.7107300900596283 0.13192833462131778 -0.24408619249698896 0.064387971948690351 0.38941778112304792 -0.30610212035316614 0.18437552211587246 0.3437997557551789 0.20853843080369636 1.1475728582198659;-0.27899872706877871 -1.9936470792497456 0.072788302352321602 -0.73300096897502942 0.6010619412169812 1.0595183028477231 0.36891022697743553 0.38857301587484527 -0.14177949350682628 0.58310091532430075 -0.041756901464161646 0.095678410602113004 -0.39736084367598712 1.4827022573317257 -0.77045641381489061;1.5546805219020263 0.40188716967020455 1.0513809650054904 0.36518588244564254 0.73304226555763963 0.68440622051409528 1.1357517774926358 -0.27945139706445188 -0.60343394279563589 0.88402564452062882 0.99134384323562785 0.6969860227184963 -0.81469273475913273 0.16016170612370753 -1.3517121642526686;0.3716608279424905 0.12262738886297139 -0.70844908837699916 1.068694772560107 -1.2516226516717237 -0.83649575081790883 -0.48377392847740652 0.11084282067242129 0.20551127117145493 -0.39743932333316823 -0.25971838472742709 -0.081777308137306895 0.84060782661155442 -0.28219398984958666 -0.092316331410587454;-1.5114256830281465 -0.13185030181409368 -2.0017612880639573 0.69865564313067519 -1.6577898339705417 0.99870858145743857 -0.20999376207321069 0.23733068228918336 0.39592889026187855 -0.015590450904706336 -0.068049730063252545 0.45314869159206889 1.3289034542085263 0.35509806138348582 -0.092078227810599905;0.34779518445655089 -2.0401864961069078 0.43175811358236565 2.4435585576922643 -0.52881633246810278 -2.5052197969093464 0.16957006635556077 -0.034932815549401725 -0.30489078839662159 -1.1256756973695508 1.3301274008329727 -0.57957875164053507 0.50671667230833717 -0.82713756272088934 0.32221268076422976;0.43879220489636289 0.76814802921292369 1.4143887856037047 -2.2247589541669042 -1.4886117500882994 0.87873717614679769 0.14094563092170168 0.94909334907665299 -1.5995243969733408 1.5907252251708854 -2.7212939046739457 0.85343596519881404 -1.3660966895868432 2.0946283400965151 -0.42513943701088308;-0.047011701451343861 1.4732961689732111 -0.65646987326957551 -0.57150490974311963 0.016245407556394597 0.77758170252257064 -0.03686826351762372 0.010729898416368828 -0.10991901037204668 0.2630713705877733 -0.51255267676605076 0.49277772063713976 0.53196013828602906 0.86011757301022185 -0.12122833829839248;8.0275748169492847 -0.079162601290260828 0.40581584862443643 -0.19184744374858259 0.11853662836741162 -1.5072365925071667 0.24781289518404767 0.10767828690916184 -0.74162741065212867 0.45793726131999901 0.0910481909250343 -0.42683753010875852 0.38810096292650859 -1.4244920953628577 0.41057381912638213;-0.32803203877555376 0.23813135098076246 -1.2864471172930649 1.2338108490737587 -1.3233902500367338 -0.33758148041892327 -0.65089714204182503 0.04161242682194978 0.0026012695257085564 1.1074865924050774 0.56366275517574338 0.86376764754693225 -0.72223116574876811 -0.39152232023231887 -0.85234859226054716;-1.0925329558690617 0.32542591594376336 -0.50863344876095362 -0.29345793653336494 0.035591629270690719 0.48139254778470009 0.021557736536248224 0.046943690607511315 0.074236325932791919 0.22074473892773008 -0.31483730289676704 0.035357322737087693 0.055105507723651297 0.23963265821129873 -0.13109970062899051;-0.15443940924975511 5.5471312441531166 -0.50603185582796806 0.81534166402080366 1.667934955752769 -0.2252207224089092 0.31442912225392922 -0.40414182076959276 -0.97495592661397334 -0.22380859103226775 0.31904233538806764 -0.20180312612666612 -0.38655561640096747 0.14038418479294318 1.3107966015020109;-0.039431999069154913 -0.09124012399469611 2.0195311052255809 0.3220955764823788 0.069709922731673174 -0.76405512447190205 -0.25399811626722102 0.09549565505590224 0.81070342671126105 0.55806028555299858 1.4885925728594094 -0.6633954501587902 0.34906707896654871 -0.19389873296935528 0.53054718114794752;-0.066442778654107221 -5.1530501386910625 0.24518134288324617 0.11061574510505021 0.05982545141753625 0.67758444571367615 -0.050577770589843758 -0.08423639836747461 0.41637880926423676 -0.072326890864167659 -0.51294352293468237 0.20893997670478021 0.34216809331816178 -0.45129094386998453 0.41356493589536475;-1.3368977677601244 -0.76569102178141579 0.77617812717645029 0.82589329160811753 -3.3785135244969098 0.46651345679544731 0.41391293469501611 -0.010473106369407854 -0.27247083312052817 0.96073113766379814 0.47508729980233971 -0.49335742891116391 0.78767719215150334 -1.6573511362110633 1.5647232206933068];

% Layer 2
b2 = [-1.8455869921565811;1.8631734960874227;-2.0561239326891179;-1.3610539963211943;-0.58314113149879254;1.1803982055826885;0.84877199991929153;0.29157211249888904;0.34246950280239002;0.15655124303291656;-0.87682401178403102;-0.52714909069797244;-0.38860214663763248;-0.073497447656796319;-1.5384830173718826];
LW2_1 = [1.1590955696204668 -1.1017879039913381 -0.031741199370664601 0.48546941670264054 -0.68072430221931712 -0.55752463647303818 0.62317914655309514 -0.11455669164130253 -0.002449317152705085 -0.40834873633883001 -0.041424642954793117 0.1565766454868967 0.10364951649565995 -0.46707278873451147 0.08621308830214619;-0.7762757855406387 0.58844264768256882 1.8334860862703914 0.73040646815785226 0.1134448758968877 -0.17496360471014949 -0.29912666446593361 0.19460042445391498 -3.0349563164317925 -0.057135830366429025 -0.58153863926355975 1.7367689479335868 0.53325140643307345 0.94852689493587916 -0.96120568619431501;-0.82719112342099954 0.5915041011880261 -0.077370872698955734 -0.67437624068692481 1.6693729764801482 -0.36471592689137755 -0.18887290381119262 0.9431767816228489 0.099558122271119584 -0.19219913477145006 -1.105440025033346 1.3148984307431197 0.36778229273027124 1.2958685492730151 1.0251089464380827;1.2500775596975544 -0.60118463494814733 -0.094832782877481106 0.38235982539815822 -1.2958230971104858 0.14724664268031792 0.70130704295232071 -0.22332303789549968 0.4884612483296441 -0.89204769731380229 0.61270672780026181 0.048851181646549897 0.16587496518202766 1.1412981865358878 0.28811041611474453;-0.5058191477847882 0.40994015247787247 -0.40791319726069514 -0.055509654280500337 -0.30813474878052521 0.24119479870952829 -0.47301266170576473 1.170446285342271 1.7436985588815366 0.18210268630922322 0.58078260426510064 -0.10239023280205595 0.38936900447969652 -0.50452021526999691 -0.10524999944636296;0.82144633430181924 0.78877991311509366 -0.4741613496923936 1.8212730262144297 0.42901128412500866 -0.12544577639339938 -0.75318524263149977 1.3793784785995973 0.12145161280547583 1.0685432165940831 -1.0012075220518359 -0.35276224955843244 -0.1938878092230788 0.46456314186965136 -1.7330740173719497;0.92866777645156462 0.01329097905961181 -1.0913535020873215 -0.080684779471646165 -2.6412461448697147 -0.38991900647433481 -0.26569605199674029 0.50818691705924757 2.4917551176119042 0.82988423854593918 0.14870020069263298 -2.5295386694372786 -0.77562437632440284 -1.4433523690393879 1.3152708383169114;-0.95525803432558487 0.46507036777384198 0.28828496660162412 1.8102017616568826 0.62650635010956979 -0.57399133780225453 0.79817060645904414 -0.50740062824466037 0.90545511689401326 0.61869029323647917 1.0788726301460467 -1.0166437026948836 0.11895367462552908 -0.6317923571978451 -0.20069052118220718;0.56128255897931134 0.045791721985473474 -0.071135330596640053 -0.80669165865652903 0.029570595858838943 0.3925756893249932 -0.62603328541591075 0.53932723566844898 -0.14264552306663489 0.25903217458396482 -0.41093191238352333 0.48517120543186149 0.26083860978056622 0.54506772736452502 -0.46953460716776185;0.34192897404693134 0.21418131338716617 0.12812007828845381 0.25017492359376009 0.56922223941203776 -0.21291067885881512 0.21735642221650295 0.61727929862950326 -1.2024455582727822 0.076346750160973365 -0.47951995424328131 0.14887318982472358 0.30911138016880163 0.90966321114905324 1.2739206836338064;-1.520670248259941 0.17430994657291798 -0.80007502440178735 -0.1591967605806231 -0.28753238388610181 -0.89835435736775771 -0.31515955896152814 -0.47525214681382355 -1.0882053301473462 -0.48470076730763689 0.67842151037971088 -1.1260982328274673 0.10936276514367199 -0.8739891173636235 0.69051913311255941;-0.16349961548118633 -0.34618246615151493 -0.037278523477212208 0.3492337833845115 -0.24354661116388057 0.20031800267815256 0.61702132989201153 -1.3704758900797707 -0.19203284406324156 0.76688439089801363 0.76641563352838038 0.42035880992180641 -1.2844067454256092 1.8042496767561336 -1.8627493863307552;-0.95000357016472725 0.053987394487624192 0.57908571929289487 -0.4398695541015637 0.65804949366944154 -0.5982699049818726 0.77510483481483849 -2.0397005876958048 -0.72982597170374852 1.1724906201356085 -0.012881847930445986 -0.3107435041419957 -0.7097981471869087 0.39373078711757786 0.72934278906742978;-1.2030171356648633 0.27606292956607476 0.16825117833245251 -0.65677416655766219 0.82572117858396799 0.40598983128449173 -0.40946027285605374 -0.67585845610820039 -0.068392561397356805 0.12678267047503056 -0.43290980855773775 0.23178038602098491 -0.30658004613920842 -0.36624879738125149 -0.30430760379145794;-0.90072076439175008 -0.068896277329229552 -0.074069041508760813 -0.21159501118844093 -0.18193471942488776 0.017089588823117615 0.26157184493363722 -0.063148405209491526 -0.228244419423066 0.72416372005279728 0.81596613134883533 -0.1658930284130323 -0.35933575456207789 -0.048088135740178194 0.52386528627887541];

% Layer 3
b3 = 0.53838802623878323;
LW3_2 = [-1.1247262950189783 -1.0052269114691974 0.56258927701763728 -1.0948204879745547 -0.94179266555955166 -0.44059473733326648 -1.5529876967974936 -0.65657780612483885 -2.10445667426109 -0.92972120611588005 2.0026494654191014 0.37410285109217356 -0.45099193673844962 -1.0569145276823062 -2.1971947893610446];

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
