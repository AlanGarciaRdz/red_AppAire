function [Y,Xf,Af] = NOXLomaDorada16(X,~,~)
%NOXLOMADORADA16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:25.
% 
% [Y] = NOXLomaDorada16(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.00280033604032484;0.0179856115107914;0.0558659217877095];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.8536821073465295;-3.9232859278020493;-1.383312414724065;3.1587212793265045;0.43644475527896032;0.1573661083563577;-0.4852495017894688;-0.38141583448453498;-0.070081344025507891;0.85260355629966766;-1.7817721008240412;-1.7524575137278082;-0.3976905447336726;-2.0844863792304742;-2.1392093443739815];
IW1_1 = [2.0638375015628512 0.78894818314339665 -0.62646422725351025 0.85665437569441183 0.031791479143704303 0.44497444885960052 -0.92190707025861951;0.76948010657151311 0.073664655466647203 1.1541261017496347 -2.9519786601882618 0.059193309189608113 -0.33171646854310688 -1.3733015135098752;1.9131334562178319 -0.447458601385335 0.75377820188169753 1.0807807408606018 1.3043695431473292 2.2395261808865774 0.14883885868374813;-4.3682802169213728 -1.2006500862293696 -0.34147999856237821 0.26265994627377542 -0.40359203892323797 1.0906272719284633 2.0501615816082288;-1.9094243010963345 2.0801967593276975 -0.21337637895343353 0.67886880208798606 -0.29672427807828644 0.79879670121833812 0.094561933461290965;0.84934997103007148 -1.0895210360281702 0.93399334159307812 1.9176190585130952 -0.074399403957539176 -1.2701099028667127 -2.5730743065191763;-1.1416296270845872 -0.049765445223528958 -0.18127861855504693 -1.4562443727568399 0.27488599749650972 0.091574753563547884 -0.20751516691925481;1.3943729246848233 -3.1762434044716183 0.68922768307906634 -0.49825940373936406 -0.092661001155965428 -0.11060952888756685 -0.46600221297401812;0.011496722261211397 -5.4381915471573699 -1.6989941821029368 -0.44027965280515369 -0.023483644914310486 0.45211457151465406 0.86444196172084908;2.5188896006613319 3.8951611930845251 0.69088981092064083 -0.095537332801479469 -0.29865406485800755 -0.16018670444449556 -0.45557224418394948;-1.7412335531506851 -2.2060666919894496 1.0041860037991124 0.9290301605202933 -0.32091459490765045 -0.20695512632989232 -0.6285505130946567;-1.0456320370275365 -3.2057434036877561 -1.9039211650112506 -0.036191454593491428 0.51465123677918434 -1.5539847338981969 0.25911946794248097;0.11137672392709272 2.1034087397279455 -0.72402706794780947 -0.95453732898689869 0.3663596695988573 0.2980243111265547 -1.8307225408242271;-0.076048320755968152 -0.34816566039604563 -0.89214419179385751 1.0892260490171868 0.8700992965353489 -0.80057040483854724 -1.8216404045415169;0.13667072648838374 0.13694110863361625 -0.33926061696592896 0.72847324474042296 -0.37243888811389525 0.70170728404633831 1.4858820429374842];

