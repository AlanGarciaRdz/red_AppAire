function [Y,Xf,Af] = NOXAtemajac18(X,~,~)
%NOXATEMAJAC18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:16.
% 
% [Y] = NOXAtemajac18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.04040404040404;16.1290322580645;0.0210748155953635;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.260642733023309;2.6871541211259604;-2.4281574927000085;-0.35515542367717562;5.2229029767643524;-0.53121284853948603;-0.96584931686386055;0.1071581781966347;-0.65832645410547519;0.42455374994355333;-0.68607012820189606;-2.0024804472483071;3.1511975598422328];
IW1_1 = [-1.4293887155665985 -0.57174879771293585 2.0758263211808576 0.74589368453003024 -1.3914189561354076 -2.1856001419610234 0.14790050199786581 0.35994857676955277;-1.8092668724076599 2.9615617934961631 -0.62456291721385859 -0.47414048720794139 0.94687557245019371 0.71470614224586204 0.087899483935904799 0.81977694019442349;-0.61240707733731736 -0.58473261723967884 0.7876075438072494 -1.3459619337333357 -0.60354970419322496 -2.2568711413359437 -0.19344181423059253 -1.0957234316873383;0.94342164767670089 -2.497342441449895 1.9113363632827078 0.050109132438129519 0.042751584122113384 -1.9548851830519656 -0.20485575673020698 0.58853314717794369;0.44314198913419683 0.099545839038516104 5.664805816325222 -1.0301413591748467 0.65342488962484335 2.4266896188555149 -0.11234804383849464 0.1125515053577445;0.59713657601582282 -1.3496090900130739 -0.052160019963568047 0.53399143557685425 0.15898187562244662 1.0744645935684565 0.1975756632376065 0.13359374941637772;0.22792909031388656 7.2498334731797494 0.63630933299696413 -0.19645455744163379 -0.37847828026071056 -0.67650083330589317 -0.14498081109407518 0.25885811849603257;1.5203606976009922 -0.02012218373361398 -1.4161923540010042 1.1471521332742716 2.6693774424535279 0.20167282125416811 -0.636081563365263 -0.64114562877018988;0.069668713461868884 -0.13816449476810816 0.50650594115599512 -1.2021533125392403 1.1833500201697296 1.5463167800223043 0.26763536142329813 -0.99455435036788153;-1.357827285664059 1.1615974286321917 2.6290316159909279 -0.81875523076673629 -2.1231049993342554 1.1075271104143229 0.28578817638196452 0.9250018742635191;-0.49874266470481404 0.093885388711967305 -1.4383966833635073 1.064233572746202 -1.1156289532877253 0.052360863538277597 -0.44346204320858157 1.4584712502996293;-0.78124772779516827 -2.4834655717665841 0.37046583562398794 -0.45373618437237639 -0.31664875935080528 -0.16184815326541527 -0.0909400226021118 -0.40882875775529565;1.6028397105417962 -0.47180934015972298 0.51067617260353704 -1.5490639265505299 2.447397993635847 0.14207119286139139 0.12038638304265592 -0.40738345471480764];

