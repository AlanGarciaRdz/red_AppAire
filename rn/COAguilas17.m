function [Y,Xf,Af] = COAguilas17(X,~,~)
%COAGUILAS17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:20.
% 
% [Y] = COAguilas17(X,~,~) takes these arguments:
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
b1 = [0.5949579159760412;2.7871955345906914;0.55499286939749837;-1.5019963548015556;-1.7092591641674064;2.2043994184140914;0.46820599025201654;-0.11595726756524359;-1.7950767779718391;-1.217286436345687;-0.32402502518298637;-0.073231034690641711;-0.9096498986942736];
IW1_1 = [0.46508261223344771 -3.5832336896594619 -0.13937665039582769 -0.50297051082431776 -0.53153923377861667 -0.2200119275012708 0.10729565837532282 -0.80708114148588073 -0.070762682587564046 -0.29409880910125469 -0.065634273563799403 0.19285348625698773;-2.9869717094604602 -1.3187519612936103 1.1057718232588656 -1.2276946446519839 -0.37953332043444399 -0.19802888400558782 0.63689152014815886 1.0470813696720218 -0.41758068237305107 0.058993163863553862 -0.55991331856424587 0.078597866518764783;-0.71608306939464461 2.1574151272516997 -0.27059082557693437 0.54626022805358965 0.12742479492582121 -0.19193297700900736 0.18976329311268789 0.14148362179549315 -0.10943140601138204 0.037670604229122093 -0.14135526706128473 -0.16505515631846016;0.053710632953906573 -3.806562090613653 0.81079741475022149 1.4128909383992767 0.39522205992107534 -0.27326590825598224 0.072601479949004233 -0.25959997609328817 -0.14386487494679784 0.38289839280703603 0.11896117705143619 -0.60584943810658298;1.7924071912662056 3.6899405987153853 1.3122527921401572 0.405382041523278 0.79273398363600289 -0.95882721447420183 0.0378657927829344 -2.5800798883958875 0.21072365110754579 0.50991169343089582 -0.31103475168118977 -1.4596504848138523;-0.40230004620136356 -5.0323999385477993 1.3929106609246955 -0.90975069902274541 -0.082211752626760087 -0.93774766250272479 -0.41206184168164456 -0.18003871294880563 0.4918831529660056 -0.1426275980894661 0.93424930237936965 -0.31285685145598979;0.020171586481455533 -0.073538350372243391 -0.54738195386664679 0.53004914701984251 -0.72140109769115957 0.0096393750560945842 -0.090255636240190673 0.43941129648851812 1.0111837871546991 -0.71139779020001404 -0.64782866343252488 0.50987954535388502;0.86565347862447528 -0.71859948141694685 -0.53544018283167172 -0.22263724271994995 -0.27117560361899551 0.28678947137181204 -0.21420421311167603 0.11697056624351473 0.18137318969596325 -0.22286366394842461 0.25015432253163206 0.36706761332369953;1.3039340430529409 -0.33725506866205568 -0.37505158899020408 0.54422178804763921 -0.32021390436846248 -1.8129237250528489 0.35042319543075356 -0.21412519898745111 -1.3871520367857828 -0.2448110888286241 0.69431038883320517 -0.13732949529448568;-0.58299383701484631 -0.49246735647184647 -1.8723769299602995 0.091971412255315257 -1.1534163930229784 0.1434529011695139 0.72671376702541191 0.39524140522819479 -0.56613394453267252 -0.64024636657713352 -0.91603778334801111 1.0975938892026091;-0.98239550773106532 0.71619919104012397 0.092701591610981057 -0.31093523207519724 0.12484773702207821 0.11932812488627506 0.59669475048998233 -0.15460765124342565 0.63842495539898214 -0.025625505112078978 1.1100883507491184 0.017273049678568408;2.6409253964469337 0.10228192164632979 1.0497493787944934 -0.43638603253686875 0.27492193330561221 -0.06895747746319264 -1.1610352870772467 0.053048492781177514 0.41267107381572443 -0.021829187385865444 0.93003252600432496 -0.45221255156629325;-1.35063885797104 -0.54666320298961557 1.1538450780188043 -0.19146610524282426 -0.026243839827501156 -0.43148577633934099 0.31867588914522693 -1.1491115134271348 -0.21380908084961034 0.0072253491946227752 -2.4810762888951414 -0.52423095851550983];

