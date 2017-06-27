function [Y,Xf,Af] = O3lomadorada16(X,~,~)
%O3LOMADORADA16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:41.
% 
% [Y] = O3lomadorada16(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;17.6991150442478];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.90763036162237;1.6861022567969195;-2.2228604857484622;2.1097209093721023;1.0770642737155045;0.78700789664567539;-0.70575430526531147;-0.38156899076679712;0.49860364194267504;-0.46244371122362982;-2.3203884522845546;-0.11633395098375343;-2.8810583993255352];
  IW1_1 = [0.27501730533568214 -0.72455297354244996 0.03600435862260546 0.42237184265250227 0.50249540404166626 0.66578169991021385 0.89720388164188258;-1.8159684193308283 0.86171972835041188 0.33373402791231488 -0.84397650465417096 0.93629565465765097 -0.26200187343486425 -0.95525955728367806;0.11534785663691216 0.97048006296726697 -0.5973110319426389 -0.24066290202859375 0.041576617074509194 -0.38324894668933357 -0.8459501719311936;-0.66831805240496966 1.6442803213999002 -0.51321997535180541 0.91390307122563119 2.0995825790796618 1.2991911794879818 0.29285217675931141;-1.0135778730330707 0.27847007078803132 0.012208096822150063 -0.095671543285875821 -0.45761546408274018 -1.3542445950288071 -0.36011153348090924;0.48304043803059743 3.1459519626500208 0.93425919242225097 -1.6995074773259629 1.0372673063277817 -0.89930393925590002 -1.0761247771464053;1.5112204305380268 0.34286432579434944 0.41818781800436378 -0.39673316518163243 0.64206764230210522 -0.17866498488280699 0.52334515268391479;-0.44790776682404265 0.99810347422061196 1.3251070841409969 -0.24168965563633343 0.098791953682997091 -1.1577488914772056 1.6790342690411137;-0.066074523746436201 -1.0010413884943534 1.1375685907367874 0.65642116652659455 -0.52111261224107053 -1.5951958942592899 1.1976669779499354;1.0955124963723921 -2.4155691598901399 -0.34531169836746911 1.0859073672057458 -0.20585560118816021 1.0315015286012907 0.037879153729745818;-3.7487064929976577 -0.32361053778132554 0.10724036599907409 0.0044218674684959949 0.79174107207253486 0.047515909554745571 -0.091356529218664814;-0.53574895942880896 -1.2549432432443075 -1.1801861309023665 0.16462527198962654 -0.067550521214364265 -0.25999594541519178 -1.0231743789651153;-0.2083995891741906 -1.9717271982639775 -0.29526833726672341 -0.7385162753883393 -0.1254533238231364 0.13526112786553698 -0.46953440964029403];
  
  % Layer 2
  b2 = [-2.1055955810690961;1.6024365310173725;-1.2147271922216669;0.84314572338615101;0.21234843497466865;0.036991577876208534;0.18725727093605105;0.58087961794136911;0.41910752530928935;-1.0226476209026387;1.0961222165911622;1.2668355716408817;1.54803579758263];
  LW2_1 = [0.93715879058875828 0.28413371411634636 -1.8165862417234231 -0.6687782498230489 0.055789166454729255 -0.51007143520194664 -0.81217353630471156 -0.51091236055711475 -0.38467786591930847 -1.5507102355235192 0.60738821926628195 -0.56189470558850607 0.011277610565027782;-0.60401582201191262 0.60449849285892876 1.0369485625159085 -0.15875803139994679 -0.57847022171654239 1.0783443718849006 -0.22261294788898051 -0.76873850039827696 -0.77136747233144909 1.9391626892142253 0.27898902546532223 -2.0526725416059119 0.17626254870245373;-0.26000873244720735 0.87301913226133765 0.02463973866716947 -0.89409710572318024 -0.12941071561771708 -0.47946345006490998 0.01298591153014076 0.48072028699886338 -0.26716222266716572 -0.98566781779373513 0.80515526454469011 -0.53819410867573247 -0.85183057770794657;0.18345603874128663 -1.2317167717056956 -0.082365696097994823 -0.67320911228043423 -0.30082884175715563 -0.35865178178214674 -0.24110280900818568 0.7043863833910412 -0.45377216218626565 -0.91781246119631477 -0.043040532588890262 -0.072649983705767918 0.12045269444736698;-0.15054797110247972 -0.6996535498177836 1.9507567394862284 -1.1094528771530672 1.2605860161983911 0.53582779120379109 0.33916103307110246 0.59045337711485035 0.041902374380478072 0.22730491026878047 -0.65271525209607106 -0.12497257780600292 -0.90861538162522049;1.5681877788604828 1.3441556009241598 0.58170813716530489 0.99804381299047895 -0.10339896367425506 -0.13342423823422411 -0.41036894630876875 -0.78191727360450447 2.0717834642549837 1.2934662325063682 -0.8652464137693745 0.69683969209576968 -1.6928954614921683;-0.86849763275671354 0.19027142434231159 1.4678486207975885 -0.16471740904413143 0.98438316834724482 1.1480321489136032 0.07124336854832658 -0.46330209172193915 -0.56261916340833706 1.2165806303575626 -0.11276695986006356 -1.7281181456754491 0.73450100325431411;0.21979982556728 -0.00029784863811096324 -0.014738303154137471 0.26529899171781374 -0.48470735884828248 -0.4138682956410733 -0.72305939011965481 0.69596637166690578 -0.040565299392641682 -0.58521935451694918 -0.17308366779400708 0.081730426378576915 0.15809981305969401;1.3633570818182987 -0.70263683951419642 0.34976524625411798 -0.58067345585332586 -0.73543144229132129 -0.47320188963638737 -0.90742190587245375 -0.79270418321303771 0.17466642495403992 -1.5069226048052544 0.25626817383976574 -0.37138945017998659 0.13076672335424536;-0.28483155779316094 -0.23973927757930452 0.4067931322823391 0.26153297879296888 -0.21790206605614787 -0.62471529744151888 1.0781199084984225 0.21276326336252188 0.08189556001094038 -0.87319039230679707 -0.84789374075083979 0.8151625050073682 0.058086850554472977;0.032085861655169828 0.90382067646288033 -0.12525351298390108 0.47030006436730204 -0.79707398915510397 -0.57982993254969128 -1.2943488423193807 1.3816201778109101 -0.11265250572943132 -0.2420365219426987 0.092554697817921028 0.9426404929906288 0.097131075677073769;0.23721056542887578 -0.97456341616596465 -0.8956112848322707 -0.28364065955358564 -0.8136166918777038 0.88999692606966441 -0.38729582977369259 -0.49141406155523276 -0.35754756576221186 1.3013931027210017 0.26279604906097959 0.4703409677470306 0.76071632209295603;0.33570881463086649 1.0734377517811213 1.2607539470649669 1.0351642220612438 0.51441258601351103 0.083880421708684844 -0.65530958270912643 -0.862688042804996 -1.7086378245285927 -0.38360055290190409 -1.2176881717244519 0.28464192721875142 -0.42801745412269959];
  
  % Layer 3
  b3 = -1.136542047625537;
  LW3_2 = [-0.96001617672690753 1.3634636665308142 1.3866901807923693 -1.2852899857047624 0.52865341438458235 0.75327128568412483 -1.4510580653824965 2.8392206647071694 1.3859716030604743 1.6349415705814561 -1.3600445002847785 1.1052160300539702 0.81442745192231136];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 17.6991150442478;
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