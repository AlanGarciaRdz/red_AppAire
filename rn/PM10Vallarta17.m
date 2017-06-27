function [Y,Xf,Af] = PM10Vallarta17(X,~,~)
%PM10VALLARTA17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:48.
% 
% [Y] = PM10Vallarta17(X,~,~) takes these arguments:
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
b1 = [2.9232929918056794;2.1387416913188249;-2.6213691423497134;-0.01566507120876192;0.0070232770013175239;1.7590295415844066;1.1224116690214694;-0.30195094985539733;0.75573211406297325;2.005867850892217;1.1986180017829691;2.4922680432419622];
IW1_1 = [-0.8856841714306346 1.8035301427661561 0.10368978167387533 -0.2433906937266202 0.061930606658290963 -0.63208468847572752 1.0945570462827168 0.043554438826694818;-1.7570284599264845 -1.266773288877562 0.35439917316639158 -0.5332845651925362 0.4115967313921064 0.77837218927427398 0.2734775121717406 -0.12573677639527739;1.0832643982275829 -0.44637047063979468 -0.42653931232315323 0.26994516006670832 -0.08422891687255224 -1.6933058465588693 -0.46739419306797075 0.22243536448881782;0.48926976090972918 -0.63428139817004769 -0.15165637702085899 -0.013597634765158522 -0.39718531461596535 -0.16062099735060831 0.012057776132608311 -0.038159034750335927;0.39839795354158164 -0.11736469837821518 -0.29025399455173828 0.29926930188382939 1.0691631156524328 0.52821047170065394 -0.65618881197426493 -0.25125053761788707;-1.0070873239439615 1.3983015759059194 0.9765229232905962 1.1123230852638688 -1.9164273706548678 -0.43185258406865634 0.34301840311731452 0.57713058415148544;0.12692425174181349 3.1951352073654045 0.99160540363662186 -1.4497714044260985 -1.1566715765911417 0.41530542320981623 -0.39137966401857782 1.1180389090649443;1.0253140765002406 1.3172263069635541 -0.19952932501312229 -0.034169611536737761 0.97638423108284567 -2.2614495981207328 0.17678767916187851 -0.008047799089081464;-1.8912228406579041 -0.81425866047504691 -0.17697861403686968 1.8104015483964331 0.82721122719252982 -0.099017543295254612 0.6495394389369219 -1.7401370483635596;2.0904751122237881 -0.72186841717343342 -0.3544785291906547 -0.29912393379695906 0.72124176097762749 1.210072101738243 0.047020103290589151 -0.6569119843669633;0.29266934603748002 -1.1456893184860091 -0.23807653342945334 0.010616681577543117 0.87904368403850641 -0.019825745535372481 -0.0062623820185572698 0.29663216258679798;3.4524509630973492 -0.56725611657126662 -0.3843297954861023 -0.49201426587929709 0.23898805861551931 -0.38654952134662707 -0.031781750880743469 0.58089686955253017];

% Layer 2
b2 = [0.94119178037821549;1.3424460636715254;-0.979018196817252;0.23521003798754067;-0.54331630709021084;0.036076672511673562;1.5393010550971404;-1.272331668277233;-1.0425729692327785;1.7806041689739069;1.81315948204566;2.3986393864746298];
LW2_1 = [-1.4694923233115247 0.047654443386754258 0.92818787626070676 0.90183583757814278 0.5793647584122138 0.74062470936153924 0.88445711495368007 -0.97557785026136223 0.32687984513148782 -0.33371498401554173 1.8241971509235533 -0.17580266375760817;-1.3016341895707084 -1.4906111251686791 -2.8651145674752554 -0.30163554334214482 -0.28680338792163684 -1.0771749167775186 0.86282703937667005 -0.66180515436346432 -0.04705370786219764 0.23175912377090846 0.66968425776282303 -0.49542383601287204;0.53109519963790941 0.91344992623328025 1.3887597392242048 0.77107091573602804 0.67914513630907325 -0.56977340471152726 0.27475807422976123 -0.74658881335923122 0.21532428607891657 -0.662524618819744 -0.68936387314786518 0.96705988935836074;0.63642348187058184 0.41993148895017929 1.8221052728225502 -0.993209441430564 -1.9491019938875136 0.5114370249802408 -0.52692790522844335 -0.33242071217423663 -0.73652519352526158 -0.2417305566082423 -2.6354986007574022 0.76408151786657819;-0.38545662776381806 0.16644684942021121 0.78243264403420099 0.021800815956707915 -1.578606583463132 0.76931799077748164 0.28011188770721851 0.042735541523996758 -0.54811878506292944 0.65294223008617602 1.0220373866757941 -1.7287447829119378;-0.012402326030283607 0.65954772375184256 1.6922941879051798 -0.59547099337248321 -0.92989560738474109 0.69403688490019289 -0.41207738414366329 1.3209497798668619 -0.24872122966241739 1.4337203543237655 1.416636341754586 -1.4958129304698979;1.5532692187613495 0.90644890559825086 0.22934835962274308 0.37736969222201927 -0.86378399374017623 -0.85094860008958029 -0.73298296137890773 -1.4864284582302052 1.0818953612538054 1.3206702892685549 -1.3514847916870749 0.49524188104013384;-0.30476205724013472 0.35250888348446091 2.021171007659833 0.52444955649327907 -1.6328907016018108 0.40854466468652484 -0.45319469962114645 0.46808136910630421 0.16680678017689576 -0.81799535584705785 0.12098045215912046 0.43481765103229464;-1.2868942140060848 -1.9062712282221896 -2.9136323494528362 1.0919958931805815 -1.2906918033763681 0.35378546064627614 -0.081823132637577359 0.80653926105823426 -0.18590919705158526 0.28900674575282564 1.1114968052726524 -0.48395017702972482;0.63415745807649659 -0.0037260031651630519 -1.1160409074923763 0.38918117077743086 0.71291263410124694 0.92239621924398563 -0.43726264453615055 1.3346785133103216 0.43456469349714127 1.0218767124778845 1.797240874275593 0.9453473991790825;-0.15874536986206833 -0.83902978898997316 -0.41036035652697145 0.14939658667468508 -0.49271308595343427 0.84854797366702095 -0.68956719089139429 0.84863972780559616 -0.46135858851868133 0.050884619087189609 -0.878166540666103 -0.1619248065575718;-0.31264990001452675 -0.26842920831934736 1.4595264476671712 1.6154966910452888 -0.57196392701308185 0.051836943427930673 0.023429375315001989 0.56992083819868444 -0.39136939266257553 0.041043180094047928 0.1827791193524736 -0.44033843273289758];

% Layer 3
b3 = -0.25945837339471212;
LW3_2 = [-0.36140745689217219 -0.93372106788177944 2.1269855166086176 -0.34324684963637198 0.55486698572738014 -0.45001437277654605 -0.57609399284897789 -1.3961182921415092 0.70685813423460475 1.0044880519109194 1.3046462027479067 -1.3886806116317345];

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
