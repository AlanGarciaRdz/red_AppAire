function [Y,Xf,Af] = SOXMiravalle48(X,~,~)
%SOXMIRAVALLE48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:38.
% 
% [Y] = SOXMiravalle48(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.0208986415882968;90.9090909090909;0.056980056980057;0.0063552589768033;166.666666666667;45.4545454545455;117.647058823529;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.72046966406018376;-0.88874306540807579;-5.6295474072687233;-0.39739115508392153;-0.3555278181707543;1.7484518379541776;-1.330970871318395;0.58632367733828361;-1.7656934697112676;2.676890510809427;-4.2926543001994597;-2.1460923478029996;-2.1158811092979861];
IW1_1 = [-4.4986816300432819 0.43438586077895469 0.45085459127305394 -6.182405939576336 -1.1278793907971076 0.19986724454113244 -2.939464956068051 -0.90193474841490806 3.4040186710960727 2.1165241381428408;3.6406905475796747 -0.087631093811232269 -0.69956381233949094 0.66132615748821344 -0.22806402967781844 0.037729607447308869 -0.99765139350526999 1.2594289820777893 -0.17088549776723289 0.93174460700446748;1.2793824664074045 0.28266335789278263 1.9789651955472518 3.689768068936631 0.66129440809305085 -0.12834433709166665 -1.2962352106783275 -0.26823179841224026 -4.1210655470000583 -0.89777985438058505;0.90649870735663685 0.069691273360810158 -0.74974768545439763 0.85786366630112798 -0.86092267339362927 -0.34209982563746216 -0.79683205065876717 -0.0013173803444158638 0.41727936179525393 0.47109009469468804;-3.0137166201470755 0.21986670599523447 2.6412503519475887 -0.3155062367204956 -2.0858970239453729 -1.3990354032061652 -0.01266701283206984 0.81210387719519972 0.044960298168333274 0.6824151626988898;-3.0100192664086789 -0.40440653357160655 0.32196693003113613 -1.0675950781756489 1.6879888504931946 -1.0711444670657044 1.7709348380980692 0.26361709274730138 0.11640059781827183 -0.70534263182414081;0.80627550552438032 -0.47346413200694976 -1.9501459429365882 -0.4843467293384251 -2.4556174368802743 0.71809904225032262 -0.60983993595846164 -2.0361575453007004 0.1908755335307302 0.072856868090067778;-0.58449191425655445 0.61598609874797228 1.3895939770188266 -3.2730257446757203 -0.39888137306282567 -0.43288478779490169 -1.812421327333942 0.47171107609463847 0.98389140763252503 1.9376698991605303;-3.4835448022535034 -0.62160303814417994 -0.79463487672770761 1.5745807775184388 0.19632868000033812 0.045515776481339601 1.0044349942897217 0.21869592981976821 -0.22473782577563589 0.30190375832352273;2.0160639674188787 -2.2439459456457955 1.7999881849211927 -1.661517118544569 -3.8120891790432276 -1.9620146489055612 3.1016864501561789 1.5529812342972207 -2.2863033298874242 -0.55933153820697357;-1.4504411247374485 0.016966799888758932 0.49508701608479599 -1.6244082589537865 -0.61854275493618383 -1.0393252877201324 1.2526388544332037 -0.50157877388860073 -0.28629347002744177 -0.91777775003710671;0.19969289866783665 -0.069503619769072725 2.068701797957329 1.2346946611928449 3.0756889542355093 0.46305865794138651 -0.61654132465435085 0.40815818919096641 -1.8434046114777829 0.62335824684340779;0.44003148172816114 0.78021271553861149 0.028600902692622332 -0.0040491963574178606 0.23805975825236469 -0.47679378406307965 0.16921227698308752 0.25957122617929718 0.85627043860031871 0.46889512777521503];

