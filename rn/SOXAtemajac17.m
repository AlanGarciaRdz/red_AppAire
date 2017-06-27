function [Y,Xf,Af] = SOXAtemajac17(X,~,~)
%SOXATEMAJAC17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:25.
% 
% [Y] = SOXAtemajac17(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;16;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.5055019564419165;-3.6994225592617549;-2.1964823737924708;-0.79251109337173709;-0.44473334042952145;-0.10350457904674207;0.27381433307876585;0.25334420753537906;0.15252712896632467;0.18625539434669647;-1.1298961865167345;-1.3390889107491954;-0.75511994979258779;-1.9552359057976354];
IW1_1 = [-0.059819413532071056 2.3322779759602019 -1.4873018527673669 0.11556002576259294 -0.054445313412989395 -0.23894486572146417 -1.8260414126060398 0.56809137031961665 0.83047061453805637 0.37625161347183284 1.55863746808913 -0.78129312923656258;3.9958546920522289 0.64360597234322181 0.68252953826206186 -0.38286765526472666 -0.160327757776077 0.41622749583107721 0.48328154256931249 -0.75088358453473725 0.31313532596790428 -0.11935278520365333 -0.57225496960368194 -0.9949425280563533;0.91359620151820253 -1.7555650985545972 -0.63672281447510759 0.33296995812908858 -0.18428814718565761 -0.061173028518955168 -0.055597493589688463 0.74792279352819069 -0.31107209567062694 -0.12971082676963555 0.23181611317951592 -0.14549092343050604;0.53797224378058017 0.02878208849464331 -0.3281161855655978 -0.60784213368786033 -0.032908451720761615 0.05273989648845185 0.89238583515113556 1.0326227174741096 -0.55563754171131485 -0.56571192767848322 0.091174087508237509 1.4215779278444116;-1.6966655486053328 0.18196177340600869 -0.774319100650675 -0.47739260924831489 0.54131162963019508 -0.052640073459846247 0.25794310493622191 0.99496839727199748 -1.0299701593138133 0.043379666465808674 -0.34731059069765435 0.16760395658290195;0.93296877890391094 1.163883232486409 0.24335619206467601 0.027183978326710233 -0.10011846861666313 0.13182237424198695 -0.40526746342992359 -0.84191742142049231 -0.62540160245430987 -0.11592487935279586 1.0696767191856609 -0.37160914416990537;-0.035337291831691521 -1.0648914971228576 0.12784674202411794 -1.0147458759160224 -0.00011710303209624962 -0.44190716644198452 1.5418141709383426 0.36406277133408432 0.47337951424387953 0.091570140643855227 -1.2299025048054151 0.78546474309848857;-0.053194249147605691 2.1249527523414224 -0.45242685594986098 0.28118820310192039 -0.73163305272144707 0.27017435473065704 0.094828310066481111 0.65797682034805194 -0.46684372946286462 -0.3502720387681762 0.11370154233386004 0.55142323674817662;-0.52347634231224649 -0.15280082127781827 -0.36174437436181256 -0.32827918433646391 0.2781631517092189 0.99598747882518213 -1.8575247323156387 0.13063068274743592 -1.4315521580839443 0.21467513437012725 0.4091669995358731 -0.63351998968059442;1.2160648723965697 -0.73215364262693916 -1.1149768370801916 -0.13572867143531797 -0.028525076327274052 0.21235619066749958 -0.15957641571246764 0.95744149031450876 0.87724658683030776 0.22144381342145603 0.8676898899222476 -0.13769393114673739;0.17803265692768863 -1.3557570098262643 -0.84529498140443082 0.19778492327078834 -0.36686448105109798 0.18211184560247623 -0.2306240384683384 0.79911217155702785 -0.49350512791217999 0.016841609283861188 0.090851746883177487 -0.077901691923111333;-0.39039183829488777 -0.26717912892144274 1.2504657056996273 -0.91826115567033406 -0.26071173728850416 0.11955933628532049 -0.9087586886699387 -0.89741793667023662 0.62622374509358547 -0.1410983313166134 0.38916187185497558 -0.78007026296644577;-2.2076822397492575 0.0073864640603970924 0.73492080700756501 0.2214120858167557 0.23739122462178075 -0.84632617289518108 0.61532263101593221 -1.4688518999832172 -0.015262927904715708 -0.071126442252144567 -0.95612671666706261 -0.19474054433304752;-0.4791976049088732 0.7505238652718228 -0.4773775355333611 -0.37229263892279191 0.51612503174741642 0.31129266796261551 -0.30198514237959145 0.15910173625993704 -1.0545998804941765 0.1621429962054288 -2.1472944368944771 0.46210271148388449];

