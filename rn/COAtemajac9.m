function [Y,Xf,Af] = COAtemajac9(X,~,~)
%COATEMAJAC9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:24.
% 
% [Y] = COAtemajac9(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.2877457439670179;1.7042663854546147;2.9366269539894887;-1.7399698630750653;-2.8470148442291068;-1.6316925138327707;3.0341845618682437;0.85371102470168347;0.95539160066177531;1.6436337148383475;-1.5997139233589477;-2.1352185756887163;0.78735046307327583];
IW1_1 = [-0.095457031169314047 -2.8172831937172806 -0.085922973883183096 -0.15202180519146608 -0.089888603191841179 0.17411261977589354 -0.081774116702040156 -0.024147674685284604 -0.34768448596197349 -0.15532728868574708;-0.74243273719395697 -1.6705531226870995 2.6448138594839099 -1.809612196123602 0.19112663800516688 -0.13334095604941315 0.17321329050184536 -0.55715182729350554 -0.092217098127137229 0.069565591395931714;-0.13500143916978105 2.636164476867354 -4.5904097217853455 -0.11636871723457753 0.98332961588942425 1.4561345181751726 3.1506623293661549 0.86607452943997498 0.63813754141648982 -1.5989961175297362;-0.12198175284771605 0.22465045186944313 -1.1777004938520246 -1.1087458549603439 -0.62693695453459308 -0.36322260879527707 -0.021725664715529672 -2.1711054393702471 -1.0088063388444031 -0.33288911891075496;4.2601056252757425 0.32359770651152731 -0.17073665741086533 1.0484611599118805 0.095057257329033196 0.063275291633968542 -0.36668445587461351 0.078855566516371031 0.50374982258990464 0.58531547842425158;0.32037704645152476 -0.52550270607852478 -0.72862011252598613 0.13749360838404995 0.41501328031890944 -0.42019699632225516 -0.52731845316659531 -0.37178449090383492 0.12355295996208843 0.86600086200520232;-3.9366238876122948 3.8995534698784309 1.5366166054417028 -1.3957493601179642 0.27203088463627551 2.7167939540012989 -1.1535753440056014 -0.072531084117065409 1.2144551906226844 -0.85209911208944733;0.68984593348518441 -1.4490995955863974 -1.1827389986082602 3.9717536013949419 0.74346776646737389 0.99329386125601371 -0.17800876643290925 -0.020037239594432626 0.46677911081582485 -0.69000687648472536;0.7201307997903803 1.7826265648289208 0.48645543481403958 1.3671047231544886 -0.33704176097511079 -0.044181382205028971 -0.055508331765513952 0.40985928685790213 0.11366373526878062 -0.01757017344105867;-1.5747124670856292 -0.69532182964684963 2.186577975306041 2.800240852452518 0.1105462112776235 -1.1642449078508315 2.5898203166934208 5.0873221026966089 -0.68743425696798921 3.8805721403553943;-0.16183535671935126 -2.1288472428874465 0.4698965683816293 0.27638062795556639 0.26319689788419637 -0.061758629550792199 -0.019613323003404307 0.51791543328714529 0.34053737248680194 0.26418080211629019;0.016124216715680671 3.5395773408485098 -0.83379532422440006 -0.13273785716371303 -0.1812767050208404 -0.034756474168650353 0.062596657353867255 -0.86573703883539221 -0.65856859800015533 0.36386383876006423;0.74444459136368724 -1.4461713251973625 -0.015319947685663058 -0.021027355403405789 -0.066498807481980921 0.043630269517615922 -0.11912580187277824 0.056534267993559373 0.083435196835851086 0.0030666611276113469];

