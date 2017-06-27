function [Y,Xf,Af] = NOXAguilas18(X,~,~)
%NOXAGUILAS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:13.
% 
% [Y] = NOXAguilas18(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;17.8571428571429;0.00666000666000666;0.02;0.0561797752808989;0.00588581518540318;0.125;4.5045045045045;2.48447204968944];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.14664629191491743;7.7655395822391577;-1.6275766349646306;-1.2242906413148613;-1.0801742894885464;-0.22545402227554973;-0.1526999120180372;1.852411916556935;-1.3799258690868168;1.041494882794801];
IW1_1 = [-1.0088588395261802 -0.34768819528451028 -0.42550934965225318 -0.98815983132456542 1.3260699851940436 0.3704275827030713 0.18768721354151208 -0.0010838427550173267 -0.013027709961548449 -0.71688285326694212 0.31542240725262949 -0.28319334779400474;-0.97914493831458005 0.091881138593499861 -1.2074187283063782 4.499354056565446 -0.41020604288824208 -0.57187427109701494 -0.026285523936082959 -2.1983218669886448 -0.96643025498803603 -0.51237783210741339 0.87276258022508024 2.1713704611530109;0.82078493425374943 0.066733824601226913 0.72310746707370843 -1.3724131612433286 -1.3250709855618672 -0.1670260836047065 -0.19887552278662116 -0.49175964319394466 -0.036476009115896997 0.085851639674572988 -0.096914051920908156 -0.069927522223397973;0.97133686377159378 -1.1923590861006896 0.37239218437442417 0.64628464834380817 0.40218675043102048 -1.2547681749799526 0.60924318835184454 2.139283063145005 0.20869518703229972 0.3948982349215911 0.10173663233071845 0.014016577095977617;0.00069153331517371464 3.9312755514648159 -1.6036785097645163 0.22877233381192288 0.024982155519799952 0.056684636580218536 0.97488142795514054 -0.27571496488843827 -0.39611563716386883 0.13136268118962252 0.46597917450387927 0.31777755508189814;-3.5924394117241807 -0.50922885308851074 0.70300376113346486 -1.9472544594125849 -0.96713623437777241 -0.76005015251939056 -1.4622180749018749 0.65785473333248312 0.055823506852137661 -1.1735560908649423 -1.615341552509356 0.37126819683953255;0.11104269794286672 3.3491802057429485 0.065101581048105664 0.30319150557223179 0.57422764398212867 -0.17251685431679725 -0.049134185331889638 0.0034235021604900441 -0.048510380481237451 0.084134891255542146 0.37638264905552082 0.010466920473098416;2.7661430575109751 -0.062475048935654282 1.1673366878042182 -1.3637942119533035 0.19536875460282999 -0.094063242395728497 -0.2678235805050061 -1.4449676431672818 -0.089062783910762208 -0.20633330626279597 -0.20567740662775266 -0.030320948736500493;0.56932795581483486 -0.81626153772137255 0.54933758324764437 -0.077178413332130283 -0.0061289881515282224 -0.97847222475577644 0.36644568136270239 1.2181572164343166 0.082872504126568686 0.23277773093790041 0.011920035254411585 0.13154302212990862;-0.35565034437761212 -0.8066414862522161 -0.52340691353797753 0.52943790590517381 1.7646562801980785 -0.36488578196014171 0.23535260823214743 -0.20405070467957678 -0.053395126552668655 -0.51342947375599912 0.089422712441371871 -0.15379815168902242];

% Layer 2
b2 = [-2.3734505858739801;-2.0012481710137942;-1.1004783937370419;-1.0764846842261511;-1.7838094408526504;-1.1711027059032879;1.1700304772281347;0.60229693493618841;-0.46230782852334618;0.88454136811764628];
LW2_1 = [1.5380890038049138 -2.1388299503704378 3.1369167433015357 -0.26420275559662876 0.079476964238852602 2.2981754105388932 -1.3606493014944214 -1.3893796010179662 0.5170609547678745 -0.65711305722275981;1.0483907994032338 -2.778883359040341 2.7187466625138281 -1.1479011214725745 -0.31253248903388142 1.8543869457175799 -1.5779712595602788 -1.0412432401940916 1.4363536675123592 -0.27838297158109931;-0.76964108680082366 -1.4505942971325072 0.29281775492258899 2.364460399067033 -0.92163109653400388 -1.2839277384616727 -0.21863956321833344 -3.4532211662817724 -3.0276707368077949 1.0039831447874319;-2.0802436616192721 -1.0023577055479889 1.2995290936893744 1.7404943897972083 2.9525003780219365 -0.037489641734460094 -3.5865457509377054 -0.90357370417410487 -2.0925340729998432 -0.28757326493254759;-2.1437815678076166 -2.7803313832305907 4.6440021263200055 -1.5796629030177274 -2.4219152419009249 -1.0451636240369286 1.7298649776680246 -5.9266933861589699 -2.1768593610535016 3.184609538619557;-0.37006442287983893 0.86122765404298252 0.40840524674715539 0.84361760234384564 -1.3122559152590425 -0.66380735049815498 0.60626562681098384 -1.1920459569993047 -1.111484471147508 0.71198026335183617;2.1307300842590795 1.0210969245429595 -1.0404413991336472 -1.2239873710157976 -2.7174530589261501 0.043797820883687277 3.3214088004798814 0.68014640455465691 1.5538481376108166 0.23568562695010803;0.85397424735462091 -0.033386979590815144 0.80002056472212979 0.29954662469569415 -0.089440860031159475 0.56045064547497525 1.3463625905432479 -0.37864147987135538 -0.1513739877788248 -0.68637067133349017;-0.72233596561106472 -0.095292881797499382 -0.3518641615957484 -0.068909276974481848 -0.044204663163630559 -0.31331588747637795 -1.1472140494379537 0.17615026911390191 -0.32635527492654859 0.69503949764781703;1.0424301893302954 -0.25290178648167472 1.2597423252824045 0.30049092242958314 -0.29549856987986439 0.81183472027259052 1.6109576443493958 -0.62011280008779812 -0.29493318558557913 -0.75250060006579989];

% Layer 3
b3 = -1.1315966246428335;
LW3_2 = [-2.7993662070765937 2.4346974886669019 -1.9215294725701602 -1.4807310000136111 1.7629643823633461 0.38292471851958088 -1.5879533197035072 8.8035214063742711 4.7728098544505295 -3.9315638364168337];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 5.42005420054201;
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
