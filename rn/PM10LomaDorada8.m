function [Y,Xf,Af] = PM10LomaDorada8(X,~,~)
%PM10LOMADORADA8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:10.
% 
% [Y] = PM10LomaDorada8(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.038041322514583462;1.8764204392683153;0.0928733009203494;-0.79623212624797068;-2.854458767261256;1.6800488244915417;0.63252420790844188;2.480610303272754;-1.0778573061898638;1.6767807792740377;-1.216799782310177;2.3348895149205338;0.41974764167195411;1.0091806530334997;3.4969141968511499];
IW1_1 = [-0.034338956074277269 -2.5295440597206125 3.9941556574235055 -1.9006247084221739 -1.0038834302629911 1.9636583475493929 -1.3591032348333387;-0.20162625902537942 -0.83502026166661014 1.2104646978881022 -0.20127545891391913 0.37031291354516044 0.16176415921373594 1.1414403478984627;-0.59398952023939067 -0.1571370912194292 3.5781897072185287 -2.9786475436377686 -0.82956933175287773 -1.3624996141552279 0.064839454165685859;-0.80778545805787472 -0.12306891143088582 0.56704777950933472 -0.75247745933156707 -1.8610644638096405 1.7590872674826061 0.72899285874994091;0.34230549386102566 1.6817540301150815 -2.0968224147342278 0.62410537453755321 -0.5090194471672852 -1.4567387145157815 -0.48899658366215798;0.45142624601436476 -1.0723266939136249 -0.50830905724344011 1.3850610691352194 1.2265362137420843 1.003652765700255 -1.3171342615104773;-0.23088393323073958 -1.9604015398906192 2.4881397218446355 -0.4969684211621993 0.24188850420941518 1.2432045703079289 -0.016329410970463587;-1.7834218077692432 2.5221189856375341 -0.53568856143247756 0.36200592090170119 0.23397959187804804 0.20560099156085071 1.6620224259659691;0.44181619421431356 -0.78630519473176419 -1.2835934818868395 3.2014106647138374 0.19408436183565894 -3.08888905311772 -0.45681655266597743;-2.5651002654211954 -0.96335001224232908 -3.5732933311918496 2.3215440866075134 0.2824585619140394 -1.2405951984161179 2.6932786113960723;-0.084716105732490929 -0.20246105771173756 -1.1938668669711936 -0.55433528151224276 -2.782488122934851 0.88374497611390757 2.2924314846786964;-0.4756836688161194 2.6258744941655845 -0.32340719903243731 -4.5763716565150059 4.5198641509233113 -0.65297853365127889 -2.9221690701908862;1.7348487198121845 0.24512201744142023 0.56418179497777443 -0.50402382874380747 -0.61953119343637353 0.36110632714044077 0.57319407456871052;2.0209528756656789 -0.48307529165228458 -0.097810001780672298 0.2350281298573659 -0.20825790499108035 0.27787572156284346 0.12256190915681968;-1.1421411502766103 -1.0408274401665365 4.833221943820023 -2.4096127960466069 0.28832499418369251 -1.6852766427813837 -3.2502067261112173];

