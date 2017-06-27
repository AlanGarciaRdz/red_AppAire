function [Y,Xf,Af] = COMiravalle48(X,~,~)
%COMIRAVALLE48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:50.
% 
% [Y] = COMiravalle48(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.304971027752364;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.7521520809108546;1.370754042774045;-0.47449449836156532;0.40107901843386767;0.26343396022862492;1.2558950747715081;-0.88338003725616132;0.86458215592801924;1.6451191928013684;1.63634803367338;-1.5766959278028185;-5.6614198106714726];
IW1_1 = [-0.87961996531021314 -1.166721283677316 -0.58410040963620957 -0.13952179179982271 1.8843074278060401 -0.50526740695296912 0.80477005368907251 -0.73623792551245792;-1.0417254917250391 -0.39911737249690382 0.2038991753798905 -0.045126380728091289 -0.64568479471877982 -0.2272737569436124 -0.061032467699406109 -0.028261156659796852;1.2775972212577824 0.40293973257546323 1.5018964825401726 -1.1556313499344466 -1.3931460198699144 -3.3323655733250526 -0.2102903992672874 0.88362732598589888;-0.74593193261317225 1.1935944043677116 0.1449219194419975 -0.15164867564304657 0.9826815865587144 1.0191570137645083 -0.22980797322658703 0.013055300230279903;0.084942336893416195 4.3418120055882943 0.113922597455619 -0.25008850052708975 -0.060634865869561447 0.077450346245632407 -0.055176608236642659 0.0076592182877038457;-0.62240634718245458 1.7736605570107242 -0.42615191400854135 0.015425333323355758 -1.6224327328415626 -1.1480719251571161 0.5239640515406806 -0.45223093880011261;-2.1348407143266055 -0.1377761673001244 0.50696978293605477 0.33566029425084376 -0.76405468928380027 -1.0618925870753018 0.374894232105211 0.45548131838515055;0.52594285056812085 -0.90567040366927176 0.33915978917832068 0.24818898859444014 0.24020370108928166 1.3815019641514388 1.6111197132823432 -0.54980459893271483;1.5423300354918428 0.4249306529795247 0.77999340934968753 -0.14711430826793903 0.28263517678258676 0.83307531146336533 -0.14055862418258694 -0.61076942669302137;1.3535688479860828 -1.0140012927451283 -0.37614856948583086 -0.71000241926138941 -1.1825206281616676 -1.4866057591627553 -0.76289863592858798 0.71477258172068503;0.40288123297908029 0.58365692906851607 -0.12651090833929507 0.19128227069883347 -0.70503286659142672 -3.5052389032153353 0.3490581086452289 -0.45523867293196923;-5.9037931237762411 -0.015491388221318177 -0.89567055747496205 -0.42089311150012276 1.109560194110611 2.1113058984907269 0.40536138008530787 -1.4089160402499221];

% Layer 2
b2 = [3.9841153945224024;3.2482254007963016;0.40251862183961262;2.11708442460229;1.1626610459431195;1.1581492377393952;0.55648600566151285;1.1722528535100014;-1.5367108231542272;2.8023287668668999;-2.3618833498144847;-1.9434489266610979];
LW2_1 = [0.36574557726556173 2.133612551815375 1.3987606328568802 -0.57820204948942311 0.44254114935822919 -0.028574646541767362 1.2230084495108751 0.022061220552167343 -0.136108689499161 1.4869449091593969 -0.097150071559025719 3.4176365018281407;0.67590986401201147 1.0509127371556166 0.92139621605116484 -0.93713281502611323 -0.0778916543128296 -1.1830833482017271 -0.94999858076383292 -0.6649761089938272 -1.1320681162617563 0.907365747690833 1.001815293810957 -0.26022922533383064;-1.1577797640226586 -1.0379168668988425 3.4617267780110508 2.0536343917002746 0.34787774223942514 0.4358070261895694 3.8388680665061514 -1.3325021848713987 -1.0250466879704239 2.9496672876060503 -0.63632486310335523 3.9144629139552491;-0.22969641200387639 -0.88769306521311553 -0.014414178241259561 -1.4664166990035405 -0.7454968777320593 0.03138416767834163 -1.518877338317044 0.19457055034810311 -0.72834113181590798 -0.51613732120712774 -0.60403026933214266 0.32125764736146134;-0.82072615687953288 -0.6524597423114803 -0.9846641849958947 -0.082245297749262258 -0.018855902657211474 0.61302194166351065 -0.73171388734535647 -0.37481399266922538 -1.1181577716059756 -1.1525607844159251 1.2645225682861194 -0.55938799964127195;-0.55731522204605355 -1.1664635348323529 0.30551025303546525 -0.18824871371338261 0.50517515931425572 0.020990357772712021 -1.3828557012788343 -0.010513977669978379 -1.4298577844106026 -1.333236668874078 0.49107182978915276 -0.61375182628351144;0.67380026222329259 1.3222868274304358 1.6419537733818055 -0.60161311553636332 0.38851242591526247 -0.69040193155796747 -0.54272557845893799 0.073449670365886177 -0.56314989625629819 0.80060755571904796 0.036590824349018836 -0.0099579402806185616;-0.15664631418841476 0.076173867291848635 -0.45288375994924202 -0.82492860228704867 -0.086519876874626978 -0.36183046196358903 -1.0307366293276936 0.1263214459498731 -0.84239442568216727 -0.21587966319240848 -0.26007760607637537 0.28832729462987788;-2.2935472168234932 -0.25885587391458043 0.093959322109187671 -0.51433232904609938 -1.8925419691832908 -0.43388250873479528 0.50414252272549387 -0.20455605084075851 0.42220962694781333 0.71037062872125101 -0.21460168773820648 -0.48576173912637333;1.098909675446524 1.0662592045391408 -0.13091467312970134 0.2254731345355675 4.1972409391745682 -0.33219952056505442 -0.45561301410629262 0.39241419695871771 -0.65751363450360045 -0.62795471272399972 0.47649298771798099 -0.26412187379624108;0.19677800122986419 -0.21697414255868319 -0.21321646749638751 0.6615944802042163 -0.55747899729637374 1.0090433309532805 2.1718427751111351 -0.820884362342572 1.8051445085869959 -0.21683084154922605 0.80253398327951264 -0.99895942018781703;1.0841722119990231 -0.7656214711659044 0.1722137555479471 -0.47100550771487321 -1.1685948059451507 0.62589559656665505 0.22306086803571268 -0.40413592336456206 1.1495109645468073 -0.13309884933095587 -0.52290384710905136 0.74299722473190277];

% Layer 3
b3 = -0.5052353341106498;
LW3_2 = [-0.43529285585974725 -0.42194291699862291 0.18915323450314336 0.57627546095722504 0.94588065490100248 -1.1940918537066276 0.75025285615852744 -1.394743678312707 0.79168882621552028 0.77235512640641013 -1.2486402020864955 0.59833867965329235];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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
