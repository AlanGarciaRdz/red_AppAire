function [Y,Xf,Af] = O3atemajac8(X,~,~)
%O3ATEMAJAC8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:36.
% 
% [Y] = O3atemajac8(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.201288244766506;4.04040404040404;166.666666666667;0.0561797752808989;0.00614628149969269;9.52380952380952];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [3.1233132007607192;1.5053383050380891;-1.6403408028056814;-0.54520740330243778;-1.3347897736817327;1.0100988402719491;-0.082044046083729297;0.93740810228647464;0.43955134422669229;5.7795842137059878;2.6306927160091145;-1.8580399159966341;-2.7354314938166091;-1.5950174367174459];
  IW1_1 = [-2.6618329080993064 0.24522078481384155 0.12904950591645256 0.66417152341484376 -0.37964053490383204 -0.11112750540411312 0.16234052460108531 0.42038075214991188;0.8575298286223999 0.2338093372981524 1.6719662831372377 -0.15850844707119338 -0.46285115071457023 -0.13734255805286355 0.44733652204083563 0.38599122997522911;-0.726288399906311 1.2129493647780738 0.89792321171553446 -1.1519577596174582 -0.42630454056008865 -0.48004824741433061 -0.074491775477266181 0.13246848416097748;1.3483264255971519 1.6110040426371766 -1.3154195055189204 1.5634118320747363 0.83495325667998577 0.24577750536733728 -0.055456989957657798 -0.54075771195681011;0.043693792452907068 -1.9813420216870374 -0.98783600052512199 1.1344187329789028 1.4453118846628024 -1.650156732247801 0.35539978422237906 0.23674964075898458;-0.31601197103618522 1.356179884383159 0.56048198514618652 0.34632829103544788 -0.42584115907302877 -0.36734770240186981 0.63113861252889292 0.93661596539894743;-1.0755514934118386 -0.89847098330941422 -0.28335710868449648 0.78560464954681219 0.74649248240697397 0.061662122121806856 0.092848986162438904 0.46996953690173393;0.73640457706192453 2.6660279326058016 0.37871036233732813 -0.99843693139896472 0.20133824737059275 -1.4268547222418755 0.33539095425891546 1.0408529862214388;-2.0259791602128283 0.29775786702639973 0.26633010632049592 0.56040054565082065 0.010845317987477371 -0.33258174527734746 -0.19884145963523744 -0.32400122170848;-0.79292903045978058 0.85701431902502234 0.20398232788411236 -0.033098062431588131 -0.33768162113166489 0.43993135593714944 -0.035865573329097282 5.3583410464640409;2.1412971750139231 1.7533599296892983 1.4435633996466481 0.43029998489653132 0.038229789408049816 0.73703597956987654 0.027007189742713319 0.79994148664933939;-1.5403723870917514 -0.65416903976956431 -1.0046729712546667 0.014852844352873137 -0.031654346044993835 0.053667875104256552 -0.20357313136833388 -0.80733734658424583;-0.47790246173662387 -0.79370710190826188 -0.69825116055644165 2.623351234290328 1.4772544579856703 1.1841788669436377 0.69458222508524314 0.70084202274301932;-0.64013993466686148 1.1777831310455802 0.52643503091632271 0.27554470240874651 -0.13520937949900852 0.14179525464847173 0.044449199110122566 0.2805701431481088];
  
  % Layer 2
  b2 = [-3.1190030208905664;-2.3412079504052055;2.1902714547148827;2.6712609572191308;-2.3628443502070833;0.65192588346958158;-0.35805365668344963;0.48185809383307743;-2.6352537798073676;0.021329342982094344;-1.5088915684165687;-0.58539194024348229;-1.6815839331522739;1.5238065576832069];
  LW2_1 = [0.84189383451102662 -0.26919789845373693 -1.3650793235258145 -0.18312222185738281 0.56462607008283694 0.38264693878061118 -1.887944909672536 -0.26175736487959356 1.0505285493933798 0.31708946210191236 0.32832349749900513 -0.927724286638689 0.67600716552315565 0.60826400058778129;1.4933891134307717 -0.85996719542334732 -1.401424787645704 -0.53511257555797231 1.3226844040509027 0.94598537706176045 -2.4725354471093564 0.051857989465792585 -0.35062298149565063 1.1065141957037694 0.99237974639064241 2.2308169984725801 0.81530879049287086 2.1501866652565758;-0.45133879021353612 1.2239817525077554 0.73818926562815812 -0.90585307839862461 -1.2471985983691052 -0.14577291699654527 1.5551059930514968 -1.0533654565096973 -1.2064914851023929 0.45007798988832753 -0.32146412636856742 3.5754954000898174 -2.1767291757215781 -0.54061835760587573;-0.0089686053975333302 0.79510771897789845 1.4343331253168841 0.095056608989521035 -0.72946644718103015 -0.79997395181587305 2.3280692469460251 0.67047497327665295 -1.4279831112788688 -0.56782287655486374 0.067673387123720341 1.5416212853067841 -0.47342109564593815 -0.40055666805977597;0.44013328034590177 -1.1509525071899211 -0.74774200107560596 1.6998199436773374 1.253771046931129 1.8697568418447394 -1.5821206170967526 0.88284424580721499 0.61925319277673274 -0.48650419307744036 0.62396472084700949 -0.0584315190631116 2.5744896336165377 1.5017591454190953;1.5720114622938328 1.0450109205686076 2.7911136418648508 1.931735070304788 0.66658193275392708 -2.0320890260139133 1.1033940923786523 1.0476680416266699 -3.0463414038142265 -0.28655842104842116 -0.088058471668152866 0.45639558076419862 -0.80337835651942457 -1.4154904816087397;1.1117673930696448 0.030003328674062645 0.075749207597282528 1.5960786537967271 1.0571319033790165 -0.53497633011289292 0.74893038963402703 0.2936427936337685 0.89494966581260471 1.2356087258914425 -0.68005301137230989 0.79772919397772812 0.71075370403283089 -0.29820695766252642;0.058338012342587314 0.70404889143952809 -0.0045051372340426457 -0.77583911878572931 0.00094047063291690519 -0.52515209709728217 -0.91495590572267804 0.36444646721595908 -0.66557588570318182 -0.67690260659445434 -0.40597014597495418 -0.48659528563580179 -0.63844487257769678 0.94836397581985943;0.23404508036213831 -1.0309093965521012 -1.2028097493148311 -0.80107774456188818 -0.81249383771654238 1.2087799687996978 -2.0471306368652726 -0.058651076627846861 -0.64694297064262096 1.2061388098968548 1.5675529779555395 2.5458748096338675 1.766619697043557 1.6034819978279788;-1.3190810530501058 -0.2342750399794255 -0.86353207786363573 -0.6501270838276344 0.24498225624846562 1.2748188489094543 -0.43381600342927329 -0.47584629909972642 1.0717104799544692 0.59763823487921419 0.049732696428947544 0.44262480670733018 -0.70372470079816118 0.41192310336539278;0.9141132574582076 1.1133220793485961 -0.13768755858063386 0.8145376498176039 0.86826662101007268 -1.3393476728058242 -0.45734663058119401 -1.4240432213108214 -0.45608727000343935 0.42928894758997754 -4.7413374398331216 -5.0227218056846326 0.26361278928913012 -0.76695637486062473;0.90676625859429605 1.5693443055424168 0.18408356287398356 0.76900739323567879 1.0146185871914446 -1.358845831494446 -0.60466273770876811 -1.0984007178780439 -1.5486491437477774 0.36664407283260814 -3.2456035839200994 -1.5946131983935063 -1.3972189216219986 1.3395140100421665;-0.61990460878162645 -1.2218405589057706 -1.4662268611411351 0.7341212015862294 1.8987987206613401 -0.90509466553282714 -3.1101132635739934 -2.0486420397779259 1.6337121947792874 -0.67766867047291757 0.23289018941614115 -2.4031743444642735 -0.30157068025114009 -0.014451778617653739;-0.30395618483712927 -1.2207302528927129 -0.8689171918494214 -0.63790301735367461 1.8317577436245225 -1.7540683650306637 -2.1559546084467627 0.81325774400045869 -0.75730276364582327 5.7062668751585299 -0.71084750181315448 -2.986920577451142 -0.033594729845202315 -0.10945126239533597];
  
  % Layer 3
  b3 = -1.7864346206027841;
  LW3_2 = [-1.9182204887425163 -2.2917336468809384 0.3900456326963338 -1.8890111999427719 1.9000803141860947 -0.32586702540036061 0.71746667453502622 0.8445254878288968 2.2074069180343265 -0.39749287936439948 0.88378877615829265 -0.90268470304706638 -0.13641242736227013 2.2373641438237266];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 9.52380952380952;
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