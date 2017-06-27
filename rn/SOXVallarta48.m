function [Y,Xf,Af] = SOXVallarta48(X,~,~)
%SOXVALLARTA48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:09.
% 
% [Y] = SOXVallarta48(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;10.4712041884817;0.00782778864970646;0.0208333333333333;24.390243902439;0.02710027100271;0.00630517023959647;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.8425314096745882;4.424463327292302;3.5798201289026452;-4.779582951251383;2.5361374734070758;-2.01047576511561;2.2518838124671032;4.2592991551381241;2.142655075996192;-0.88825916246986014;-1.7284542863030989;-1.5429942718518361;1.1453209461974059];
IW1_1 = [-3.1103282157377903 0.21899162960097301 2.9782998483694625 0.80074596370881068 -2.1881991236611658 -0.49920962041294664 -0.10183822655416128 1.0127878087442488 0.20974705298080779 0.58274133245981707;-9.2177420190952315 -0.52882433709557319 -3.4117480952244343 0.25736157861179004 4.1232191937514306 -0.62357496313828886 -1.9923323088090674 -4.0198882108007323 0.39260484718499206 0.15491571904231594;-1.0979415622667978 0.20818199617078312 3.0901923176242043 1.9362053213942891 -0.54742828704113544 2.8062591273477198 -0.88406719256677746 0.092369789979234299 3.0912285356839431 0.93762858566832918;-0.73870686379700523 -0.071728508363400834 -1.8974119473203315 0.067975077881505766 -0.34366385272790034 0.308591906664753 -2.6679779778191266 -0.23519331587289524 0.48865329057804829 -0.41380633928381644;-1.328892199907221 -0.056204577501992141 1.4252495090476693 0.28518818987614181 0.16616951183108458 0.17383377609340017 2.5407387051145354 -0.27447116269090366 0.059919352355120428 -0.46519543188703377;-0.46705423920586353 -0.90443490562153361 1.0729944331065486 -2.215674211655454 1.4542052773935403 -3.2180818999926939 -1.6448779084388383 -8.7637036907196073 0.57511099354618467 0.37927685333350986;-6.6014114747589119 -0.23747618071620968 -1.0564391371100783 0.51538666295682833 3.3747658536312373 -2.4082410722680376 -1.655649237868182 -8.6097970763228791 0.50056366704036726 0.77454618438928824;-0.12965453913344091 -0.98927295642684987 4.0991825555076256 1.629703004038167 -0.99488823275850069 -0.3581673406246883 1.8806675867185239 -2.2480648185005707 1.3251341333919717 -2.7776798182880604;-1.8295008696138835 -0.70607408102072033 1.5841865775404762 -0.45486136545817141 0.13446281749161654 -1.4656713683914635 -0.54503835036004167 0.7411538149806941 0.39492386490294079 3.2470784816009517;-1.9855231071418336 0.068330000485759476 -0.27565794909457653 -1.0411851509535921 -1.4110068498229202 0.77637426536370513 -0.80595020231406156 1.6438265025967369 -0.033099013830749591 -1.2173778339028001;-4.8094513897960738 -0.10655741175361177 -0.36872041830237862 0.12029928038556195 -0.17360447841615562 -0.59850222019836974 2.1301587332223124 -0.31177051979866283 0.062452038217760047 -6.6880281147865519;-0.20441019226901544 -0.13393214020335481 -0.26811965655285136 0.10137672845307426 -0.071483050831108452 -0.21056140588038696 0.13014385379533266 -0.056092420130743142 -0.56075220163344619 0.19226530922063342;3.1465800633408101 0.61595811511455612 -3.7169233260904981 0.49372106802064858 0.26731720459008845 2.3840508211213054 0.29842728442400501 -0.013364034662907115 -0.2273165354802468 -0.32210221870732803];

