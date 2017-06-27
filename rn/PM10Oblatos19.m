function [Y,Xf,Af] = PM10Oblatos19(X,~,~)
%PM10OBLATOS19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:25.
% 
% [Y] = PM10Oblatos19(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;0.00618238021638331;117.647058823529;0.0560224089635854;0.00280033604032484;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.0878964948268393;-2.7921897359596772;-0.95328932738500038;-1.7355539312613026;0.43649412707170471;-2.6157349546319066;2.9754707575459207;-1.6810949797855261;1.8674987658291877;3.2112764294585929;-5.0973124337889493];
IW1_1 = [-0.42273141946389492 -1.8905505232829298 1.4587277472774602 -0.22528315441310098 0.08348249724773027 1.1603906189665978 0.13803744636608031 0.83120620796708511;0.51913669896634596 1.5116825187401661 -2.1669432886141453 0.81646038672535037 -0.17040149249896294 -0.57352255368364879 -0.12069349263036058 -0.44895649547415306;0.54676101915245601 -0.71168930183799173 -0.36889964330310177 -0.19687329923400113 -0.13464786331995776 0.31283555291634035 -0.02431671650823693 0.24330514827410407;0.070288076748931783 0.93238627373457883 -2.7460099756817313 2.0851273325741095 -1.3788840770623008 -1.8787674337979676 0.40623203311076445 0.72599352761368985;-0.88349485472862777 0.39329455137450903 0.13556288063771929 0.58048834003673222 0.21546995391626581 -0.72927511017668134 -0.24293790708750157 -0.27094102181343782;0.30539501114402767 0.84560193900532865 2.6045255225006563 1.6849698305473151 -8.1769440113986924 -0.58768016163584758 0.15736422638690453 0.051518161816797095;-3.0067034216735578 -0.94378068888200473 2.8969885644720859 -0.19048390403509979 1.1803582053451684 -0.21380489539328282 0.32053907564645545 0.88192196112327381;-1.3589779991927988 0.094378482280990952 2.0723384772974289 1.8915292401060728 0.035348646443457844 2.5635939228331077 -1.971979908460757 -0.63304844414945183;-0.80945211388816518 -1.1457287885707863 3.7761468727981233 -2.1556325276157016 1.0678472456910804 0.3318419479487793 -0.39705341663779581 -1.0719872781983522;2.3616624597531848 -1.784732488468407 1.5920496862694358 -0.17650676587352873 -0.5450127918105101 -1.9615576140298701 -1.0738815529634376 0.26093087646176011;-0.69071456853940905 0.18535632695869289 0.61832892258839889 -1.6264829809584183 0.37005733236583827 1.9831288494430901 0.51536173093664228 -2.3359631642717669];

% Layer 2
b2 = [-4.016116852723985;-2.0640388839186219;-1.8377862275773786;-2.0449282144973706;-0.2224870915921936;3.5950078011809818;-2.0753696702708191;-0.13443037921929002;-0.80247305260783974;4.4421870228738465;-3.1046547935688169];
LW2_1 = [0.098637967293164749 -3.4592161025381354 -1.8081144782871352 2.4674825634696647 -0.23043397975849259 0.55956597724350865 -2.8318181543990275 0.033076258599991304 -0.23436429350446997 -0.41234606628530068 1.6732344466982001;-0.20783117591829436 -0.23937787952036105 -3.9198958476629153 -0.20427678002035993 -1.6648446182538217 0.26269176914704589 -1.4314870429177249 0.15892833636389841 -0.40357241195309584 0.83407241921263431 1.1952736652606566;-0.21790328681143217 -0.66260641344907489 1.7488601518267992 0.1208915383586868 0.64058892537442347 -0.0023803216082863613 -0.65472497040288347 -0.5376040105595733 0.25913384635476033 0.29338877543663366 -0.32525067396309865;1.0743406933767132 1.333107667272813 2.7578320072881106 0.010100134738867384 1.0692530190373832 -0.084017809950568803 -0.04344035826470035 -0.51348912235656541 0.56440477284651547 -0.36745475294091984 -2.4172106176414294;-1.0221699961585877 -0.50220818766814246 1.8379377342420349 -0.24024233816185836 0.28613726565793252 -0.87998145845107345 0.82830788531080035 -2.8955480106347413 0.94836103412825556 -0.8362980302867572 2.0781336324638482;1.7199475951636338 1.8096907421753976 1.5970838644945848 0.19597867429759339 -0.78326841758192323 1.5721650427684273 -1.085333978400471 2.1823802374972474 0.31963431181543522 0.85598752872636208 -0.86955831849468768;-0.56102136583878803 -1.025342127470972 1.4616278386923152 0.47725415335634946 0.59048816733507958 -0.045094324795715672 0.68095945684264281 -0.042782225186404441 0.42007259326865332 -0.37723007965156152 -1.746964966345691;1.2200157388461048 2.9228428113009501 -1.498179952110299 0.13194022372100481 -0.79228731563575905 0.098371169384986468 0.066344249854156656 -1.1474059325067478 1.9765806515838507 -0.61434803788270587 -0.1072208415790466;-0.3777507063296206 -0.96851145289362262 1.0554011304869677 0.70244861550341475 0.15356544654833984 -0.066663440210481761 0.16331176923906557 -0.0093203570137237041 0.5363306476213775 -0.42022926396073235 -0.8378453069451206;0.84951062391904764 0.61740695045607474 1.1219128404424348 0.60361377983766962 0.045429763340051332 -0.18476674744872978 -1.0960619018783684 0.092227879222289033 0.19910834957491683 -0.40249339625190023 1.9887352019858116;-0.88889335015938287 0.82128871711954132 -1.739983733022054 0.75385980328560975 1.8833861134404695 -1.5178975992675228 4.5108776765961949 2.7815957237067517 -0.74169333379335955 -1.5897162367964175 1.6285366835023145];

% Layer 3
b3 = -1.0107772347507709;
LW3_2 = [-0.35595023999394421 0.5829872526683284 -1.9575864541867989 1.2660244309925228 -0.20514486619341815 -0.22445848971933821 -2.6354919540229034 -0.22988874900113523 2.7675762495571714 -1.0681081075902599 0.12704408901300973];

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