% Layer 2
b2 = [1.1325299472220003;1.1502321438774006;-1.2299585361861827;0.58110936103325983;0.91362405029601379;-0.75588893299213933;-0.64358337751632844;-0.33701211045755053;-0.42834483959630565;-3.5481330971287468;0.15380649987903725;1.5637984125405204;-1.7166941138278033];
LW2_1 = [0.10481614600773988 -0.089146408302196778 0.034371647108058012 0.46101545227129198 -0.24489587676120692 -0.18763733679079034 -0.51302323574288011 0.060393665340237976 -0.034324191745831199 0.28749855107618044 0.44353212220762306 -0.080794242105624164 0.37036922809162109;-0.036555400120855175 -0.50755756822680931 -0.49054717711262991 0.26811930237709564 -0.13332008186850433 0.64053071762138181 -0.33184371080759223 -0.23269632439505955 -0.012168543287034705 -0.40433438242297104 0.81622427354245175 1.1357879449223449 0.2518160167193324;-0.4022976476168878 0.35684214617803089 0.85510990057753999 0.8208832864585045 -0.64989446961363773 -0.84563063452411613 -0.42741888232279812 1.2288937248887075 -0.40019807612170716 -1.1870879031589354 0.5132053841006291 0.059968161318252937 -0.29669202406326678;-0.9674834139696995 -0.8140067782203193 0.037799237218535085 -0.26827819331474378 -0.40350513303885516 -0.64605174202176896 -0.94352942500503989 0.65113438029526272 0.12136371543458681 -0.0819234268801277 -1.0675182040438536 0.15174725961897337 0.025822208561169749;0.082888619905452737 -0.47392224405847405 -0.15480515584133628 0.65229318404181336 -0.20597352439922323 -0.1136086451968953 -0.10893564631754982 0.03162022115897483 -0.16947573406191241 0.5632403207719141 0.68779582668607808 0.36816674782496189 -0.20739817988739573;-0.14486558058972976 -0.37410448097531224 0.24008930510415416 0.23364967687605404 -0.045383227564364761 -0.10996860103302551 0.21873302117727131 0.4325134886193357 0.53657844290099599 0.070934853223636421 -0.69351243469018931 0.025271460267984085 -0.017390706832889524;0.020427825111043581 0.87012476868169264 -0.19806552719704279 -0.45160240460962003 -0.049339139599521235 -0.54015350142003637 -0.87048439558381696 -0.14280167941431718 -0.13758247242889785 -0.63411327323068178 -0.59945411572782525 -0.44242777564807173 0.44666544713080575;0.33746701366148074 -0.88074232070177905 -0.0070377123730095241 2.3719911122836566 -0.34556029443523417 -1.8677690180491895 -0.18695658302447227 -0.53321761830738368 -1.4285868823040044 2.1786960445726868 -0.29437092812650723 0.27656352354682384 -0.1899970621664992;0.32108818457969118 0.083250886940779797 0.50783926971232063 0.86756102582051309 -0.3808364172866035 0.18046898974947376 -0.85625265063615164 -0.087948371307552953 -0.19393852470207135 0.41918830452566402 -0.85061743389370037 -0.45505541078965434 0.093895891279409047;6.3652442788518231 0.51068488800250578 6.2847742153569159 0.78816723947061207 -2.2943731121314794 4.4473725846480674 1.3922184086653475 1.2915849223538205 2.6334910827527445 -0.22041723379099515 3.1836735505090097 0.30250956831922549 2.0238749273880159;0.069789798688875818 0.94220847327909507 0.33425064651009373 -0.44851267016259877 0.12001058046479091 -0.7318282035549486 0.13173683497402325 0.10054578920871314 -0.096502652654180288 0.30659022479208742 0.51268525962604217 -1.1726630263492499 -0.47562994445217849;0.94438121916598616 -0.15606416144108223 0.017332705981321785 0.36342245721333638 -0.28882496115950634 1.1127365517764427 0.88225945612006584 0.077357241344619951 0.16052951571285046 0.25814401696714556 -0.73954153759941921 0.27256197166379925 -0.73892026434571834;-0.048535820561554747 0.066960300629096872 0.71140363796429984 -0.33287451874896862 0.13242948547304756 1.3631332910526734 1.3557049985778604 -0.18166214956589161 0.025011438768072505 0.49841821797367242 0.3842688652908634 0.71838310660576843 -0.51230977842380143];

% Layer 3
b3 = 1.4135546564808361;
LW3_2 = [-1.4571771367747017 0.89984259677141554 -0.10850048664726374 -0.010574797512171111 0.85063679465929232 0.59489309818856739 0.38245728350768005 0.081525753772327222 0.45299193489358197 2.998714562074325 0.7976927119744005 0.6812088135590898 -0.21873105918062113];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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