% Layer 2
b2 = [-5.9995391232908393;0.72764336409021269;0.85514812065913737;-0.76553535771545766;-0.74253369189936425;0.39067345919539781;-0.52886292554610292;-1.6456155017364702;-0.21727751108034618;-1.0847126055616412;-2.4906748594242183;1.0175702901755459;-6.2393467977276433];
LW2_1 = [7.128978143229987 -1.2163945676707275 -2.620230070781655 6.8395581585212515 7.6339977284523783 3.871908870815183 1.7253660234198662 -4.9821388601217924 -8.7582807528422517 -2.6995541954393767 -5.9005188239521464 3.397438510981551 -5.9073317913225862;-1.0975332155643533 -0.4593769247070042 0.12855887503551713 -1.0681626955080694 -0.79594016493070829 -0.71469032489625806 -0.18286624012711156 0.77756399302738277 0.19411201241292791 0.38668220171306822 -0.69212379024601189 0.5306359364025155 0.020124409237407565;-1.0420612230105011 -0.50162410167569293 0.10604898944611348 -1.0124529638485762 -0.77463891166969367 -0.63486500717883976 -0.23240012031749638 0.72192201881490203 0.2587319836478803 0.23817821779624848 -0.60799526020714345 0.50915429881016105 0.11084109317162437;0.017007213563845287 0.19208980392031605 0.41712806072793779 -1.3428275569264958 1.0367265593226807 -0.80813516865066259 0.58834712607161221 -0.22202655794246942 0.56084735618507997 1.794683735778845 0.067274314597009402 -0.9267932056529401 1.1429599376436304;1.0798811054464186 0.5275246290547243 -0.6038774960005292 1.6225593336401949 -1.5339686302186974 1.0513985548420566 -1.2385944880081809 0.37660297930721615 -1.1198505354964219 -2.3668711721558351 -0.52450491014640921 0.070620506381859002 -1.2366541268760616;-0.3778370041861957 -0.097975067041006877 0.47465885054050666 -1.2927306527856202 1.1904369971227593 -0.84590369566421142 0.79311485580361152 -0.29429789662161115 0.73764872502817835 1.8934175097517714 0.2121884053508219 -0.066660767261781842 1.0605112064353899;1.6482216362958781 0.88538357428994763 -0.71673650180248838 2.0404723452260543 -1.9332896704334439 1.2676463815568051 -1.6833234806547137 0.46097749255015097 -1.4378011994631392 -2.9093660116263642 -0.79739328368569162 0.57868111148167212 -1.4994453100977423;1.1329471500318375 0.16064640151472576 0.65200487206997049 0.35950371522189362 -0.36069005801359771 -1.4907410414880378 -1.1379977481103309 0.21633635086310329 0.43443124866545862 -0.50720666196578601 0.38641543301859582 1.4967764308413436 -1.0749921078568725;-0.37619170979324096 0.055657500503653305 -0.02025617236191295 -0.56376261729108057 -0.82819007016225721 -0.011120288317606898 -0.02964902513017053 0.32918098413634966 0.28484965537924445 -0.74283313376801674 -0.083616034073822662 -0.081057487981905013 0.31889500935035964;0.28323801799334208 0.053783798454019302 0.008877421741093695 0.60464048628856026 0.46295260001163224 0.15511078914043855 -0.58338236334101534 -0.2638659067250938 -0.74510684187415788 1.5302698194974877 0.16163887403918401 0.40413312035861437 -0.80084933099191025;0.8308562917940886 -0.71455106581870187 -0.07512384107859274 0.36192712279476236 -0.28303440154129061 0.40974556939091339 1.2672005948911309 -0.08569133817130524 -0.54450862731135996 0.44633003766000301 0.027613718188181542 0.63639290318404673 -0.58049685144507135;0.2163269244971307 -2.2756267445495086 0.95767667499482534 -0.45260413313703379 1.4973115510550661 -1.055355809042543 0.34471320188867233 -0.46268122635189646 0.42155549929435815 0.72239985818512831 1.3018481117957401 0.5590785218318457 0.4288758837984265;4.9647479670620154 3.7812744415912918 -0.043486592069978965 2.5953072094439777 -3.8024524693644839 2.6280240897790375 -4.0169368119271507 -0.33522041743100967 -0.7892797482450653 -3.0126596298995625 -0.19351125454039278 5.2629390823249054 0.55559142908773795];

% Layer 3
b3 = 1.4067594262635867;
LW3_2 = [1.1992334521229562 1.4679969238884953 -1.6932490622871084 -1.4412258941229121 3.6818484351356355 3.6319695835189272 -1.5892486687137042 -1.8313204172993587 0.34436240582095184 0.20528372768775807 -0.76138094908374254 -0.017156219811082046 3.6229223679754501];

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
