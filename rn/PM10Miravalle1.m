function [Y,Xf,Af] = PM10Miravalle1(X,~,~)
%PM10MIRAVALLE1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:14.
% 
% [Y] = PM10Miravalle1(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00382043935052531;0.0208986415882968;0.056980056980057;0.0063552589768033];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.97512290772195609;2.3321083489691086;-4.7139296174081684;0.9953558892512484;-3.6688450225381182;-0.34255121513945652;-0.0051588757543438377;-0.068479833951904864;2.0714697724255613;-2.5183407569655283;0.071400476148516301];
IW1_1 = [0.69931226616398601 -0.88180619162468821 0.4362620631486675 1.5492714304737187 2.143680924499423 0.4143989213834301;0.095205572980640515 -0.042322352665462352 2.3572677107515245 0.81619223961758225 0.26670400548209483 -0.084312209294614096;-1.3485180513444386 0.6693322714055514 0.3281423084121769 0.1460507518955827 1.1397585572401974 -5.4523911981860644;-1.235977796399524 -0.42867277981858437 -0.024899770315313076 -0.77359432562632557 -0.72085394524204716 -0.65685995249371809;-1.5539808282035663 -0.16536351307724997 -5.8245868091089301 -0.23979484328293288 -0.90192107154227696 0.93770307671778919;-1.3511069518582108 0.095461341570384717 -0.77675611194415872 -0.18962249314660845 -0.20075825953299267 -0.35365282797874414;1.974769879588919 -0.16955777515988618 0.049068431652069019 -0.79565998372241309 -0.86720791887937709 -0.35127047904308517;0.32439690861846032 -1.8044983650184643 -0.34421871502941109 -0.43807061101180145 0.46707938363944668 0.14871126794597206;0.79136257787594189 -1.013342738601791 0.54130667450063208 2.4917645481520245 1.5733685537667101 -0.72829728947126471;0.70021257331001929 -0.81394815495926343 1.5412822675633984 2.1416904320168402 -5.7256519183480652 0.028469102210703454;-0.8341347500940306 -0.59268441646061165 -0.71064557195033562 -0.0037933316307884098 0.85227346965424422 -0.069652949871341824];

% Layer 2
b2 = [-1.1198609186989386;-4.9682312695727999;-8.50219245557963;1.4362086035537167;0.21094321946993372;-0.74607327700057247;-6.0673090641744585;-2.5122247572168623;-0.63003155041697056;1.741680478354745;0.17377239341154554];
LW2_1 = [2.201970549143895 0.069044055074969593 -2.3009982954329629 -0.0021757547951277989 -0.051770563093617786 1.4578464553959107 2.996428115303674 -2.185546929248301 1.1986030443919631 -0.40545064233207012 2.053957989356157;4.5750884804701917 2.2069415672383661 -2.7806624841972054 2.5204836485468336 -0.26777645711853765 9.1519295055003589 3.3413886319054646 -4.3230267335835286 4.3241925639387473 -1.491198010557941 -2.3992271871751103;1.4968520444607465 0.37612755064325748 -1.0352934296512704 -2.9777430781863754 0.47572140750666736 1.3674910846972097 5.5218715065678392 -1.4965181917049404 7.206668351070479 1.6122473628015008 6.514252502247281;-1.2411740727225056 1.3083129752161502 0.60876295812724734 1.9689976234011117 0.30906170873269712 -2.087749536452137 -2.0017915490890021 -0.051097548960246202 -2.748847760577025 -0.87082263633973644 -1.0633021988824907;-0.80628665552805645 0.31642785728292488 -0.043506279899506985 -0.74877798062915513 0.11827046428133396 -1.2312753610842733 0.43717445317799603 0.65718578198335764 -0.63043124324828359 0.94709028869694356 2.253084984694667;-0.060997935383237091 1.890648319024514 0.030173614603952046 -0.2467728092476516 -0.36286549322767558 0.24160138063339909 -0.11509681194845016 1.2707190711930254 -1.2498909307346675 0.78647503932562468 1.1552001704032255;0.28517214137879332 -0.56966567274656554 -0.67967266164512719 2.8729053158931053 0.16315720483769006 -7.5202955194108698 0.72530747613035718 -3.9176590723706162 -1.7499679397757621 -1.4683065569063178 3.4914689250403872;6.9807991451705238 1.0076515503837153 -2.4078123060301837 4.3101949357651277 0.91925281130461289 3.5830745511139739 1.6524712471421463 0.96950728491868288 -0.96450544710730113 -0.30354419729149257 4.0047520981100311;0.099257731554879797 2.049521215819992 0.14743524936770527 -0.20441265896390656 -0.29242568481957104 0.44292429928459465 -0.038048052648598479 1.4448186072818812 -1.4171776210526648 1.0635578373893171 1.2911229866779899;-0.75786469631789621 0.6701254586319747 0.4779876231197539 1.9169989023684977 0.18516738206453737 -1.396527188192813 -1.9910147689135171 -0.060979212026103458 -2.3392839242691426 -0.86323535143932861 -1.8417672781705337;-1.2767336539669911 3.1089501002730695 5.086768332422885 2.522802273820703 3.6510863183677102 -5.080001708562099 0.36943048118605876 1.5847622140348319 -2.0963095316509484 0.33993766465217701 -0.30505284901876301];

% Layer 3
b3 = -0.645109776411119;
LW3_2 = [0.19338147565369798 0.035856477541871469 0.14969808149365504 -1.1422928173593381 0.29132550645577476 1.1457423764224859 0.32482940783450276 -0.046852379818833279 -1.1006326719449047 1.5359123129650898 0.095762378889078459];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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
