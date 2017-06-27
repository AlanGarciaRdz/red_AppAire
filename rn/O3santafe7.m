function [Y,Xf,Af] = O3santafe7(X,~,~)
%O3SANTAFE7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:49.
% 
% [Y] = O3santafe7(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.172786177105832;4.16666666666667;10.752688172043];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [6.115561043569004;-3.194273601182088;-3.52835500737431;-0.12595170545569653;2.0355754217074504;-1.8292914823516886;-1.4736835001803106;0.038576648621139929;-1.4200066931348057;2.3861692123757359;-0.70345161303200465;-2.36379234277956;-2.2472935886835161];
  IW1_1 = [-1.1903738732089921 0.20663752351182438 -1.0737756408251364 0.22767695648253472 6.2114666756443606;-2.8660657476487392 -8.0327057864431612 1.7691600701820989 -0.89825643123294485 2.4295558411304534;1.2956336142137812 -5.1834434056717154 1.2389774995720841 -0.34452783736604253 1.6020442090839648;3.592298757713881 0.46764949882047557 -1.017982105592085 0.37090424895449142 0.28997443684510926;-0.2764225734834721 -7.1698701962571949 1.6668609733531037 4.6630473933920094 0.1779307210657321;1.9554555472457549 -0.20825151594022925 0.84890036572878214 -0.4231622219538721 -2.8540107295982917;1.9899680550223602 -0.24291085060084902 0.025400931245355279 0.041031560074271049 0.85530742427945661;-0.18158260439163501 -9.4054458026194236 4.5533480537439024 0.54849341892669556 -0.13683945254565438;-1.1123842419046603 -0.27904411845534544 1.6857030495197414 -4.8865800870065579 2.9940827112568273;1.2496620674976018 0.12858582232207458 -0.96754838792102982 2.7839403069833426 -2.218128500507599;-0.81931030159330387 0.63788174899808248 1.4470696041275566 -1.2809219836896513 2.1918996128307016;-2.2395481708533773 0.24536885504221784 -1.0183386903238036 0.49293176774013897 -1.0038689925906168;-1.7373774052305251 0.34298430998943619 -1.4166398467840653 0.56690666669285195 -1.8376508165338339];
  
  % Layer 2
  b2 = [2.046062888883629;3.1834720948110911;1.9963939653590992;1.7069435321923021;-2.8862694217332892;-1.2624229582451916;0.31511967900512483;0.84129921577621025;-0.0927732395494026;-2.2292768130445015;-5.7561128311988181;4.4814336662034133;-1.5882009154338008];
  LW2_1 = [-0.22069197082105063 1.9814353355925558 -0.22707656016748839 0.6603432325099301 -2.2009074734262297 -0.67609395122540294 -0.33458285881045358 2.1956796915015837 0.16514965001350107 -0.33361029582935564 -1.954996649031528 0.33648766095182081 -0.22682502291150555;-0.78306477486688064 0.14631637752143986 2.3190235330443301 1.0572814403024127 -3.0935278005988729 -0.59807623363869289 0.21505907039784364 3.0118378698845816 -0.093786526672896803 -0.89456688234034254 -2.0557216221032171 0.84986772592827597 -0.32530706888227284;-1.2015849341847182 -4.3329637132355447 -0.1813072215528479 -1.1079975203393633 -4.6017758639191442 -3.5710949032891799 -0.46768254846132329 4.5454601617496415 0.75640490666592541 0.36830169785078803 -0.91183221628295785 -0.38264083905073376 0.59288449924932485;-0.26106598124282276 0.12071582593446134 -0.97769347601075496 1.0814812540571537 2.3031751447602016 0.89799396861154157 0.98271927873318488 -2.5496417722503577 0.82914070666582762 1.7265684891326853 0.86214744595076331 -0.85375961837898096 1.4666561859921858;-4.6554524764933474 1.281695905025837 -1.0206724417199011 -1.6524325299849834 -0.96697646692941452 17.141615461628973 0.28699010423311311 -0.28253170382548431 -0.64792509718574098 -0.73194073525898773 0.39006381932883066 12.167107219262725 7.4840786228103022;-1.2408209043597782 -0.34636727637624276 -0.82733639390427971 -0.5339237202005036 -0.72032520522283772 -1.1908913776593133 -0.26304800860508915 0.95385640775915459 -1.0096098047810407 -1.7541344561621677 1.5199315555992317 -0.49686081689970474 2.0361289692370876;-0.051910234327085227 0.26553266472133441 -0.37202838500631347 1.0608253880919472 0.57793662548416869 1.6563059296690295 -0.92629734967116528 -0.48864473709896539 1.0467814317237525 0.21926544478346655 0.88719798391942217 1.1002146697368964 0.21665868036008534;-0.94792703147542545 0.029305727957266419 0.60212428187568889 0.83692927150970875 -1.0612782300383556 -0.81596511725390941 1.4087751113433997 1.1528083736277455 -0.53302789659716687 -0.91072139075565839 -2.862035475970087 -0.36908637962083152 -0.30551399471060403;-0.48665143184186294 0.2167765730148683 0.26079767381629537 0.11213856860626756 -1.0958850509161224 1.0696101521538506 -0.38763351570970817 1.1766062615504811 1.3128044807059727 -1.1089428416965843 -0.44523637933022481 2.1439050767038448 -1.5225386982871483;1.269513228798171 3.8583189666508364 0.83072457704328284 1.0192147307517831 -1.073591799531223 3.1756800508918643 -0.68326264053066399 1.0959802470107032 -0.94478645282422591 -0.48870715180964047 1.2582347510749847 0.098335843507049769 -0.29094387679240952;0.38546637520664495 -5.4216119274879011 0.20476564811766906 -0.080775915869095605 -0.12198352757451064 -2.1204753428501801 2.1072216734476079 -0.014881462138261317 -2.7474873276116396 -0.21285741876436959 0.93542143889907492 -0.89154673983619293 -0.12779572352072874;-0.55721868399150509 -0.36863138739498774 0.0051149577611631081 0.38418390031422484 1.0711071789828404 -0.35245791082426742 5.1038625711439121 -0.74404564673915785 -0.51818932409939766 2.1645809336026467 0.95475337124024662 -0.077733461875096777 -0.55757567596249047;0.22864938450869321 0.25833260350979914 -0.61737978747921129 1.2817820629924792 0.78647867194910648 2.155019159096339 -1.1029069114291217 -0.65956449047645638 1.276735763906619 2.2397693343727956 1.037113477910117 2.2910685091014376 -0.31973208090697275];
  
  % Layer 3
  b3 = -1.5405875653825782;
  LW3_2 = [-1.0304008602798274 -1.0523396645053955 1.5688446651401191 1.4244140997516284 -4.2470662274754671 2.7477650011248582 -0.89231349454192144 2.1225339321874932 0.80996193262278737 1.5898429983174747 -0.23997940192032075 -1.6845553799992747 0.61940048817113058];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.752688172043;
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
