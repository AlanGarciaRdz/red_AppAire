function [Y,Xf,Af] = O3miravalle11(X,~,~)
%O3MIRAVALLE11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:42.
% 
% [Y] = O3miravalle11(X,~,~) takes these arguments:
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
  b1 = [-0.97339837784054106;-0.8758582090536069;4.9811309056069426;-0.8433432136102722;-8.8620385391861412;0.052400965183014285;0.087244386241521282;-0.49229786735541475;1.8009695155229626;6.9245027699625004];
  IW1_1 = [0.32678765431118906 -0.069333309305857876 -0.24600210589871394 0.29162386263345957 1.2200715954726946 0.29654648625922464 -0.082695150992558128;0.10514976279735747 1.0899993558027068 -0.16140246374689712 -0.29126270303212576 0.59042641637190585 0.40620713259560531 -0.37286044114952138;-0.56593707987398034 0.73915738244846452 -0.080824277532505137 -0.17850297499558743 0.26994576680326465 0.11821297740868063 3.9314506566265033;1.688124775263943 0.40608148791075444 -0.061808208980191903 0.14044599387625642 -0.28383332055319588 -0.014766283149662609 -0.48356395139432307;-0.55669872995128777 -7.5237871712685545 -0.65657356447259851 -0.31976731189252261 -6.5256752578038322 0.29940883860099665 -0.42875301261848847;1.4229950553551656 0.54495481832259784 -0.029635601422492251 -0.04404945054970659 0.52273257348740509 0.14346354327852487 0.31214895715252539;-0.19867408618834465 1.0910298864114252 -0.051706382351088619 -0.16023762852246565 -0.93269470445062941 0.011203664637220147 -0.51108089008771462;-1.153270624122265 -0.36694796932469925 0.42044335056335869 -0.033820287024367582 -0.68576567812784517 -0.31571048215068853 0.69070685537642584;2.5766455779609649 -0.11591081058258504 -0.59040492054787785 0.4941571422588405 1.4218401290923002 0.32275767245954656 -0.077291643569734989;1.2930146668015412 0.38223439183300206 -0.42528320024712141 5.9603273357758377 1.0778850986790551 0.58131320769440398 -0.90869377978655719];
  
  % Layer 2
  b2 = [4.2079311082024571;-0.99079818072357362;6.4310463235615867;1.8823177923477887;2.108716582564262;-5.6896097750077876;2.4004354677618855;2.3304220970411902;3.9566188565600036;-4.8699219795026085];
  LW2_1 = [-1.2050358109147137 1.7778101347045674 3.7448252704878686 3.743970586773492 0.71425288616975369 -1.7121700069978687 -2.8381791805088978 -0.1493234536962933 0.8446684517053854 -3.5398500167222147;0.44845631134477182 0.3623208973454089 0.055604039852341358 -1.5514160612615868 0.23794304749627096 -0.40563467104769813 -1.2317577854481823 -0.59691420979760756 -0.28685824638557089 -1.3575290183928181;-3.1861995984727596 1.8975368709000591 0.79500580474245086 5.2628568309788184 0.80628868287554412 -0.64687292402596508 -2.9554362248024595 -0.81790117773157356 -1.0945303165887013 -2.2967833460415354;-0.40851341569085192 0.14822765441372382 -0.79384705084886398 1.2468793015235711 -0.76433281491120131 0.030851210861894005 1.375295258077303 0.48639876640935437 1.112171514224416 0.20139970258968828;-1.6242533751514043 -0.4117645023852311 1.5237275051100916 4.1968543832228757 1.1647591473710168 0.43478595032818573 -0.53218913684778224 0.29654724375944752 0.35925972199403333 0.6441470128768495;2.1483539959011786 0.21726585065191412 3.1416848754304976 -1.4745026400487915 0.12328965503593106 -3.9452232666121509 1.2295839974741789 1.2026794572164563 1.4778666012729065 -0.37309128960263999;-2.200527427930381 -0.92726197026597479 -1.6074571063905296 1.8708588167181766 -0.15273200649882357 2.3098271996076263 -0.62814572481825093 -1.7412933047761627 -0.21587594817014297 -0.32912021144247638;3.6038973883176992 -1.3490294844550919 -0.83642524326358614 1.8710190996915108 -1.2389858874022341 -3.4680058168610941 1.8740635336432456 1.8439531943181486 2.4719327589981348 1.2785507080509591;2.2471691357948997 -0.60567693147919521 -2.2991576864320544 1.4788035205160421 -1.8135445724250578 -2.5214345708817429 1.1786779297344407 0.93793126117579351 1.1470494884365281 -0.32733740109102316;-0.35708734066553077 -0.17543986270991713 0.79587542383037246 6.8445447384170608 -0.57528811303626737 1.8390903288740823 -1.7889954399888084 1.7716427020281571 -2.5089857542767797 -0.2584174984544893];
  
  % Layer 3
  b3 = -0.33831406315465062;
  LW3_2 = [0.90577282419122251 2.6573102107555129 -1.9757972837131614 3.6331633334984912 1.91435264817629 -1.749442341983932 -2.8721858337969826 0.9195163848394371 -1.1971068615716658 1.0776426189848387];
  
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