% Layer 2
b2 = [-2.1605634698382912;2.3886962455126595;-1.4665192045967206;1.1885422138188229;-2.1008155641317607;-0.27710728613705721;-0.99208899040361598;0.51228157368326122;0.54723531464023356;-0.20774452680638067;-0.08610108341768706;1.0406371527168963;2.5876440939128615;1.8932717095294795];
LW2_1 = [1.5055766056104081 -0.27632221085507341 1.2514742437489652 -0.38436853164415008 0.41935049757405124 -0.014555120818182509 1.6068570395912796 -0.1110906379985144 0.29350663080616529 -0.20462313680773536 -0.19129472616697857 -0.11145106688947785 -1.1506847159547307 0.16670208492425778;-1.5061664588732055 0.24016745861279198 -0.92975635560009917 -0.87898046545159059 -1.6305989440803779 -1.0493199676952001 -3.1708628539529209 -0.14983387697981873 -0.37875953440063093 -1.3620266964613092 0.65002554260294387 -2.0693240878166441 1.2746640623350058 -0.53584530651062434;-0.1804350605280452 -0.84331311595180614 -1.8258071279653931 -0.84021104295074589 -1.3958442221054301 -0.34009759302272197 -0.34469344159016962 0.6089994788480193 -0.62678169588430654 0.82520502079429126 0.71367163708280845 0.52033457880871303 1.3099585462774275 0.26814751519348934;-0.62430882895463913 -0.036987818072502877 1.2400614286685947 0.42538836272892888 0.8385200901820512 -1.0739318480408615 -0.77120645582580727 -0.66950872836131181 0.3500752675579627 -0.15190519211390674 -1.4022291339758461 -0.13810708433473337 -1.4755027269526528 -1.0124462621464769;0.59175188756902786 1.2448381416026368 0.45185010261933839 1.2501832985621175 0.098743838245620108 0.2313161772610412 -1.227251702525145 0.14309626359248712 1.6659723765505665 -0.12617739829414099 1.1042353891483838 0.4016871576856309 1.2074174954270709 -0.3436069713112968;-0.38744109609136757 0.29524241879971597 0.48287712376067993 0.066382526624035168 1.5837910357896028 -2.0880834122125869 -1.8148392900547197 0.1669481385215752 -0.49166891851366507 0.87987081772464215 -2.421471693283332 -0.18243295762064149 -1.7047254714960054 -0.39205805265089572;-0.48824384999265208 0.24694983790657568 -1.0934910842370171 1.0703965361755996 0.16520444148906482 -0.35495671415487978 0.024597905301656803 -0.28602694126728984 0.12372927462378669 -0.71305370559889913 -0.51255361458192705 0.48543453822440724 -1.0832686042405124 0.21234555616739545;0.92912137116263549 0.70950221020517823 1.9805451527811266 0.64508252119695242 0.33284724374321351 -1.8129939712179708 -0.62914122657985871 -0.60979149409099453 -0.43344994915398083 -1.7269107662411791 1.0507835356504589 1.0769178492024023 0.1265803069094642 -0.56818390098232296;0.55534391238412562 -2.3975448855521466 1.3948199533718588 -1.6531312125975055 -0.47997892622217725 -1.8456015925940998 0.94456959717347477 0.22796315259630945 0.3689962343821977 -1.6308850770484515 -2.4424403893067903 -0.62140409453411782 -1.3063638628990035 -0.30380734904839851;-0.97230804186481623 0.40782946593042269 0.47651729314944968 1.0669146747974896 0.58747530358077527 0.10413312374633558 -0.97331168870333806 -0.18507710753797993 -0.09438902891845509 0.43494308313984481 -1.1043469013724017 1.0262677795325583 -0.026166574411533229 -0.059022563027326926;-0.96712786747588519 -0.21566557111080104 1.034937970693377 -0.11966134797108963 0.8714147161481367 -0.2004147333945821 0.12050916779415932 -1.884545782934441 0.48790104490718411 0.23076460274471666 0.90513717598081356 0.15851250820675961 -0.1889822599448909 -2.2753282687151937;-0.43378136308242116 -0.6230772969424534 -1.5471716916137357 -0.41980278907293123 -0.74146765390427904 0.050771609122206511 0.98363743773631007 0.039282899857426404 -0.51175570314166474 0.611158274994272 0.97872932273612223 0.20384427898634752 0.6822370180884556 0.414040140433315;0.081855288694540534 -0.61897192227985132 -1.268117319152823 -0.37901866678918572 -0.45308248785246447 0.53201724551032836 0.30937711798011269 2.981584470104564 0.27444247466534299 1.2192755375714071 -0.78493609100262196 -0.5433798654308184 0.27766368713394896 0.595777023482021;0.88612954772404207 -0.065095727285193167 -1.5840460917140697 0.12315860180243697 -0.39057360698220855 -0.64539582983803301 0.88852556343236144 0.10690087226934622 -0.83400046874088096 -0.59200725122996056 1.3414351813789913 -1.3846565010924214 -0.76595203353731522 0.26077403129753957];

% Layer 3
b3 = -0.58044033316164345;
LW3_2 = [-2.25462756421302 -2.0212812148454584 -0.85497911557179884 0.39854832094741766 1.9017394909933756 -0.18821093780830414 -0.86296203593442589 0.82180016985845405 0.67592767270373 0.97028709116164247 -0.25406482340331638 0.69127810186359662 1.3478461172745839 0.47233705097533046];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 166.666666666667;
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
