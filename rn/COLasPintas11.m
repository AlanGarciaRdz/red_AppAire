function [Y,Xf,Af] = COLasPintas11(X,~,~)
%COLASPINTAS11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:00.
% 
% [Y] = COLasPintas11(X,~,~) takes these arguments:
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
b1 = [1.0702959168907646;-2.1651883763075968;0.22750196618217799;1.9188689749271151;-0.044417967938283481;2.7623509111711426;10.768303821029198;0.63296396668785782;-0.62401801601855167;1.0853827386402504;0.46051501894202501;1.0858061888326611;3.5803160895685293;2.8856490293883335];
IW1_1 = [-0.87828608604018465 -0.63419225562899451 -2.1246244193482373 1.1587075638458784 1.3925546578902872 3.4209253224856662 -0.43085496527290962 -1.4269348390793652;1.740389763739437 1.1230174326375844 0.97271782418221875 -1.929952337576041 -1.3784248963278811 0.23008942052162001 1.8129135070786724 0.16567431463405197;-0.15203131151034383 0.7394725356193772 -0.010005976485917127 -0.12839604514756625 -0.0035196237851725567 -0.37003453601037067 -0.032981427585068092 0.2165963730235495;-1.6391139211420382 -1.6958160487574583 0.48595576822142927 1.4392301252165833 1.2199726054912257 3.9247101607059971 -0.29789080532115858 -0.33357898874489395;1.8750848887349578 1.5123042272953005 -1.2184409583447868 1.3814783472951191 0.054439965083017988 0.086634574506637321 -0.19919568873342819 -0.53088691129478127;0.26654455164845076 0.66457526335940043 1.6419902263059045 1.3413199782432004 -0.58573398744007044 -0.85329457836205458 1.7056873800762118 -0.18864157924857988;15.273767231797562 0.40819951261973125 -0.44696229949047273 0.33102695804308241 0.42690743932059039 -1.1939366391481792 0.053565151304007894 0.39662904689580125;-0.90099823440100313 -0.012108169945794755 -0.51844324660712426 -0.070678311211283762 1.2923334255177614 -0.079658044833675307 -0.28776403601205297 -0.026468944677451443;-0.18013105929504566 -1.2107228870572833 -0.21731025060596831 0.7673854847397521 0.44291021130443564 -0.51635058201622153 0.043350325451297009 -0.18592124183734757;-0.56921974479395165 0.22017917101038528 1.0423581598669909 -0.6515301087838713 -0.013613461832703769 1.7400485297838271 0.44016797760786008 0.096347691000247274;0.55500788963814074 -0.85394733079937979 0.066683336644231012 -0.19610343392796936 0.25718074385570144 0.67470912994258248 -0.03473611160260906 -0.12027130644597078;0.7231971528759098 -0.90876384389431275 0.086491105951799485 -0.5120676941744402 0.18090484226868939 -0.22407298339170545 0.018805955978482908 0.13852567158671572;-0.31597698350261605 -5.5213350518064832 0.033817652708269558 0.16590205718549625 -0.17908020720954868 0.27010155567959798 0.28901878284451493 -0.34574436670959441;1.4886771336477835 -0.70316819285723231 -0.46960577061485315 0.73752435498003632 1.2700614298832416 1.1592094688883507 -0.37182773912813399 -0.11997336644598436];

