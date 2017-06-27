function [Y,Xf,Af] = O3aguilas6(X,~,~)
%O3AGUILAS6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:33.
% 
% [Y] = O3aguilas6(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.42005420054201;35.0877192982456;0.0561797752808989;0.00588581518540318;11.7647058823529];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.2408993561300954;-1.7271379012816597;1.2709242951833586;-1.0248192275673638;1.5908546886102597;0.62331120012237151;2.5196916366937545;-0.10484531139764568;-0.19598602261272999;-0.97628214122705181;-0.77769598881970636;-1.1069443089022402;0.09037092273348532;1.1668262781643108;-3.3616643101002328];
  IW1_1 = [0.60555361017270959 -2.6405305665973424 -0.27120656014917355 0.33949335416963411 0.76374994712928423 -0.53654513365336043 0.028545065525020109;1.0019216678502136 0.62055661185076016 -0.88715636832710887 0.84447226426485267 -0.53091152214345294 -1.4857293032054151 -0.056189459758690434;-1.0669071419520362 0.77148312774754779 -1.5537429383915162 -0.015743064714191103 1.6894909188750566 0.95821376467924002 2.0527038788133476;0.11844797583567808 -2.1015140850560936 0.3013749148110712 -0.29028860213633462 0.88047211352023447 0.11260086103344304 -0.70008668457907175;-0.73446593990054609 -1.1197396462533327 0.2028046232874838 0.23245837356467353 -0.6418320616582821 -0.13644383961901443 1.2367339247519278;1.204564491451666 -0.71413885494790252 2.0422342915081932 -0.74176698422335985 0.4005984184687118 -0.34378453605666559 0.41012574439700722;-0.5634103426687237 -4.0776315343442882 -0.53354514703162692 0.63876123947085128 0.32720347716902465 -0.21683781723172019 0.013191708906158284;-2.6848020590507433 -0.054008235717198039 0.39735395607020912 -0.22369527262386446 -0.42307922487225391 -0.062744511905873449 -0.22545765913496466;1.7831897450485859 -0.80856719861190007 0.51185771611597208 -0.48655491031248854 0.611612530865417 0.21192051286933919 -1.0928384079491935;-0.95600765249002406 -2.7845900529985208 1.5926034721082913 -1.1939208802804995 1.7035115305197674 0.26990087617262976 0.90938479558636087;-3.2451012628123577 0.06278951542567858 0.55099639518168264 0.17620148086647638 -0.93898454644234775 0.20160994494018872 -0.95679264969185918;0.05244694254750696 1.0201135104617252 -1.9027994397373349 0.16352863021933084 0.098114941993717175 -0.4791298922584048 -0.40030408350124747;2.7553101504494037 1.3011475128111714 -0.25027784166231304 0.18272695674913303 0.54413341274066651 0.042789191038931633 -0.36462053828238566;2.9363405729989482 -0.54607342104107048 0.72267447044190825 1.0532136974613389 -0.86317804602079751 -0.050955222627473831 -1.1633750693728082;-2.9308147237519799 -1.7911881424809 0.18285009542390654 -0.29144097000575458 0.28768625980898971 0.15818863394376667 -0.24245689279927762];
  
  % Layer 2
  b2 = [4.0431622099884441;2.7101827386260258;-1.7857602375272366;0.87797504320513065;1.7658749694414513;-2.3590802632531283;-0.48025954064367854;-0.26183823337097317;1.4193913012673491;-0.80307063286758973;-0.018430283070798859;-1.4687653490438035;-1.6726705071759576;2.4549887909624957;-0.98750140365075512];
  LW2_1 = [-0.61753927494531657 -0.55186534575967494 0.96943833811780722 -0.4740254436901799 -2.1889877153129094 2.2146958335604396 1.857018451124606 0.55510884898252333 -2.145801452511499 2.0845713089758453 -0.44204471550605318 0.57378418458997982 0.16742726497940497 2.5475185829984182 1.0241453016174904;-1.5084643634090402 -0.90439462311347363 -0.088361765610997484 -2.299705052553362 -0.36556513449552464 0.75524888982057103 1.1562921068548779 0.83965417427227951 -1.0534516096934339 0.20036050399608621 1.0458893218822141 0.28936157353112257 -0.093886943096401027 1.2465921756467877 0.020248556814207508;1.4114687625092326 -0.14169408771149067 0.29631103499517142 0.16949123620963544 0.046484082059647311 0.40824961763976103 -0.2485811556974159 -0.43214645594764817 -1.6590710617951567 -0.53233846815043084 0.076790057969613593 0.13182654203022884 0.53489388039837704 0.27644717717878908 -1.4057946937097878;-0.78125702553290999 0.22493730245097515 0.030828661542022191 0.86618740522036497 0.64521983840385688 -0.30039268088594728 -1.063279139961816 1.0746521799501094 0.95854162621850125 -0.072655123126203036 -0.60851522186252549 -0.10020078042627079 -0.60066891476756157 -0.052902882002316069 -0.25738988677804936;1.1345084992769734 0.025306086409695339 -0.16269430972278251 -1.3315023049269687 -0.37057765210685972 0.10722777268029374 0.22033991643967119 -0.58539727499979044 0.68666458269579744 0.0017289008770436792 0.69300949179045135 0.1726197986379942 -0.40389114518145264 -0.12333074750147255 0.98502268804558646;-0.72328377548808931 0.24833207157065434 0.065303901606509479 2.18564613016486 0.95484680555176438 -0.31134659817232374 1.4535545144698117 -0.76829311930883348 -0.21443361732781402 -0.14349540834777688 -1.4306182487041914 0.36020692082148703 -2.3003952024750007 0.50113868837221942 -0.031301142962091702;-0.0513854889350207 -1.7227647604772367 1.0684844212215845 -0.72956472061300737 1.1435332976519648 0.96776408505520861 0.76585755685697365 -0.23026862780344731 -2.0580687038640786 -0.42741301661377817 0.83381031704127773 -1.6292220988355575 0.98447228201256087 -0.59305685763755789 0.84467950242748557;-0.26575797818312108 0.13780992367899828 0.10881740970618586 1.8412027316229678 0.95337250462119194 -0.064245293639804177 -0.13706051656807658 -0.65570829276208831 -0.19209476327950922 -0.33106661568556811 -0.85115149207484031 0.41107002356818712 -1.5114711117572988 0.41607606058617325 0.1063878496276211;1.9225403052147185 -0.17948379138697479 -0.012791519880522491 -2.467779608820857 -1.3498867730974231 -0.84688045878845586 2.221002035300609 -1.1726325256620931 -0.94558442592839531 1.4848078342341808 -0.5163951401256659 -1.1018487282092784 -0.91953199207275171 0.18121438561306513 -1.0001655423066795;0.87575102402666116 0.60584224102069151 0.8862076802850879 -0.82684902015889195 1.8231379596770818 0.41570167812447417 -0.50872298336333999 -0.31041757401101183 1.0484017756001964 -0.82681238130168899 -0.080825417196844607 -1.8274494046352894 1.4485664518529728 -1.3397552032370728 -1.9959538860846986;0.11904944836339668 -0.61008948974706179 0.49708952901816872 0.62267339982606051 -1.3571961454280568 -1.4741008249830532 0.4404136633914848 -0.62603551797530343 0.28637598089272281 0.55737425436138921 -0.54580482874565894 -1.0119042524425155 0.26557320267046036 -1.4547123251325746 -0.84023701663677119;-1.0813782550422499 0.032920904990834138 0.086320567833759188 1.0590399200053688 0.0079276499324070562 -0.26434909855654415 0.073813875584893135 0.50308465787122147 -0.93733579581953042 0.2407270689763476 -0.73793159928050822 -0.31857134789314545 0.50105685141098744 0.026263310998749657 -1.0216271590614321;-1.8101008183632343 0.61320421761035548 0.036020694238110919 1.2450647727768773 0.72642057864536658 -0.39399580104721993 -1.8794213315374448 -0.051689023864150835 -1.0711364534797669 0.53230611671085049 -0.35094697254819535 0.13049095184859652 0.36323407546483316 -0.19377796827654184 -0.10372934275594767;-0.27378951715795852 0.37051146471608404 0.099771539788058958 2.7026648764900254 0.9258602412918383 -0.69925993363307015 -1.6691111888473222 0.90360734980968338 0.1326233224837704 0.043739089960223576 -0.87657126472176172 -0.037489174280627896 -0.51665449205751957 0.20198960673444152 -0.94757786196527283;-0.63819213308408773 -0.24305670716558686 -0.17537944067036901 0.8416656544755321 0.24567985156262429 -0.58652666672442455 0.32103502397078376 2.7501693232391982 -0.45890211733290504 0.30739257597477054 -1.915454680602799 0.31033157870491884 0.79419203264145533 -0.10955911424357836 0.014288112014232912];
  
  % Layer 3
  b3 = -0.21429416240967508;
  LW3_2 = [0.47305707684176446 -0.64863154394480627 -1.4678519929474851 -2.8317244867895388 -3.2687803868197176 2.1950093886347712 0.22649528890602255 -2.8202566680279673 0.27843274600289947 0.31002923828983608 -0.158521443240002 -3.3025953512371813 0.7457533221387278 1.6813753068914707 0.65369177378574206];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 11.7647058823529;
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