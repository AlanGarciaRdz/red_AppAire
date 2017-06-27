function [Y,Xf,Af] = O3vallarta20(X,~,~)
%O3VALLARTA20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:55.
% 
% [Y] = O3vallarta20(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.12820512820513;24.390243902439;0.02710027100271;0.141843971631206;10.4712041884817];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-4.9975085405165967;2.8160934917234886;-0.8152134468359935;-1.9057529004912965;2.6186717888657771;-0.48681388315759783;1.8905682764796272;0.1127823633410909;-0.57610026423647598;-0.30041113347610893;1.4223820723574099;-2.1787138789382601;-1.8617972652779224];
  IW1_1 = [0.59962479279880077 0.5384192939639364 -0.78903993672133932 0.59755018965966189 0.31990963114571436 -1.8072707700435575 -2.3120101725064135;-1.195585333311449 -0.0033063968831594029 -0.011310700725002442 0.28607780047938514 1.3215906254030241 0.15688368373988543 0.18203094971717856;0.46660825433070507 -2.6169757933763824 -0.95202272217748374 -1.5038382970457673 -2.157765902070635 -0.31481687066893688 1.6157117409160744;0.48613004286317923 1.0996563691512329 -1.0477787527459539 -0.84346037227652326 -2.0894654997682314 -0.35068081099598097 -0.39708721159385252;-1.6623026345789775 0.7717045168212181 3.1825452673847092 -2.4754570245994931 -0.56442903424482138 2.520938692401844 -2.1435481707098458;0.36385914749072618 0.46670444615178669 -0.54894570255200237 0.08670536211095696 -0.60648841134489373 -0.32292552124191248 -0.31968125356518945;-0.25864180778737739 0.23062047372594383 -0.97778465010902593 0.2860525114248319 0.43737049813444934 0.41697144608017284 2.4004270691316498;-2.1190254430016422 -0.033826223079572261 -0.039008577112069134 0.06737962086883835 0.61377281635081227 -0.26348485949315709 -0.80811626486648591;-0.90419265572767049 -0.28019811456885252 0.29009754119813935 -0.032496486141076281 0.38396129215127833 0.13379030958076393 0.36222470586681882;-0.91721203888535363 -0.4910511919362438 0.4619000907489097 -0.1074519952953913 0.88725269660662309 0.19602820163202475 -0.06605480272716735;0.78418381570410789 0.085433979925478895 -0.1693484470943222 -0.28368367237519293 -1.1588403006578127 -0.0047549319046649371 3.0518667147102345;-0.51707380901064726 -0.7519243285941829 0.19935378787584226 -0.070200302214944513 0.7059224651187157 0.086731964543717455 -1.8719332358139069;-1.9105797589732791 0.11191341592891235 -0.094831278450424938 0.48951251326962575 0.072757408338500779 0.037603030684547518 1.1631098664356563];
  
  % Layer 2
  b2 = [-1.6821669807280784;-0.044550301850756827;-0.40383573615018975;1.4808851783789128;0.18018601642747403;0.0323100681112585;-0.58016034237325431;-0.31477980636127295;0.090391168919971274;-0.92980028290834449;-0.71189068834574976;2.406387218302926;1.4693860818349505];
  LW2_1 = [0.30496182248804121 -1.1941201545129141 0.059225208740493154 0.50339278792673769 0.6775017834589252 -0.39101014712407661 0.95218468276050472 0.42990089525876879 0.24739158345797577 -0.61277181261007263 -0.26734708470255292 -0.77685022990058483 -0.51558249815215607;-0.61909330959581133 -1.0550818239960056 0.64455469764491535 -0.98370888921201627 -0.28875906302738874 0.35905151611125763 1.4994678181451162 -0.88084260311466744 0.36580284370785243 -2.2179397462172488 -2.472006223935924 -0.3071147166346036 0.43352378243560402;-0.90834386106258924 -0.28897111755981086 0.14678522460015836 -0.13438662839594517 0.30964824183233197 0.019756079907245726 -1.5235339589951484 0.54899563513576288 -0.30761013609576415 1.1293921999185637 2.0779854671557856 0.4950458114658543 -0.55539178279272416;0.13215427078225897 -0.11383172975439312 -0.47157453608843786 -0.6309499029958926 -1.388436316501606 -0.64628342960100782 0.34227720639167947 1.3356368364736444 -1.1062660974027749 -1.3432229377225209 -0.46589707497155392 0.24507846794005148 -1.0651331060886309;0.51639940421251285 -0.94264771177120676 -0.24783644911748098 0.45120482576187954 0.36495127139456562 -1.5064039494803028 -0.37919979952561006 0.87799364570742622 0.017792655583646271 -0.91578440123742588 0.81819706736715958 0.081671155790830965 -0.90525638525918906;0.044876970661925079 -0.73417380627240292 0.503258614622631 1.3836010785573387 -0.15554155610957551 -1.1664379089255255 -0.36668211630500497 0.65944059888568862 0.046159240539210264 -0.57535377898493112 0.11780454665610383 0.10437869557518908 0.7854451556443004;1.3700872600644038 0.16409463835976951 -1.3053566032683253 -1.1175461756192981 0.22115036372948521 0.55397949370490107 -0.44991206834451802 -0.47503096507684422 0.21708380428954666 -0.24880713702758528 -1.1247178542764305 0.14010016791825017 0.77280230891134927;-0.92185350908343355 -1.0487100705980976 0.37337136980786378 0.34130469329708091 0.8545143129311028 1.1725405475891844 1.1195890429334665 -1.0052004652901703 0.934853581358288 0.34339892899710472 -1.5047196520309307 -0.14040809818442596 0.63925423994791442;0.42778371457245384 0.14597584439341596 0.68135874450298872 1.5798820692745983 -0.15935338205240074 -0.09315725484403406 -0.86543893023962082 0.14919168588643433 1.3379687762432255 0.57149523102870503 0.56200375739246833 -0.20154129470642537 -0.11305927019571139;0.026516096132465986 0.27173780919608298 -0.54751948498344183 -0.69286170596532171 -0.56638178582636567 -0.28280282167302717 -0.31882891305331251 -0.15698850600147807 0.75761660008679654 0.49764044068895213 0.35375731738208993 0.50703357890736178 0.62394345766964066;-2.3605160893317745 -0.71751918616544319 0.10290475768316501 -1.3160655031104127 -0.37247140032775883 0.75122728198352706 -1.2665421691718488 0.49080422083651065 0.59788306155702409 -0.5097469132926411 1.9232949806887178 1.2266001991631494 -1.3405505559464701;2.3320588946946721 -0.15555340837301268 0.13647390436678586 0.50143353556840342 1.742218022803933 -1.5422982780623304 0.60202329278438382 0.64569801388121961 -0.17625535574903639 -0.18532765459459832 1.9231471507947608 -0.85347069897820227 -0.27230482179954424;1.4087151372744433 1.8516625333082295 -0.504377032347887 -0.03994746093095821 -0.74129933802285042 -0.9092599756968629 -1.3941384565952655 1.2199011242747153 -0.13641607797705291 -0.30931327958156335 2.2802784093292567 0.7935352961845864 0.30766459651081857];
  
  % Layer 3
  b3 = 0.74099196466285566;
  LW3_2 = [0.85458384768312001 -1.0298029365541972 1.1991313811441382 -1.6157157429271551 -3.0812260618635747 1.6345467870697612 0.42360340695192067 -2.4697788776457119 -1.2297781596226842 -0.38302798637061236 -0.95629377396258153 1.415973801786498 -1.6418553823934403];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.4712041884817;
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