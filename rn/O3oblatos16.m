function [Y,Xf,Af] = O3oblatos16(X,~,~)
%O3OBLATOS16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:46.
% 
% [Y] = O3oblatos16(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.100381449508131;117.647058823529;0.0560224089635854;13.1578947368421];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.9288678432019004;-5.8547635634574871;4.4932827724034476;0.47712715541094186;2.6538538826823763;3.0231512174496884;1.4955764086428851;-0.45416986523717096;-1.0254515831475757;0.35237010313354555;-0.14979816468399454;2.2560218496992057;-3.0500778914627147;2.1110326464968607];
  IW1_1 = [-0.66833619537876177 -0.91522114996974857 2.6253735925986277 0.22266001880204458 0.67027733056450722 0.5692190828759669;1.1067422410005514 0.56343669356064907 0.76123950340205726 -0.20357352823874628 0.6309661886388368 -5.5711601850309886;0.14636402984008001 -1.2211086933304371 -5.9391467151717778 10.870075786074784 -1.1032137224929113 0.5167096631425373;0.00059133899024129636 -0.69078483157531301 1.33529774818096 0.13187035452489235 0.50988474171356146 0.36527067005175151;-0.60720568975193356 5.5608679849152889 -3.3972557839679305 -1.0464355882242597 7.0534198263464267 0.042792175789705768;0.035554095288777648 -0.85643265961107995 -6.664010108926222 10.121459049908841 -0.90624672626018421 0.32954841123060952;-2.1279311152621854 -0.51577627310059626 0.30707755542697812 -0.1015206526367614 0.27369682153933134 0.021280769551595306;-0.41609296531224205 -2.4316881394067784 -0.70614071633863296 0.29671544424766538 -1.4363573542901698 -0.55110165463776939;0.069409215036490432 7.0049379826938685 0.69199795714031864 -0.25346364353940004 -1.6756661280395315 1.9911306009078333;-0.66371682050646608 -0.87813920385095778 0.28587254411041751 0.10589291484131912 -1.0332333599000783 -0.13829379969751485;0.024870334182676149 0.43596962882151691 -0.42521355418928014 0.0259957149444629 1.0704533855079676 0.083795933782823934;1.2775182581040387 1.0558835463470888 -0.80735343269128967 0.28613429564135756 -0.1522748037201839 0.72542876305459825;-2.4556629992464738 0.13806110973324287 0.086913970413920794 -1.793074983130337 -0.86739892905273674 1.6039645760034944;0.16573424493110089 4.6274755126460079 -1.4581039715763378 0.5495492577435187 1.0642746175931346 -0.2835575138583683];
  
  % Layer 2
  b2 = [-1.0574547025553334;-5.9085330442276263;-1.0284427646334307;1.3084018288350128;-1.0582752594965639;0.92332399756212991;-0.036606322717612653;-2.2335251088907393;-0.87485110157861978;-1.4055011477045025;-0.62232966049417382;-0.82362023348953117;-3.1309029529249495;-1.9104573687334989];
  LW2_1 = [-0.041335789467340837 0.20283161147518644 0.36408844299301002 -0.023480886435362426 -0.046624428608589598 -0.35100551194515356 -0.60079624985985214 0.77740967353069279 0.148110371021307 0.9772698253622647 0.92896515040844452 -1.096635085480989 -0.98033286090386329 -0.44821206461965185;-0.28554348725200929 0.3306388038463059 0.11511349676424174 -0.43145014950485117 0.24167370249270528 0.11365979322552107 -2.1046065107099641 -1.5204110679464311 -6.2346777840462906 1.9634805586281827 -1.382301113902398 -2.8833512272545261 -0.88227473997056804 0.010493537056041315;0.83775425713066787 0.2379879577694485 -0.55166293923159682 -2.1350722944063247 -0.21140260232126643 0.56923199463250718 0.57099597138012637 -0.68890720325715071 0.25045329091833518 2.2777141973449622 1.8132684721448094 2.2987597813613951 1.6715011446834771 -0.05476716258666349;-1.4821518120811594 -0.30970965331572542 -0.53040448180711575 3.0224988021836436 -0.047154791720786932 0.22264824873740996 -0.033265579769283619 -0.54054142300991836 -1.903980752424224 0.58106073516895762 1.9364894837863047 0.78070507809966116 0.036066736765265756 0.56715659847155886;0.082074642917842264 0.4638820535617576 -0.24038925962960425 -1.7543903180004374 -0.92005829147698426 0.25338048030852944 2.3773423390158799 2.0801738668039707 0.39750191695853443 -5.3133979499238642 -3.1917320514403738 2.4337251257634671 -0.46785152501434335 -1.3362030927636181;1.571538728765995 -0.049781187568007416 -0.08682253477233573 -2.7223219282213544 -0.054607804805150727 0.082676003805617362 0.7521617552512061 -0.14033448353800312 0.41043223014512781 1.0263279987906029 1.7095174561727919 0.24053178685117124 1.2998953521052929 -0.25726860672725022;-0.26120126974796054 0.097000933932550049 0.53354652440646455 0.61185639032549566 0.21951020266140789 -0.51576698624387685 -0.59976328113084432 -1.3325974984976854 -0.10119891460397881 0.81587739194850095 -0.24649658415980591 -0.20897019078177798 0.17394535062261873 -0.66346009751837987;2.072860880863439 -0.8066706024358995 -0.2543851027256514 -2.4408113523865271 1.0809632850849926 1.1149267373455816 0.99748910418880476 0.2965961242757329 0.6089859376440111 -2.0741193167638063 -2.2650468644383199 3.929173859555986 -0.012381471457515074 -2.2226961230128159;-0.0592648232811991 0.15439777028101809 0.05038036762017567 -0.15221650613417745 -0.10640377603460914 -0.037679578545611839 -0.50442359826891359 0.31213792681714175 -0.18709395241702012 1.0447905388868075 1.0339633481198858 -0.56492518077462495 -0.64264851571091219 -0.20744701600978935;-0.016231391259036058 0.16728697484769323 0.38377561098010954 0.045828303841587495 0.49820237487164132 -0.31870734862297317 -0.47046587516181365 -1.6923408175365955 0.072548334366631356 0.6866279904949687 -0.16634917267958541 -1.2776191883785866 -0.42255733811847129 -0.14079043237596611;-0.54454678003661061 0.65161047864785204 0.57712615838755077 0.10042702244447074 -0.87118158983934679 -1.109993056624307 -0.75785367284152227 0.26641961994522056 -0.36853497737319285 1.4631536719614207 2.7450336281766061 -2.9311102987702977 -0.8750580327703863 2.302686674839618;1.2651349058613925 0.3795002084078159 -1.1011026419197623 -3.1887276885392635 0.75266392462459708 1.020486425455295 1.1194620677303906 0.45020327368913815 0.49345678936077558 -1.0642006944384879 1.2399845221130184 -4.0658406176307365 0.26267435488015473 1.3483871377529939;-1.8319598314996119 7.2303884079557825 0.35878821501925789 -1.1958371650883373 2.751912524365872 -0.20042697812065113 1.6995366870982656 0.94638498926504622 -0.49901678018236489 2.7053186118702315 1.3763536981485447 -1.3966776490634654 2.1733940714475777 -1.4637192407125124;-1.2325746417645689 0.14850997550435949 0.9450593898970262 2.0799221513952686 0.10463645600509781 -0.80278217924737483 0.2077279726365143 0.52395618182306525 -3.3878639942581219 2.0588822135243174 1.9402841971705747 -2.6172812742136582 -0.92684659974634998 -0.52926469573202195];
  
  % Layer 3
  b3 = -1.2707250023034726;
  LW3_2 = [4.9486470171634211 0.91529382146165117 1.1617529416156878 0.40282739490559516 -0.66672543708838294 -1.8965703830613787 -3.9324258833683281 0.69845020102340083 -6.4657324582628855 4.4864559857161748 1.1979788333042791 -0.59050933789396387 -3.5016933516433202 0.94564498453747825];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 13.1578947368421;
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