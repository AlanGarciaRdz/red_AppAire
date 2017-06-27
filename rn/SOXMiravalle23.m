function [Y,Xf,Af] = SOXMiravalle23(X,~,~)
%SOXMIRAVALLE23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:38.
% 
% [Y] = SOXMiravalle23(X,~,~) takes these arguments:
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
b1 = [1.5399567493339357;-2.7452508169931549;1.5210901520278077;-1.3704093077886721;-0.83309863939704387;-1.6150759680455908;1.3507419417849713;5.5655516022208067;-2.6883278812809768;4.3354506869115896];
IW1_1 = [-5.896744845718378 -0.056880635202135515 -2.8590914381277543 0.46176318831773683 2.5702096328000135 1.5238865147807763 1.684488456039132 -1.7892837773944468 -0.85502980552665697 0.65767985252637118;2.1855581271601254 -0.37919355025655788 -0.099496446917396369 1.8538313097207926 -0.18019709825145475 0.35409676733572648 -1.5857234503104685 -0.25466989270512974 -0.54381442158649862 -0.32921198662096196;-2.5312058177569816 0.30238700087618625 1.5745781621167514 -0.79737466244299982 1.702842538383057 -0.52308583543655696 -0.38882084405633249 0.40528237439826376 0.9722563369670093 -0.30077142099690857;2.0796900577039348 -0.35048953084155804 -1.5593477708333707 1.5158961020917254 -1.6210884212209775 0.39186916222739321 0.13402319016824582 -0.52578106640161515 -1.0352737294149019 -0.47122882672266009;-0.53971863377667317 -0.32873206200315469 0.8156106871829707 -0.14132641661759721 1.2566515578212183 0.45595053778844663 0.84363042691223467 1.4218377787917169 -0.60199472922053809 -0.082045322155448061;3.1033096370091653 0.50390943708450753 1.5818857670467394 -3.2623710899249847 1.2489868880787145 -1.2298906981298487 2.555184564621316 -2.2396142470708682 0.62730232986793211 -1.0788510343306779;3.0613795125082457 0.22735373693433936 0.58154561178062159 1.0364143776719028 0.9722090302648978 -0.65140431503062313 -0.30828795136904968 -1.2352848390985289 0.076906254262362875 0.60486277923104426;5.4450378535038597 -3.1740447829835801 2.6578983399397957 -1.4271748091385206 2.1440457368186339 4.1214068181529857 3.1109004861058467 -2.5947336964317551 1.008329086873629 -3.2072165328054161;-0.31492813364794953 0.39842966286297199 -1.1215109306449027 -1.6635848028162465 -0.78243967036302176 0.30749210223584139 2.4332574815741781 -2.0229361801331551 -0.42090856223173484 0.74391713414382377;1.7739187221103201 0.90468601249084235 -5.0922670448120941 -2.8101224735820316 -1.5950406304592328 -1.006159657884524 -4.3786028361328784 -0.98456901139795616 2.6803040293361517 0.83949644233402088];

% Layer 2
b2 = [2.0753786670352872;-1.6193091894468554;0.1817779734652902;-0.026992826335128627;1.4639953045578498;1.0645838915786734;0.35107399749428891;-1.4313144274641616;-1.4574656257124337;-3.7186300137991255];
LW2_1 = [-0.27566119245780935 0.42816168842846253 -1.5544539055729649 -1.8986462447582597 -0.44247158761877431 -1.0960529557124894 -0.29265898692762976 0.19450364808467427 -0.52719800139337569 0.36051756612287211;0.77884320698023546 -0.31066286884959249 -1.2363711529655734 0.81834698782113013 0.33453029170599624 -2.0986629806810266 -2.7994593473613096 -1.8845643963703416 2.2100495549568349 -0.31116130449367702;-0.11865705257904993 0.066867330579755357 0.373542742366958 0.17446187310401437 0.023998277320515495 -0.33719456707435325 0.28032673191618301 -0.028555525152482886 -0.0011456913427186112 0.016833834339632585;0.52477374054862169 -0.20297530685925316 -0.69300355356496679 -0.17048761847112054 0.2496495698893042 0.49770102307108721 -0.17308582141132903 0.043213034458167487 0.090168478766445778 -0.024343180475231027;-0.32688137301421982 0.073843965360729569 -1.2184127586142621 -2.2221736131209666 -1.0341815950562818 -0.90137352595050257 -0.081743583321993357 0.23808122855098524 -0.95693920824282286 0.43391954550617734;-1.5437126488792772 -0.66001814763406508 1.5694395411048851 -0.76645435933163997 -0.56759537132457494 2.4814132381586909 2.4784749596555087 1.8766666167166997 -2.3623794802257603 0.20526614517064015;0.70491239800033945 -0.21500288379431662 -0.067452295307234025 0.38176197443176924 0.73759733569516506 -0.3707034435848473 0.93481775808320788 -0.0055045803188289305 0.20071158005489637 0.036220413134687254;-4.0974673371817589 1.278645188385616 -2.986806620689725 0.38263312681857548 1.1720062458541554 2.5280310455735324 2.1792567005962411 1.7859843326052884 0.2168758171759137 -1.6122738374742003;-0.78948236824948825 -0.5400598992115021 -2.4293807219564152 -0.57082174194614832 0.5244669082526322 3.6519085797884396 -0.59984727385845515 -0.017857785502638709 0.17430532559773815 -0.5867492503263223;-4.3167857018944744 1.5264597980323316 -3.0419277842405807 0.33451842658122372 1.396244042415582 2.8636146593572334 2.3733356969987813 2.3531318515229138 0.57912078881100015 0.26978432548083819];

% Layer 3
b3 = -0.34383235192220374;
LW3_2 = [-1.1065122211588663 0.99379551970452984 -4.0211398468451982 -2.2248421505182487 0.77456470977238501 0.97272504115630309 0.88310910087235373 3.1213367769061104 -0.27537612220230301 -2.958728188583331];

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