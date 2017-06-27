function [Y,Xf,Af] = O3miravalle10(X,~,~)
%O3MIRAVALLE10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:42.
% 
% [Y] = O3miravalle10(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.304971027752364;2.48447204968944;0.056980056980057;0.0063552589768033;15.3846153846154];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-3.2037618988240797;-1.708054970338061;-1.0254102373573235;3.1822136711567208;2.4696557069615626;-1.9340925802452016;0.84939133693068658;1.7495284760143841;-4.261089000471209;2.7852489943931444];
  IW1_1 = [1.3931430624977899 -4.2491615479561533 -1.3363714277083261 0.83172496598779966 -2.6216156245241549 0.11839420436481671 0.5255015244615735;1.1203057623670769 1.3186784425671996 -0.4225768047631091 -0.45128843007682734 -0.57754138743626648 -0.030512942486854881 -2.0768155855880464;-1.2214491846690101 0.28597560319743054 -0.36243107354063353 0.099307053401169215 -0.35832954500093483 0.022267947854400082 0.20282456950617092;0.55790542260178277 4.1961009679669115 -0.7131713305131907 2.1120838492347365 -0.97916813419283033 -0.04116227311997156 0.79669296810406287;0.58161081444016827 -1.1155523772237368 0.31218658950628742 3.4087935638878344 0.75529326949466524 0.029487532744679964 -1.2866475990718163;-1.4536925797996965 -0.19864193818114331 0.21169390060093982 0.23094317647044968 0.20489826506290285 0.047514320594845796 -0.8848569693728886;0.10548511194797364 3.6416252717912463 0.11060392915362711 2.1322137131983827 -1.3001914506383652 0.26694822010194247 2.01075448676638;3.1005334571893068 -0.29114846280249312 -0.26856651111601798 0.88551525601187153 0.28189680875379397 0.20676705937764936 0.74746906422628512;-0.77398397619842374 5.7104765773943811 -1.0233427331339204 0.98542248234779872 -1.9465384674968991 0.088074042150253912 -1.0488045455866932;1.7594697473098979 1.269137480958656 1.3429918706503126 -0.58721590838271442 2.455414806883248 -0.10366440146661864 -0.74131471802479021];
  
  % Layer 2
  b2 = [0.64138929127952604;-6.4972581214357072;-6.9409880642458086;-0.7132895279635425;0.19737952668836689;1.2627140110635309;-0.23377768690653961;-3.5333690613179809;8.2168012966885602;-11.723942911305285];
  LW2_1 = [-1.0124619292585688 -1.4077862945589077 -0.15271220399504845 -1.0628661607818741 0.33961087230851189 1.5646744188096715 -0.027760826990144739 -0.92278502174005939 0.62487574926970635 0.43649700122106877;-1.7463581443806899 0.6076809513378133 -1.3197577278167743 -0.44429435152861491 -2.119419451767421 3.5954394888129269 0.98290848962182953 -5.5793332874725969 -0.91703453594921713 -0.20434964237636086;0.46955061496808681 0.30451120897425321 0.29497740466530886 2.2038709601749549 0.3875868552650189 -0.4358698431399145 -2.0069962610022416 -1.5880910413571503 -2.7157848586098048 0.2781501406703446;-1.8582999209327553 -0.60868218066226376 0.38341059605008859 0.49820196846496251 1.4660703223102127 -2.4503818822742258 -1.0429981764028708 1.5570918272942038 0.96182401547664198 -0.12830411897313132;1.2687989138883651 1.7230015130155127 -4.0640154129220747 -0.41500125807137256 -1.1883720550114303 1.2325892056633245 -0.03694450906177954 2.930915341928586 2.7713060584895857 1.04898642616431;1.3870459091039038 -0.55873383293326673 5.7339265621257631 1.4451981042106465 1.1166840990641851 -0.71089723335366406 -0.72961349575199042 -0.34039529066756502 -0.30784454783160337 1.2442000866387712;0.99928440269272489 -1.4399597520893577 1.4517341973944751 1.6977182569814817 1.1125225155474936 -0.52440442948251642 -1.1054453759511744 -0.33898513673610714 0.89706827948980872 -0.45379942592877681;-0.5398653607326479 -0.76858991672607857 -2.266638744986762 -1.009961653685979 0.66249286478775915 -0.88970288694431376 1.0904978845055493 -2.0681612555296929 -1.8131890486995017 -0.33352267270476865;2.4960411426503026 0.48273701799639668 -0.42786555745696875 -3.482049178245135 -0.068663543484143053 -0.57495603249483118 0.26157398545706528 0.91934987502311705 2.9913088831358507 0.23590109869375472;0.43944016554141357 -0.73586192117217064 -3.4783952713049233 1.0493963640294175 0.10564108842685356 0.32729845806536467 -4.9070676215822528 -1.4176205419265109 -5.3844771940436793 -1.9495282583506504];
  
  % Layer 3
  b3 = -0.12232579567199121;
  LW3_2 = [0.26206698309621346 0.72730858357427541 -1.0058120498128684 1.6081212278563357 -0.23118084298275354 0.48504184924902055 -0.82724162590259132 -0.37124065473255563 -1.020995338047086 1.9111720413527526];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.3846153846154;
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
