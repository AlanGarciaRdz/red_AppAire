function [Y,Xf,Af] = NOXCentro1(X,~,~)
%NOXCENTRO1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:18.
% 
% [Y] = NOXCentro1(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828];
x1_step1_ymin = -1;

% Layer 1
b1 = [4.3624378142905407;2.4489529305697575;0.41166352328058586;-2.0352884814798102;-1.3262757694309903;0.17557600394941691;1.3850018722134401;-1.6020647632064049;0.49222488319408442;3.3254122813882647;0.17792245362256026];
IW1_1 = [-4.0814248993979483 -0.069951982773111723 0.10897404166297345 1.349261049501757 -0.093692710254033043 -0.99289166820100705 0.22105654615996143 -0.98950959453655629;-3.6450388448066833 0.81520596629306574 -0.12975780208350343 -1.8949606574821314 -0.25143605256648432 0.92413620599623725 0.0029762562494754993 2.3843869986180506;-0.17937479624079922 -0.022387353223866521 -0.3686284785571029 1.4319770226879134 0.040699825080588108 -0.013646512903401152 0.18803263441012585 -0.39116510504564928;-2.1330833024746219 -0.42481807701296037 0.095675456703071565 -0.41425578130647012 0.17451031166091008 -0.99813349017349784 0.044910288954246404 -0.66177416561199154;2.5953056591863124 0.64547700905210681 -2.945329935101848 -0.07202676695586864 5.6244099511507386 1.4110246322839324 -0.87353741876936553 1.96191168200715;0.0068186212011662126 0.92534050676274948 0.081130844595883045 -0.10055629001451712 0.25302882640060448 0.022591718696536128 0.026370019682637517 0.12187309879496087;-0.31601109509361491 -6.0176140535169411 -1.48282630319196 -0.58627524413481846 0.20510495961034034 0.094483312661895649 -0.094989344619257524 0.023614196869114347;0.38536626717533129 1.2936173261690793 0.33067390990684792 0.88724850898177432 -1.0055054915460653 -1.0324669199186651 0.36206612973866087 -0.74391920690347391;1.519205371139263 0.22632306102296673 -0.44990182511773003 0.33195170953393438 1.4543345857223131 0.30373681119667656 -0.22774959253283825 0.1830209843692264;0.26656088131295219 -0.14553178962193128 2.3335899252469088 1.0838334149070632 -0.38026892879215546 0.28262294032582896 0.27655574827766438 -0.33220371554443118;0.39454988782848943 5.0633750269086564 -0.53503470702732991 -0.98805584185638906 -0.92679131490447453 -0.038534989754880018 -0.255187958612548 0.40315472167047933];

% Layer 2
b2 = [-1.9133936144979444;-3.5336165815520602;2.8939725606570676;-2.592840818350679;1.3022147627574479;0.72234644499916945;-0.0030573039283623982;0.73016100570154563;-0.023937233933462615;-1.0592030914279191;5.7563671247419625];
LW2_1 = [0.28529880229586907 0.77722578152787003 0.46695720040014826 -1.1599491253743182 -0.078545811794158399 -2.2008412487173863 -1.4229565046035018 -0.59417626967397075 -0.71406848407028178 0.16016916870376097 -1.3878431065318302;2.8245660686999181 1.3135275631275376 -2.5474867076046053 5.2830663683479733 -1.7796822267958825 -7.3287744715767085 -2.0424758944756141 3.4978669535678959 7.8499472704916391 -2.2986692437459135 1.5828510631321175;1.2268501352136885 -1.6489395842795207 -1.5076110175957402 -3.0618662923123954 0.54604157975193313 2.3658899448691719 1.877848511421206 0.25760503404767526 -0.55318689189711778 2.8260279726726614 -1.6413459565304531;0.50160583161183347 -0.67584702443959421 -0.98269865751513752 0.66191613889722178 0.32162738365298749 -1.7562483366212771 -1.2535964270408078 -0.06923760075514819 0.16371276527888945 2.6930099903513773 0.37643492373394466;-1.7648711278004392 -2.2728548164653568 1.4017494649128444 2.051418020603617 0.20569330710558292 -2.3941712272840312 -1.5096077969686279 0.010349697206034403 -0.90556494269015264 -2.7552262424582885 1.1439042176381164;-1.806363711198204 -0.39252780966648992 0.67423759477507739 0.18597609756775987 -0.4882239778724346 0.026547084666010336 1.2983945745027881 1.2446870691258616 -0.92198975184802623 -0.001289165012339364 1.9610520943740408;1.802992829637909 -2.3077712923170752 1.5159448427894526 -2.5925054002254644 0.16057200004436895 4.320326956309434 3.1849837088621511 0.88591642041202689 0.48005692968350533 -2.623749376388671 0.2992060930976464;-0.67230352603700583 -0.52725983906054152 -1.1216644500663748 0.044506387798599244 0.044645110933356186 -3.6062444694683422 -1.3511414128755099 0.61295682294996046 -0.5973235981424091 -0.20992473622600788 -1.4660612824234558;-0.94502028563515494 -0.16804969753403337 -1.07062394203402 -0.18660794211632731 -0.022772549476470103 -4.1115609666655395 -1.1385573591867733 0.66226323210739169 -0.74525219703760448 -0.40125382391435338 -1.4510904680787655;-0.38174227641926856 -0.92598511383753879 -0.25048753511559352 1.6600006957736524 -0.4002501683990376 6.130061486281833 -0.071021196363397876 -1.0188250540975246 0.82677101226996352 2.2562198771498987 -2.7721072142085847;-3.5173682781942075 -2.3278983681085212 1.3663903203578636 0.40525047079956045 -1.8338722623992618 0.81858800765575568 1.6803466715170625 1.0657256122246463 -1.1429856991326806 0.28034869193519468 -0.96439649029854468];

% Layer 3
b3 = -1.2806980382444009;
LW3_2 = [-0.16729739755452327 3.4700834218264744 -1.9626949685374493 0.41256730554410181 -5.9344128098853002 -0.16509910393659483 -0.033739651794219873 1.0999780708330562 -1.1432228705368119 -0.10470758427881498 0.12660606603130939];

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
