function [Y,Xf,Af] = SOXAtemajac4(X,~,~)
%SOXATEMAJAC4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:22.
% 
% [Y] = SOXAtemajac4(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;16;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.8117822917484592;-3.2055157955116438;-2.2188461127555108;-1.334211273464819;-0.22546443387553305;0.4868427273471202;-1.941460754027639;0.30905555223994335;-0.39467882502099866;0.9174338077580273;0.23655743641878488;-0.024138736460826645;1.3827921562142336;-1.9539979529535483;2.501107548189204];
IW1_1 = [0.29915985319058241 5.4835288029157176 -0.6775160617998911 0.53249592702353232 1.0003647218608089 -0.16766333983638262 -0.10381621720288957 0.080094830903665121 -0.071980648965169633 -0.35064617361337241 0.27636701047921453 -1.5406465442180621;1.7926388205863661 -0.13612852083044269 0.20705489751061465 0.49431629130787713 -0.33430633261562481 -0.00019679698556158629 -0.30029776887927084 0.12470171589103415 -0.60190976300583665 0.31427976343028785 0.037200991507773493 -1.2827251011829679;-0.36767516277259615 4.183751947806031 -2.9129622037510718 0.77472867232852327 1.246259836238031 -0.032958983948072347 0.035895984980143777 1.7878166231137087 -0.75777309320096631 -0.072015008460393992 0.22069066879860599 0.8023631486568672;1.4851522980295588 0.34289687341657871 -0.5112935898721036 0.18009249089062174 0.1208267849986125 0.14858992511204108 -0.6285053758409741 0.16534652978352546 -0.37809789197271665 -0.28008638971407257 0.22649368420023092 -0.48448539579139532;-0.82291552925658817 -0.93378816896235728 0.25043657610257986 1.0587084097730857 -0.11958354414490383 -1.4500445103942379 1.0063391533598818 1.6616715998272409 2.3278045221514505 -0.10139153920313261 -1.5560917492862889 -2.0305637723267855;-0.35172592699014787 -1.2582143098274345 0.63876019263055872 2.2831598335066219 -0.9931152795407614 1.2660015121809614 -0.14903677463577353 0.81784743822582473 2.7858356882277642 1.3224386270549555 -0.04549248565668694 -0.38276969361656288;0.38314340745598002 -0.27597890284024001 0.4309927972323998 -0.31272037728470525 -0.30154531048281158 -0.035771882989765566 0.1029915492156754 -1.4182530786941596 0.90903443119262328 0.088945154057005441 -0.13921629719626086 0.13173138098777193;-0.047593641437383934 -1.3667050689800182 -0.73754417285439611 0.0060042851778664367 0.25767123772338518 -0.15911709690921624 0.18875043505150296 -0.22742613609405243 0.010408152361140694 0.13959469639696009 0.3374283632185569 1.2154908874001409;-0.28437063567910559 0.34786236873650145 1.4169749990542235 -0.51733422057112299 -1.0964687031993967 -0.82719283115667686 -0.076639070435931878 -2.5648208641185404 0.59861960611269627 0.44810488768843426 1.7831907740175135 0.70383594861573062;-1.8939967810373464 -0.16529687892651512 1.5729243777201465 0.14055508598089686 -0.34304602487548419 -0.22839101833048556 0.10533564126903985 -1.9912276199551076 -1.4295383379255573 0.17391306636358519 -0.61727222134175463 0.071358516646752579;-0.36918364474912818 1.9275275353200316 -0.65740834863325182 -0.32648378091858371 -0.61419697843624299 -0.27411671267586152 0.096705540839296764 0.047152122077536329 0.04217522685538766 0.58035271386049647 0.49471936173325759 1.4485771158972793;0.40335940733348963 -0.075314803233166402 -0.83123316059196461 0.044447685160899079 1.5824691077024968 -0.29029091477559094 0.22036153156607005 -0.24268997244355039 -0.23353870087119216 -0.62754210562810497 0.12183411329600793 -0.445018730885054;-1.0664703544247731 -0.66615207479880589 0.51475440294936892 1.3836086504583567 0.66206005506930432 0.25722780581297044 -0.12988744669197935 1.7756562001960075 -1.2404707804980544 0.10789338688585902 0.25945012404286355 -1.9700389343428351;-1.341735371079736 -1.0085280774632728 -0.71334635306712546 0.4568345190835616 -0.090108779715921822 -0.14394454777401797 -1.0384116686694187 0.35493777072792804 0.6058645142046214 0.25397686897314248 -0.31513542597559663 0.27284365404194244;0.7701549942687842 0.22400636217403891 0.30370547123566782 -0.28023352108500177 -0.74366666625730904 -0.013234870703790196 1.470779768847414 -0.20264693283751367 -0.089830009387266097 0.31915816871846525 1.3427868452682288 0.14225474603522328];

