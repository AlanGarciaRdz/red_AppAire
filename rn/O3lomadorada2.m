function [Y,Xf,Af] = O3lomadorada2(X,~,~)
%O3LOMADORADA2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:39.
% 
% [Y] = O3lomadorada2(X,~,~) takes these arguments:
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
  b1 = [1.9897566128240158;-0.17252389851186348;0.60864210675723751;1.7978132268655889;1.2557757714899416;0.7976468476133296;0.48911951058696757;-2.0119580343549655;-1.6069484179219267;3.9616676933258903];
  IW1_1 = [-1.5384529961907645 -0.37628263376738585 0.91347700211154836 -0.37956620498598415 -0.57180248872522688 -0.019827758745674953 1.3032579482704625;2.7715539872778976 0.7817301330385007 0.036539895824704814 1.2206077245663651 0.65006756898962992 -0.34701943568646398 1.3302001042205083;-1.3091864567128106 0.098197765839354537 -0.4528189747460582 -0.034456064278133393 -0.10732661645708862 -0.04525787315063709 0.20719313005765883;-1.922060786420879 4.6431588739006449 0.85509808654787045 -1.226192057252367 -1.3102359736112816 -0.020133969673927207 -0.28540451688320517;0.33817066127732215 -0.070337942624343022 0.30316063878411487 0.63195397481303994 0.04542326709601846 -0.35497440734754571 1.8841446727781552;0.47627692451681847 0.71192729940089405 0.71800164195737082 -0.050938232230250673 0.028163425906577506 -0.8999554325732807 0.549590625793413;3.2105113848167366 -0.028868278139666224 -1.3879602986080615 0.54445465042001162 0.31333645086934653 0.091549947807388066 -0.89093539239086927;-0.46767941801160662 1.1702821057594908 -0.073377923086777902 1.0374485654746823 0.54343339148409797 1.1620799557621622 -1.9370117393448272;-1.0666935462186438 -1.7522624201069223 1.0176997756825572 -0.045451040313691196 -0.20020770945157645 0.3648293668568911 1.3059331627705457;0.40905414037819848 0.13702295133230427 0.075512577130515984 -0.19290078232620561 -0.069398014170543268 -0.3704800555300346 3.8296877707156614];
  
  % Layer 2
  b2 = [-2.3792495591701366;-1.1255827752072824;-0.17326408333475735;0.29933044597418779;1.1040379066014663;-1.1924900977826973;0.39363718516700719;-1.2537373762890263;-1.8367997758219732;-1.5153869600149985];
  LW2_1 = [-0.35051585046941586 -0.10097057422767555 0.67913957017132986 -0.0085185147521141293 -0.56878759917240018 -0.70550800624588106 0.23252913850648396 -0.9146336205104264 0.56171647173909411 0.93083763390996688;-0.63672442529809714 1.1618335111436808 -0.26208083930196352 -1.3958538321777456 0.86446181258274168 -0.81815133104102478 1.4795840864106371 0.20531636360703548 -0.76423731499391501 0.91192938021851211;1.261927836205198 1.1451433873631407 0.93306043274646389 -0.054601349471088551 -0.91526240972651374 0.43259779051498448 -1.3475781750191236 -0.10722188363026855 -0.39100374883510369 -0.99802200301324884;-0.082995536650039198 -0.25210521306007833 -0.63610809847327665 -0.34343624747142498 0.20633422257921166 0.75703952365993676 -0.69043474571179364 -1.0210710633710518 0.24359782867979829 -1.4653038402275604;-1.2012876704793001 1.3166390192183419 -2.0352088341805668 -0.80457919847305748 -0.6307159584298232 0.041687455765393726 -0.40250781064046687 -1.7218137832526321 -0.71867532408525081 0.60213033188353338;0.59277768535660469 -0.71353859494672378 1.942663483600866 -0.05127421322281174 0.54942771611057373 -0.10928887263927203 -1.9959732639756733 -0.11899550056790509 -1.0795649419216793 -0.022131268554959942;-0.31025894790956909 -1.1186858485429476 -1.0471446013926786 0.28440037215217817 -0.30642036874503892 0.89046085917327733 0.074402383656481857 -0.46379480191083089 -0.99426466434444927 -0.72522377440768371;-0.25614960526122271 1.7333957605207535 0.56831296243883811 0.67409619090491846 0.26942870493189736 0.39514064142915284 0.13652245357629555 0.63306665667691098 -0.11545906255342189 -1.3907010184662019;0.76408454139491067 -0.77137894775166393 1.5136051574509928 -0.35206997513437877 0.68841948682148091 0.047325498835149797 0.75491849504963715 0.53852041515199522 1.17396378781697 0.68990371923048965;-0.79535310980951979 -0.81942491779787086 0.52040013893836079 0.56793301068422986 2.1901856104264437 0.33396148385273972 -1.226882661616048 -0.91334851007463069 0.081348623022726094 -0.55710411349368316];
  
  % Layer 3
  b3 = -1.4587275051753874;
  LW3_2 = [-0.97194184749657353 0.13238660327196639 -1.4713244867421968 -0.3970863674176951 0.42104054753574249 1.8876762476072793 -1.7713571723685329 -0.38642668416121762 -1.3929292755391729 0.34020065299956026];
  
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