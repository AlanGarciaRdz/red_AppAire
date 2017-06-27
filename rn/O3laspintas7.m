function [Y,Xf,Af] = O3laspintas7(X,~,~)
%O3LASPINTAS7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:47.
% 
% [Y] = O3laspintas7(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.241545893719807;4.5045045045045;0.00280033604032484;95.2380952380952;0.212765957446809;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [3.0143074636639735;-1.2584014782923587;2.1089391057319791;-1.6364987723514286;2.0677543774979696;1.2990251796732548;1.2685523623644799;-1.7030429535116913;-0.32733851051572049;-0.75520834269528914;-0.26635743039501758;-2.5635357967013639;3.2700647806799252;3.6420369287134231];
  IW1_1 = [-0.99590599462086127 1.5374845620702231 3.2644107796654342 -1.138446734889961 -0.65450019358666101 1.0536705836679356 -0.082542782630530789 -0.54436258837206719;2.1355610195029051 -0.98372270264888151 -0.99532543971015985 0.8195987295347249 0.23290356247885666 -0.62756922919526181 -0.16011851183017126 0.77562435915715611;-0.60526709823999036 0.067577959703027629 0.17991187373656914 -0.85266574344591362 0.17534348493244678 -0.5799198775299107 0.02072027793961545 1.4048918176880971;1.6411957481159991 -0.079569518568446532 -0.71077903956892785 -1.387155631571342 0.14127090601091052 -0.12298560756045122 0.28375588235838606 -0.12002592755463756;-1.1428197361342238 0.086656443603113434 0.52272487613320417 -0.035609619137033026 -0.3637869571582486 1.3064725900106322 0.16600989365003072 1.4580439054452536;0.13733929334176043 0.54874496138245776 1.1931803321930083 -1.266081586244286 0.52911388940787274 -1.6716148402139981 -1.2778561509781918 1.0339447045202714;-2.9769506956068521 -2.4570561862436389 -1.8062856622725547 1.9709914978433547 0.77866492438170765 -2.1626779826688058 0.87480960061418866 -0.43901900493388052;-1.9630655514112076 -0.78678959104504942 0.2834135945077122 0.072084570250525393 0.66861302794833311 -0.17723281198464369 -0.18259733350105398 -0.58514526643397735;-0.090630061340205306 4.2011513854854243 -0.40884942221255272 0.49166981213083205 0.26838020835821791 -2.5291830903176362 0.064572626983245479 0.36761673964309882;-3.2967519786441257 0.50581566922079524 -0.75069231253314572 2.4390329835482105 1.2414359354524467 -2.572408182504359 -0.12719058586525822 0.1671306786519734;-2.2411024054969131 0.18788595703667241 0.26496979988500075 -1.019567378703748 1.4479360380857389 -1.1780650378339685 -0.32358419038068159 1.0180907955882892;-2.1398627248773292 0.14217242691871301 0.1287825525406297 0.020535839531937508 -0.92695544575012356 -0.3409731102378305 -0.11657491593610204 -0.77739708828402365;1.9117765821439765 1.0145778163854813 -2.0518668316387365 0.12271245266990477 -0.82741341904596288 1.7186020118362588 0.78507805030424771 1.9977290712789599;-0.19839307910852474 -0.068372866523779691 -0.21231005552196269 0.38581654041383745 -0.40047731825046301 1.7740865302372106 0.33998948566095399 1.7162923168144559];
  
  % Layer 2
  b2 = [2.1566016423224532;-2.4542232339772334;-1.195662961957636;1.291491130752719;0.80389427886892662;-0.034335338313385255;-0.078887518015633734;0.22551683998896338;1.2268774747102211;-2.876160108322432;0.4654672854937803;2.0373388883532049;-1.9673539045971502;-2.0970920373658339];
  LW2_1 = [-0.19965151461793113 0.42518564600198799 -0.031577097405066354 1.4860484801896257 -1.9494942699229292 0.34491523048147965 0.5256060073422093 1.1719507081487632 -0.83134361525254963 -0.86203135340382564 1.2137146279956925 0.4998276108498384 0.26896206460110589 2.0714761699566173;-0.13358881845790399 -0.52750373833133535 -0.24007896521896435 -1.9286120275684109 -0.51349215177868934 -0.21391604525837418 -0.79783916912848185 -2.0256332723715182 -1.1821250724616583 0.12880966946442512 0.58665316717831095 -0.0089962066834788842 -0.44190233271835688 0.41827453033933049;0.17544032826169298 -0.5791909662045529 0.075316138367809662 -0.99740220013174019 0.23449539909432154 -1.3411968707266322 0.037429313535889255 -0.77076185882352144 -0.23694339366479381 -0.46898555288047489 -0.48644654982108415 1.0786357234639501 -0.67232416713136167 -0.61187283834592598;-0.11172145722276777 0.91923252740033279 1.232876253915306 1.1547288651387646 0.14537638423804244 -0.11645883691061271 0.69796338999227181 1.3241097671256441 1.1352318216943851 0.13404132908261326 -0.73933469723079048 -0.22125849434903921 0.040321789816766027 0.46557553196562712;0.70016277475964606 0.20348643032199998 1.50003366877442 -0.034586613947550568 -0.38422778991063866 0.023517946566637204 -1.0872023205372177 0.54948374381925036 -0.5127785943557529 -0.59158492131240026 0.97602669564460787 -0.061775373299153495 0.42053371669638612 -0.70353887993302044;-0.22252950481438713 -0.15312904693238263 -0.39365692102398853 -0.010501278776090851 -0.34670755146038823 -0.47277289120668142 0.24722997148385006 -0.70388022807640915 0.0060594579444680063 -0.079823145464410855 -1.0599692019710885 1.3957739019769906 -0.89646153973869169 0.15640752610244207;1.3668470160332911 1.4468871733283222 0.02569329088425773 -0.34969860037794931 0.10042673906754838 0.97238168774626854 0.18329990605131874 -1.4927523621408361 -0.84696085010817934 0.15648776723786884 -0.58548173316882213 -0.85962376033222254 -0.20934495469057288 -1.1676995158698296;0.31158558367437095 -0.81662428037312407 0.077207133006900422 -0.53410443342813707 -0.049915313954143316 1.1433859835294695 -0.38840044641633042 -0.29348458839974134 -0.6098451716287141 -0.83852818212761793 0.45873372255155598 0.58048954833070077 0.75964430523051985 0.21022769724518148;1.762610066556392 1.7780331250857022 -0.13093263943142608 1.2555010657934136 -1.1066662698767238 -1.8479700438544471 -0.6360901046453189 -2.2671252181625121 -0.5008478508844223 0.97073620913447167 -0.1323425096048727 -0.33282399051070577 -0.72440917376139313 0.61426543371951836;-0.82683821451807427 -0.098067452711452563 -0.87154639816924095 -1.241547074982648 0.27458929337445576 -0.032160873021059425 1.6183973763870629 -0.0069585021510995305 -0.77084915968927037 -0.01904984189950756 0.18515649184521635 -0.35638973188944451 -0.36627819115545318 1.3580926037284979;2.1273398063440827 0.69344692863568891 -0.14906144116081294 0.92593502900923064 -0.49340800116523942 -0.21765179130330015 0.26194266263742549 -0.98692140908325876 -1.1024836795501072 0.83574683282903861 0.51787517591786147 -1.803407036992998 0.39378503217938526 -0.60849637212532981;1.4815727354641113 0.22178092162441843 -0.64395891908735026 1.1317145776921969 -0.17138268108328708 -0.37566373311649071 -1.1631729007430966 -0.83480638998324785 -1.3496483163885518 1.4916032727525732 1.3425055747886123 -2.0601346776479654 0.52891343029230353 -1.3459865527675867;-0.41524847991990049 0.19154634972013657 -1.2978518691501983 1.210142500853602 -2.2294140323127718 -1.2933394400652392 0.25484312232928968 0.14944766753391264 0.5458752748041249 0.75459896430835982 -1.2167134437474969 0.54193427278349871 0.42304464324450047 -0.25838647140893106;-1.2724548835346727 -0.33988358277246339 -0.85580552200238313 -1.2097167931581676 0.3805189146515735 0.21684491136259845 0.17514433946521782 0.56443238084532699 -1.1077575336398933 -0.63806984834013714 0.8395226595977362 0.49808859941989447 0.20972258708652211 0.7754239757520448];
  
  % Layer 3
  b3 = 0.085109156060001273;
  LW3_2 = [0.79400447199419411 1.9913580704539584 1.5525785293088186 2.3204524637354389 -0.73508911560667589 -0.91471159108697042 0.9111087879493639 -1.3691247068491645 -0.79156791532365611 -1.111056844254642 -0.57480768057681342 0.51134798081458233 -0.73253548493372245 1.0750607801545622];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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