% Layer 2
b2 = [1.860628368001531;3.1971380565245222;1.5489945007913248;1.7337301092344855;0.93152708502945269;0.7585080325620891;-1.6848645360858256;0.62164039329360155;-2.0747305376239003;-0.44693922594426228;1.019820972817437;-2.7945310883154879;-2.1039561199426209;2.521545662501905;-3.1980505087803159];
LW2_1 = [-0.20133996995256609 -2.5929273123177667 -0.13570954744003444 -0.50788819279612019 -0.45415057681719684 -0.82675855580204316 -0.28811320387706946 -0.20224266895797935 -0.52009194799159197 -0.39426796493185495 -0.082362202924501818 -2.3825415837540769 0.22516092999880813 1.1704238824160071 0.33962543029307374;-1.9546982594498747 -0.11390630591335922 -2.4678363410882818 -0.9779192834587046 -0.0055435170275010513 0.36826522042923576 0.36571119388043505 -2.6632637204967526 0.49393090554823998 -0.51628978650548507 1.9176817028164277 2.099821771960749 0.14884658457242042 -0.49064458899346269 -0.49339874820568308;0.47688564290515978 1.4389570974125638 0.30397250157646827 -0.2228756978315648 -0.15881148082216115 0.097489513229712846 -0.1153377566445237 -0.98956760758001416 -0.16774279881299345 -0.77944697843472754 -0.44071235841781736 -0.31930457150232872 -0.73954204243543264 1.9346464371448462 0.40744724056904613;0.42575211192178131 1.0844574367797086 0.40742595406413112 -0.11021548602032902 -0.15443823472099341 0.15566079879943215 0.4396664745050976 -0.66143740353512803 0.096273885155433461 -0.23110450009150726 -0.09848174778065745 0.0054442853546422393 -0.16914496386297778 0.58147783822121346 -0.77201076014418302;-0.74050226075976722 -1.4459307264566468 -0.2850916264401272 -0.068775185893065083 0.9801390602879243 0.40050607239100183 -0.97692521426165657 -1.4453174124514241 -0.49362952708975222 -0.0034782808135562834 0.74974962648795029 0.11547029031322492 -1.2793846916292368 -1.297206230495362 0.054056870614054155;0.20146492333028418 -0.18798096241634299 0.18556713038797068 0.33359215111004625 0.3787089453374215 -0.15094218049767708 2.388698865527024 0.0040123039712998557 -0.65288232949021507 0.96472008858989933 0.31890142029502999 -0.20574140477453448 0.11028309618049735 -0.27945879520049011 -0.6301516051470023;-0.1916556001982993 -0.62361641446457561 -0.74646224497954461 -0.69273903095230116 0.32411484903991999 -0.60488097875710123 0.31569463773012618 0.19119765817107529 -1.0572955719584671 -0.12500028003581962 0.76684442991495028 -0.41979147708390674 -0.21782558071219707 1.3880417687346762 0.48076307360155157;0.1574445349969118 -0.16226216818549941 0.15178398714112665 0.63112151645751147 0.33077693292377219 -0.022013238779581553 1.7692844318874603 0.093987848376193686 -0.36777525187787014 0.95157637131920714 0.1626339298558184 -0.12462926586388033 0.10265637009760398 -0.54264021385937655 -0.8402103998685434;-1.5031951896437448 2.263085834250512 -0.19550680031060569 -1.9491085630699407 -0.20454942517540667 -0.18852119284907431 -0.037411989353305919 -3.2591806278400597 0.048452854678512187 -0.74814737546307508 1.3244227698981224 0.88960735022967929 1.0011909946763471 1.1706190271585917 0.039038174067312401;-0.26895758566733485 0.32902776283169893 0.12180036384960324 -0.94181517532111259 -0.22551905445222648 0.078796296714703687 -0.94718752994437549 -0.085056747710287831 0.58950148457109353 -0.58124451252698128 0.045591824771151458 0.43285367491146121 0.38789689235571273 -0.95502085921978064 -0.22027299576317716;0.069182154917936681 0.090950234673775276 -0.69051536991031848 0.39782061861789275 0.022325621099760454 -0.06919994240917357 0.048091104248827558 -0.17950551782800533 -0.062326333990651857 1.1358281976159044 1.6543543315175 1.2077769804932856 0.94633339738841493 -0.42342648453189924 1.6830975941185402;-1.4382334888874189 0.081361361900238557 -1.8910431796374079 2.1085613560356919 0.49178558974242581 0.39720637249925961 0.22244602259281601 -1.0987342276941581 -0.40462581811311588 -0.25443677983725405 1.5630304267931763 1.0255838588506692 -0.054141297677815392 -0.6904979795070405 -2.3574337586936736;-0.29295600942197453 -0.031820553227459136 -0.34172239518398662 0.020680209776873938 0.18535831060526498 -0.10612262735818274 0.6453945934839278 0.48075052504420657 0.3933452571430881 1.2774379971538392 0.34823689529174373 0.36220056757781144 0.77165137133176698 -1.949760973269119 -0.93538419236048376;-1.2520976280009732 -1.770665449133797 -0.29037172569743863 -0.78759524792607705 -0.53776483299715783 -0.0036604407061847613 0.96702869513880862 -0.65349116640464444 0.29032180692333254 -0.092205238580072096 -0.41437875051738532 0.62767628128355646 1.0405975521119497 -2.0274365122704721 -1.4359283202182169;-0.33705074613898212 0.29483946853778376 -0.060848021394951893 0.081847569477105253 2.0869457962766167 -0.22358310193591954 1.7242786910033825 0.080263145755689394 0.43684360805691802 -0.94579954591578341 2.3344911534501911 0.62818954337607646 2.5503824593521731 0.52350410711107564 -1.1505187332579856];

% Layer 3
b3 = 1.229548578860681;
LW3_2 = [2.1252849534852363 -2.230401115410547 0.60614101382863916 -0.81934509460219029 0.45823028958715079 -1.5205265425922041 0.35957611969414044 2.3652421265404815 3.1249832174474781 0.81964119650246547 0.47785683636124415 1.8227591200873063 -0.57625089502933347 -1.008433582045398 -3.1360914664437165];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 166.666666666667;
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
