function [Y,Xf,Af] = COVallarta19(X,~,~)
%COVALLARTA19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:23.
% 
% [Y] = COVallarta19(X,~,~) takes these arguments:
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
b1 = [1.1543429729736177;-4.5061793006603645;-0.49736227891182705;1.7989057841999321;2.1182824897996397;1.6996357121177119;-0.24345725319800168;0.38712786902981666;1.2575821699064129;0.63036255258036877;-1.5961157920982096;-0.014934454547788124;1.5099632095650719;-6.6416770025265741];
IW1_1 = [0.42457385949778303 2.2713198809396271 -1.0532110630273104 -0.9999036216282241 0.77535998491507785 0.081753320687435849 -0.63345957912778772 0.13802485733383441 1.26379879106496 -0.023031924383076351 -0.50902312295903851 0.54123870143239206 -0.058937255508013021 -0.031222285120412457 1.3263355363780385;1.3306935294793181 -0.35035349636233393 0.061589374745466011 -0.16376037744737937 1.6555263277057106 -3.1187402541318581 -0.039586111946199341 1.5740064595951204 -1.9417251688893118 0.0022270344449779947 -0.3482912004162112 -0.29633935219935137 -3.9799332713837146 0.52004294985473776 0.22481641174954348;0.57040640992620029 2.9298407294265205 -0.68672547120075655 -0.23175558245088476 0.95071247842333184 -0.032478269325993153 0.085309238480280658 -0.22138859082000131 0.042356912114727009 0.056163561369141503 0.37094444995931353 0.4519982293127624 0.037035262631961288 -0.46495248288625068 -0.54742383361969948;-1.4752846621035278 0.41347352858872199 -0.59657311433821936 0.5508350769625795 1.0312648473614163 -0.49202281678827037 0.32190594099843345 0.065661292406317281 -0.6606336812095267 0.076050946843266132 1.281392467852853 -0.25211355632068905 0.47916089838593195 1.9710783559320988 0.20347300524835601;-0.41536320135794536 -0.18461820910834251 -1.241162511793942 0.42461470434023874 -1.8533120239928653 1.542927301254772 -0.64943018769421024 1.7284504526965367 -0.31282137347097533 0.092962228002269179 1.190935800949845 0.082301417027595247 0.67591031331995466 0.034766526141792903 -0.78236699646864993;-2.0039223979827008 0.63714259668847328 -0.38028304338210445 0.62185891137394378 -0.45520445394849635 2.0511157702125917 0.3076908143725029 -0.75466537200348816 0.038828135377611109 -0.092242801305636543 0.48850898052356667 0.34281360356133761 -1.2207792544848421 -0.77305457135229738 -0.48029031738143541;-0.60626510416583501 -0.099934471911873615 -0.56705167785344623 -0.52528768323127506 1.7426917453856543 -1.2344338438403677 -0.10256483281117938 1.2669759324373497 -1.9944042559727944 -0.61475763872705658 -0.77323432247231338 0.1003878061835702 0.41364708029189057 2.061158268811031 -0.088682603249351455;0.55363869956540179 -2.5960270472024098 1.4349684699474965 -1.0515454406248776 1.8199748983532555 -1.770833054358163 -0.58517924064270976 -0.74714812991077117 1.2810165433525889 1.5446589756890634 1.2661021929763576 -1.5835037916945454 -0.8297099743972417 -0.47364396957279387 1.9494647883529825;-1.2382407807532492 0.60271453747734804 -0.15823542164109694 0.18575922171364834 -1.5464090948920226 0.26978773158175717 0.1584709685823476 0.13751562514277835 0.042526456136415015 0.080521654554400163 0.2345242091468733 0.030052067583307161 1.7809446084456992 0.003963402083324824 -0.20928030987344115;-2.2372335373327226 -1.141887405483802 -0.42625779655490509 0.29043287717473226 0.057290428073155861 -1.1058747543697998 -0.71374659601783652 0.39193654568025182 0.71042813903542201 -0.17748256489296141 -0.22623966413083393 -0.30618559076744439 -0.51136246745192271 0.13318092199349563 0.31967581323691702;-0.36139787602126783 -0.16568758550814494 -1.3937673179138024 -0.71780333114105976 0.40116314948777143 1.3962168456133683 -0.28390328657947966 0.33919669912975292 0.45968801822119576 -0.047706905270748855 -0.7195709901979479 0.2846621102017583 -0.14991550771858483 1.5385583706594934 -0.80871171269657138;-0.19230992556543436 -5.4034671899780511 0.43743902542596896 0.4648556566935802 -1.0851005818962043 -0.18995818781521703 0.039257138570524451 0.0072862434303027244 0.43426971738372622 -0.066115465173060189 -0.33922402623155201 -0.5640533934916776 -0.56616163837851319 0.043939608226627 1.2402220633705299;-1.8867308223102659 -0.027983977544284302 -0.71695308228949173 0.80126897103946804 0.19998931677966331 0.9309387122780407 0.40816345262486015 0.055690837834985241 -0.29037548871716434 0.062088237914290426 1.0552704453238981 -0.16809486310148081 0.52824705153244611 0.51818669496017478 -0.21733549076238784;-10.815852565038828 0.11359882005437338 1.0009028195026535 -0.73509205490887797 1.2449915477935463 -1.7353752971093528 0.16376437074891204 0.31016558399442262 0.27820441398730195 -0.43693272176871484 -1.1613076900423995 0.42932312890436708 0.14287626085736041 0.88699577228104098 1.0899078153893431];