% Layer 2
b2 = [1.7129745480424212;1.6550034798011155;-1.3018012923611586;-1.3374763070244158;-1.6189561736786806;0.48874308405630823;0.23795110075928766;-0.078295532710996929;-0.81427178595321437;-1.405133340396248;0.2653817416297245;1.0881624077880396;1.5950196513366079;-1.0856064222680226;1.1351347240913303];
LW2_1 = [-0.37968734742855575 -0.56258957197457404 -0.57517384136995164 -0.4848208444848196 0.021740113499818269 -0.55831422782282314 -0.41255629767863217 -0.38874738755782784 0.23134322960864026 0.4876808231380923 -0.18874488760944957 0.57181650226333769 -0.067600828628307214 -0.66924025885933003 -0.0063155365221868737;-0.47287044605389583 0.42775770944117636 -0.92881599946000304 0.75098158629047895 0.19337572552375853 0.24786968570450302 0.93940261352580245 0.24576989140670924 -0.52525777282623709 0.59116870467668037 -0.85556935615011498 1.7701330479582196 -0.76702268096981441 -0.031304322379207328 -0.45975509369761081;-0.12489058336818168 -0.60731734996575115 0.91315825759213487 0.0885262671197585 0.1595115139346916 0.73296633902696051 0.093757967392182215 0.35498957006200471 -0.32831249979917776 -0.38432152842538042 -1.1791972979049716 1.1104466014974661 -0.25967038026976652 0.37170854422450045 -0.52613583007270392;-0.10699253455303237 0.19077683202226536 -0.49896355709381263 1.1975818500481075 -0.5978799832349333 -0.58864417534218605 1.250227225161926 -0.3472953880763891 -0.2358814765421427 0.62829513078325894 -0.23395953557057447 0.43088902977444787 0.10197050923474757 0.27274115158767709 1.1141441491347059;1.083051552744577 0.60715752943642498 0.45961244907732662 -0.46632705449430772 1.0414415111006476 -0.24876753066242413 0.54878123026716985 0.57075578078677724 -2.1764993061145992 1.8823117243909313 0.83004339611334887 3.63198532726717 -2.4017481615890088 0.90351808912300025 -0.58338438353232402;-1.1301180857683855 -0.44834453839041155 -0.01438199680985168 -1.2140035909550611 0.24120280677911624 0.86281977487048223 -1.1002147522980279 0.48357958475467017 0.68199843676451677 0.55664080783362835 -1.0301957509970567 0.1168889237182522 -0.16577180838449102 0.092017177754516094 0.1008838794551303;0.47120022034361658 0.55577103065962441 1.1902274356644387 -0.36880883395141306 0.086948441648220298 -0.24030253593097664 0.1164975491333262 0.22295236861111584 0.033499622580904262 -0.61625868005169115 -0.83153953866952002 1.1862854243864915 -0.27422022173204158 0.60928520467211766 -0.53830139505216745;-0.50865266223783445 -0.92192571446816329 0.52901490014262331 -0.34395257963300413 0.067405208054558602 -1.2047840523802846 0.74132425408765412 0.24643011322636554 -0.41000929647960099 0.29916939576457457 -0.13183925295428267 -0.51944880193421361 0.012356430075806621 0.59754710546797585 0.25992128040179763;-0.30389914512384919 0.57857074970667566 -0.47428681231965503 -1.5081351844665065 0.1189146911033563 -0.78990799907088427 -0.67413079778478791 0.42328942536869685 2.0751906164737939 0.66066662442767654 0.59788790939919378 -0.69831076211571541 -0.25343578866509148 0.93376734689169538 0.44831124338321349;-0.21884309549995024 -0.2760423127224983 1.0089755197151169 1.062695801355487 -3.7973674060973059 2.1414882352143039 -1.510196814931593 -0.7989585770775598 -0.71365520027283347 1.1461623578941105 -0.04666069780817364 -0.32096363501552949 0.027959422863671531 1.2450865244340372 0.5486609371109169;-0.75102443086607895 -1.3428309565945784 0.93056836153646971 -0.82266731360813161 0.58342247111406331 0.58193718268876937 1.0115395835005117 0.92268868664341896 -0.95364196474378748 0.58365240452510836 -0.37499042710764119 -0.2259126067723288 0.12736376338009103 0.30925067271671453 0.47666574182346849;0.097463694192653355 -0.29892951738929358 0.57898074582841963 -0.54584952866898717 0.48866075390492769 -0.73034623655710229 0.30909234318205975 0.44186305233987855 -0.54912800166501341 -0.1158481380210923 0.09775543199731665 -0.30267631412835128 0.013510090471379708 1.045086919644481 -0.29595537994400661;0.12204666696789757 -0.22816033805835065 -0.24205917460739843 -0.014207827440927228 0.57930192373214373 0.34317481811981221 1.1091067782763107 0.47768081057287981 0.65660661362118788 -0.52067555326363102 0.68461106136290495 -2.1506962654332487 -1.1119984083438561 -1.070621298153849 -0.037484923545530069;-0.4750561248410986 1.3243975017045118 -0.51571177138727531 -0.56406668378593539 0.13450238227585376 -0.44576184614065345 -0.5476818796336419 -0.17060895601653822 0.30523556739739466 -0.31881679659138557 1.2243659879615507 0.97616495427816441 0.16876645587367278 -0.62230337691609872 -0.15058764613820413;0.52349348382430316 -1.1664521906829575 0.37743337037504121 -0.33502686440119533 0.13991520854692208 0.71091123232984477 0.018795544823074856 0.17364849137801949 -0.24222129604048151 0.12645697047188681 0.8925817904253236 0.41103689100732393 -0.17972929391714265 0.16704989846064647 0.96034158885120924];

% Layer 3
b3 = 0.46391483963169827;
LW3_2 = [-0.25606729903208736 -1.3328727167865697 2.1401923970240446 -0.97454844885786873 1.5935847838761417 -0.8140438554831364 -1.7631479518124822 1.7121063245851016 -0.58419714403322243 0.57870645426907963 1.1732115151474865 -2.3688642044724917 1.5810431274910894 1.4369370078089319 -1.3768319899309327];

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