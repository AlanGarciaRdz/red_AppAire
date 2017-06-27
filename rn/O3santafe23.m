function [Y,Xf,Af] = O3santafe23(X,~,~)
%O3SANTAFE23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:51.
% 
% [Y] = O3santafe23(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.172786177105832;4.16666666666667;10.752688172043];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [2.3626125399261877;-5.65461209076493;0.021755929698907724;-1.1031622798635732;-2.3809535288127344;-2.010460494512698;2.608822166737677;-0.78446259840972343;1.2412801908400843;-0.66171050112222884;-0.48026238811843242;-1.8771625508703949;-1.1374939183208332;5.3793052734333004];
  IW1_1 = [-0.88517691777228835 -0.86663420522760426 -1.0417890836751518 -1.1149134194700958 -0.67105354550313601;2.3491776191123619 -0.18145197449237763 -3.4555806839700081 -2.514794884501629 0.42444306741338633;0.017202565373886678 1.0124079497795069 0.84185706351430978 0.2876763723550419 0.40200818597866461;-1.7186274472724781 0.73350474428310775 -1.8080311948206125 -0.74682497991023955 -2.4638699088948637;0.017568330468251431 1.0695115111849185 0.57806422689897441 -0.058022613150390603 -1.901350998041289;0.69778406307905061 -4.2624337248897985 2.3602065000845194 -2.5803666805349601 0.80881341865962719;0.74295121320270996 -0.15868591269680685 -0.05129039363926656 -0.90426292405618436 3.9361474786888966;0.81874110514875575 -1.6840280885629253 0.32651666832168863 0.76305381497877123 -1.598856938730578;-1.696491130258811 -0.039786118207297085 0.0002167683211397424 1.0520702012243464 0.8870878350201169;-0.24579860933956915 -0.63594635183696346 -0.15827613332017704 1.1694065285740065 -1.8532371328486901;2.4831904861307015 -0.028377441098340124 0.86897464498887911 0.37119698199123613 0.76131016213941016;-0.094293926954418669 -3.7668812821156545 2.1342102404243222 -1.6797363588040648 0.30898541639192062;-1.2117588174565013 -0.91042233682393459 1.4623606516072098 -1.0288415899243946 1.251980214683289;1.4089911754238351 -0.42828121011963244 3.1390172128404878 1.9737292447604164 -0.45535563996984407];
  
  % Layer 2
  b2 = [1.616528271372621;1.8398956699633249;1.1645113604902082;-0.85530031425526365;-0.39169927543982386;0.41846464113149695;0.0043354297631894682;-0.41493842618280108;0.0327813536488765;1.2276732204983609;1.3377741051468173;-0.13619960094877112;-1.3364093789427958;-1.9374854793756719];
  LW2_1 = [-0.25741019904308371 0.76949841223975213 -0.69517845164676695 0.84348142428692785 0.74200161349547433 -3.2218975234170171 0.51346673134237719 -1.3558697167415752 -0.22811474173561441 2.5495894378992525 1.0647330504189403 3.8783663578704619 -0.41125560056338789 -1.6686909975796802;0.047521545191203607 -0.07963992372075071 0.62074902771315854 0.1200261178113611 -0.71453997520717061 1.0511249302165313 -0.56262985915028207 -0.742046044759747 0.6719410089600637 -0.80769625106759413 0.99788435050085245 -0.66249975776810888 0.37480084308446304 -0.26120132342536279;-0.65220717099352421 0.2586208523461459 0.18657659417275207 0.38887584567725719 0.12851974116272108 0.018299457967417269 0.11426996585868712 0.72783090189683297 -0.6612046233280342 -0.85413834843612313 2.1521435831328648 -0.47155627545119938 -0.70771109900618012 0.95893995827806999;0.11822046461004281 -0.3187941039821186 0.3294343125432026 0.14509107738301988 0.51858167527322485 0.71019309424430299 0.4748966174664041 0.11330100359613551 0.90766849365686197 -1.0482276606357852 -0.92516917379871311 -2.7003141256098639 1.3331531448175928 0.61349561707608258;0.57853025612406606 0.030494198884521352 0.17233483496939206 -0.4260410939214298 -0.17541688741654224 0.23833603299905975 -0.92293048592313676 -0.074465576621051743 0.24544415852276341 -0.85165365095890444 0.35867346034550496 0.29044084468608322 -1.0110832934972278 0.35915713335067762;-0.22162858655327689 -0.13543797750741166 -0.31977700545824683 0.49790554045964774 0.031675762339921594 -1.337450951055047 -0.062148412413095794 -1.0922997054946308 0.32912654135394526 1.4238573382565258 -0.037961382746051403 2.0722640389207045 0.1162588967661205 -1.2108746465690539;0.16014155546013514 0.08310976192504041 -1.3128950484213866 -0.06890726957822009 0.049605702211722461 1.4617583291897878 0.33168120128860157 -0.48499048376660153 -0.67580461553741822 1.9696414261518491 0.72298515989165812 -0.28786461477000419 -0.39917332481382023 -0.46768672643552123;0.10906377013420071 -0.27919580343875672 0.074808036184068283 -0.076021743426149854 0.83507059616629853 -0.24983994468583573 0.41435349927801729 0.17676792206714192 0.59901747979646425 -0.74659554450642929 -0.74347333982314789 -1.2030346023825129 0.89459256342461779 0.29002360386156456;-0.46390216927582295 -0.5338946129237091 0.25100649767552308 0.1877915949668823 -0.29272595815338448 0.86172656866135011 0.00097273808942500376 -0.45834130877669083 -0.14485691275036672 0.65489110633259784 -0.31935723421890255 -0.68324902866368908 1.0922696546167627 -0.25243903438314552;0.89484072635310385 0.051711962322522835 -0.11842187035124199 -0.70793032434847125 0.61188744887237179 -1.7043760296085109 -0.78945901905796956 0.48604810243953223 0.86352442755976477 -0.012036804802441799 -0.166861994127293 2.46622220455267 -0.36859629189480558 0.7602911878458144;0.66861460385430416 0.62455498450531011 0.31013384699344959 0.8486231170255808 -0.18153756671969606 -1.5138970969817163 0.79269944617195298 0.046917950180190619 0.20855120919648287 -0.76885670863408984 1.9493755740932406 1.1935020993972001 -0.53501321706923644 -0.1392316422749465;0.78066899861737005 0.12025942943604938 -1.3528062431732848 0.75830411125975505 0.85100227171863885 -1.9574320139336359 0.50544463578714272 1.2718386922358269 -0.30063007220870536 0.600121038469416 1.17390055973645 1.6270185782871192 -0.42452165317371188 0.42804313932855692;-0.43113889971295177 0.3363524945754065 -0.14320625155487302 -0.9159204723903368 0.028837388117302763 -0.19825984926803575 -0.31981621830757762 -0.4102502352357551 -0.4886323842893785 0.085569612384899713 -0.64073107399023488 -0.2318827682356859 0.61984488349375322 -0.59534106711315382;-0.45678661019884742 0.99526479488618935 -0.15390488940084238 -0.26559696464392424 2.2004319108192956 2.591657470675711 -1.0209286329364631 0.99628600614391172 -1.572545544906401 -1.6884380133428365 -1.0581638629542791 -1.7098459735846645 -0.30514891955168832 -1.5962918920989282];
  
  % Layer 3
  b3 = 0.7464005642959457;
  LW3_2 = [-0.3619791676145534 0.8450262323575195 1.2594783243413246 0.97197532002363951 -1.6891959034210733 1.2768503732167051 -0.76113253738068287 -2.1539396353396429 -1.4976891545101907 0.91866238079386042 -0.72273826771600125 -0.50668766902970519 0.43736948660034064 1.8338035805925168];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.752688172043;
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
