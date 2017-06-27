function [Y,Xf,Af] = O3aguilas18(X,~,~)
%O3AGUILAS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:34.
% 
% [Y] = O3aguilas18(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.42005420054201;35.0877192982456;0.0561797752808989;0.00588581518540318;11.7647058823529];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-1.8174050582599184;-0.37599888827445699;4.158029178754667;-0.13715695222304894;-2.758629390164097;2.7128865859847919;0.051082559539802591;-1.3109756601292433;-1.9397136679418914;0.30971671233026793;1.611817437861035;-1.7105984476989511;3.2929566362997638;-2.129938620266727];
  IW1_1 = [-0.76499366036619887 -1.8424996336556654 -0.58107080627540808 0.575158470097896 0.095078501713292782 0.25917930065357342 0.056993449024720713;-1.4515025591139368 -0.25062092066683034 -0.80308804307223314 -0.063437104759791238 0.10259407822288827 -0.14578796250279921 -1.3218493116207599;-0.27976994704289831 0.68334796829951672 2.3087382793250368 -0.020145681379065854 0.52986633635425773 0.72310246053711391 2.0705143963974728;-0.24010947116735015 1.1007195073194291 -0.75490167669558494 -0.3935600634387737 -0.6408406475359667 0.079444310142519098 -2.1741866269162209;1.0987264935682766 -1.3895215162697636 1.4522813896063382 -0.12749542314924517 0.45356789024161209 -3.5648285114634231 0.4231201300105939;-1.9350212129325484 0.52536531411923759 1.1672421543789786 -0.25086464171934214 -0.32949389909781923 -0.058305066549642216 0.45542656411694971;0.43863618084199135 0.087772144032274485 2.3224852657124515 -0.1422420486526659 0.15040553253041739 0.36377939849941976 -0.9284245455985396;0.9729718683060482 -0.53304767816219623 -0.50190118492811786 -0.016053953742974851 0.19298133087256911 -0.1089148903348006 -0.98547882738257175;-1.1321062771808919 -2.6952989637716454 0.28725367323748252 0.21921623963706216 -1.4937676813581269 -0.4073748227526684 -0.80923793281726275;-1.4565816255317656 -1.8981115348402093 0.25013641606632836 -0.48998534650528891 0.74809904974671682 -0.30589218435555865 1.202260527029442;0.70879171652763218 1.8750854198905427 0.73602813580413085 -0.11597644120889643 -1.0794239535658954 0.32249377848877803 0.46062900993120282;-0.37995488462520366 -1.1719065962057806 0.12912942725123155 0.80470926249872998 0.73999017135116851 0.17136792436827908 0.31783855657369608;0.095858749727547612 -0.019636846437731458 2.337494044234675 -0.042715042850181281 0.93450420745503915 0.65902605800334169 1.8076794968733367;-2.6129221246742418 0.47325660850162582 0.18721676211893987 -0.21734279305896398 0.41450763714159439 0.23366697897526931 0.63497827090598791];
  
  % Layer 2
  b2 = [-1.6862219059045724;1.2752736213827058;1.5012287222812635;-0.11947923727548825;1.5302067380057589;1.6253835583397751;1.2648806537801751;-0.76146636024300274;-0.5826955524718741;-0.30282762875677677;-3.3390333750100716;1.2290536381805015;-0.72000094174931251;-1.5524685024676639];
  LW2_1 = [2.2467973315443284 0.4121670648767225 -1.0492001491390046 0.76900056387594262 0.26464827671858465 1.0136780949489623 0.6739514402169281 -1.3038855836914984 -0.088030694646945878 -0.99488835335056236 -0.12597138274557773 0.060817235610302667 -0.23612513248245032 -0.41463060777017102;-1.1570284657465653 0.34068467232856425 -0.38360841035902626 -0.39229422224661109 -1.0364605228276882 2.0354244282223761 1.2733164478690961 -1.3991319294478965 0.98861505522627302 -0.79976568369078338 0.39262110809266115 0.068871325747309545 0.55551008586633144 1.3678938177782387;-0.55154767077532496 -1.0160111122353908 2.2898729599535255 0.79252995916549418 1.1479380139861093 -0.51741352061909252 -0.46106939205389152 -0.31699420629730096 0.051171998945148948 -0.36322530519978929 -0.71778254869147728 -0.23852946859715626 -1.3914321433955494 1.2268404561706228;2.2950353410117939 -0.29236009940406665 1.1380422952612543 -0.21752518352877873 0.0770175351505622 1.7641650069892065 0.39982057469846999 1.4227920990795113 -0.01861066057712844 1.0838431588662785 0.40744380956683407 0.077532983005796779 -1.1911623656326977 -0.67510455885423848;-0.52803904644552602 -0.37670376388244864 -0.30098286983336303 -0.14191057358666936 0.74475379145409915 1.2248610019200701 -0.30362742538043908 0.68471576097692644 0.4434663005678548 0.2363271353715779 0.89964339420941397 1.3786853812249675 0.58663872617988744 0.14063140361295168;1.459628890186718 -1.8937114610794938 1.157956178761181 -0.19833878733918117 -0.57305131958035072 1.0169939463880724 0.26830487677322967 1.8129232315887509 0.28751206909761323 0.34197250744108759 0.00086896793088898916 -0.43062520829542678 -0.16195121700141624 1.8405064820979928;-1.6139323660496461 -0.54319264721873506 0.057621609832684204 0.74951015693325862 -0.47077737002119929 1.058876309094239 2.018631653154082 0.046324713731114658 0.78594364514406612 -0.79386476506569192 -3.6364602767851593 -0.29463852237082466 -1.1629902091824678 0.18563649222214818;0.21722486048095613 0.63853031190937304 -1.1395125188081037 -1.9670674791500298 -0.11165107261338665 -0.017572103139737279 -1.2973793522280006 0.4270986093250505 0.7212143213592862 0.95362211806893171 0.9817043249046753 0.36035984118530034 1.7277781374980448 -1.9256231001795701;-1.6146298101178704 0.65943019146648785 -1.8293072363362282 -0.92986042427971938 -0.72959695536639046 0.32271423999532217 0.92096052760772618 -1.8036907318652597 -2.7157996132196125 -0.24259580531166791 0.5701595336454528 1.0972398372721981 -1.4792202400090979 0.80257097472323213;2.7401830519456327 -1.4605173669419198 -0.091003829206901171 1.5052706087954939 1.1967991251094636 -0.39709894965939907 0.56069907549229203 -1.0513797731329748 -0.0027936368499641047 -0.55835637902721347 0.35159734187027392 0.1070659385744713 -0.27064686412418643 -2.1735386042403841;-0.78947472844318978 2.0679765662061382 0.78190477677525105 0.21292270055073181 0.91498330677038264 1.7985997828137905 -0.88725600275003413 -0.92467267926685048 0.16342961473439768 0.24001800765256009 -0.72279779470062722 2.9078489520179178 0.28819194937142201 -1.3271605025501585;-1.375696242545825 3.1843697270142237 -0.83440534218440776 -2.022254160263421 1.3958904548126723 -1.1700973603053886 -0.73663300731843739 1.386316594705943 0.28813681828283227 -0.17447723117219086 -0.51251484301363215 1.4881597905664625 1.6483825343743952 -1.5508974944966196;-0.7029904015635402 0.88036491363774694 -1.0716664287680622 -0.67702699189397286 -0.2072995438861831 0.54115150755860175 0.066196567541397008 0.75406636368000057 0.21547856125344383 -0.076871290090257727 -0.065770473437986171 0.34007331688301295 0.9538059341195696 -0.26466832715989469;-0.90102860630619908 1.257620393833188 0.90459799876083558 -0.78228242773416079 -0.40544122990653486 -0.58600733375720138 0.25904964142843623 1.2257046111470531 -0.063371604058014674 -0.030303901542664019 -1.25544548013265 0.094568560044397232 -1.3277945291134938 0.09685318960497899];
  
  % Layer 3
  b3 = -0.61939050709742238;
  LW3_2 = [0.60278220150339268 -0.29405616776659882 -0.76449157679011759 -0.41397997909544887 1.3161304768119415 0.27477398094424771 0.32066099172717449 -0.39947495472839817 -0.24644788255538108 -0.69809048727932521 0.48409043458901263 0.39603067169532979 -1.9374232693945894 0.83585406909381421];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 11.7647058823529;
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