% Layer 2
b2 = [1.6079840363332223;0.065059828149868104;-0.29222747008863825;-0.58556275448279094;-1.1035464633793299;3.293724093983029;1.1220543474235498;1.9411543442151507;1.223107820351607;0.73286031232566673;0.5690689243499657;-1.4988301841361751;1.8251629053498266];
LW2_1 = [0.062863871138046312 1.1032399951459686 0.17546019181536099 -0.38696198918652236 1.2563523997772237 0.19776512179850009 -0.88391646978302985 1.208455545140515 -1.2756861587049964 0.86099360969089656 -0.45795062413080084 1.9630305997976925 0.23911889453389817;-0.21219385080118786 1.4697147739890541 0.55724935892325356 0.19238557040545404 0.46589450462841586 -0.49472848146799431 1.3995502935214901 -0.53970465311117422 0.67713917295410087 0.13989307649009444 0.3767500776758711 -1.6031019767914425 -0.54388262763531892;0.20284199091789415 -0.59568877758225269 -0.021725703075846529 -0.97701275472997173 0.8946116943420509 -0.60113641211436897 -0.76762591888329235 -0.21893778808711367 -0.81810932371040523 0.055408894314432092 -0.96366059776020718 -0.1265074729043989 -1.2967872822357041;-0.22471458597717103 1.0981786346259008 0.28551103203109585 0.036404620726446457 0.55804353566463705 -0.85893935345576899 0.51146455248441225 -0.57725348718191238 0.20142519194474948 0.20659571809142135 -0.087530585839866698 -1.5913739921534844 -0.75279396222900685;0.39741387796521799 -0.61028773483039955 -0.4501508525588177 -0.9699797498941336 0.76850719004656431 -0.49855152545869674 0.7169550002946784 0.29024027533859847 -1.0981442006424627 0.28384318236182204 -1.0636322234976341 -0.021853884031019247 -0.65354107784455373;0.0048350361839041914 0.23552394146258779 -2.2163956998603154 0.72971083720629271 1.4113215013015783 1.6061774718603077 -1.6519136473511431 0.42818855053306881 -2.9848761470667218 1.4378273300371398 -0.26567698934086958 -1.0601658760355388 2.1884453601298532;0.16718610307627116 0.34051388594845061 -0.98086354704230894 0.22709128262849199 -0.76118430400282555 -0.68552799503328943 -0.077283273772103062 -0.65303480681735271 -0.093869477216896882 -0.49373952964786788 -0.6583024812563496 0.49499414259604618 -0.55393385281467511;0.44598017962457481 0.55302950769493586 -0.87276019242547831 1.0481060640327087 -0.69477335305419452 -2.09073509901497 1.1715788889503504 -0.038034174733781206 0.086166626447660766 0.1091439805788641 -0.47894905744948796 1.3711931366073662 -1.5685533315236668;0.81176602618334226 0.73902590491136644 -0.72978459769257031 1.3636239181837713 0.87274048887162858 -1.3335446689703445 0.29581550515225752 -0.29952323009956011 -1.6180683801787199 -0.31755506635855385 0.10906715870049785 0.69048478762844734 -0.15755596722712817;0.062390306268361777 -0.02203643948566681 0.142817957438752 0.09287552236740948 -0.30799993485592914 -0.21012142348913287 0.60168793403666188 0.16949901751581117 -1.8135023731535447 -0.5301604497066148 -0.9883402284113102 -0.61154495359028194 0.82642037753332076;0.05856673171343809 0.2591327322097644 -0.30565591665722164 1.0704928004964673 -0.84922415810724761 0.19045761613781304 0.92168396239116235 0.1991423817889153 0.084283537545144865 -0.26296543989238075 0.20686702767514745 0.17758861910646764 0.91870579661466734;0.26830473331218785 -0.20050006322497022 -0.13908768378096242 -0.80896787989546515 0.8382597400284989 -0.26067409408483688 0.47516360169073485 0.42150667333004754 -0.94565610399769462 0.36263789159813042 -0.789659419106153 -0.38673977392163084 -0.54838778473867822;0.055219701271425468 0.50326878875269065 0.11631168061070037 0.32640060134017052 -0.52268958231199425 -0.23688088904348734 1.2069019290822709 0.13571673342548124 -1.1654922161153953 -0.40552814535051507 -0.49198336541174464 -0.37780074851479778 0.21149038687359567];

% Layer 3
b3 = 0.38751636083367452;
LW3_2 = [0.80612846003621319 0.80255371496397987 1.139485729373253 -0.83091100267590523 2.9775589128456894 -1.4370661215386673 -1.2771309558995756 -0.31020848673206008 -0.21153270705092658 -1.3570842565588743 0.85260729583009287 -3.3370003701202364 1.6966208666625091];

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