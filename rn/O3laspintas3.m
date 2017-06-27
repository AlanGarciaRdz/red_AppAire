function [Y,Xf,Af] = O3laspintas3(X,~,~)
%O3LASPINTAS3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:47.
% 
% [Y] = O3laspintas3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.241545893719807;4.5045045045045;0.00280033604032484;95.2380952380952;0.212765957446809;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.2813080785217763;2.0775971421581287;-0.92425841156839872;-0.87209681318527565;-0.66947367669025082;-0.1476814039785018;-0.53881987421341904;0.60421364725663773;-0.59010655503353426;0.61218312512442952;-0.65487026281170602;-1.2738368076778779;0.80853870685757123;-0.77132681522937474;-2.9596987784878941];
  IW1_1 = [0.2332258617542948 0.61122164315789984 0.81343875508272823 0.60478600614587041 -0.072518425645086398 0.68285064175956822 1.3598867615824362 -0.086907293593423224;-1.0801139593325182 0.047981117712036288 0.39509041067061484 -0.39406476899593401 0.21570016663141653 -0.57841423505729228 -1.0572743055370877 -0.206440647020456;0.90635817287231335 0.89556861175590652 0.059835277844874406 -0.43856459650458451 -0.11889099121060878 0.0663258258936196 0.30558304490212651 -0.59066249628418155;1.9188132188986118 -0.46684706831423234 -0.055900355423973681 -0.14108594856947212 0.44797744636439368 -0.056877261858769575 -0.047124632610084871 -1.2368779858219494;-3.0626008997224092 -0.07952127734914087 -0.057983570189574798 0.16371945762209347 -0.73388157257566322 0.00017215665242524721 -0.45065865677270528 1.4389059523997625;1.4317348310405595 -2.1203839158599633 -0.54524663344332813 -0.41113274193136123 -0.27970463166375192 0.26719809982289244 0.54368950965600904 0.074089853463651836;2.0213897449408114 0.37837128413284354 -0.12089219634657565 0.52150419525805991 0.96713291691505199 -0.39990404574586591 -0.60907167624858005 0.84766830657390613;-1.1423043332952407 -1.9861735373882263 0.3223625248192406 0.90694509084858588 0.61906689246674296 0.51980150179053897 -0.9211893253381116 1.2429853951040861;-0.52216123415137805 -0.35971460251138321 0.76712551280343266 0.027702995688126196 1.1300813520896906 0.53032096722931199 1.0615992340156 -0.94911065672540085;0.038750442896901438 0.37556622152716795 0.3068247733232381 -0.348310652316284 0.056613239069134069 -0.089104010792957919 0.49011998151518826 0.90405273455582824;-0.020478568782848639 0.64251278949344237 -0.47421323043880981 0.34074026574767502 -1.9135300881944266 -0.39607434099145233 -0.82517366056450403 1.8589674817444022;-0.92778418070972635 -0.40811504552582906 -0.43834478704287694 0.45134554692115109 -1.1718940907098976 -0.47186472234287824 -0.47354077968993147 0.37113368645354888;2.0216275634711613 -1.825448841827372 0.61801634535811178 -0.14580380366957518 -1.1919869897217583 -2.5426366856403817 0.84939379780022717 -0.58866997990268255;-2.877188100443798 0.13541664624333213 0.051843529961924997 0.38248224322026397 -0.89137049413543112 0.08625443468277047 -0.48706887300544421 0.75267134103278377;-1.0986634562986204 -2.0100579684885234 -0.28624451461811223 0.10454947318007619 0.81056508459799181 -0.20834447721311153 -0.0379911748255468 -1.3977702513557175];
  
  % Layer 2
  b2 = [1.5503944295453587;-0.71664358311941434;-1.4649588008864023;1.068794740479871;-0.77086514425503083;-0.77915797991786362;0.016297860893561306;0.042141005223104072;0.07677776508455042;0.62739486808159284;0.54876293762898931;1.1356860566169042;-1.7441906645649694;-1.3442438829638226;-2.1423481118422223];
  LW2_1 = [0.014416948021036845 0.067510318680235687 0.037267434992596868 0.2163254202293948 0.28570564542204352 -0.43406587553198012 -0.59510222680470559 -0.31014720270506685 -0.23907441872218499 -0.33134726576965984 0.28619398725466794 -0.14517554924708398 0.70840381457889812 -0.56240699396965932 -0.87921453095346558;-0.43799619860517325 0.67319098445620429 1.3762777346129211 0.46513950664085285 -1.3841859308986757 1.031133693355198 0.50437295322270714 -0.20268608973843855 0.093972750868838772 0.54947361878497181 -0.13202369598247554 0.84548132929402664 -0.096991876899673951 0.37971866028820583 -0.15848569456472994;0.47967141216428555 -0.52841406781297739 0.39092665970998669 -2.7841290863775461 -0.87966109902615452 0.31352714648567365 -1.2915322889611744 -0.078593716720837592 0.03432351310604842 -0.77527883935901709 -0.040359533212493165 -0.51700962900444314 0.13114437016192171 -1.1438434125021837 0.042149735799901215;-0.31577411523274945 0.17519156803084518 0.11103464709876826 0.042149346275789035 0.48739602368448098 0.80184596385485496 0.7070244722571577 -0.58893963679339834 0.25283263890706265 0.11320788680255603 -0.51167397936142556 0.65333432694032167 -0.49951211836142589 0.079161785763429693 -0.69284270903898015;0.21378071832533668 -0.11894329189044629 -0.42625318998130735 -2.0464576127681537 -0.9118501328603672 0.86229154994957191 0.89999049675594922 -1.1000765392299998 0.45085689482622821 -0.36388414516666473 0.58223545839760082 -1.651586241530459 -0.043608426982529869 0.073451981606395683 0.59648293522817553;0.62191211077573505 0.22195002113405593 -1.4797841350425549 0.75885484190628116 -0.21514294269870854 -0.93766378422897112 -0.71039091447432101 -0.12498766190127109 0.28163777396602108 0.084790662755212701 -0.41193078784387999 0.020054824254357666 0.016491850509547989 0.47956448633870696 0.40303631130316381;0.17363242426371561 -0.57209855146229149 0.073201100682138642 0.76734966002128635 -0.93616807091524534 -1.817159171714112 -1.1387607931991737 0.34331253441855925 -0.66651815532040692 -0.51932361968622864 0.21760174220094167 -0.44434815944937267 -1.3649988692258428 0.40647451830307157 1.397709792031177;-0.54360410780371948 0.64480292242593618 -0.49867892428989807 -0.053674398097936477 -0.47404725347838611 -0.33563015532393825 -0.25454996795206936 1.0199691938006479 -0.49289501362440896 0.57691421613966909 0.78992990628704896 -1.1962030717327354 0.55622857593471364 0.21948377067540603 0.26010507591720311;0.41746364592872126 -0.45157782039996197 -0.7309146120340454 -0.53485665256629389 -1.0353580659668979 1.2377794659674264 0.39424186772278408 0.69191957056775166 0.44231083400510851 0.031131189404706612 -0.18524208318858959 0.49776547133619353 -0.79755508147309573 -1.0024062106896878 -1.9636118945404848;0.42790659289815769 0.50014278327194084 -0.11589733361574539 2.0053801949381751 0.019493416246359231 -0.080352737495540477 1.2880090682410605 -0.0055560605449513391 -0.43650400730703537 0.36793196154017271 0.29338265727891916 -0.058450627106515468 -0.72432944502152896 1.0196499088595277 -0.67958053095574755;0.70573108697262166 -0.93835980473497382 -1.2415878087654222 -1.0319035420150982 0.80911768129407724 -0.2100086917234163 -1.0033464606051294 0.56831595396568757 0.56852357914474261 0.55719335723687546 0.40677528866742935 -1.7274151179604669 0.80412222712662207 -0.010781726675631705 0.36304623546953607;0.45229915147484112 0.98810067918835287 1.408539686101612 -0.62998156583634757 0.070251559868551777 0.59204333329433612 0.12726375818880259 0.10823578534543395 0.11906600350844157 -0.27422375429564994 0.39988263705981203 0.064104813577904277 -0.11692387947302603 -0.97345778867410138 0.0072672655684242055;-0.063843628635198907 -0.5755023823578197 -0.0085585512159985153 1.5671391423391841 0.78551742241916034 -0.20757787993489479 -1.6004107208200815 0.40589571144070136 0.10403817328164619 0.14129962806161392 -0.16652786412276735 0.27631375274323844 0.97195958799596494 1.0106086952457771 -0.77186926707208459;-0.75762448665652082 -0.98799837981488503 0.11042026232214332 1.6208154428016333 0.04450280652590876 -0.739383313934034 -0.4707368607161086 -0.034696050877232286 -0.5269323069947256 0.091822741875910704 -0.1241083030907075 0.34646829734844764 -0.64493230300941773 0.080324239278258075 -0.7579241972363232;0.26139371087008439 0.37647436117996841 0.30221259387703725 -1.1614417886563762 1.3210875077635007 0.37663810384096608 0.15812292599509509 -0.3759635050543601 -0.16674665369417546 -0.85095784090679527 0.55910813914376456 -1.0757725996315513 0.44489595802604515 -1.5374606497047958 0.84925465180639659];
  
  % Layer 3
  b3 = -1.0386212594154505;
  LW3_2 = [-1.1574487887086771 -1.0539561523317174 -0.95658211341732569 -0.87914039646881181 0.63837921137936715 -1.3266131891828095 -0.63523756156428679 0.76293654025806101 0.62111226010543008 -1.3076641964654507 -0.36214757372039846 -1.7360924257909198 -1.2738255604407871 1.1559108125655682 -1.4377225177021227];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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