% Layer 2
b2 = [-2.3253739535527087;1.5492101981478519;-1.3207602901487547;-0.50471391529166298;-0.65831658977374186;-0.47638090047220905;1.8108944391718829;-2.7216896755284568;-0.54438886605348547;1.7040566817495342;2.8742349132210849;-1.7609633063230727;-2.8586648522665716];
LW2_1 = [1.3089531925099174 0.21663460664710804 0.061472665015157704 0.51013575077801732 1.6508612265164451 -1.042597687040475 -1.0671852737270675 1.9427140019783189 0.70190690657259891 -0.47831080631264855 0.73373143291915321 0.81496295630554261 0.31859358504810353;-0.59169081363777121 0.62844151105957935 0.26964312862532031 -0.58492786941719344 -0.55386873221283239 0.42263693666292118 0.61371331410983165 0.26411861817683258 0.059892022135429476 -0.12115684810307274 -0.52570780297068809 0.6465620939626251 -0.51037394541376269;0.17987230360594006 0.41280445743680766 -0.5688561052782759 0.90315629814088871 0.39917120899930797 -0.62180386301259905 -0.88590426750700546 -0.17028719130563236 0.18004939446819154 -0.52157393797450646 0.011372806256370469 -0.35969208880102771 -0.17630540640169642;-1.1692598955604228 -0.61669713787005243 0.40897829226151727 0.44133729835059821 -0.20540699893566994 -0.45678458767474489 0.51787052096827735 0.88390011944202973 0.415903691322076 0.15240674006497154 0.47649402869249513 1.1373894086310292 0.23609459554562687;2.3533197932098515 -0.93938854561256047 1.6488814040132591 0.36812439707137917 1.1189603754550177 0.36232235073842683 -0.66096862993984418 1.2960742111754939 1.1231667817376778 -0.15671945176501678 -0.24856224473113001 0.79081196624683314 -1.5635232615966499;0.22140439308822257 0.38758617103469639 1.4489843200878076 0.48453694787629592 0.12427415510845782 0.58683980083794052 -0.45917033180512457 2.0475617214002435 -1.1004261050066579 -0.98106707348272859 -0.36517874073272794 -0.12459219004533476 0.013166219248644872;2.6294326590977191 3.1397729292797858 1.936540511806452 2.3656995578432918 -2.1923394293610392 -3.5978441949464433 3.423476817337856 0.34268155359857522 2.1785172631095193 -2.3124983335779925 -1.6610586967678289 -0.19276000673656787 -2.213912156886519;-2.2236928566659664 -0.88423169085434161 1.6231478568150481 0.63773540032718734 -0.70431966884479114 1.325930083199931 -0.33627139880684742 1.4026416935542254 0.96735364629235587 0.13112253648652872 -0.96870124878433905 -0.41985951303109892 1.0260144178918953;-0.89257158041759999 -1.1313670355621994 -0.19698872687386398 -0.54480102463271762 0.053166189901169142 -0.12938614595661374 0.18433114040238519 0.81045319379892744 1.8058489164748315 0.11153902952281484 -1.1759115185799771 -2.3235062231821568 -0.3471619740992003;1.4071422515084191 0.071076871145797735 0.67099620613947653 -1.2149230754392024 0.04284647859731093 1.066822135723082 -0.88994030735080909 0.97173476424552208 -0.42464427040349245 0.45533702678539234 -0.20424345835078911 0.55423226461009234 0.38824925473712968;-0.46547881481889097 0.044311559066802335 0.44326127700792195 0.015307581226361076 -0.24854413749729576 0.81586654074837162 0.35488158347286058 -1.7814240665764511 -0.14198974177268089 0.12536628901126945 -0.3746855561352529 -1.5742272977781586 -0.93117629840921257;-0.98050623985606145 -0.33085105249801455 0.63927818216979704 0.64256789807873216 -0.19211751126314547 -0.95045252078585807 0.13417528298603532 0.45659189385305043 0.31446695682039516 -0.29177698953785192 -1.6739413560810759 0.035450008809750563 -0.66541950218190338;-0.35289854786885383 -0.58082164430783711 2.3964684834164336 -0.77193430491273662 -0.21877563567575145 -0.41294857908832594 0.51022230508324173 1.3945300079241181 0.25679010338438751 -0.12296355203581526 0.68165633061037001 1.0924737317105213 0.29847948932058738];

% Layer 3
b3 = 0.23984832493846206;
LW3_2 = [-1.168353777889946 0.77012930779123767 -0.15761471750637562 -1.5015373228765132 0.096776733657804814 -0.37295247986714414 -1.9266460590233974 0.75315253140015725 -0.46234768708530061 0.30229417369998274 -0.72370198354772963 0.31319652944842019 1.2258173549567508];

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