% Layer 2
b2 = [0.21026324239603467;-1.7836424891456526;-3.4951389953106502;-0.23470693366993292;2.8571781728754213;0.54849119251883305;-3.4500238101061544;-0.52567667406702878;-0.37428029077841551;0.80133696610648153;1.6801667261501101;-3.5151272656457966;2.5961330643351781];
LW2_1 = [0.34406550721672841 0.43550775671837011 0.35210861620300549 1.0417353622934338 1.1414707784856022 -0.76559431328378247 0.34126487960233942 0.19394548781134038 -0.55110028420122747 -0.34570642355161235 2.9253431866447821 -1.548909945149531 -3.7781791984172797;0.063903566642202606 0.26033673889692499 -1.6151516179725651 0.90904004000708716 2.7267211019038697 -4.235122188615013 -0.22409463148883541 -0.77164769902926933 -0.55038500225497444 -0.27093907423309627 0.71064385789289841 -1.3475078905494771 -3.3808592664715014;-0.49386905017398097 0.031911259368949507 0.47940921076618986 0.30668881339822252 0.36965350405391462 1.1216941289909119 -0.17779322982109591 -0.33349192654964083 -1.0451760921054918 0.053435855720267871 -0.8205088643914149 -2.6353120892283073 -0.14078138713045524;-2.3211729391421292 0.17710056548299741 -1.5645233679565262 0.054396757548815587 -0.6155390869938635 -1.2930198771515868 -0.94086001079359127 0.16535685384010484 -0.0017954655786577289 -0.70614535913151111 0.96632876028337455 0.73364630272446718 2.4810012542645596;1.7197477161782058 1.044613293412189 -0.3606665314182137 -0.82522475176525378 2.827204477300302 -2.6079722273518335 0.39555723442808116 2.1097140157569481 0.37923616156161644 -0.41988489951810487 -0.023983300746401398 0.54784375790403461 -2.0291933297896692;1.3443111813047732 -0.93576746473186989 0.30355381262338815 -0.24732144092983921 -0.088020372100707442 0.2870165080875629 1.0553642471819131 -0.13679259542751226 -1.090237337691967 0.2480752311344957 -0.82445208495568678 0.14635403417582607 -0.5797314294318946;-0.78772914543705164 0.040409780850185657 0.30829065361381086 1.3797907526051654 1.2457392367891309 -2.5281685139289531 0.051629207213832524 -0.076543386645567202 1.2498571762239983 -1.2250609367767225 1.1512958393771426 -1.5836477629625691 -0.79092934317536989;-0.0028240435180064416 2.9383719650259748 0.58615495297612585 -0.36905725011353901 0.050736813790524832 0.56917176158362492 0.62821518300569912 -0.045957773470806138 3.3185719105781053 0.46368780992569225 -1.632554565846793 0.026729853012123946 1.0749900499800427;2.8324102682242791 -0.95669635258677566 -1.6413730285995896 -1.7828233780496705 -1.561201502578156 0.042540737789805105 0.81329215839810609 -0.005947154930824948 -2.2679385752469106 0.38695384108507647 2.2599275324187098 1.1416726740255636 1.9925141463494214;1.9528917374936823 -1.652425850597705 1.3639224933420182 0.036923188413839257 0.33160774645846014 1.2090758598188662 2.1930203498235312 -0.19009943211965546 -1.8175106937029664 0.64776204819160776 -0.75687392698224376 -0.55452021692309472 -1.7456133087849424;-1.1951459672388631 0.96061747208462189 1.478277953726731 -0.17164310437346894 0.55090679497595529 -0.49208566516211244 -2.724061312540476 0.56377372832812989 0.19363626082065549 -0.84207426468291757 -1.2593054071580652 -0.41909514613137777 2.9138626650859587;-0.81605651586983829 -0.19864325392995835 -0.067336404972541605 -0.013431343169627921 1.1532520198807248 -4.8688993579911131 -1.0616382715987702 0.11223224077091942 -0.21763684714543591 -0.10596688000995072 1.4981739044565445 -0.33598046405716325 -2.2006831745970521;4.6078883831890005 0.21342920701302387 -1.1432351618360355 -2.5248581994468822 0.070046995299581916 -4.7361259220211469 -0.97542475170392362 -2.063204269744296 3.6367071074311874 1.9566067534652751 2.0558187104515318 4.5783812405120727 8.1302828126395905];

% Layer 3
b3 = 2.7018113106317525;
LW3_2 = [0.99937439979959164 -1.1290212286638821 -0.17369291045551929 0.37301498020128898 -0.065229651725888502 -1.5063912398643973 0.37701744998781211 0.51137581120640019 0.064030347410249183 0.43954850027919568 -0.070056813641881183 2.0466926518304551 -0.4542722909509827];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.201288244766506;
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
