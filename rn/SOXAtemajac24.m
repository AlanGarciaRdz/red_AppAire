function [Y,Xf,Af] = SOXAtemajac24(X,~,~)
%SOXATEMAJAC24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:26.
% 
% [Y] = SOXAtemajac24(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;16;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.5818442846584739;1.9916459224483849;-1.6518197317430228;0.89723290448892212;1.2528840941564396;-0.45149262774877996;-0.78692207329457564;0.51331404612854215;-1.1539351144073224;-0.013072744508855674;1.9792024167105247;-0.61268786450735191;-0.93615420495236279;1.9740821568846618;2.2556475600268513];
IW1_1 = [-0.62963882425246331 -0.20027645665206811 -0.29974357731022994 -0.53278363922302985 -0.5284511314910052 1.1311174799940054 -0.73537557602665737 2.2412322663450199 0.9201549240793665 -0.010240992930965902 -0.37098611572240914 0.069859939866330864;-0.58626476902152225 -0.3493134557770502 -1.0925157030575046 -0.86240367473183999 1.069551134425502 0.32935084305013923 0.46982951860384831 0.2622480319001409 -0.15326052925672318 0.068012215770293774 -0.59603593085054529 0.0034114925355950496;0.52716196118778291 1.2736755099375769 0.35951774651634838 -0.1369205366804879 0.8977286667247838 1.0241834510311127 -1.4169882413491333 -1.0783999433514631 -0.73519401231679882 -0.28920230146242565 -0.65282427694700107 0.39789890838226505;-1.2844035322142933 0.62010664697578699 -0.54587036523171772 0.98315082643235896 0.16918035271602014 0.0031739297469301087 -0.47063239492576747 0.49370258998932665 0.28295698797846558 0.10000205986057761 0.28921641338942322 0.72569334076367409;-0.40637840438520656 -0.3921627217575876 0.26392498351792382 0.91292109619375239 0.3383262325151683 -0.61379254877223821 0.28747336395506923 -0.10630152595336047 0.64529676351476084 0.72171634930630635 0.20831060669810247 0.46175821836698;0.96441190753278661 0.30476899309911176 -0.20974615889271489 0.089736155480443613 -0.033819463832295227 0.37536655452945272 0.11470878233774594 -0.83946846536279918 -0.24026713813286724 0.064857079158461034 1.230757742917042 -0.30504197160216062;0.90129132807221213 -0.4241349944889749 -0.091885833276731277 1.1470947161298084 0.084881865351623093 1.2588292860264925 -1.627493815379895 0.7282717053507477 -0.60100134746293665 0.2149982007357446 -0.66198664703791033 0.85529823689054985;-1.8144896304457794 -0.0661800026932437 0.28136952494620143 1.6609734422852225 -0.58176422928283966 -0.46501017539298328 0.16123611678176608 -1.4620211344848693 0.53124293098800734 0.056438907689523504 -0.76534534839998902 -0.036997642059095115;-0.50533110268400194 -0.51862087178088223 1.0156440730198784 0.047398202259012583 0.23515958226555617 -0.99661579786881771 -0.43893014263204255 -0.52030753603446611 -0.17655726669988314 0.56885781780614941 -0.067242043483072417 -1.3091464288085464;1.0691238731125925 -0.31314393705250781 -0.47878788615253748 0.4205637660112686 1.0948697440329311 -0.38549187480061436 0.073906871376303168 -1.3506430899301638 -0.46208392738725518 0.0031261181320126133 -0.10268776138744799 -0.045060052240423192;1.8029871732473048 -0.52061724053874658 0.57130873745115307 0.13185364158995072 0.23554596327735627 -0.73102407894315524 1.1137995698136918 0.076856740742032179 -0.36654012242215755 0.12544530000496676 0.13091857187796044 -0.34960882430535789;-0.49279714941423769 0.5303986191197142 -0.16534733366452084 -0.64517314932096426 -0.31309329195057056 -0.41889880349279007 0.49214019073179566 0.33068257108820337 -0.79675721725322224 0.10699231319309616 -0.074435005141017349 -1.129055423810313;0.060254472943372495 0.071265974742328542 0.80699799265007477 0.019386797133611518 -0.87585401995997103 0.38711844906622567 0.23509957307305801 -0.15273273555019087 -0.41636537528591427 0.53459449137565163 -0.54802330557800483 0.88138924356940929;0.54079404844050616 0.209007847426017 0.016583762775184162 -0.403854418664507 0.1179296837624713 -0.41191601645652998 0.44163772927177247 0.68469326444271184 -0.31135233709339272 1.1229168825953779 -0.56963056549923596 -0.017604025027894162;0.59121661329910546 0.22899426340177212 0.45798082885741243 0.34067396898978658 0.20379032351422072 0.31336797238127262 0.24192046128089467 -0.062924061747881246 -1.1802624825989885 -0.019689155174959526 0.57333643555981673 1.0382028341571945];

