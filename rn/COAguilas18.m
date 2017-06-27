function [Y,Xf,Af] = COAguilas18(X,~,~)
%COAGUILAS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:20.
% 
% [Y] = COAguilas18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;0.281968137600451;0.304971027752364];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.1444101707198719;3.0095458606639749;1.037607238817478;3.4007725306482643;-3.0596733515033923;2.5027682682232482;-0.75254841771362324;1.5090762998994103;-0.47614597257678648;0.92382041810388194;-2.9582603123694726;2.0689059590299625];
IW1_1 = [0.44844410943752838 -0.90337076294447272 0.16686131792988598 -0.39612503633818846 0.11070578287533291 0.067688816517477393 0.20910270016542534 -0.29927974342395464 0.18365499360654008 -0.065529458298791823 -0.14024818164766051 0.092651025477119842;-3.0409768385454399 0.39394858036900582 -1.6027451130486081 1.9766971748141902 -1.1495996280353415 0.55528992132788502 0.33503769871993333 -1.6389818610058768 -1.1935604614281543 -0.75102592276679825 0.13625517184284114 0.57336009872185423;0.39271347986303379 0.73554354183392956 0.9085578369512336 -0.86030113047294576 0.43687898065043118 -0.054379298690781598 0.45181124720484012 -1.1331358759374415 0.22350337057826608 0.22378140067063829 -0.50075871705348252 0.35845546658971977;-1.4535886028257079 -1.2993074388985022 5.3172355231447765 -0.77885095689431527 0.56007555882119175 -0.15168741755433685 -1.307474306773025 0.055098628895106042 1.0718890169132358 0.11206702069958624 0.41827092552712464 -0.62658693154434986;0.76333949346969943 -0.0042166263119988428 -2.0656963795427612 1.7865618107701062 -0.2918708986207767 2.402472811379436 -0.96829827700396809 2.0795557011353614 -0.96989447458964417 0.49930014608274387 1.1836852681876062 0.67093567947463228;0.73499624501860517 0.4517992913875763 0.34443801697366416 0.13861071386071031 1.073914485457224 0.486151357220234 1.3901340510752098 0.071204656713095393 0.48883115641732588 0.41087401588422279 -0.15574186587195912 0.39438454005561568;-2.7704720587103115 0.056307873114842089 0.11951615368150061 -1.2967979319927447 0.086328283458129221 -0.58449368585916506 1.1862089151222293 -1.6034893435427846 0.037037109194407031 0.029790073535838645 -0.63422942575964814 1.0147948136784051;-0.024832936236104206 1.0600837792963991 0.46438048183852165 0.95759641341204083 -0.41567096523045766 0.20217104914673237 0.68347608916431624 -1.5727032904863214 0.082153439811255752 0.13987008060244083 -0.39847246319275353 0.3186775984130133;0.12057273856299998 1.3408178782971296 0.68315883896922047 -0.83289362994653149 0.051316797244420467 -0.069946945660599225 -0.43551387095208394 -0.81578201850976528 0.084517461570070812 0.023337173463632264 -0.32001183739516426 0.28937865888963277;0.26606286246266131 -4.7337645425385704 0.38866325741597485 -0.56369411369997291 0.015284360240339837 -0.050523895953705635 0.44968819972690582 -0.16332563340271725 0.079830808632013472 0.013757882933810769 -0.020691055574269191 -0.17483714103668616;-1.0177871419214108 -1.5642581802382485 1.3543459824826127 -3.4281145694146149 0.88429678773233578 -0.10505250417169833 -1.8364231183684361 2.1057474093730644 -0.12104982077496737 -0.050646623540967529 0.35194484317799746 0.2264102078509776;-0.2847183810304228 0.04556420563319076 -0.19569586148616994 1.2056283477479146 0.005456516180108676 -0.70435873790039871 -0.75098927938568449 0.12405189553764923 -0.60883626912903888 0.38096958572945605 -0.054500603219937938 -0.3226220893949806];

