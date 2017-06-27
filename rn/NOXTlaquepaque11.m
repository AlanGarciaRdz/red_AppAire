function [Y,Xf,Af] = NOXTlaquepaque11(X,~,~)
%NOXTLAQUEPAQUE11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:19.
% 
% [Y] = NOXTlaquepaque11(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.03490136570561;19.6078431372549;0.0212539851222104;0.0523560209424084;0.00632111251580278;0.294117647058824];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.7353329254970213;-1.4234722871311385;-6.6785663960812798;-8.5945499729075419;-0.78482071418513466;-0.2246448536862358;2.3449836244441129;-0.48676562723173628;-1.4653822482429686;0.10816132945647899;2.1623034866546345;4.3251679032322832;1.0472123592381486];
IW1_1 = [1.6445765492901332 -0.78688923938334843 4.2476035072703704 0.98774645241735115 -5.7977705720056241 -1.0857251784042727 -0.24668790465288004 -0.30871751344203419;-0.060033994095128586 1.3355742259858083 -0.21724510322632681 0.50624405813105844 -0.012415257246425247 -0.73771497388300311 -0.26898105871255218 -0.11185135943658996;0.096012578521996517 8.8024144919430771 -0.7294904642031419 0.43104191032936401 0.3538499948225442 -0.51697751595500196 -0.10671195192711819 -0.26214640282304813;7.79021442784095 0.24390226266704523 -0.3052515784141438 0.22723395436994517 0.022941416994433552 -1.0615955800866883 -0.10297278011669261 0.3393728932832879;0.71295971564071681 -0.96260875994688766 -0.13143798392719422 0.38324679130291078 -0.96316866320084671 0.19622635748779355 -0.064619055934139497 -1.6165337564227971;-0.14287172721619212 -0.42233092564925856 0.20247203062770808 -0.50725248923941224 -1.3893766863200954 1.0984349213962312 0.20575949466377799 -0.19333704697714471;-3.5825992972119352 -5.6290742666000604 -0.033776639700801234 1.4132074548666118 0.47904748366448729 1.8825889493201946 -0.14559109031296438 -1.0706983138867898;-1.1392334843804146 0.28881416023103101 0.017842891288520082 1.850032326722223 -1.0168702458083221 -1.3048056596058104 -1.1693887273108456 -0.53823344609231016;-0.20434352011614001 -2.8319792141819438 0.041834003337399499 -0.74926253042205226 -0.46725892826006937 -1.1120145406731423 0.11479642833368586 -0.88887979453682864;0.20899205729081174 -0.61993648226075704 -0.065186527305247405 -0.070985111326318157 -1.0828553417374982 -0.41049445794861933 0.00063770896333858844 0.07056715320050462;1.0786085999242838 -0.76052283899931439 0.6637920097722132 -0.55518187534029551 -1.0560224391993724 1.1507543014661854 0.57334365739745596 0.11463020244797209;11.026226757964318 -0.65422093693681782 -2.8877327625938096 -5.6856022225326059 1.7896613616802917 2.3553526922108707 -0.36091165193744934 4.8216085178942558;0.17442771590568684 2.3752399030641422 -0.014311545510735942 -0.039202860729153063 -0.22983299020849268 -1.4016149976331422 0.41281274909934684 -0.75029721448145315];