% Layer 2
b2 = [0.80550642148645557;3.1903582364000207;2.0946687890183284;0.59826885935079022;1.9274664633627092;1.3261079172794417;0.66090377701446401;0.34232640311961826;1.5696509774280571;-1.8752037712666514;1.6295858379547445;-2.8901695727580616;0.64222567609786996;-1.3183624931868756];
LW2_1 = [-0.57835334296976681 -0.61583983066907022 -1.1549841705768715 0.12780217335048749 -0.37555426835329331 1.9723064435460103 0.49245554929160174 0.32987050631297626 -0.060259701298439897 -0.7247443355911305 1.3702622534553195 -0.1860807424287515 0.70655694412208625 -1.0517227414748396;0.1393018620694054 0.30197637943907524 -0.81475660438025743 0.14658715750319859 -0.11091384350960602 -0.40522991931252311 -0.29341035741982019 -0.11430414657097812 0.55401769360397257 0.29777864421213679 0.18102301208796204 1.4492478569676255 -0.54276923590403303 0.092418287220812245;-0.76188967589952672 2.1744752296118817 2.2415425142451357 2.2255605189294516 2.4562822707183449 -0.0078221419142003867 0.12732265711837748 -0.42990021039638193 -0.34190048496121506 -0.21737468209508612 0.065132968241870981 -1.1255089218280312 -0.0010256654780247238 1.6793104167120978;0.25721818654919076 0.8145432553011831 -1.0829085401230545 0.45252055709107725 -0.80018568700569037 -0.2772225945570671 -0.70418666091487059 -0.18503456620759678 0.4844827331795708 0.50606418995513947 -0.27183253473007984 -1.0989317373649401 -1.1338101784140713 -1.219338383591331;1.0374742181183161 -1.8836718618506862 3.6213844611868113 1.0700206056636246 -0.068395578631645526 2.3678303244510364 2.6671136391940613 1.2878079586122095 -0.01086249229520217 -0.4715712970445991 -2.2885544190654135 4.1412381200392518 -1.1027131599314837 0.81480464145588327;0.78737726066756519 0.33354353676490711 0.20533939521015318 0.20563462740168759 -0.18456946005771416 -0.22961106797084913 -0.32169037685579138 -0.080771207870061035 0.56860912910943284 -0.36647010210420666 -0.54315096420784414 1.4085550286834023 -0.50334075072139373 -0.31331886491868249;1.8192787459760633 -1.1215171734440048 0.053245071669959218 0.56837547184180837 -1.4722319574364375 1.6838789966236629 1.2457987936947745 0.0055397048882546984 0.68995570592476529 1.3985296522002093 -1.8183616868581454 1.4897868883647853 -1.7809242531726521 1.1816668302967221;0.76714421026381763 0.48134004890240695 0.80894614030661771 0.48422200898264711 -1.5007280869994111 -2.5867979244879704 -0.65340161756767112 -0.38636600970246759 0.36862101813373838 1.0924579743000884 -0.42298574533364952 -0.21378718088220877 -0.6074582988370818 -1.5894986532280473;-0.25601105984460543 -0.092094841145616058 0.79931163694759477 1.2310866510497027 0.065107509872365799 1.7954356240332734 0.96339299418674351 0.15261367330705344 0.79679679282450022 1.2750846474189987 0.7064262101105665 0.23590356218401382 -1.0402971967327648 -0.96340061972676028;-0.1519733782224188 -0.56598148074316956 -1.4333503015388935 0.79850097748466164 -0.62424709209545126 -4.9299083852884973 -2.7039111614986178 -0.79726994564747866 -3.1834020275580652 -2.490082478167158 0.050533439558828122 -1.2908053275709614 -4.0088447457259724 1.7381844294531072;0.44009723599274286 0.20805464144053271 -0.70863339938749326 0.10561285602576921 -0.37699527700690139 0.36937481710275066 -0.049392176671265595 0.0057981964236995427 0.53944338831983552 -0.25337719175801654 0.34376173336706306 -0.73886735768896106 -0.3606169087153811 0.76996141414617703;-1.0195445344868213 0.014609284428743163 1.1775322768170997 -0.47016005287519586 1.5639970592538346 0.30552463629931192 0.17420992608380956 0.065662749354280708 -0.45927032302272036 -0.27335615215016323 -0.76821235043800251 -0.65352683543434231 0.32831034312381208 0.89743630168339372;0.072352630238678925 0.85642704908280265 0.01679520219415017 0.4913602798401378 -0.94059996551560299 -0.87322085871081934 -0.79187964018801593 -0.20443573985959926 0.38695536157182103 1.0371287688102122 -0.31991236919576321 -0.035836506750911351 -1.2620426620509342 -1.5985773738041817;-0.61215470033439323 -0.81782457102456019 -0.34202748736340494 -0.32273585038720415 -0.25696985864988725 1.9699952659375077 0.74650594347193089 -0.071746347236792712 -3.0279591832791035 -0.13412360398713311 0.48012436993793206 -1.8522632647046899 1.3611728483428565 0.4443854962951686];

% Layer 3
b3 = -0.0081807552783988435;
LW3_2 = [0.53330987416653763 2.7172661041439494 0.083533392035326184 1.1071244981980743 -0.56020152608055318 2.0984580460977496 0.32182147494273455 0.57729900591988781 -3.0373846085364953 -0.57508304724028592 -0.39079095574196815 1.1781037473904956 -1.1626076869545823 1.4250299034953466];

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