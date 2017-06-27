function [Y,Xf,Af] = O3miravalle9(X,~,~)
%O3MIRAVALLE9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:42.
% 
% [Y] = O3miravalle9(X,~,~) takes these arguments:
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
  b1 = [1.7633419981630525;-1.117929725169351;0.14347700097539087;2.5108383948168234;0.16087700801767435;-0.44046548752045278;1.2375201516671188;0.14701636720256356;0.43916411591976934;0.27933634664469154;1.5728101384204614;1.8403799707077482];
  IW1_1 = [0.96449408968079375 1.2862104785593207 0.41876795516072973 -1.0601319985907642 0.50818409829474342 -0.046398161495883154 0.56185604771281306;-1.7210662265337415 -0.080386106188376424 0.3077014729542315 1.154837620549054 -0.19937803916099572 0.36216777127595989 -1.326129109417943;-2.0871008517525791 0.22501290931893841 0.048330735984132144 0.54949092508824349 -0.45477293951417147 0.14562386675446878 0.73308122682950272;-1.3414645332586672 -1.7589927035942661 1.3110396318325699 -0.23823432980434844 0.2952399539214744 0.058423581507940921 1.0506772177212689;0.89121810052540396 1.4134959320063969 -1.11483823473344 0.75363608297971663 0.065420750228316366 -0.96714393522509035 0.95662205345938345;0.062391678061743124 -1.1893140468665737 0.70610472722513384 -1.991070293969063 -1.6680316841448106 1.743413009629065 -0.71321518065903367;-0.94565027121583867 2.5257140931472062 -0.21761327362832528 -0.68868204343187789 -1.6043858301540177 -0.35874048430600231 -0.052560275397660221;2.8188796075999996 2.2233197003860874 0.22187326469174878 -1.5430477709962918 0.97171736208749182 -0.27139749290886295 -0.40106914012469713;3.6563677648073312 0.06802345428175087 -0.035345975527734184 0.79427484516312119 0.46590124884426959 0.020798326073504955 -0.75690262437499123;1.4720886635307355 0.17264423666726342 -0.5196452473517934 -0.24124759391472417 -0.93525341497560854 -0.23109627304714006 -0.22860427042551162;-2.2700219656131102 -2.4204791029418633 0.044079311667178857 2.1552036487390889 0.097699592804031288 -0.38188943982332624 -1.8251402695448045;2.134949176233222 0.32907590524926339 -0.012652820793707126 0.89898677545017225 0.40435407084451286 -0.057997564668782038 -0.49599819172137177];
  
  % Layer 2
  b2 = [-0.52877686941941282;-1.6356802141368716;0.15794309597174061;0.68576430327802074;-1.0604665695881865;-1.1056445161672444;-1.5348824245618133;-4.7568442211920106;-0.28853542688577549;1.290327379790031;-4.3417133327923194;-0.82430109630206871];
  LW2_1 = [1.5439493711418006 0.380279612268561 0.15605222766717775 -0.14770347999796929 -0.83678891197170902 -0.32514708449786861 -0.11623343646622172 -0.26711109138444677 0.12534488941014499 1.1045675673140878 0.23659241683272325 -0.42500843218039491;0.71686476013279199 -0.51233631128540691 -0.19330855891401372 -0.23759021726673213 -0.66759118981071408 -0.20994506464594315 -1.8937944322819558 0.49540957286185278 -0.4982760774415258 1.295853030836748 1.568968136002409 -0.35708749354558078;-0.30988386672168283 1.9058295021348053 -0.29420216939203669 0.22651556026743511 0.46588911373485009 -0.37040299337681942 0.74255401252285103 -0.24356778510537036 -1.0468700081275837 -0.080377398160035057 -0.12517623994768942 1.9854080045259721;-2.2054206918024866 -0.11327911794476178 -1.6106466605236962 0.28765214270603395 1.3220513701555896 0.42644948543100386 0.25056454464171946 0.90828995986986816 0.10204110927967619 -1.4524471992987957 -0.50759456562515726 -1.2984486121102068;0.1242817423309357 1.2493576572364988 -0.79931634030520227 0.45000884659420237 0.80189494693796892 0.11625680789957639 2.0440844827231373 -0.77795670809218498 0.59324160481179955 0.53636640964613247 -1.2582433664916675 1.0745546854964996;0.80663910301630759 -0.29971932921296829 1.5081382241353094 -0.43052192507489967 -0.74365346836453583 -0.43476707447127588 -2.0255551552631768 0.010627979890359339 0.49720890706699605 1.7259664017647975 1.6208667392608556 0.53748295256307344;0.4621974347526307 0.94211959688401725 0.099510954512100458 0.8019269912524295 -0.14132561953842365 -0.20286032555179603 1.0616146598030871 1.457962329737259 -0.18319928297430374 0.54986331472278849 0.23258642033416818 -1.9224347633386141;1.0265523043361211 1.6853288585916726 -3.9914755858856839 1.8301469115319371 2.6131770983526188 0.84596483627559638 0.42057518598099713 0.20632126580118698 -1.1572562046332076 -2.3329483524319978 0.94272794506600721 -0.21637916058864839;-0.61075225177854131 -1.539683104116129 -3.581791565574111 -0.74081282992716191 -0.97619129693262474 -0.2099029792149508 -1.3888589335200585 -2.0051224396644058 -0.50638207091795318 -1.4454721855942414 0.79165442248736173 -0.31649166533605766;4.6438553712367163 1.0094061538561898 0.36281699142324902 0.19034000634624956 -1.8926275614726387 -2.5268826819411769 2.3655302644507294 -0.046424537676668487 1.8522061388153876 -2.9149568950729492 0.75207621170076977 0.20053331347070064;-1.27003143556964 -0.41558417443747109 0.82039159666078054 1.2535734328950867 -0.77768468453205375 -0.53745768445926767 1.8361431420189329 0.65146502503113679 -0.56283215547914722 0.99737664103984847 0.35844095732126846 2.1065317468599916;1.8688898990675045 0.88512870052190551 -0.15845087635368799 -0.19116835677230745 -0.71505327480238356 -0.42551764913471646 -0.040945790294469264 -0.41962437020677285 0.31134645226215429 1.0853583954597079 0.20664660422185566 -0.49217442197298666];
  
  % Layer 3
  b3 = 0.16726109883031348;
  LW3_2 = [3.5069991101589997 -1.2253398753993774 0.36737260787285853 1.1152240750315308 -0.81999164914632183 0.87357872103051948 -1.1471352781765425 2.15331498160291 -0.56795958840006489 0.33249769948675861 0.62660272581676868 -1.9478299377772954];
  
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