% Layer 2
b2 = [12.038119430048093;-11.213129921558128;-9.983519215447517;4.7941353423330986;1.2786703028549908;-10.295192033770423;4.3663413023962638;2.4317561176267364;1.1780856621653928;0.55709298020570186;-6.1564563228486193;-1.2268778184101847;7.3057159898266333];
LW2_1 = [-1.5954127483464424 6.0749101529463898 -1.2546098191892558 2.3547951428199241 -1.0425391840506375 2.3848663756931141 1.8017513417100033 -0.9964147064854405 1.6415604209580665 -4.2967831213645482 2.91752673605122 1.9558872386561095 -6.7578430659829642;1.4073100635689448 -2.0602269023240511 0.61529737857261402 -9.6985139623918535 -0.049996115667565171 -1.526966488255844 -1.1058039850904171 0.89533461924772173 -0.76720571360370371 2.2887545720313587 0.21420629012673931 -0.78431276712383813 0.81305533113846962;1.365094293743202 -4.4135843875203253 0.84897793740681704 -2.1991236643923311 0.59404667597032412 -1.8263474609911245 -1.3992381560810796 0.79341685062032852 -1.1502382010452514 3.342955402983077 -2.1517122993230604 -1.6361292288590903 5.5272317541701552;3.7511967993406712 3.1754296855437758 0.82132666462699455 -3.3587506238692324 0.8583408580045303 -3.5358024022118117 2.1924468426638524 -1.2124841044653407 0.38257351009894036 3.1371238906078167 2.1008191284838436 2.2858419201679343 0.66014574378462976;1.2813572515159417 -0.48350087756192411 1.7720017699708452 -0.088178177364214752 0.88137853540576894 -1.189965802085545 0.56239314670230744 -2.0461172017239586 0.30212923193826968 0.67972423128650106 -1.1851931245865923 -1.2102664772020026 1.1162774265326523;1.3792525826051525 -2.3724871099795997 0.71572647273228307 -8.5544288623250626 0.044661941052656418 -1.5636653347445202 -1.1554749282650325 0.84302739329718968 -0.85214155307532002 2.4230307440635643 -0.026913392471224026 -0.84820355181636942 1.0052294774778092;-0.33505661524892194 0.0081583723366659075 0.25447434964373783 3.5992939730295177 0.2800082777935225 -0.34256418981130576 0.28644932235003751 -0.63702671203836791 0.081101301870753123 0.11998220697637646 0.49044184996420781 -0.037381783035017394 0.32290257947530054;0.21589830309670185 4.6225104022822459 -1.4977331872644799 -2.9116311475953407 -0.088498671044464322 0.93153766365789326 -1.664962488901895 0.96175613260004944 -1.0362870970174731 -1.4995263357762767 -0.2147825020420368 0.18395778539811192 1.0658243350082948;-0.7056552167592457 -1.2678964751960933 0.17975511781589124 1.4706121137784087 -0.5884027591996539 1.2256790960725599 0.07705784980220115 1.7814401513565599 -0.49980767981499075 -1.1817058547646528 0.15466882183207073 1.1481510245325135 -0.98633210037544716;-3.5427654069560646 -1.4134687777192951 0.37592240916205832 6.2694864548775948 -0.7528164565730544 1.0677281256623796 6.1785416818431376 -0.60155973473834479 1.3880627142427631 -2.4790032302496918 2.6560838113850767 2.0527913934245023 3.7375063995117719;-4.8048606998914014 -2.4665586985775962 -0.62895502137201198 9.5068712696926632 -2.8965590552093188 2.2983237921681661 -0.74074697155864166 1.8245326195241143 0.61507813796535216 0.13747533287296709 -1.0885736320673653 -1.8957140624603843 6.989611394046749;-0.99881365765765373 0.30930216776371122 -1.1083910437056832 0.11254170262472042 -0.034441453439465412 0.37499615595653579 -0.34325960472285844 0.3421823334555778 -0.22979359129916746 -0.19776367467996675 -0.44935152725616184 -0.040451899608615428 0.52134945573157154;5.8592757565818063 1.3833854147298286 0.94208180607535774 -6.4227514343591192 3.7234137203758215 -2.7446357284033089 0.20861472525622107 -1.9733754202787981 -0.49895613315042997 -0.67253716311506517 1.0434272201940158 1.7473804683938807 -3.5055400697705785];

% Layer 3
b3 = -0.41033101063182792;
LW3_2 = [-6.3746377054217005 -4.1287894999485575 -7.6437445192022846 0.47052934287763498 -0.23966417905486842 4.2740325033955475 -2.0360458666135912 0.18911767729611997 -0.32699606293077266 0.14737207841638308 1.841205440691819 -0.30887524708125935 1.5472230567496033];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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