% Layer 2
b2 = [1.3733621802336564;1.2868449633489982;1.4978451695494857;1.2699825541513905;-0.57338009903202214;0.26022463101064081;-0.82005491202243874;0.12307761586398963;-0.8949894690915422;0.96650214969098458;0.45794980247722644;-1.5940303919671128;1.2109015266957261;2.1311033956569436;-1.4906965719792313];
LW2_1 = [0.070426641789083977 0.15411963562067818 -0.76270692569498633 0.14443654783055848 -0.41792441884034442 0.10938062440931921 -1.0427672109994104 -0.48620462860495045 1.2924837507987532 -0.17505016893377875 -0.064742832182923066 -0.013422253611749407 0.35689068602024887 -0.75409533665100015 0.3794352181685382;-0.62297678640692655 -0.69648537765768592 0.28313256087270983 -0.00046284499371250162 0.28161150153495224 0.53733953883505436 -1.8880216906721197 -0.3878376504463148 0.11560449845959934 -0.25428750231555575 0.56225330285960062 -1.2703894899614148 -0.44785435481168984 -0.1959374555116947 0.19014928168418105;-0.36769383977550935 -0.27717653602364373 1.4835038722834761 -0.072943149878618774 0.85142312884704985 0.91979245114114716 0.037609851324854254 0.056630388823990518 -0.26545680355424456 -0.1260616764226567 0.44259684041280906 0.3683823841310539 -0.26647856598040026 0.76516552929391779 -0.039348531312944517;-0.53165804416549889 0.13492158703757676 0.79808387336123254 0.57700744395992887 -0.20390847671840706 -0.0098465548618560748 -1.3093575064006391 1.013963991699661 0.12582143344079022 0.96040373733627582 -0.2971207879060685 -0.88976104698814418 0.40080689243463796 0.77450917459515134 0.87591662204799403;0.20346625703130206 1.8280120976893292e-06 -0.37814707369514899 -0.50736214091473741 1.1937931640375015 0.82974266951492348 -0.063154893741606682 1.399675252515145 -0.37133589637996589 0.051550372580992862 0.32006725235014072 0.7875173475941778 -0.31947563750406754 -0.65696623206247906 -0.011164146713781731;-0.52784006987376697 -0.51706265550203989 0.47666663330602421 -0.1288898295396447 -0.075405483001350707 -0.68335870373548657 0.058934147440458523 -0.5204038484158573 0.27183241253490081 -0.7835955958444385 -0.45408179467459214 -0.2335740106145624 0.78054875869866114 0.031946893719371927 0.79912745971300869;1.0874988444187885 0.036627179733553533 -0.70965321019365979 0.39705532201359717 0.69730363578467014 -0.61326103022165834 -0.87166611342927969 -0.26107730689031672 -0.57009137172778113 0.99359916090574296 -0.14995696643073578 0.81404072407120653 -0.32048807352713898 -0.9083135486987417 0.85436918821598828;-0.11071794209918458 -0.1553115508216957 -0.27698163237652251 -0.10781351378648539 -0.49267690333095093 -0.82922897296258202 -0.11404239044279567 -1.0680260314483738 0.36943517204549636 -0.44946209580434543 -0.056798132641641776 0.45910523828084537 0.21862270110745702 -0.82934299879821616 -0.80605720290808447;-0.93818214074580741 -0.67764903963241774 -0.3483259513456341 -1.3469486058854534 0.12767342184705541 0.34065600574208149 0.59561029495501205 0.52278480228361779 0.88228919568547604 -1.7528505007751798 -1.0608132129758698 -0.031788680464184274 -0.12246588483734189 -0.092984217394100108 -0.012320479634634257;0.13547627816305841 -0.36309254933079582 0.55989601122349264 -0.57320074405860766 0.59242204803775311 0.94794410420232678 0.13585969319032959 0.041065391998487799 0.9102495476981165 -0.63793895172320969 -0.6637221934373414 1.1342697022446364 -0.71943661960177796 0.95183454145513369 -0.025496383668571414;0.2173197020929287 0.54345113010680812 0.67617809928405059 -0.69120635132828734 -0.72002620932538242 -0.58390840403839273 0.41790956527367523 -0.19731075439052431 0.50665689865179109 -0.2270637645780712 0.24457463185645034 0.21082293264157012 -0.37667561864339261 -0.15316728667767249 -0.68092380732471836;-0.029932637170864397 0.49946118922517119 -0.10802644072793968 0.70767897607745112 0.27772148551705395 0.24564429960721881 -0.50865650120771966 -0.68339825106103258 -0.14202291504704628 0.10063280063416002 0.57966764262575099 -0.089891593598734873 -0.72048420974770078 -0.2920527092759212 0.62940634572832166;-0.067640120049422672 -0.3936620896352806 0.1075927694542986 -0.72379813337151855 0.12109813956574163 -0.25186146621455163 0.43106260167131483 1.2110542007347527 -0.10255332250341734 0.13650653734657148 -1.1774845623686871 0.34550722576748838 0.24383845152675854 -0.24286526836845485 -0.71547183316349205;0.023972043365012099 -0.57034356760882132 -0.64391111339183582 -0.071670019749857913 0.095390239115502984 0.39233112939434811 -0.014533283710266119 0.040184022994393304 -0.12743385066625412 0.45025103429139052 -0.086505750900068137 -1.378068969074121 -0.13117962913999034 -0.3261103037786322 0.61970695507114981;-0.44208446884072883 -0.85522321632103682 -0.031230243602374801 -0.16300185342746787 1.0337964240043582 0.23546351209547023 0.14265583177808538 -0.055237938819368504 -1.3196156556676994 -0.90674894889988733 0.59433697672670027 0.80924321777519992 -0.0038694100459469079 0.062575452347780447 -1.0886479748986306];

% Layer 3
b3 = -0.40237096024860003;
LW3_2 = [-1.2890889521162796 0.9757647199973285 -1.056427450052311 -0.86429429945115366 -0.27439943706803471 0.33970583925071968 1.5506413573008988 -0.96522745407396549 0.97245877283540338 0.81506211713750853 -0.24681696407016571 -0.85720023327953154 -0.67247578834549326 -1.0094727055256516 -1.233010199130117];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 166.666666666667;
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
