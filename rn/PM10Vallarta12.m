function [Y,Xf,Af] = PM10Vallarta12(X,~,~)
%PM10VALLARTA12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:46.
% 
% [Y] = PM10Vallarta12(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.12820512820513;0.00782778864970646;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [-5.6132054296555376;-5.6223272146783136;-1.4973903247166307;0.86288973195796259;0.55974910380277854;0.62108670350708706;-0.1824161962000467;-0.86499261785562498;6.4191923891766463;0.60268188713614357;-0.98162121717530448];
IW1_1 = [0.37809535310733638 0.88683967011599107 -3.7029954572630843 1.6164610101360879 -1.4088501858458846 1.980943370731949 -1.1925427646174391 0.22194237583227289;0.38479115978829354 -1.2237829414169377 -1.09082431008457 0.55606186674224944 -0.40160182226788743 0.20017047967157903 -4.4548682472021195 -0.17409424438347226;0.23858479105399735 -1.849956015418238 -0.48099039243040403 0.50162938475554364 -0.63048992932610892 -2.313160932184581 -0.28013145275593448 0.33305756582166579;0.79168843887386753 -1.5674908605516491 0.78133942486207208 0.79567059733075463 1.0306483332103227 2.4275310988139718 -0.037239769715139717 -2.0005550027818622;5.5367067905016949 0.5191362916780935 2.1670985289161306 -1.0324743810953509 -5.3376573120808679 -3.2217967643428618 0.24414696632718774 0.22965623742641547;-1.028919712864566 -1.3094202126992356 -0.15947376001622529 0.29246612057146681 0.79475737070721553 -0.28996118803659182 -0.10136498090952256 -0.18345556970187943;0.0018673418404624581 -0.090963269233844304 -0.31926393779391504 0.54372499971192645 0.73762491127481999 -2.0357290455986314 -0.058643740673653327 -0.3257848870933287;-0.11597269858511017 1.2793557623535989 -0.19904499257299785 0.29264524948454479 -2.4533290854772054 -0.74871490569598953 0.068449557363691516 0.5506839094067002;-0.48927307316607627 0.19981560263451079 0.79141405334410531 -1.1968617557321173 -0.15856473701723395 0.73378451515594678 6.3677984314035472 0.29373616469122116;0.82879341990659772 0.24327308040796825 -0.20846137416149094 -0.29102071463946311 0.12475813382414902 1.9615657511392612 -0.010808832482248024 0.3075501388529111;0.0154135122994573 -0.13984049736859486 0.032585235435882196 0.089420001359544782 -0.25205856720208436 -2.3780250262353873 -0.016977513454618828 -0.14841079649355599];

% Layer 2
b2 = [7.1175971738525607;1.9948780432397233;-3.542001983667415;-3.9400803587237565;-1.3321113461736416;-2.3230651544955281;-1.9680370117966175;-1.793363147892824;0.32393717451465787;-1.5870777145500174;4.3043564958950373];
LW2_1 = [-0.4857293065427935 1.7550532831015779 -6.2418693094910269 0.44888972426931489 -0.81199522507774091 0.5687623931116258 2.6174507557679805 1.3822249729904275 2.8534104029716323 0.55691160469210044 -1.4930170034757781;-0.36915679011099689 -0.44911034099275216 2.4540125332217677 -0.45474723369928449 -1.2735299019830781 -3.4941413724574577 -1.121134541338215 -2.2540462182883698 1.5640083583506132 -0.62655579795007765 0.033425044613567725;2.5617760730906971 0.99963773635252551 0.68174339822433616 0.53026788641318001 -1.8244789371458221 -0.81524697706165028 0.76680444924628577 1.757035332022149 0.75244603177503722 0.21918943071755931 5.9979937922086313;-0.66059565823665878 0.29299224858725492 0.48487177831579259 -5.1318365995641555 -3.664993530131166 -1.8671775681477096 -0.051205598553363943 0.025278929856185281 -1.2249501253307169 1.9589552859424435 -1.2551033915389342;-0.34690493127502775 -0.85164089031008938 -0.22844287279776965 0.12635390517062653 1.177200293493007 0.8227159665735897 -1.2366568164612517 0.85401044836902595 -2.2775366217837996 -1.8041774135531843 -1.0744472810695007;-2.4224279870642897 0.94455983124163945 3.0502177315944805 -0.52571069745245724 0.026230187273371262 -4.266834288364131 1.9980140978856846 -0.60446536035726917 0.16154067334720718 -5.9489114571293795 -6.6566131645916968;0.020384669457597038 -0.089188854043389165 0.52625407131519253 -4.9228757881531573 -3.4893877443342078 -1.6471186554077599 -0.76759745061723195 -1.3478135563234874 -1.2571379978603621 1.539923065484825 -0.81499539118362896;-3.2167598149619945 0.13023604291561497 -0.50800244617693491 -1.1686954255232225 1.6927749323776402 -0.54863094101429855 3.5496868302137186 -2.1971144157363356 0.48850464050442749 0.062786901096247211 -3.3519226689387427;1.3369671417137297 -0.29681912114532305 3.2497646998354432 -5.5038476818733821 -0.1745670875659211 0.22926770550079348 2.5296496598348481 -1.6976933671359922 -0.3407938513632951 3.9618293942167209 -1.2515797064574119;-0.88836037015661418 -0.58837788009526293 -0.47253066820348583 -0.070276315740591802 0.96045756727995302 0.86133370849474189 -0.44084515605675062 0.36917208542888641 -1.8641431919040508 -1.2985364017872061 -1.0703796646621044;0.03352764748126915 8.7109364061486669 -2.0494432245795342 -1.0284870067989702 2.0324087231476491 3.3959057020713002 1.2639669800058895 0.022934602635559687 3.1639093165359902 1.8573071470167219 2.6025127357607527];

% Layer 3
b3 = -0.49936123638899255;
LW3_2 = [-1.8650495504977649 -0.31332553193809176 -1.4677973767083818 1.8052860618193158 1.3143532403460958 0.35283579790827996 -1.8911970138868346 0.3772415480786705 -0.017933451674587687 -1.861068917314658 -0.20193645343128952];

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
