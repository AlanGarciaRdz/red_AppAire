function [Y,Xf,Af] = NOXAtemajac14(X,~,~)
%NOXATEMAJAC14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:16.
% 
% [Y] = NOXAtemajac14(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.04040404040404;16.1290322580645;0.0210748155953635;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [-5.2447525193413487;0.35277109731749984;1.5144373760481402;-0.97158417011876441;0.9705215794952996;0.78388515107250023;0.10909669889425253;-0.28578207858994409;-2.1704138589275237;-0.30167079975318489;0.80603084579413042;1.6714603721142276;-2.5507783513852833;-3.5456881274455037];
IW1_1 = [-0.03200269003039706 0.64554695418393659 -4.2045805384870025 -0.36832935158912428 -0.42118693788489181 -0.51167157539206687 -0.058497689716359075 -0.29255660480713142;-0.29741724457084306 -3.4441801482932797 -1.7034914660907912 -0.030730698491309782 0.29741352467841425 0.31266781102592867 -0.190915073912717 0.21216099397216034;-1.4269513219696197 0.026101156421087748 -0.70251187294358819 0.19181427086201366 1.1212931812862059 1.975097981932062 0.27666972138362161 0.63180738598848396;0.63589486792960959 0.23690869152942601 1.3049133410180567 -0.44945873360822891 -0.30181399998484681 -2.4128865320191677 -1.1481124372945473 -0.38703851354598179;0.34698470078083571 3.3714553578985846 -0.66107251752058172 -0.031858225297164491 -0.69909424651267205 -1.3751581511133508 0.16366134129357388 -0.078050396683889647;-0.66795768344939077 -1.3122907739729852 0.095398561753876968 -0.5578182455359818 -0.34039821624941569 -0.76011511593914027 -0.56720815112259881 0.66786691879763849;0.3935581940868077 -2.0163107354431333 -0.66608606360382772 0.65060519028007247 0.23011483573884822 0.39652176431301339 0.28828922649104255 -0.18671009932393723;-0.98763879783406516 -0.033078216419077378 -2.1774887029437293 1.1969837931911287 0.11453404727731595 0.077531218773937274 -0.38794751645670122 1.7013891328435775;-1.1427786975705767 -0.69283522772109862 2.1591435875736518 -1.4215111539276302 0.72477792165692068 -1.5149014374471088 -0.33640517839898831 1.2416231479981388;-0.96209819870942381 -2.1128631373828468 -0.78731970076354174 0.99253367719902419 -0.072343622758890475 0.4930808439870667 0.59342741178703928 -0.67364295066706181;1.0866126761651 -1.0187689297122824 -1.162406709892543 0.56750682045448353 -0.40291466611090038 1.8943412611961186 -0.12992287885785964 -0.90453572640331481;-0.29874579297405679 -1.000980709323823 -0.34728555077703727 -0.34304044968127601 -0.75971423720083753 -0.37979343396142118 1.0094422505021849 0.31130999874438747;-1.7824714806067916 1.4910847866807999 0.95051319301333026 0.34372176413598882 1.3162226884594517 1.9832596062713312 0.73048683300181771 -0.54307892393599433;-0.42185393424506668 -3.3353825506270294 0.27815821565455545 -0.5306261806693684 -1.2835148410249626 1.4140209743365686 -0.67996002218523033 0.36770086230215415];

% Layer 2
b2 = [-2.1372652962038163;-1.1861293856444231;-0.61159154305506824;0.34136626569865769;-0.1845746002385667;-0.69918774285615237;0.9200904232512237;-0.67848668042488436;1.2413384572512094;0.22007436452345219;-0.54611900751033315;-2.4174375224706299;-2.0217832448046917;2.3876043887539766];
LW2_1 = [-0.23932161775424565 0.89811487354365138 -1.0329873927904893 -0.040062161688635273 -1.173425603355031 0.63093861941819407 -0.73578370116675407 -0.56574162046478405 -0.96616580693974641 0.13152725491619136 -0.57070337592899245 -0.023022411448966246 -1.1761207229233515 -0.46273069581523019;0.38812567609679038 1.0764581731690492 0.38932244345149042 -0.41735499824211181 0.20019083838968521 -0.97321499297849456 0.8085331360099387 0.98649837822087394 0.62308841968447859 -0.96719686490772538 -0.21470961342048395 0.44015360103044004 -0.15731883550646664 -1.2842384774922713;1.0374941325358511 -1.1657807537147786 0.40372093645217433 -0.18588960071101707 -0.15890197584388766 -0.80224700171284202 -0.65801534727426858 0.75414970306176343 -0.5564218025313149 -1.0114341340731656 0.1865101617747327 -0.27483877947304064 0.79898450217336825 0.3735223077708118;0.14427219832664157 -1.356609935586609 0.032971803206494898 -0.51557051746362759 0.16884288939153533 -0.0064609057992077966 -0.80189788753000024 0.16565394080530516 1.4649614212327502 -0.31296952832093722 0.13638369042608411 -0.40134910096587628 0.23541114104941072 -0.27918115304673463;-0.86039910673742759 0.29264433174259252 -1.1960615836276336 0.57290361832505143 0.026509015607913643 1.0719810091876052 1.3682103507889027 -0.17141826972279772 -0.15877536707630871 0.098279520846420568 -1.6943582609265164 -0.91341233672587896 0.61519245369529607 0.72620154344150378;-0.0066060729114563446 -0.41366064809118747 0.56250848244828422 0.48894850659533612 0.44280411934664238 0.093233060070777141 0.9184060556800262 -0.69734353849391284 -1.0279118476056408 -0.43985744706220797 0.2252137040367988 -0.067366803956336624 -0.80890830196027574 0.088759320280736548;0.7552871055824909 0.37821397154642611 0.75861570547095325 0.33575797852081052 1.0405200116292481 -1.1543149183712225 1.0090880449895281 0.92301948808777767 1.0420024378128521 -0.12612432638545656 -0.23832645251315202 0.25961107290877761 -0.40941239520923101 -0.046396774713796725;-1.1339758750079665 -0.39037045538733406 0.79788713183197757 0.58424205862515244 0.018862724817440005 -0.77318270362114416 -0.52300369718121931 1.0296835353645355 -0.599770460293782 -0.65064873148993418 -0.82262393329354888 0.67855445196721387 -0.19085074906763719 -1.3866343617648891;0.41709671222772782 0.82661239947437337 -0.62341957303926199 -1.2146800437792775 0.16525686682415192 -0.2554454035089414 1.2634809916280216 0.41313607370320909 0.74202986190196252 -0.87981756599796845 -0.2965774960027654 0.14042808640734614 0.26817008420822913 0.22969392258871879;-0.45795217637626773 0.022214780043122648 -0.96069346296795477 1.1978487364864878 -0.9102281728738999 -0.35626730396166834 0.27940286510147105 -0.064950728035173724 0.2846538896152157 0.57956160061755724 -0.014224240317099415 -0.2320723518280729 0.39429372595708356 0.92984498180424224;-0.71350430846627511 0.1125863436880634 -0.43184223849868897 -0.44834562435946007 0.53554353680387434 -0.032950023547275838 -1.415545259794335 0.4341606244804892 0.41177989746993426 0.82959246922431884 0.0432742032752075 -0.29283460901478819 0.57914965333725532 0.67242602553898001;-2.4954136306795376 -1.0803877238668456 -1.5426144890718954 -0.6861221084632988 1.5304980087769753 0.65881199809738811 1.2553350853707059 -0.45221306931820421 1.674009575241409 0.47569842143506341 0.30122751741999987 -0.69164876126581543 0.55278442191790678 0.48981235637193576;-2.408524407947771 -0.60698412757196607 -1.7121336415244859 -0.57290480513958575 2.3327085944779014 1.0067958210611299 -0.027531700890251115 -0.39080680830227371 2.0684206841151305 0.43610293300286535 -0.25683097180404851 -0.45735125168383139 -0.7612462366971422 1.6130288212953521;1.8303486253871764 -0.37476111308980453 1.3727546874524443 -0.38567664847742394 -0.52130499284498588 -3.2299838357737496 -1.5647871943615561 0.05156378423434476 -0.42483424810602699 0.031934477628094336 1.606992472323328 0.89826848789958458 -0.72737128912249505 -0.50749029865920914];

% Layer 3
b3 = 0.92327695346015393;
LW3_2 = [0.73463546362095822 -0.65035814864048058 -0.82943426810523435 1.0899011166820773 -2.5874217517989191 0.98125037870904008 0.71226955993600416 0.50225993574732875 0.60385297752483047 0.78467041685190275 1.0398187824995007 3.0637266910419769 -1.0621870496598933 -1.7552189195540207];

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