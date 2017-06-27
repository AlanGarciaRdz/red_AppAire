function [Y,Xf,Af] = NOXAguilas24(X,~,~)
%NOXAGUILAS24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:14.
% 
% [Y] = NOXAguilas24(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;17.8571428571429;0.00666000666000666;0.02;0.0561797752808989;0.00588581518540318;0.125;4.5045045045045;2.48447204968944];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.9762897953331864;-1.2493840010226254;-1.5818903871723131;1.3708156984813322;-1.3489789707272282;0.11413833805412818;1.0420046119442257;0.09008146939806215;-0.046039689853139013;-0.31473491268896148;-0.89229125358721906;-1.7668294459543128;-1.0848476285965987;1.5938250263373661];
IW1_1 = [0.29915906856267399 -0.22339104646398306 1.2741051359433775 0.75511827487276451 0.22838248508113801 -0.20762958884984023 0.21635888803321471 0.55407287870653044 0.69787113751478913 -0.52177584436189428 0.016967158189311042 -0.80509009547784227;0.47035065833046596 0.084620038933421016 0.61905276475571458 1.118813396572208 0.49917610587409483 0.72182628341643573 -1.1516669673649609 -0.78511862496646512 0.23559309860134842 -0.70355278100197716 -0.73499639695274976 0.68300849794456719;0.41264705901744675 -0.60505464864069758 -0.0049034448379759454 0.32609295272465877 -0.8110232089145577 0.78296674818294154 0.54136092822141524 0.99733556897159281 -0.33910622442635568 -0.30346997964750128 -1.0953735703824274 0.48134741756331145;-1.2509700077944217 -0.55009408063250909 -0.21860217418259331 -1.1012447481014029 0.43446746612399328 0.45690139087382176 0.18865768161230445 0.18470543614539162 -0.40305694257783009 0.38443521903900324 -0.60467108087208232 -0.1652198169782694;1.6054293756672382 -0.99797561182219019 -0.50504067177509204 0.18482907368197776 0.095124505946109952 1.2727034653748968 -0.051763354414007659 -0.2461044086571792 -0.39231878478095161 -0.079647029042567222 -0.66129443438304647 0.53999835535964147;-0.48218139102029223 0.4896944962333416 0.25656800760499754 -1.2447814826169794 0.33730276806131615 -0.11680488507017377 0.11565931308955732 -0.36973940333096883 0.13414594491866172 -0.24199894875685452 1.3640063507982376 -0.79839387411595097;0.23879764204238205 -3.1440494642330759 -0.22961672503078476 1.3365933718071354 0.32594961543375045 0.29031075444391846 -0.1030115710421599 -0.046392777527265408 0.28784308648904416 -0.27455866982533506 -0.007116024266800359 0.15046098440851241;-0.64731930626286294 0.2917753994796693 -0.21446642606672287 1.561413215954589 0.12422959973245531 0.28550894500096502 0.10046375652730738 -0.19330062010315802 0.080777831868148797 -0.035163953477216542 -0.05085556172682109 0.22202567254804828;-1.6072540201149002 -0.14397599415447707 0.40982470629919154 0.99526644105688022 0.10602054346365374 -0.59594421409885057 0.19276899116449722 -0.26048732659536272 0.16265085375290123 -0.57090221989565682 -0.48434601922314885 -0.35171927273532783;-0.48358276430293934 -0.34492920299223334 -1.2787036962962528 1.6963464341831669 -0.069397807992088903 1.044096038624803 0.60406011380582725 1.3334188495122317 0.10958233515771276 -0.10812836178697127 -0.54380345044573941 -0.29901693449209449;-0.35531352855930637 -0.45132497678978123 -1.5011556980157272 1.0013522214046442 -0.40656846616554465 -0.36950300792809965 -0.37370693550199763 0.42440556627144232 -0.21857083832367374 0.47190294442679859 -0.56332590934566817 -0.068169654243114497;0.091042910941483604 -3.8255802950297682 0.22547550358793839 -0.72672908243352419 0.3593188887568603 -0.20948494318425329 -0.048892793755641255 0.079546233542159575 0.026822608136623873 -0.41671892231140656 -0.0071525475206351968 0.042691474578750548;-0.60820061894123933 0.018429018254060868 -0.22831063705462457 -1.8828375884947013 0.11112551580952716 0.28448580705809079 0.026208487241053093 0.39222965564301043 -0.009902623558145935 0.14789311193068855 -0.27012379583782159 0.081452328061160567;-0.0180107762882099 0.64026894837235049 -0.82014477685982246 -0.15208390837935085 0.5370503965583685 0.38300517758882974 0.23862391664904392 0.29231791940778301 -0.07696119423989943 0.34550756560340873 0.51033915066798363 -0.38566412644950443];

