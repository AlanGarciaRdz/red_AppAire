function [Y,Xf,Af] = O3atemajac24(X,~,~)
%O3ATEMAJAC24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:37.
% 
% [Y] = O3atemajac24(X,~,~) takes these arguments:
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
  b1 = [-2.6483541931118091;-1.5273178272281227;-1.7531453310264884;-1.1985434447597683;0.74500707804101718;0.75217292330949259;-0.12612624324985627;0.84437536123476042;1.0317800023910872;1.2305347478252511;-0.92834228146570807;-0.80942384523385369;1.5011051323350797;-2.4096991635373612;2.3906309244080197];
  IW1_1 = [0.32874649469568429 -0.59021936359450267 0.32092856241875378 -0.3667022333898271 -0.16506763706179181 0.68722456435699086 0.27263542539948737 -2.728610293756931;-0.083384398506947288 -0.82847141375269928 -0.62692320153853864 1.1116905290109125 -1.3748899125020209 1.2930217249912539 0.23144231149525762 1.5468414589273582;0.98771257288482661 -0.89751872479417438 0.39369116784243147 -0.4216988382477917 0.64284635500739895 1.8158818950322713 -0.43310391812508986 0.82011987619773896;0.12399621762664138 -0.49871453458740689 -0.78897815837053642 0.10954568787370828 -0.23083768460612153 -0.13490381867727405 -0.78102451096199466 1.1447793894449374;-0.70392438834467397 2.3579471271391803 0.52681345398875701 -0.56779774040007003 0.36025424838333514 -0.62799961479108624 0.13267542548083588 -1.0588223051896537;-0.85562702264191703 -1.6166838405929602 -0.12050299498743315 -0.029399743624170822 -0.80149460786413351 -0.58115107855891357 -0.16843936934204898 0.77238149417057456;-0.67057306899375468 -1.3564199884722357 -0.96127935481177385 0.23308971774313553 -0.75637403781821311 0.99519318789404321 0.23724590657102435 0.11829270952743329;-2.4991632722352835 -0.14514222921860093 0.27511323796799658 -0.13069068032545136 0.22694880698804118 1.1238635659741496 0.12993687996860548 -0.4747962455141389;1.4102728285284025 0.74729219536921676 0.81173516384563293 0.086061316227450085 0.14754378921878405 0.18576133168654724 0.014006232239714731 0.1552889946040247;-0.13919326091279013 -0.38611047064531534 0.27518410464142062 -0.79371150744581742 0.90951937150075446 -1.5643616350659284 -0.17269789893379123 -1.8671078525761329;-0.57057889993438937 -0.94264168546576454 -1.5749271636320379 0.74506406072210607 0.94603212350511079 1.9719057069909858 0.10496324460059664 0.86830423279778524;-2.4468495130029164 0.31450303333370622 -0.44989287663302097 -0.10764586968639785 -0.17262509098518464 -0.55945879709648616 -0.024151978746873623 -1.0227543211359089;-1.3047209547544154 0.65009945853991802 0.42893915328413573 -0.64844528462800288 -0.82761657834182767 0.40609235008511879 -1.1659885732390987 0.71923230649554193;-0.93362679961573225 0.74392449093449464 -2.2316885554882577 0.27561926531732917 0.12857967202475443 -0.14776666504779845 -0.21077303550598317 1.069057471556959;0.92833715943786399 0.5287758838313692 0.044179973595453087 -0.80477612325496717 -0.7851403950657817 -0.1093162238811896 -0.16399199148944801 -0.34839644457919811];
  
  % Layer 2
  b2 = [-1.8265671609091965;1.6633530693109806;-1.0027989907927901;-1.0026492480393381;0.80664876529504059;0.70297987746134205;-0.52024243893242395;-0.010100564155161435;0.26539324065265407;0.30409496208827114;-0.97300733917776627;0.96923388371178243;-0.59286126687437479;1.3991395436941625;-1.8980510361996663];
  LW2_1 = [0.6653314939254813 0.14745260152392023 -0.27577723446685926 0.27167581230954019 0.97075345348957476 -0.6720789809476323 0.4281755284223509 0.6438798914396282 0.3361127221902272 -0.10520553761523974 1.1769824740752355 -0.4413312904852667 -1.0099494612552311 0.32266092146816411 -0.19354125568893177;0.17311451185601798 0.80373630890009029 -0.71956966011473222 -0.38646750025213794 -0.52646515810297068 0.1481008820306236 -1.2278509147740462 0.14695890411388979 0.11170147186223173 -0.3782692697665031 -0.6495401154318533 1.1382527245905654 -0.5687410198034919 0.41847845569066455 0.97830464190799893;-0.40371492511976265 0.66265861262789061 -0.39635042546327165 -0.13279354598682752 0.52064668109200141 -0.25376726147199979 0.4544354754852567 -0.45469887879669318 -0.21073117602557007 0.09218155091508573 -0.33225511288480769 -0.61012178582487198 0.37831009670183974 -0.84059239842191313 0.07880880479337804;0.57917447069424111 -0.3471519565165806 -0.44068571523078842 0.59571328237332455 0.50225073415090904 0.55509734383461218 -0.40189101259677135 0.18660059333603887 -0.094173834864098041 0.050581328688464926 0.37482888573975509 -0.039070126575941382 -0.777179201845696 0.23884362641382489 -0.697526558001894;-0.66233519571549959 1.0320914006652147 -0.36357604135692129 -0.073041963020669162 1.1491687732008238 0.43676745316734489 0.62971321798638391 -0.45292636073997289 0.59059545005464065 -1.0351662931286933 -0.47409634158732106 -0.081288795312539255 0.47405042351677079 -0.38949838853604329 -0.26727640199146241;0.012772078208748499 -1.3291189789269389 -0.013126504666456176 -0.52087445341295624 -1.0315562780607266 0.41422955071053519 -0.64350202352080887 -0.33632407935704056 0.35188373903739434 -0.14412311564198277 0.63133882250926321 1.4061728479481059 -0.14654750116555418 -0.075587233061708586 0.99813996837714558;-0.4200741478186733 -0.41762989741615741 0.14104362744461268 0.51080242950505206 -0.059173696570240318 -0.54536551846966086 0.33910769231583365 -0.14698180440910036 -0.11919289378404256 0.058170570790820317 -1.1934204453778554 -0.7303581220553983 0.27187350736713983 -0.36428889076697568 -0.56287072537033844;-0.20427914825289223 0.84788745562061618 -0.30598044111927042 0.35347425588627268 0.92397749531853357 0.63416808605306008 0.12521726238718972 -0.94488969880963203 1.2724470124388976 -0.83648666012481332 -0.19469229312805264 0.093296818545783811 0.20913967634250649 0.30731220536955478 -0.62085438038944041;-0.075125713458796498 0.7222844689977983 0.71627218174966112 0.36949499035715577 -0.21980833733856353 -0.38713029426183965 0.1207069221721089 -0.65450930975639676 0.45163255429732946 -0.055122642146614664 0.045215403590903029 0.79278073437058738 0.56874945862962933 0.28411562093391235 -0.30487374799827982;-0.087891441291559388 -0.89004008299724646 0.64416055851785747 0.97190599670810096 -0.0076284927470826602 0.08874770166978041 -0.1668005820485027 0.13604947436164311 0.73668285788196852 0.28771968536541698 -0.54300147507719909 -0.21879875116186379 -0.23518070199247862 0.65501884404036448 0.0042008678323909483;-0.36988225577240796 -0.36293344921217174 -0.32290451971167622 0.81839317604102346 1.1139718396070153 0.12560108075862902 0.30295923384223511 -0.41516992447971612 0.44572324035579075 -1.0272490331799076 -0.17472594856870416 -0.061242012034779407 0.13976944751076667 -0.8380054171830279 -0.83002693013792228;0.64926338378084325 -1.3425560839242436 -0.13436140292022153 -0.43123096067550543 -0.24198737275791157 -0.25471819740830387 -0.89581759311911746 1.1996372372220008 -0.087037047676137735 0.45242148136242277 0.79602955176317058 0.58111215167642949 -0.73094400820793737 -0.69069547768756412 0.35013979494458503;-0.49727046878594611 0.36423363552408972 0.55375804769479353 -1.052986715441808 -0.18845485880071661 -0.2118367106564687 0.46263387369036901 0.26497984191354723 -0.51759504541575219 -0.19982973400402923 -0.052828549470053027 0.35396527907642028 0.33437471866191859 -0.35430820157573123 0.81433978004087904;0.53217493906820779 0.16507008497885034 -0.54611053337796289 -0.70024798790316056 -0.43947118619088921 -0.30013365443766926 -0.79285594776782842 1.0106770031156664 0.12402605613437825 -0.11429658240527509 -0.49090418677267245 0.11051296582627615 -1.0566438314061695 0.088655519222666818 0.51538611501763965;0.061672020150285271 -0.74616511790315643 -0.41064723677382342 -0.54979532594064806 0.68944756691589626 0.016522607907182019 0.30130730648534071 0.30570728671853409 0.087509394172839261 -0.53126686573739468 1.0344655189210981 -0.87312502294909156 -0.019817250600781107 0.33711380222439685 -0.77212841292669887];
  
  % Layer 3
  b3 = -0.19384867383811707;
  LW3_2 = [-0.58453006925421214 0.63280739975470113 1.2827665968502964 0.77852097178759749 -0.48073718031363877 -1.2706214426101936 -0.59888277175876348 1.0306011350037649 -0.83948856886537015 0.95152353752838181 -1.3712966977659984 0.85032375102502322 0.95765493504335131 -1.1515967438298043 0.93406434577635666];
  
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
