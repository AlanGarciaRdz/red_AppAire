function [Y,Xf,Af] = O3atemajac10(X,~,~)
%O3ATEMAJAC10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:36.
% 
% [Y] = O3atemajac10(X,~,~) takes these arguments:
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
  b1 = [3.104255478960174;-1.4527385092671867;-0.39564067870487252;0.12061567586367959;-5.3867233541830952;-2.8745413112035139;6.0644500582823238;0.66161460419613216;2.6487154121838086;5.3346493695653789];
  IW1_1 = [0.65599043154928871 3.0602282309812585 1.8953408211196721 -1.3831086856662822 -0.26265029692536462 -2.2406747261317488 -0.01544045328464265 0.96368074277031068;-2.1708331830770136 -0.33710652023160981 -0.53584505220054945 0.5337088319875567 0.09185431265973687 -0.51247003946720993 0.019873281101294535 -0.78594869958566771;1.8897055967456522 -0.2902972742053892 -0.30419340795358685 0.29989633020638617 0.073876308373124172 0.21859229014693818 0.030386502861424844 -1.3815641323223868;1.1119884764139181 -2.4497205298362088 0.10705144616627561 -0.29833672402529032 -0.005870210213563069 -0.4385637042369922 0.099868830520731686 0.35003696199206186;-1.1196912617710384 -4.8386466833631365 -0.22326641165519504 -0.090733650842565378 0.34052691707671556 0.41918126637185488 0.032337855234454198 -1.203858066534212;-0.66885479093841105 -0.13096998490524756 -2.089107795886056 -1.4241755980216728 -0.041380724501562369 -0.26305260384072138 -0.1303251930235213 1.2853649685612758;2.0273046874093308 -10.423681088620251 -0.54673100766469429 0.34247569421110763 0.21598547338220564 -0.32623352692192498 -0.33674989020210166 -1.4096288318820134;-0.049724276091632061 2.5427468931740633 0.39439462552940674 -0.85280205140087828 -0.10810414482105254 -0.10974341126441309 -0.030886325122700307 -0.8102061314458926;1.9812413181797286 -0.20039065025900984 -0.34297854151689533 0.29407001654910059 0.084825704642619307 0.20568360875265407 0.036779146738631675 1.6247642301487291;2.640996052249267 0.4847673834605421 1.4737068597893894 -0.68204895244454133 2.0075422187701464 0.25628503136924197 -2.4128162139794962 -0.66465722130743365];
  
  % Layer 2
  b2 = [-4.7218986312989095;0.43510174168842564;2.862485407076524;3.2479207854904404;1.8437883363712604;-1.7045365165111575;-1.4992911474046837;-3.3435843187871463;3.848825960740859;1.2467546249307313];
  LW2_1 = [1.2376149345990257 2.4504487820983893 18.748884967129204 0.26343838082381588 1.8601430935859868 -0.83859469040382928 0.067414999197564801 2.5391597102916998 -16.689421759731069 -0.028483490330236231;-0.15361171415900521 -1.1074254609625154 -0.15248222798239658 0.84667901854603456 1.7674765261501588 0.12308648695114698 -0.0666138197199376 -0.35729842481679497 -0.23872247280740161 0.30358886784601857;0.11020215326966444 1.1855029470130556 -0.19973791972771157 0.65920189743071855 0.28055802999706264 -0.39857854048457886 0.26482428739868552 -1.4361642092416949 -0.36259921079649804 -0.56762952691743429;-1.0538347791777882 -3.0671456236208736 0.22669577177417538 -1.6784532140300255 -0.54128214524635787 0.99505039189731825 -0.01266114407155333 -1.5699189831053575 -1.4403891888732592 -0.038606921122545421;-2.781307074180265 -2.5028605079543205 0.98677264585378877 0.52455343192941706 -0.56456631303649396 0.65468349258319936 -1.562686117907186 0.83264819924057176 -0.25386979279263922 0.028387403883602856;0.10626540515012164 1.2610444473670184 0.086241737300394083 0.45768725907086805 -2.1321617414153646 -0.24690440623171739 0.309002405661297 0.33059911903540401 -0.30039754898395687 -0.34799010183315887;-0.14362025371293399 -0.37097685764293781 -1.395776411417065 1.6557024783315695 0.6368810251266448 -0.39783818819909239 -0.71100032632147692 -0.2639308781673817 -0.76863558645948393 0.095794084332632715;-0.20643334170945768 -2.358934442055058 0.42314881594558701 0.37084263463750111 -0.68537201794345226 0.56887014547728121 0.21527680262406598 1.1329869653270999 -0.22306932229991319 -1.8516457742113068;-2.2232503894383386 -4.5263409920852293 -0.20318267777061308 -2.6352541909048917 -1.0172107774656869 0.92551338051031118 -0.032143923478910867 -1.5196907779239077 -1.2158427832545948 0.10458021783113874;-0.088925415455671522 0.39260089384937585 1.5365447976510946 -0.44982504817750935 -1.07793476362176 0.42172816923055567 0.20845442906772904 0.2842501451285292 0.42503799906314532 -0.15673727132080606];
  
  % Layer 3
  b3 = -3.6219021415376869;
  LW3_2 = [-5.8598797168260628 -2.2877291341651667 2.1738739092398691 -1.157683587121233 -0.23288585466244244 -2.4359099991811952 2.7384348934690808 5.0145623489021194 0.7114906989699008 2.7912195253630383];
  
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