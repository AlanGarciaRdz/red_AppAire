function [Y,Xf,Af] = COVallarta48(X,~,~)
%COVALLARTA48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:24.
% 
% [Y] = COVallarta48(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.8896031921765735;1.6922329894553958;1.2643588368488243;-1.1056474496303133;-0.65055145807901626;-1.7740277717065878;-0.48614507125304213;-1.9511421528315722;-1.5702355889236079;-1.8815720539597187];
IW1_1 = [0.41546470406079544 0.62400626170921258 0.49336826417133955 1.0867637201631786 0.19164622416305813 -1.1483215581136383 0.17929527410198978 0.77434471672816729 -0.0023197153558684493 -0.84434388141532768 0.64852744823014519 -0.41657526621524071 0.20500450859002264 -2.0749747527738069 -0.90850531060292261;-0.6688784805621304 0.090578670853903809 -0.074084311968681274 -0.48247296314147309 0.7307590724953632 -1.3298978877600922 0.19783523742366188 -0.13567936959677721 -0.56313070888745209 -0.16677702031573752 0.69211589332799672 -0.19310920955043018 0.34672409765042772 -0.016723263167170575 0.5017442338994349;-0.44307634649647909 0.23016347120627351 -0.0050695962067486347 -0.47330465187110993 0.80356094297319158 0.23026186818558239 -0.15970677878618214 0.65550628080419404 -0.26114579887412326 -0.11622009497068958 -1.0736084229904344 -0.061737646605501656 -0.65096574775857841 0.58163647242728422 0.48563383489206247;0.18885333854419734 -0.84855702108061126 0.50738817031613814 -0.018018732049506974 -0.50553995452290867 -0.30341871398026782 0.32972535054490065 -0.49418187404111086 0.1478923483005978 0.054245734668349067 0.65591577308136673 0.24608538531994162 0.28623205300296811 -0.50898319696799688 -0.09440703798817672;-1.1854075277213514 0.039851155695222157 0.36853252123467906 -0.44693000938757649 -0.49482167787703168 -0.89715865020928431 -0.2153235753022249 -0.23549303090791374 0.051181112095362025 0.59717448968693454 -0.21534775729032629 0.026890170350626977 -0.16173893231116332 -0.027250470151216809 -0.013809889672805508;-0.85198020547159337 0.20153570450629579 0.84106320963808401 -0.3585095726715517 1.6060616933505836 -1.9967798351434585 -0.24859913285814164 0.30930179154857246 0.43859216781818627 0.024152107616257575 0.233133597399895 0.089683114242897904 -0.14070715022834138 0.0090887411811910943 -0.92343510623581904;0.35689457420374859 -0.30022734720667438 0.029999767314492227 -0.2379278371172095 0.65388297752574331 0.04433958407598447 0.1850161330250886 0.19191935735174559 -0.39876159831090785 -0.34993407664715576 -0.021564854262773187 -0.036170864715999569 0.13761661519860949 -0.04460640803920754 0.14275240196788766;-0.22518783268384052 -2.8931493459144404 -0.035850641051439043 -0.3143909665235643 -0.66361482119019721 -0.030375452974798104 -0.134390734941953 -0.13463360796359194 0.063935924127182325 -0.11496254843628551 -0.70640496475209869 -0.028928819890364894 -0.42172477104321082 0.43770402584800394 0.29197578590064621;-5.0997263935109123 0.060637756468725469 0.24679983085879667 0.14366464865775699 -0.77336173477740511 0.3931168408005134 -0.0048349414846464572 1.1679979934808415 -0.056489962023461612 -0.35233256138047114 0.41213635799517928 -0.31176324709817582 0.096984392464203886 1.3091737323503614 0.13323190489492362;0.22275897093798208 -0.87815636325096225 -0.20229246278783672 0.11507856037871947 1.601135084840172 -0.68981844454055941 -0.41250111797982081 -1.1742516026660192 0.22400490283169042 0.42144954415156127 0.76857724431074581 -0.08504221455908928 0.79843430165102258 -0.83677606587193398 -1.6130164151027098];

% Layer 2
b2 = [1.5384762739758522;-1.1723998262044624;-1.645130444926227;-0.34046296595363035;0.96090579613594695;-0.88930574472743162;0.068988740145847369;0.61617440476645846;-1.8244557980042269;-2.0147075995772168];
LW2_1 = [-1.2863257881732089 1.0138918582210139 -0.24191354135619539 -1.0996794864852655 0.21643753834435855 1.3835117660381171 1.7824372238119632 1.2337252376314076 -0.56596416814156991 0.0037148023262953073;0.94508991837772316 -0.27961157830330097 0.080622190620900314 -0.18690255850617654 1.1230325016586524 1.2029659993322321 -2.3469921097345798 0.57244517957341445 2.2342578149743146 0.41930469883634824;0.067859304695738892 -1.0358666181514493 0.40764994550846179 -0.21380728892005579 0.44290353337255361 -0.55961655993849546 -0.67856132440505035 0.30449237450257127 1.4311291557287662 0.39154887767910013;1.2748979951984472 0.42626417598459854 0.96544518199010743 -0.21838627409707234 -0.38637684940068723 -0.30424915913374301 -1.3914746046215809 -1.3992727314858058 0.035960288228397155 0.12611142250734855;-0.62216867647675411 0.90297306743411754 0.23208429555109611 -0.83223321904246872 1.7165411537313175 -1.621255919221813 -0.14645573101573878 2.0451394476229803 0.82573976979941111 -0.49553008578216884;0.58352852215576489 0.75673722587636705 0.3105155609143071 0.43900240396477236 0.21915859566231749 -0.56271263787104098 0.95176285415716144 0.77991590750136686 -0.098480138412659429 -0.44530357176328411;-0.49678675091397428 0.51955205475209232 1.13410442375582 2.0058590669891903 -0.60838779735252946 -1.6962041154949248 -0.39234002189565897 1.5952641323321912 0.64194126547216335 2.0137871201369117;0.88017080076223997 0.85596941285989525 -0.060191146506353675 0.16282556013206267 0.35495865342038901 -0.74569780035083322 -0.077277211151277003 -0.94186551180540756 -0.5429756942716959 -0.5477533262043085;0.099468147957909397 -1.2056388539601333 -1.9053874549543051 0.26790022509299916 1.3694584888738384 -1.9721912558086396 -0.21846826958855897 -0.13816687163706101 -1.5003301756483216 0.033059293940663502;0.91643355612586808 0.43431236286168112 0.096036164188288753 0.16963753265690495 -0.87467031081775415 1.2797755709379541 -1.0205204128577654 0.0034566161668066128 -2.428499352935324 0.38873457994541794];

% Layer 3
b3 = 0.33001486542114106;
LW3_2 = [-0.526015088428608 0.42363655120094906 -0.85264205943455351 1.9161784045001387 1.7173605235148681 1.1067669501282356 0.88534920823303986 -1.3550610078201148 0.2551747908683209 1.4911205344847895];

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