% Layer 2
b2 = [-1.8088295131528556;-1.5168162051650469;1.1574399898088479;1.1114117983694038;-0.23765917262168146;0.48816338644698531;-0.40176972862353216;0.60476913719031289;0.64685699013890352;-0.20820564207340969;-1.0597590858548478;1.2285891928696544;1.881446170473934;-1.5249529862539699];
LW2_1 = [0.089101155458532741 -0.87715094376128833 -0.0790355463930041 -0.87275544819248385 0.59608960685530477 0.6209597314611317 0.97540150199343323 -0.61320162526045607 0.21157897853528787 -0.32086510821116676 0.38388271149068054 -0.59399493927727187 0.061169838564882048 -0.42624206202296316;0.28347206242223388 0.34443395867334858 0.68617256716191821 -0.35678083949147138 -0.31901279882453748 -0.26420058634609761 -0.082219375563747157 0.83144722313170261 1.0775850199595369 -0.94069415728148531 -0.27200707143992287 0.433856406629338 0.37175867742817792 -0.17593965419297847;-0.24316178825287824 -0.21376241292630399 0.14998507062823499 -0.55493722427924463 0.098833171888388305 0.66723894762588154 0.18439485583307116 -0.61509460905754387 -0.34861133536379979 0.13486205561590697 0.46785078280667414 -0.80052401071080359 -0.41790095466121235 -0.21926068187672543;0.24870783693680693 -1.0559514434233652 0.47600326466737725 1.4068520658435857 -0.64565695991462047 0.24533373188442381 -0.15974036171270375 0.41548839082560363 0.12508185243039321 0.62665059027208236 0.45054271386213224 0.5723847455284391 -0.28906763310310246 -0.57839439446684437;1.1118085652431609 -0.027310137721755029 0.23352179877686219 -0.094669206591774219 -0.075977977819330619 -0.2012737582207336 -0.16730480458340843 -0.58722870081609824 -0.60074677490946138 -0.079893984243339086 -0.3018512634954359 -0.11787206319277282 -0.2564538342596443 -0.53604862559505373;-0.72510578500921719 -0.3278615116689072 0.15914986520770669 0.59915572239999204 -0.16931788363465025 -0.49058403441783632 0.35223557994121396 1.2368447590272036 0.18992849386585431 -1.1759795893015428 0.30040836923711911 -0.17730269098971921 -0.3060468631866245 -0.35393450941239157;0.6086221138325979 -0.5639161593964499 0.36977327211143929 0.0084920997506012716 -0.10090776764066514 -0.41080829154542964 0.67999143752789859 -0.028805477626431361 -0.004639786421787126 -0.46361797839996716 -0.50667906181300593 -0.8780848640705774 0.63100114521751571 -0.78887205555593454;0.40656060292114965 -0.2313394457393389 0.16893004258937866 0.71315796809974519 0.70430696567446216 0.25892330491996962 1.2627254060360911 -0.55960747244052289 0.60863955184881502 0.09498996052011606 0.4378713047010509 -0.13393740168241719 0.11037913026441112 1.5529378813701862;0.56929146204455061 0.36672045954804927 -0.29964866502688747 -0.10466862501328651 -0.093917516007363908 -0.12911564955823182 -0.15738256298043149 -1.2018603732266264 -0.10353312021491888 1.5744678193621566 -0.58119050531763405 -0.43363754305389191 -0.50213678136763729 -0.055570534375261132;-0.21813938473313571 0.89655433704536536 -1.1654023834699325 0.1096011620008962 0.0056871275990017719 -0.65156174621870411 -0.62510336049002013 -2.2779051931226415 0.10123256267101273 0.68464928900615019 -0.71498989460601337 0.57994417520703445 -1.2655976883803564 0.53599247738938927;-0.090929953333535873 0.28247983649441744 0.085184174933923329 -0.90413255506811196 0.063511447079066613 0.76232395241214768 0.23525378622834034 0.22507545389193745 0.40655912631890651 -0.2679085248234514 0.71903967809286351 -0.050980918107429177 -0.92306494941841044 -0.86442856459762696;0.52592903345611453 0.36540202239901565 -0.0021253619158226253 -0.34326237660620795 -0.069938471879242417 0.38153540139608932 -0.64937451654673273 1.5958101440560661 -0.29309669564475821 -0.10435689066699327 0.9469849874066395 1.0897426857716279 -0.46732542193762699 0.38121439631660908;0.52361944506156588 0.40923456395126506 -0.98386691388323377 -0.7619014312037462 -0.23344539673146938 -0.88071940246530378 0.27285781911253298 0.61525868756967372 0.31024163829569373 0.21339800445317075 -0.24650414444425539 -0.1799483840876373 -1.2194724566590929 0.91436840740547143;-0.40245249825292595 -0.29110627904032382 0.31684009202768693 -0.62222774999498687 -1.2112417063482404 -0.57975903973350418 -0.39038979477124042 -0.36234496035924074 -0.010825821060074466 0.25194732646746149 -0.68338823423942918 0.47456162070712715 -0.14436150435545925 0.30744658862058238];

% Layer 3
b3 = 0.12656288735857865;
LW3_2 = [0.8344550001985056 -1.1234856904318558 -0.67491958556605824 0.83692819910660676 0.80903336907148671 0.28575965118803121 -1.1200549985768355 -1.6189107634166107 0.21522522784039871 -0.92755046270236063 0.98243050287698186 -0.79755479857732114 1.0806658860298655 -0.44355150408978972];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 5.42005420054201;
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
