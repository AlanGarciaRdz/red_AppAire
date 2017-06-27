function [Y,Xf,Af] = O3centro1(X,~,~)
%O3CENTRO1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:37.
% 
% [Y] = O3centro1(X,~,~) takes these arguments:
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
  b1 = [2.7420447070959906;-1.5761269806279559;-1.4383438838230895;0.3210346329834331;0.65922314554035399;2.1496407170479954;-0.9705815451890476;2.0102250415728675;-0.58614770117964687;-2.3226347348994425];
  IW1_1 = [-2.1682389445724164 0.055419204087209253 0.20147529368560624 1.6873095368469075 0.15199289901221902 0.87288334653349997;1.3754970839461038 -1.0938547553632916 0.3483079664188653 0.65634570834299033 -0.040021388035722673 0.91197306014738699;-0.80463388908374556 0.11534575799247988 0.086840647804240417 0.32950360997111311 0.023152900183390931 -1.4445283740321324;0.20968562926599946 0.78079430982016151 -0.061619039763613319 -0.63976889033052309 0.013594946117526312 0.096668955865871167;-0.19565171249780119 2.3678048845347042 0.18058946222538586 0.26569080547943674 -0.48648336873861436 0.1507392331316087;0.91046417416256342 0.51341232172632745 -0.055483149478198476 1.5403095675109104 0.0075880227606604442 -1.5341309092079061;-0.37229359698370362 0.0022144518980558216 -0.00082804149942198354 -0.030090089743111316 -0.0026224223309755986 -1.1062519577261307;3.4319986894446814 -0.041958209100717479 -0.046670889419742539 0.27659175996155383 0.08924554032656655 0.7027244811677541;2.3925441061790522 -0.067727610796983306 -0.12399348221802249 0.18691080438160274 -0.091569774005965165 -1.384428929034252;0.99101283711085886 -1.6204813642860036 -0.46329850481665125 0.37166948088310847 0.20246525934655379 2.0167192078684519];
  
  % Layer 2
  b2 = [1.9831210588120314;-1.9793855889099341;1.7014239233557873;0.58320486711038977;-0.119311667600629;-0.37648730931380581;-1.480107162161608;-0.97439374874709972;-1.7017328867696486;-2.3036480677819124];
  LW2_1 = [-0.064397539277820617 -1.0732768864314868 -0.54912250708675558 -0.38701627485307244 -0.28161463260171965 0.18625579359426872 -0.28189490089211588 0.72513881007381453 -0.099443478528048565 -0.39379232087095728;1.3968359749109573 0.042779558275201066 0.39315302238275363 0.72646342775262174 -0.24730645366233484 -0.27576818387890134 0.75013790885046361 0.30273366618461622 1.4029309453210832 -0.035643127820050753;-1.3033012783982725 -0.47767654634439033 0.061801124157464665 1.1296616477331682 -1.0247087911064889 1.1979928774391795 1.2096553235359917 -0.13508396423075814 -0.21033593574866 -0.17433592068677223;0.25339438564585504 -0.87172424934074044 -0.45721670481390941 -1.1496192061033084 0.52004462773138327 -0.38483182247241021 0.83720194714646889 -0.73900357112194182 -0.3895173829377187 0.74345218287367631;0.93913537036742545 -1.1223840572313288 -0.063540641104852552 -0.7803105002976205 0.37762974433863905 -0.83555828769465434 -0.24153705282672266 -0.78395695240837404 0.41994057879769631 0.081027221042344902;-1.5134274562629413 0.021192669937592518 0.27320493593192746 -0.097082693059958994 0.087853697699359065 0.21506085575866185 -1.0336731386152149 -0.54947210245424527 -0.72149604920400368 0.64706871209987438;-1.7771936590874762 1.0036455500961008 0.98791721362425167 -0.15164411783709844 0.48797230639165323 -3.2823181586956491 -2.1744321396641926 0.29578773797567709 -0.87321603734411324 -1.7562604241625221;-0.59810781935252599 0.33631526724291272 1.4406916351260204 -0.7623075405146853 0.37851272332169622 0.1151130732085295 -0.25668613326783696 -1.1406402475169459 0.15676046392675838 -0.041995932571410717;0.80987851720073034 0.47516001792424689 0.27245283048984709 0.23292826786501072 0.97078505598513343 -1.3370311263845296 -1.8808134673808701 -1.0815013657245398 1.969696679058051 -0.21150536867651776;-1.2571356384655166 0.15236155730891798 -1.1958728448360747 0.12592882413741327 0.089761035328597749 -0.89166136515870797 -0.23190460402744523 -0.037427598571857762 2.9218468878615211 1.9190467912849458];
  
  % Layer 3
  b3 = -1.2544197679816464;
  LW3_2 = [-0.96736919293126555 -0.8125262768879834 -2.5097407410197761 -1.6399327835038893 1.6571299144430527 2.3448582910453735 -2.6283983688088255 -0.22768974153128904 -1.6139415569586266 -0.92881437263704802];
  
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