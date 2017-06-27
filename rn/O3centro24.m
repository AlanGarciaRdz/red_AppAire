function [Y,Xf,Af] = O3centro24(X,~,~)
%O3CENTRO24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:39.
% 
% [Y] = O3centro24(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.281968137600451;3.74531835205992;45.4545454545455;15.748031496063];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.116160560585878;1.257200422497712;-1.4283074850270261;0.55434785353204385;0.92250381636445089;-1.3649349764844112;-0.21121059494257144;1.1320442103731543;0.61100384937987617;-1.7627568156937046;-0.51584693198852871;3.3790390303379865;-1.7098127259058384];
  IW1_1 = [2.8395435504789863 0.69992248945095281 0.48092502940797976 1.4343821239311103 -0.015413950801768966 -1.2741695034189071;-1.1633460164794538 -1.0612341029322014 -0.26054465435048391 1.1838007175574825 -0.67030930194417393 -0.2376722462547271;0.35604916509757445 3.0985244209340488 0.24770910810625227 -1.6945917545802551 -0.4142184295219189 0.30174966775457884;-0.63654384716401047 -0.82397167485500056 0.38246019573465873 -1.0772539010492048 0.001729174789480226 -2.0685989698089906;-3.0405402090736584 -1.1833881023725243 -0.049878495791996137 0.90671593578250764 0.10888993854856044 -0.33194400180705985;-0.066293236701782984 -0.28959780027190141 0.34688431130880504 0.49998597442502218 0.36207936652860062 -2.256847412615298;-0.21527599976433831 -1.6360146739386638 0.48867929139236255 1.1982548847444323 0.4327041522150929 1.6357472265173578;-1.0167488886010743 0.80788278501605459 0.34742931846155994 0.80566057986271045 -0.65293650472488074 1.4841446205471052;2.096971039625326 -0.71830508089278511 0.10099454763815593 -1.1400544842043523 1.5373655223502991 1.1333593985983113;-0.95692123951280883 -2.460491873222034 -0.047716094658751491 -0.66459971556915409 0.22920665302439594 -0.20767499524349764;0.5361406048574594 -3.1904182508294618 -0.72332621519122642 0.37093413037839346 0.75709788942390377 -0.42647437751983674;1.357302536668556 1.1228254482964823 1.7269797365704331 1.620234476803496 0.83522750453613281 -0.9433386738109647;0.088466309161690182 -0.98065292098984436 -0.44891755037359882 -0.52604581069221901 0.11736550174316684 -2.0838008702385196];
  
  % Layer 2
  b2 = [-1.5557125752524514;2.5710418069474685;1.2516099653194088;1.1264951942698187;1.8056644703562612;-1.0852382326327068;1.3041236509746748;-0.18438821218823864;-0.015342075717770201;0.47734949624109274;-1.9678771757531659;-1.2046568395424788;-0.9883128753873246];
  LW2_1 = [1.3541136822588862 1.3073271431892939 -0.36866194232327498 0.27339243719243211 -0.3200448944149914 0.19068793718631566 -0.20061295393541712 0.53425149663050253 1.338372867835951 -0.74445305554963204 -0.91546440745703195 1.3361039902019405 -0.46538299865607352;-0.84355010757159332 -1.8679974890988975 -0.68673813896643288 -0.0728071969478436 1.1522267915375495 0.93389054577166541 -1.6801686558324078 -0.33694190872167118 -0.29753961140041074 0.65827056396995209 2.7263295987307927 0.15807097278688159 -1.2088097601328782;-0.48793714719389336 -0.48371267604880031 -0.65404140942616007 1.3300908908105531 0.35002906411137352 1.105484344386346 -0.74215961837801381 -0.83163827326561102 -0.28241390917285486 0.30093693199194943 0.90659067511898206 0.32406107933206457 -0.4417139483357394;-0.77349413524076849 0.46412949933862213 -0.037093777184020946 1.0773607744380509 -1.8131232287762695 -0.61834049663287083 0.52685212292000971 -0.21305632548887032 0.083383149739185577 -0.98067422714599295 0.42137132868553734 0.78039848464642614 -0.65596118491260513;0.2303744433200868 0.5222500037939084 2.3139648911673296 1.2038759789256368 -0.85425693744296693 -0.49498384753278735 0.20692603265399989 0.15843023306486445 -0.44384557500811495 -0.28624979807226392 -0.41354623700491011 -0.68426059395360006 0.46829650386130911;-0.934622072434382 -0.079337860366466145 -1.1198171738830136 0.56493384379688183 -0.98743157980010177 0.55417997289281562 -0.2748397204570478 0.076023405803833988 -0.15354300599682175 1.0815209496879876 -1.4454938460138083 -0.76144604632432134 -0.53166476008771746;0.57381526560860152 0.57090065136490808 0.440881563597736 -0.73118475206472355 0.12819668832856179 -0.27914948094146874 0.18104934124199087 0.8393232952347961 -0.1089058518545661 0.85121822898212862 -1.1017869586614955 -0.086040133868841018 1.0272094022464375;-0.73401034037524193 -0.76350717036459448 -1.0217158270372479 -0.61118460770890792 -0.88492849170822452 -0.54325854013063368 -0.25684036787436082 1.4683042297047402 0.45816974167325486 0.82155655460695898 -0.90748829970830391 0.17977686349094105 0.21891493084904406;1.3576342875172449 0.57145455322629746 0.79614175949818267 -0.33979391769188977 0.25795036881249334 -1.5718699954823021 -0.49917905026656018 -0.84352808298305337 0.25322039012837938 -0.25073755119729196 -0.42618018361342108 1.4280979248525234 0.10129012783300637;1.1302099545486661 1.3984095572628361 1.3235932554236958 0.2213889221542131 -0.82942664714716807 0.10462375217372415 1.0207544802699422 0.37032291091978103 0.72727212132230556 0.036652696509977656 -0.018236704491437709 -0.33189358882735931 0.8777995257506771;-0.47650373465229323 -0.61264375391766579 -1.8052752709754905 -0.62605069259059454 -0.35485058560850374 -0.80337041077089022 -0.36838944808320007 0.85895527703484897 0.16453460625800978 0.76450188850759193 -1.1567730448581384 -0.15005586969881363 0.17935503252764828;0.43459367265674637 -0.77676112716913703 0.30721180645218515 0.78930800203862206 1.0412387751887011 0.56737508489725341 -0.042137409048844873 0.6131930181205153 0.075863343129696628 0.50391758056100644 0.087241920519609675 -0.28757095957326684 0.96180205979926003;-0.43429307186259919 -0.53136661803466301 -0.52588971158880771 -0.48051234721195302 0.67190690260542241 0.68345723393794255 -0.23732468085760852 -0.42523987968101729 0.3310150907447591 0.0016132830311624234 0.62630203952346364 0.4964344238201594 -0.5716037219807184];
  
  % Layer 3
  b3 = 0.45297371474954834;
  LW3_2 = [0.33456719634499849 -0.66166007466426013 -0.59646694620240881 1.2973647990255854 -1.5501245198805162 1.1842896419871496 -1.2494711603693898 -0.92535394726422637 0.59719453266533196 -0.89204077464324005 1.1156288327480348 1.1897119326095682 -2.1975346381612093];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.748031496063;
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