% Layer 2
b2 = [0.94835690503112269;1.4664387219364334;-0.37865166071542583;0.24748704256675216;-1.6566261058396605;-1.5062632662700588;-0.35241268110756252;0.97950666766764316;1.7332303558466919;0.44899554672251663;0.52790108536120561;0.81694160987838793;-1.2882143345909247;2.9389855342479891];
LW2_1 = [0.66304726352554688 -0.10053903119803732 -1.7816386451810955 0.66065831467070113 -0.33862723676309486 0.32481711530657043 0.26173775594286514 -0.66434358295948481 -0.74242658524011607 0.45091941250010459 -0.21222833533119734 0.70754750562980395 -0.52194124960520094 -1.2895992752600249;-0.4014141278822555 0.36720752232042142 0.44752228026884266 0.040265813562811441 0.33327258561858464 -0.46619350562346296 -1.4999749265337001 0.49886194250915716 -0.35787528940475261 0.23773487408245492 0.41147308076362987 0.39453149624019906 0.45230535590687676 0.037471720961166077;-0.11517622479936249 -0.38186161137285662 -1.1851907688941214 0.50153971006850517 0.052783065786099939 -0.29145540154710609 0.3343855382342556 -1.6178623072445923 0.20507928732481889 0.70162256481753515 -3.0903985367665014 2.9018953784067172 0.42103404538018679 0.87632364251923889;-0.57605242421877101 0.40331046595557218 2.8418275729899527 -0.35260083588825802 0.51505103269931696 -0.59352714167125487 -0.4435018233966137 0.22144936243107691 0.59537470495804323 -0.13001058736953569 0.4054861344846391 -0.48332862940160931 0.2811660988977403 -0.8737270682686572;-0.35786262947117925 3.244989098566629 2.6168898104731344 0.11286410260195245 1.0429286359871068 -0.41663624093530521 0.10736001144585919 -0.020872689429194867 1.2474176101919208 -0.039869137121548985 1.3051213313299355 -0.0027860179563774373 0.68274103371019967 -1.257467101834826;0.20958024720078527 0.19355483371516313 -2.4605072137472406 -0.068933306002750369 -0.14542653047620405 0.1027968273397057 -0.67185210728357547 0.46835885178410652 -2.0783034368541462 -0.84457464641616198 1.9616041218674178 -0.78561442972891116 -1.0440604959365001 -0.38220034117169432;-0.31682942291825283 0.33967094952516558 -1.3148330323212674 -0.89740329120569107 -0.36280948335702734 0.28723730346935838 1.1270396508011289 -0.18058435697316344 -0.91701978569171394 -0.47905664939079107 -2.5088606667860636 -0.036088284992508851 0.51203008114652138 2.4733640352315751;-0.2958841231349667 -0.15022901572857064 3.7280258816174516 0.32766093570027377 -0.9323555727862336 0.19184764318438219 1.3976740748855103 -0.62393249102553483 0.73115555107244412 -0.23857960680781037 0.77230619999109928 -1.6732113094603436 1.7954168748882591 0.9827074008933474;0.61961707609783989 -1.2261515014930811 -0.29100834968562839 -0.54294797243150961 -1.689513994002821 0.77458017392367851 0.69926317703773833 0.31786618980198317 0.45047869399886786 -0.99212802799112565 2.4247485687223027 -1.4897613121125344 -0.20105073211388205 0.73555685248091074;0.43012434330176219 -0.19522337401178155 -1.5759641812621898 0.60258338178977555 -0.14884648118992511 -0.025165519309629108 0.3443316635231331 -1.2129485128564106 -0.4425217576584658 0.75686117472543679 -1.72748167997986 1.934677657662933 0.03434059670574538 -0.77371915031079019;1.2567354489103693 -1.5414543377922192 1.3349472660965187 -0.34506810306925256 1.648090495568201 -0.26405532207602761 0.48361880782142863 0.5925244777336397 -0.60670046056163296 2.374672289728851 -2.9617479988654871 -1.7524510507961935 -0.52301080306279368 -0.89243732069528547;1.4944278186548092 -0.50474450903084189 -0.92267220065923916 0.36528630672087542 -1.4946578949592559 0.48621277141078045 1.3512332039507384 -1.4880521448804955 0.9716029223324395 0.78678477712279482 1.1871883995208541 -0.7950288107719683 0.098750414845522605 -0.18484203514050745;-0.82525093279133499 0.55132527965290556 -1.9091024509559587 -0.3285667192373164 -0.61984448084127863 0.26686609967557695 0.12215359876447746 0.15181755123095012 -2.1921320116993877 -1.5227120384933681 2.9934615969143947 -0.45396217324207877 -0.62160428858853356 0.43131044402338248;-0.12045426344310707 0.43632632617171985 0.75067466370686897 0.14867644157962007 0.54721325994571979 -0.81779537918316503 -2.4094165595266306 0.41539199434782637 -0.21409252422561453 0.48381163721096027 0.56456670809853815 0.7765104119133277 0.50503888852199519 -1.1613305747246812];

% Layer 3
b3 = -0.61764499494897196;
LW3_2 = [-1.7420111702040242 -1.9176870372385466 -1.0750963619684677 -1.7942087232757629 -0.19130913426059346 -2.4230857073868171 -0.35663281603529295 -1.5503980466063167 -0.64609729340352484 2.469093017847281 0.18491114960742594 -0.81074256879881457 0.65499205178167652 1.1097291222379062];

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