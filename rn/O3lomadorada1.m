function [Y,Xf,Af] = O3lomadorada1(X,~,~)
%O3LOMADORADA1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:39.
% 
% [Y] = O3lomadorada1(X,~,~) takes these arguments:
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
  b1 = [1.7970695896934894;-2.7376804627873756;0.53442448196731307;0.030528909388140256;0.33321642689331016;0.86262971966468727;0.89859251897680614;0.15793055818938048;-1.0342723028507919;0.05368969944299419];
  IW1_1 = [-0.6568508949216274 0.53982852135063042 -0.4819807101435622 -0.5426551965575257 -0.021473493878007718 0.16752741856587022 1.3218799952817131;2.2654283326583569 -2.4904423907842905 0.026255632495686958 1.046507562634343 -0.66303109870344368 -0.53706358114725794 1.0332698169752903;-1.1384178056641194 0.97362626256866469 -0.12003533087279465 -0.14100814227155387 -0.24046193265968926 0.49663210988111312 1.6398280306051543;-0.75343112385222499 0.33895025518362143 -0.78024273394501054 -0.57814396337218366 0.033195622400677846 0.21308272815716409 -0.733364818473353;2.935551413784196 -0.078681794888293355 -0.43388631614345347 -0.041592100160714719 -0.14959062496556161 0.095743995230077233 -0.49686026348569357;-2.9375561173889007 -1.045716917848184 -0.16056865675622747 -1.1632610974458168 -0.41301959119191856 -0.12840067208190561 -1.1912620858670913;0.52215786548083842 -1.5069415021707506 0.18836655919106784 0.71058582848868812 -0.1498654005568863 -0.33391120984535178 1.29130073237786;-0.7424744955939635 -0.83690954059300537 -0.16491265964029722 0.036258852034810184 -0.21447088832646652 -0.31084046215437117 1.6075379034028743;-0.98139037077512503 0.77649939774665466 -0.072789171323230303 -0.15188559218825282 -0.23774827125806205 0.42807090238129308 0.12669373800318351;2.405365058006196 -1.0107477958379312 -2.9149156956999169 0.54713336808912694 -0.042309413079761625 -0.42327787227312014 -3.0708640473513209];
  
  % Layer 2
  b2 = [-1.7651334924539372;1.5895220117264028;0.60509281159474815;-2.4203843048001539;0.74498849785071364;-0.19601731510672599;-0.55739505543320456;-1.811974615542743;2.0810617772313074;-2.5490494466866771];
  LW2_1 = [3.2133827367891254 0.37847851980511737 0.63790158245499196 -2.735107094367172 1.3625282544915169 -1.2317918612980985 1.2865690597264048 -1.6620834076563753 -1.0327576041954623 1.6856569346495491;-0.21663200859775864 -0.034623878199868029 0.36209551686872493 0.061416718717909609 -0.338415593717037 -0.016030190630792876 1.2156459445002463 -1.0663203794552853 1.1330915325705493 -0.6365241673821963;0.64797755665539181 -1.0031729762452728 3.0942258352325074 -1.7155814697696645 1.1881463179317495 1.3378515481648372 -0.26575995497839877 0.55912020238460913 -3.4422034014794054 -0.18567645473425592;0.57656262443413553 0.096991042165684244 1.0745891106031318 -1.3954310096310638 0.35996280674412745 -0.98114222930852957 0.099036468915239415 -0.43883990302899101 -0.09271062526239697 2.9289598236565704;0.79555988289365165 1.0214068092537347 -1.5134630519507695 -0.3314021452622678 0.51972112688103878 -3.3021711510033569 1.0925419457548011 -2.06695840214305 1.0350791270983075 0.38949188639984866;-0.70933110557134393 -0.7359289329811568 1.7445702946269011 0.1182342741535268 -0.86899359419151878 3.6905913759395736 -1.2901132210390234 2.104606552165178 -1.3226580483343073 -0.61607224183288767;-0.26746003704860349 0.50581129749605547 -0.42867614030930212 0.33433539202880574 -0.19274760487148127 -1.4524476055705726 1.4569930733980221 0.28787554953223438 0.080145730922148939 -0.53888069643038572;-0.89023679343518591 0.9362006785470619 -0.85886970913056881 1.8961642264717677 2.7051888985827794 0.43982905874402406 -0.45734208662476422 0.30538570404285298 0.36491194342046007 -1.0450261855410268;0.19443006729330023 0.97363182190048914 1.0924896413075855 0.46887678538461591 -0.94772446807841404 -1.1897035578155593 1.4484753803446455 -1.4718285686410932 -0.064973280961793112 -0.33979919690799959;-0.81145708842742614 -0.35876909769385185 1.8441320462467428 -0.52343177470153646 0.27656464937017317 0.64123856295684079 0.35124431418468338 0.020087070138635074 0.31441371942652363 1.4205075089149806];
  
  % Layer 3
  b3 = -1.1621041997259727;
  LW3_2 = [0.61290193093187351 -0.67402403906310482 0.88177276169077023 -0.69378529257171473 -2.0105860972477076 -1.7421901378189821 0.59819623241559516 -0.41301082246633236 0.64734992257593338 0.75536086261870661];
  
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
