function [Y,Xf,Af] = O3atemajac15(X,~,~)
%O3ATEMAJAC15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:36.
% 
% [Y] = O3atemajac15(X,~,~) takes these arguments:
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
  b1 = [1.982431532492684;-1.8097291982884174;0.33436920269515469;1.5023037718191989;1.0916578802962502;0.42436862496908084;-1.1629677556792275;0.3729279824427788;-1.0960969439900214;-1.3109652776772089;1.2714475471063804;-0.98503455314236621;-1.9926454280434556];
  IW1_1 = [-2.0994808028868639 0.46087876029448177 0.21201503688107207 -0.29597730296179231 -0.39366910314014586 -0.2818049879534682 -0.14409086583663575 -0.35610052074026821;-0.44332869454008078 -2.6187475202437231 -0.7316419603574601 0.60331027435912243 0.069122289793000113 0.54260388758279898 -0.01950267293613716 -0.53012734098138148;1.1029344573334385 1.7384212184269578 -0.4786833425208602 1.1344543425600833 0.025694279961208166 0.21989799178972383 0.52232298717312731 0.84148049071292874;-0.26336730611218112 -0.36210225415324931 -1.1260332387819301 -0.025572106675352726 -0.70815542636538142 -0.054508000991421682 0.056208986724430456 -0.60455686553715104;-1.209678758456608 -1.5332826363054606 0.59565133804056392 0.51534764576565673 0.55475610649348672 0.65425369708411341 -0.10954675491827436 -0.10613175518415305;-0.050948379076696061 -0.86320706884057896 -0.12041240933347586 -0.28823545180581173 0.091532418015257189 0.19208473659759107 0.095067489382161793 1.2251336283558787;0.51541871044856402 -1.3165697794513294 0.9475569464428758 0.074545776452312792 -0.42308350316256504 -0.34747301600584862 -0.52978123122120468 -0.12290437373577989;2.1710997395478215 -0.89392445692394851 0.58885011452117464 -0.076401500117100479 -0.095797764069409416 -0.53170419884922404 -0.12186116581086454 -0.64281540205853482;-0.5685050835885358 1.4203490975220081 -0.2380882412388686 0.13635695587262694 -0.013166556726654215 0.0014476390785843757 0.10542506228514223 0.47138814341490887;-2.593902834943417 0.16375770321303121 -0.24519484728086732 0.86292295014548026 -0.20612380761770022 -0.8034953415221241 0.050018717279170566 0.98659734976023172;1.5399666322340462 -1.2009040468404701 1.4327748812072687 0.36944336945718115 0.30672133447209238 0.19427569641066383 -0.20891780849211883 -1.1768649507530275;0.21108818808768923 2.188742156294194 -0.1027212019272198 -1.1677690068876967 0.074949097540366091 0.28205856920380667 -0.093200035384484417 -1.1297594408574692;0.027717303819857451 -2.5806789261040688 0.3009362387035005 -0.37752476914591887 -0.024239684306204747 0.023329311409566279 -0.12305649415939401 0.15024959292542539];
  
  % Layer 2
  b2 = [-1.7536637780300359;-1.0253613654192579;1.9394098535418709;1.0957202541121074;-0.28519126822360685;0.80224288114356013;-0.38377469186980245;0.84698563083177647;-1.1754200692066488;-0.96522342166267927;1.3067722661516377;1.5113146148138217;1.221823116220484];
  LW2_1 = [-0.084872128840241826 -0.57852630565837504 -1.3379555442362885 -0.27169210668474447 0.63314460244263715 1.4142796921730869 0.57022473084716463 0.68716268029912797 -0.50446952106767184 0.11075804797765014 -1.4925486297745767 1.1996444335142016 0.8204893236797357;1.0371360380550909 0.95776866995056653 -0.16517897091509759 -0.048776612271740301 0.48369543179524099 0.034444664286996829 0.26337218871131396 0.27720007434917315 -0.21430581971027657 0.61452939536214601 -0.65936603227836454 0.0061656302732883556 -1.5385614770493223;-0.98627594837164312 1.3682841877964651 0.19609137500856635 0.69097196830435625 -2.1693835119031721 -1.4993710184214206 -1.2206239367307434 -1.4404569663521394 0.5675619338294341 1.0393142729158695 0.5279552677422048 -0.018004100358263993 -0.22459540488168347;-0.38747499224618526 -0.30940538330073036 0.95469632851334185 0.87404614980779605 0.234177751461915 1.0531509799840446 -0.88028596090262778 -0.49329561844754527 0.95475301424872105 -0.076277966202724673 0.10356328149760335 -0.45570051227771741 -0.97474536737168316;0.58174269581523519 0.65625795907617046 0.0420694608251393 0.0070043977389422918 0.077552031174871749 0.53641431271357543 0.1405152211318888 -0.33920300756572774 -1.1124003318926516 0.8916526942678209 -0.47626865705052768 0.35021647223640545 -1.3362157777626356;-1.3218900858089715 -1.0095384582974252 -0.20187231540276318 -0.10261625680613801 -0.65193304035564725 -0.54010557384604507 -0.75335231969950145 -0.7471903775640597 -0.41402329763758999 0.98625235501929231 0.53235787908565602 -0.024386915093227254 2.0335428441990904;1.2634368533805571 -0.17857316818886754 -0.3126736670123087 -0.45897519206289811 -0.15409769652466562 0.43551555569651279 -0.70164407366117509 0.52359416642242462 2.8414051388105031 -0.72317255093260002 0.44921673667686002 -1.2433504158684534 -0.70583844204773383;-0.30038843592296594 2.1006423426057337 0.46082380454894772 1.007045511484155 -1.7982969082366387 -1.442917048528443 -0.70542635238082663 -1.1783824155959668 1.0947428298944486 0.017888504964281109 0.22653939350553559 0.96591255784077212 -0.52179249383614323;0.55999458614240338 1.1024909657198185 0.12104920184961099 -0.52047160637043932 0.48584256825161798 -0.62755934989120188 -0.10448265788783995 0.61130882899631667 -0.5165551539710983 -0.23398878052168226 -0.27253885614829065 0.3272438886536681 -1.1101273721411922;-0.52418653779940072 0.17368427474340098 0.013380256929552648 -0.2529456436619642 1.19949366986728 -0.41240206046830469 0.30490134232001986 0.20283200107288735 -1.3323925140885218 -0.33001398336023302 -1.6098968931800175 0.50338451254515049 -0.12519775640923925;0.67169098049706488 0.37884809059124069 0.81811815037510227 1.1287794491761363 -0.75802311275340317 -0.19309434160002942 -0.63190231414365494 -0.038074248057657384 0.35122775189654654 0.44113712081975964 0.46388963937926381 0.14091433526324754 1.0212697644986561;0.37624000748670422 0.46666791857804635 -0.40043560265709877 0.60164278472153077 -0.23265832609103559 -0.51185641947862592 0.068041492820146557 -0.00023322511689720491 0.42702946306470924 -0.65280148120535098 -0.67170516769535404 0.020454630299498507 -0.82787895622314256;1.8831356768231586 0.88192613365714267 1.3974336725283136 -1.2981556448363851 0.34118939634470885 -0.051270306815038226 -0.51562102013880118 0.94622773209764155 1.1595611288893664 -0.65529211863089565 -0.81058967852431396 1.2052673502077724 -0.53772742408479424];
  
  % Layer 3
  b3 = -1.4559747880366478;
  LW3_2 = [-0.79738088628292492 1.7978209827666427 0.57574991160268296 0.60452134484202724 -1.5427919730100066 -1.2251848908384937 -0.98849124087305174 -0.53121986239363583 -1.1920148366871315 -1.070888810581051 -1.7317082259732803 -0.15205784550636836 0.5623155536576625];
  
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