% Layer 2
b2 = [-0.08743202682332693;-3.6939563566460532;-3.7591242829244469;1.643581335050722;-0.95210823411643863;0.20274434073927142;0.72973581207116833;1.0169225407882612;-3.8387245955061844;-1.3891821805033344;5.953767940537241;0.63783528905677644;-0.97441776366953159;3.2428140454277408;2.523659563685376];
LW2_1 = [-0.31076062315829017 0.70613904113217107 0.48378590954836476 -0.69295551707241465 0.49807989275571107 1.135101606412191 0.56067299699571616 0.31776776004265472 1.7746959060443672 -1.1401639981385094 2.6295599556448237 -0.17022840683828164 -1.2582953125964016 -0.28597925143066388 -0.7840639851220762;-0.50588006145634468 -0.11476148554876024 2.3988948137518258 -2.9064835796681052 0.54736636785264814 0.65778872040050496 0.77114629143341373 -0.54060808961218587 -0.36056624713888852 -0.74984056238348384 1.1590125809197047 -0.6292509345139673 -1.9036810223864247 0.45916703411284021 -1.3278093017244887;0.47699360935433543 -2.0274648309726402 0.82523894437384937 0.99911417665467861 -0.52603240167764154 -5.6651844448962141 -0.26961069813968425 -0.61227996260165696 -3.4366087300992261 -0.12095353804403079 -3.7490442303310085 1.072536267562316 2.4361075732173276 1.7286519514695151 -0.99778343065715303;2.2004000180773322 0.75882037153037429 1.2048549343167045 -2.4325638673395251 0.79112950941047278 -0.058100128152645536 -0.7397013374602377 -1.7167805852321922 -2.379376385954024 1.4000360168189809 -0.30573768915280092 -5.2863170178353815 4.4921037935704478 -0.91775873861229851 3.1963347572031542;-1.3002477874603562 -0.42193591406996472 3.2239486608744965 0.54051621463141475 -0.30420659701061414 1.0156827968364159 1.219580663160738 -0.30925717928683738 2.1449237436022219 -0.35446478830557498 2.164110790835807 1.8202874770121229 0.060051794805067601 -0.96707781365744139 -3.554609829027521;0.41696325861085881 2.2877135246800644 0.51869368491179424 -0.91255501695776342 2.1730442739630584 1.5086472026550695 -1.2638125948403132 1.6505637293443129 0.60295753818301989 -1.5745430891857777 1.5482393546639757 -0.93780772768501219 -6.6929428921649023 4.4455338003425044 0.56201907876407087;1.6950380525398907 -2.1154748792410674 3.0339073071686502 0.76452830062091004 -0.15501874270954974 0.53681798668654246 -0.375274419378335 2.0400907742357348 -0.23785513292170918 1.8390082187777064 -0.62530066199024481 -0.59278159925921836 4.8862953812505889 -5.0114022789373909 -0.77825974129548592;1.2771830305857639 3.3712400380117362 -0.49984292759427362 2.3400930524301113 2.8774281387018465 1.2527837010330973 -1.2409593709675453 0.92115268599987576 -2.0434733378809478 0.61765928654050239 -1.6119605492862676 -1.6486600694691653 -1.7775341504719182 0.44566087669383531 0.054687919316038003;-1.1385566000227363 -3.7624859723828705 4.636932109819182 -2.573027444928226 -2.4002358633820111 -2.7511961488050107 0.74992226849902199 -0.6445635090202394 1.5971474426983907 0.40854579554869053 0.56469982350561421 0.1530344703730627 -1.0051077787346037 4.1476295560932419 -2.6150375151175154;-0.63999274311511178 3.4080041713351972 1.0466193251246367 -0.52011246294589886 4.170986300284329 1.4827693968810798 -0.69568592259757467 -0.62786383375882904 0.80782913481014518 -2.0398870645739668 1.6022358924693323 1.5477835553523398 -3.7053965541933893 -1.2684021054880992 -0.98638143589806526;1.3897515438539976 2.2763798120706653 -5.4128959666353778 2.8376510997685238 1.737104056577778 0.58556526714169543 -1.3695594937612718 1.4207727973870146 -2.7603232880900705 -0.86728590721043819 -2.1615219528859444 -2.0578819009907496 -2.7158024843564088 3.7964393027283463 3.4046989509134979;-0.055425079388698881 3.5719299064204639 -2.7053510142681874 -5.8561399628383342 0.034325626141365376 -1.3810384366482873 -0.177396812816521 -0.28476309089967489 0.30921592308347162 -0.98707368675787166 0.81735244821158126 -1.7041293429355777 -2.2146202147829088 -2.8703105602507382 -0.19772370465553724;1.9421457822914137 3.1653873550931912 3.9771264622086604 1.2956042033866262 3.3066649935614305 0.34697443727354271 -1.2515186214994038 1.4179361373113797 1.0450964496099062 0.74828818735550373 3.7606356827565168 0.99369344597848741 -0.56752475762487165 1.6109823124977345 0.70689988297590922;-1.6209863802034128 -0.24840301930573039 1.2813417068227544 0.71933275359680904 -0.26326256767999456 3.2198110400001347 2.2602008795082762 0.027463628768296673 1.5542973588835247 -1.2446228896203007 0.33884245708725264 -2.7229232270068673 -4.5092588711840111 -1.8279381424167771 2.9111331045342701;0.31676499597055513 0.63555016448425494 -0.085862079811907688 -1.6732910743348304 0.15876205117131983 -0.28580145856685246 -0.51275929254240082 -0.92892159305780242 0.22728759272334398 0.088685606268559411 0.15870353221656466 -3.372538963211885 2.0439771812843857 -3.0484866471541459 0.23192914130422984];

% Layer 3
b3 = -2.5290057281705218;
LW3_2 = [0.29063716028454445 -2.1206371423008052 -0.056681194007291998 0.12712683052463539 -0.38200246568455776 -0.18267492836526844 -0.14200994474781267 0.18991835038344501 0.18450917694490643 0.177309955614917 -0.21330173832579563 0.10106057000118238 -0.064345585972704927 -0.072027657806495157 -0.26036623999300118];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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