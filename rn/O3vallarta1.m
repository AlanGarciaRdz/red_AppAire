function [Y,Xf,Af] = O3vallarta1(X,~,~)
%O3VALLARTA1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:53.
% 
% [Y] = O3vallarta1(X,~,~) takes these arguments:
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
  b1 = [-1.2815006764876671;-0.80984835081751583;-0.86249659189384675;3.4884543927367737;-1.5502881118557637;-0.36262303729011075;-0.82349117969757191;0.25892913606051199;1.1758719157578237;0.58720498730750093;1.6051103292699185;0.088339812264327272;1.1161958128837772;2.7291384727994603];
  IW1_1 = [-0.19711950538624254 0.60416725442159791 -0.84333961669265711 0.26742223013976318 -1.241308206949655 0.6275182015018218 2.1128779251169805;0.75725869382277122 0.072946008255637254 -1.1749704788128381 -0.92437668500784453 -0.038748539478543918 0.1530650707149398 1.7176868037022657;0.15578728704211861 1.6586929554092589 1.2651589804478878 0.036278354973180563 0.80731258472626599 -0.11203440864495233 -1.0463219841171691;-2.4483460674504158 0.023220058640455409 0.89746680084467712 0.14294560883093471 0.11567654696159158 -0.1702790361638048 0.82442444304430984;0.07161870303486792 -0.046162516553260868 -0.71128114924333985 -0.054403064805429904 -0.080226766585286061 0.083484417949445278 -1.5574036947201033;-2.2977589363369813 -0.041250998832173431 -1.043893936547565 0.13189835032812477 -0.005934013414215655 0.088266625410279936 0.41418376001764612;1.0449468568153053 -0.67410997979586307 0.36672436193234326 -0.62060115824019568 -0.16118247243079742 -0.18875923264499331 1.6404405954797836;1.3083714289157529 -0.016902668523668604 0.77591340195842295 0.15651888313394813 -0.020460965575212115 -0.077592951108674105 -0.50709892246258226;0.74271109411086222 0.97861931825931792 -0.08731513817366654 0.10991392849788192 0.79477967316552067 -0.4580350047148054 -0.78955646799702894;-2.5798813988273248 0.65717253406984377 0.24135077950566505 0.16243929061928847 0.41068945229527204 -0.13682188235250237 0.84113443613918959;2.0079300386253682 -0.077799091425185679 -0.6876512681872442 0.72654683927887775 -0.24008733737445609 -0.11567924669409989 1.0533088941750455;0.31899703062670298 1.6475234449902969 -1.328806595517309 0.30656258286572102 0.14359642911985923 0.22228338007662107 -1.6714452827017134;1.1524087392244893 -0.57737678966597095 -0.0084046988852914655 -0.42432900446324939 -0.12722411845586859 0.95967868385745037 -1.5256511462713578;0.58869811424910823 -0.86883124582891691 1.5426246122395237 -0.51524792472282577 -0.05012287012413405 2.020717830969915 -1.6241956879842827];
  
  % Layer 2
  b2 = [1.8095535536877909;1.5361951536689513;-2.078003596987783;0.96528467786336403;-0.32729925491645728;-0.5367519595572775;-0.33703058467392666;0.50759296065143111;0.17192391350951688;0.8419225574871857;0.58306519624693653;-0.64791947600023547;1.4364061410304523;2.3169510824072863];
  LW2_1 = [0.14964408595308204 -0.15415868698256949 0.46748912018823674 -0.35078143408497459 -0.50721214796303038 -1.186974496897931 0.4922339301045891 -0.31724528265860868 0.7116654284959224 -1.0506231543217293 0.31929711970372626 0.57659509025669564 -0.40640251677986372 0.34057050701995895;-0.70696407977930265 -0.14096120356847952 -0.26526270171370547 -0.46974728787879494 0.013918218040874307 -0.087994360448794176 -0.7398182945716496 -0.58399842080626008 0.35784199943316281 -0.47993054659345014 0.66320835705783898 0.52064011279071487 0.24613786988043887 0.15667810137132962;0.98338518019451571 -0.11652303028599191 -0.42477424478925191 0.097274682046950042 1.2803166341301142 -0.087662273141523112 -0.58362587890533768 1.0806300796677986 -0.082897705962166113 -0.17455644986815524 -0.97279094039993419 0.72210225982362708 -1.2970974753011149 1.0086190743951784;0.31225375501514047 0.0069292119050324962 -0.22835843051296731 -0.30886079720523446 -0.57820208720893629 0.77796689932696772 -0.12519515588911972 1.2451469047826138 -0.25192232848998608 1.2702456347837399 0.36292886150623171 -0.097936364879548751 0.84865896414305853 -0.1269898856222344;0.37330273705045275 -0.82718734561104634 0.49394232834755136 0.95070032777009417 -0.090209094105237086 -0.78260603132029094 0.72891311420748461 0.67218138526730675 -0.0027500313914652907 0.26671050420761805 -0.87058633985624911 -0.32577154297931032 0.4836713560771459 0.062386468483509525;-0.3163873934592864 -0.28766743882470375 0.22882619674715321 0.0654639978067314 0.40795802399767667 0.36678966705654098 -0.81273123546524062 1.199490324364521 0.23987562331100543 -0.11541261761266994 1.1442794211996525 0.43893449419211178 0.11592498034372731 1.3148560040440886;0.5917803055818025 0.28369507163934871 0.10562116786846557 0.19103504375877758 0.23777987224500388 -0.095154206703593674 -0.50454424452594859 0.23255066347607817 0.80134442660616345 -0.81823488989223003 0.29622737342543998 0.11748454590155769 -0.73122659196113138 -0.07813844991063576;-0.69930281795971161 -0.6296812455883376 -0.042675952829407074 -0.59324808780169547 -0.99187134705158075 0.11518573710009211 0.11891362688230472 0.90290671831391767 0.021917944750515006 0.1018457528779507 -0.85493363961712876 0.76111737803678903 1.0074191017549698 -0.34662212907768208;-0.41517691327645911 0.81792166312219072 0.43330810270653086 0.68967692499511246 0.38013362700896031 -0.60151509714505402 0.47292809446215983 1.2923049798936765 0.45185809441033525 -1.013152740588193 -0.3994406683963958 0.56076693046115988 0.43736278313131871 -0.047040399477913407;0.38064634798546715 -1.1776972141235762 0.19324616199471231 -1.3344849303042059 -1.0907367894593347 -0.39792171411458216 0.44754374859689394 -1.568745454700901 0.77630051593940286 -0.96566277806982559 0.20636996726289264 0.26568799624910178 0.80947726961716471 -0.97046254227555895;0.72995688626021882 0.20343344204297112 0.063363002080744829 0.57996154970856628 -0.50502231173338596 -0.15419849963044358 0.48085899632261198 0.74508982145566804 -0.57450534670672126 0.35575912856335046 -0.52757733463147649 0.15841168016342763 0.65544519707698468 0.92286512346590521;-0.11687002625948456 0.13895197443021126 0.52160300995754005 0.54565012543307212 0.83063955632699238 -0.61798416299316861 1.4099478131470782 -1.0975392543096929 0.074486681287893916 -1.881925556705214 -1.0011879550686893 0.39556665993953749 0.40137624056892141 -0.055240681899527744;0.23073021157621293 -0.20603624658763525 -0.08363793837070288 0.77823398227191731 -0.21268751972390459 -1.4080843204358546 1.0844640899745794 -0.31483248069026504 -0.78743655137273239 -0.084029940697229424 -0.93857239368131029 -0.099671831319976006 0.68096203524051124 0.30263224733888744;1.5549959333566283 -0.52375333302405203 0.57875531830283689 -0.29821142516698818 -0.48038087050955836 0.42089122712930882 -0.77213423303342432 -0.47256053148230825 0.86591983278859586 -1.2415813911508669 -1.0885462440363813 -1.0872934707140243 -0.12058499953847292 0.54806479152808862];
  
  % Layer 3
  b3 = -0.099503501809551004;
  LW3_2 = [-0.80825705500748823 0.036194419739726758 -0.84016412262610596 -1.8556433500825278 -0.21207928382123725 -0.24507490032369891 -0.7621203018135515 -0.69494503355443815 0.74881057234716875 0.94037712695906617 1.3208126311494071 -0.93288848221550569 -0.64010900336101906 -0.57007644043116723];
  
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