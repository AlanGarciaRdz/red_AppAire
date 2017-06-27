function [Y,Xf,Af] = PM10Atemajac4(X,~,~)
%PM10ATEMAJAC4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:55.
% 
% [Y] = PM10Atemajac4(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00968992248062015;166.666666666667;0.0561797752808989;0.00614628149969269];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.7931761851072427;-0.29614501435517127;-1.1768107384452844;-2.7139441249215217;1.5725559896377901;-0.44197112756127827;-3.2730440137358547;-1.9474957472756391;-1.5186368448338374;2.1848557194233136;2.6570532425718394;5.1108174117798786];
IW1_1 = [-4.2641548538596554 0.63106265204309731 -0.70053958563161212 0.056294763222444352 0.62671526110751152 -0.4193828502543917;-0.26667719711643256 -1.1936885241881339 -1.6519349689651501 0.016589657514012753 0.42929166644978051 -0.14355418460535263;0.16920079406217536 3.0824242241385713 0.073527620984826417 -0.55478911877575365 -1.2378803141691139 0.012124345792330625;0.40285253766936951 -0.63685247026410619 -3.2224133853601185 0.015452024655539588 -1.5054702910093603 -0.041261680504090972;-3.3426807718103659 -0.24247038483279204 -1.5465526621077701 -0.93743521928727003 -0.45269116857284919 -0.079396710881558488;0.21920479878536572 -0.26614859104633143 -2.6883657707506914 -2.7156534914905581 -2.8539652489807872 -1.619809321204057;-0.7882342200764082 0.61381799450195351 1.2060595544291648 -0.50595268813879424 -1.7711363975499359 -2.7471486329945112;-0.042339074195788126 -4.902246221278828 1.9130617700893093 -0.042752912150168389 0.87733609072439145 0.064462132738045533;-0.019695895414885201 0.27193032969439068 -1.5388065001707312 -0.021684161058758242 0.13198398135601164 0.015171774724660666;1.4887867796508922 2.1528040577657839 -1.1979622387651805 0.2711969860914818 -2.2612153154604453 -0.054657690764830583;3.9267202383375572 1.1396339472504102 -1.39513505522433 -1.1286733810547496 0.56891525964073675 0.29808769173261973;2.8743387901706026 -1.6249163357337659 0.27425595320873264 0.30759664646252366 -2.154338040324741 0.2313175517614964];

% Layer 2
b2 = [0.79642945270796828;-0.3803480296634475;-2.4751962833503445;1.1294023606532257;-0.9871095603177561;-1.0297076469737367;-0.65663056424345068;-0.23843079212911505;-2.2187903186135527;1.4299741025135284;0.36863873389587898;0.74298258703344289];
LW2_1 = [-0.58823383765012949 -2.5981813920692045 0.19568606263423011 -0.44889990025101467 0.51425148355200678 0.55231458885416806 -0.38878934504302332 0.34080838469623831 -2.0904948725989976 -0.8820942819304648 0.26398803906813462 1.6406355954169913;0.88574588429782841 0.34318630883342488 -4.8679797575090591 -0.2367452584411214 0.13315588507250814 -0.92630430716747314 0.60521675815171838 0.70289171829048602 1.3032261585280056 -3.0154281383706021 1.8233304115217981 0.79232741502878123;1.5018564197686932 -1.9746364431158394 0.45493450899774385 -0.43458306680906461 -0.21856465142462381 -0.032581624311414668 1.1554459962982275 1.1097793822019866 2.000157081143302 4.2473227495832715 0.82343071140284152 -1.3950568989462178;1.082031169224108 -1.4770946328621748 2.1595114913413096 0.72502538811106254 1.0601776672268819 0.22927836580519656 -0.81172118847882802 -0.17303704222201521 0.2765566753505091 -2.7082574039484486 0.3138989533518558 -1.0279179543893433;-0.52472586947917299 -1.7865455558712868 1.1966480535435506 -1.7124666282020666 0.85010250755684458 -0.018245213633715701 -0.80796494039958222 -1.6649595987424897 -0.46409364270163339 2.2177949708765743 -0.052295890572257878 -1.0383679787067146;-1.4184017270405784 -0.14502409397161467 -1.5748046069452222 -0.67652169433621778 0.48442119314016091 0.19955772237086231 0.49993830229123537 0.2230777465107513 0.59953618739180714 1.4815301613118559 -0.86308318535792794 1.761926013976238;1.1662181977349486 1.7855675929322594 2.2157428795444991 -0.98220663147539233 -0.21830539918835223 -0.50653731936025914 -0.86711888512648461 -1.319957759197453 1.2661600555715888 -1.1271568944275949 0.78933391504481931 0.70651195104696762;0.63705841987826139 0.89231771972685425 -2.0459820200879841 -2.9567100481764603 -3.3486735106715169 -1.4419503952180697 0.80146026588992481 1.2175122999868337 2.3698319485575823 -0.91051779780140096 0.75585567178847812 0.39662680443594223;-0.46548551019493067 2.0551361422274876 1.6796538852727534 1.892216148397496 1.0607272788732387 0.24528236806523693 0.039402139405127587 0.06287545475346086 0.68592895729166448 0.58764586022610299 0.0079456216480351394 -2.5558989568859154;4.5978180238992632 0.52661483212656113 -0.93910071728724986 -1.9277454836447367 0.3356297792236313 1.9804250759108295 -0.50181427594124395 1.3313122852663424 0.99336109625159896 0.96228567654961195 0.71161335024773675 -0.14973221274020246;2.5065081534555618 -3.1028726229209638 0.55087682086692968 0.23774529319491483 -0.91033056854972083 0.99871761338885401 0.50868005083269763 -0.50366568059758077 -2.8673246667343451 -2.6754071701176971 0.32882888086394974 2.3461028481888122;0.82001275349024894 -0.86208560039435189 -0.57540447725677213 -0.68749468059096241 -0.27674505832089247 0.036863124440237462 0.66581739180766242 -0.67244291748517959 0.14980605119179011 0.27322368551045606 -0.52596797265727391 0.24621689962832233];

% Layer 3
b3 = -0.6432683978360666;
LW3_2 = [0.69979109148101359 0.070480429263445082 -0.43999137867852622 -0.35083731747975921 -0.2240535174211466 -0.92370881423341045 -0.25780122766460289 -0.046326265701899558 0.32811124025143551 -0.55472882279319113 -0.38943267719219388 0.92178425411769394];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00968992248062015;
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