% Layer 2
b2 = [1.6281986956553516;0.27863958920430693;-1.4707361784511561;-0.5966727057854323;-3.2078689109466922;-0.21405835493025702;-1.3835445253662357;1.7449142234336057;-0.11107146447279237;-0.87132299384811207;-0.95564116329103188;1.9115082114899367];
LW2_1 = [0.52624451860881682 -0.56256970352759073 -1.9979219703469613 -0.65363257517084561 0.020787837057170001 0.24875335135911542 1.1931480832758921 0.072684327967144427 0.60762826626896027 1.7441969052912241 -0.13374900191847652 0.96597934530520724;-1.5064565791284896 -0.086306111304442309 0.043924890612636831 -0.53140814877951159 -1.2837804094275074 0.17530742698662768 0.30601752922539921 -0.64044148631029862 -0.11273668114107657 -0.40156429706737767 -0.69137512018186864 -1.4144836874642994;-3.0676176161353772 -0.26697560126044989 1.5507470409441262 -1.6017121047964935 0.97184706948031097 -1.9198719441413883 0.93275971227164134 -1.5163000887645757 -1.0925296755844778 1.436053124236857 -2.5630927403845556 -1.6094985191007531;-4.2928622271503265 -3.0192876050799704 3.7198411896023096 0.52460137376439253 1.6656118399455022 -4.1051652532652465 -0.016044485865181063 0.42500715905638331 -5.1264753464948942 -1.7252399273856613 0.92164994718892368 -4.2049168232134138;0.56619376342124528 -0.21615367396936361 0.00041610430867732398 0.38730790791930053 0.98205921217974868 0.031936262000181244 0.32479115257532776 0.44231169333289166 -1.0714973323776087 2.6131028844510622 0.35026444794275241 0.26039196054318464;0.55836457861905109 -2.2675609992184866 3.4670783944742811 -0.26305591442694498 0.019695356442910657 -1.3547145540662973 -2.4689337197644896 2.8270162474753806 -2.0139535884105721 -0.81785211338315345 -0.18124905961872886 -0.4230733920873227;-0.2272598635596445 0.53923206981649618 1.8728935847136545 0.66588057699386194 0.046795340375156681 -0.20918462368409588 -0.77878388434661316 -0.72773944898532694 -0.29722607109070276 -1.5946260934494505 -0.31040145513732087 -0.68745049497915234;-1.9632811606310003 -0.14809420953489119 0.76061124626854448 -2.4210552804837033 -0.014829932583791151 -0.62983921054570513 -0.77618826269318786 0.20664547976109754 -0.28904373449788801 0.4039256463599043 0.3999036491575681 0.18689682497073423;0.0022873865706831923 0.70068856782389344 -1.6179408820311303 0.74647051398377584 -1.2296735198818294 0.56877754892524968 1.1385973358034196 0.32999925726158047 2.6354248031197143 1.1834529861764926 0.50240139915366311 -0.17056896252275819;-0.64329420387126302 -0.35167708875314552 0.05547939133762661 -0.21193126043813273 0.65484885319251052 0.024529377614960681 0.23973400906711009 0.18372014091377881 -0.40787001770160697 -1.6816472320923499 -0.085153020950903047 -0.13958575005213086;1.3675779721414585 -0.082050692319210486 -0.5576350144130785 2.7897275450339145 0.40884451818583639 0.62072774642051409 0.93687267808481689 -0.037496829142824206 -0.61272396792681594 -0.64085155488788192 -0.27578376919796482 -0.88909118495139727;0.32848706532134742 0.32570010579192316 -1.2525335804251949 -0.12134301271596031 1.2612683319318105 0.21168681630315381 1.3181725955624402 -2.0465041458183291 0.64387013062247478 0.48586644136711032 -0.0045179005032164078 1.4365044158863254];

% Layer 3
b3 = 1.5165891530498918;
LW3_2 = [1.273262088850093 -0.60931698777286125 0.13528385678124866 4.0116321235029524 -1.6364981184371601 -0.16492304627596532 1.6948742621428454 2.2454943495159174 -0.28136119207215937 -0.56470045051278672 1.7325586742886223 -0.26747904322943844];

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