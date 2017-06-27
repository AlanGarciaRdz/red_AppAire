function [Y,Xf,Af] = NOXAtemajac7(X,~,~)
%NOXATEMAJAC7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:15.
% 
% [Y] = NOXAtemajac7(X,~,~) takes these arguments:
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
b1 = [1.9258436129581935;-0.36389847782992335;5.0445400416796495;-5.8742725520095851;0.66527199029912187;-10.881763771043143;2.3918860104872115;-1.8566566462005405;1.1463055134724724;5.7834948391132093;-2.3145986191264027;-0.41407547971278352;-5.3844106332732125;-2.2827029114846509];
IW1_1 = [-0.15825894521036074 -2.1542459406881433 0.051997063351484046 0.23601326860869379 0.68334973314067815 1.2864008547018571 0.9373867301134704 0.78467142585659011;-0.23421786624053242 0.24920837305056973 1.0877235663801879 -0.62623674631133552 -0.27286673485827545 -2.5784794724245934 0.11681779101874806 2.248251910571796;-3.9625320962670862 5.8837234587431864 -0.24209530735875584 0.37938582714095526 3.1523261620838436 -1.6622554130644189 -0.15254703856829077 -0.65107134682752765;1.5154047362931604 1.0344428107047228 0.028378443190453122 0.017788888331027625 -3.2110030377179948 -0.94315441015012513 -0.097170087252380341 -1.8952341906930925;-0.064715571603938427 -0.69851123025114203 0.95531763979319373 0.51991036731446238 0.40871854185043444 0.70470991465210131 1.2078686601622037 0.46161636360887709;-0.15285269724708206 -0.69196462323419627 -9.9734546309538192 0.30248815919378974 -0.6598156963136208 -0.16568515907218828 0.076468629558842177 -0.13909565336608878;-1.1488543532451618 1.2218420411799844 -1.2686550596066821 -1.6513711025316504 2.5239716106311398 0.37430630360948441 -0.50636113954016404 1.5517703264936591;-7.6333825722449173 -0.26241482012703438 1.6024254686268702 3.9073382210681049 -3.7656447696469697 -3.060123774255187 1.0787772271158758 -1.4774801748452207;-0.11064620897583331 -0.28647841708607036 0.85711673598520488 0.66046502839220755 0.46170369918659737 0.75108301416932977 1.1757708296904568 0.32899396395117048;0.28450900739283563 7.3656981414580827 -0.25163181149029751 -0.652814590240686 -0.055984264826462501 -0.35466962584887135 -0.013202242474935968 0.024929338070584631;-0.3746034990377155 -2.6194444987090972 1.7088156611829761 -0.08302065717505365 -0.39738619964320565 -1.0837046024312575 -1.2765726933896291 -4.8759951060306408;0.18471578356998916 1.4943132587857098 -0.72538894430767742 -0.35005841629409545 1.2282083490937745 1.5380890131097091 0.11909292032287108 -0.22108525269700297;2.7448247628350191 -4.3241055137396192 2.4584892841852208 2.8108155754489021 -1.6827075341493392 0.24876415180118766 -0.88487149707688739 -1.9353204142891214;0.40497256249718927 0.92521367224726625 0.63588764344350124 0.60824116545127804 -0.54604950850238332 -1.059233389384727 0.074030906882689165 -2.082222604955426];

% Layer 2
b2 = [1.1178127042087573;2.7989976745690583;4.1211250495726128;-0.51254290973995364;-2.050089697471468;2.5414928382484239;-0.078202907798102309;-0.60827947174941543;-1.7568681413514038;-1.9543009196379078;0.1117932887883242;1.3399293275623454;-3.4289231820842438;-3.2240851328344369];
LW2_1 = [-0.043659697689180071 0.87513233279425273 -0.025384156905447344 0.58745331822571856 -3.4894112922198768 0.81497717527036662 0.45837222650055609 -0.092535980850605715 2.3826705542606033 0.53502649633143962 -0.68193580156612443 0.044568445217084945 0.70862274579821727 -1.2776925705555451;-1.3706105403814779 -0.016451686518363259 -0.0045208440013064892 1.0878508548229646 -2.0987378506404584 0.046969740673669026 0.47687136838516769 0.096522258379115267 2.3589239658184722 0.065004934584347793 -0.56697715866260079 -0.33654143347833099 2.0906701016782345 -0.3034738724124702;-1.492066993620319 0.13891374965450162 0.28090935580509396 1.2244225007871723 -0.080737750703967895 0.29030973711982727 -0.1375023870925183 -0.16606086555774427 0.22085822239146868 0.29661597638780607 0.57217916471849906 0.66523077117913365 1.2913776055064108 -2.038779502855347;-1.349821112704106 -0.036584156406449832 0.20070454713958188 -2.3163198444526736 0.046921702865327576 0.1633835662328009 -0.17143937606648479 0.25272198006964258 -0.18620023323661697 0.16660688131457965 0.66425809558504889 0.21533764335208261 -0.43512227843424373 0.21519167991268812;-1.4402240918268738 -0.33805564839421132 0.030455800153628868 -2.1592445152041591 -1.0813228731513675 -1.1066957354565377 0.3662728062133912 0.4437293374819728 1.2628277548111275 0.70454559329213107 0.065421636554069268 -0.4132129454537582 -0.77678151219668046 -0.46074410517494196;-0.79320429916378965 -0.070939043031830032 -0.074016168639028934 -1.2960995042783794 0.55470814062763996 1.3401782925891563 -0.38684045238149767 0.026930667761562863 -0.89507913434163144 0.63413594357734415 0.71555113086352962 0.37039586433490257 -0.12021761112339131 -0.22156109912824556;1.34606001185818 0.0097303508451412543 0.081003095775910902 1.0228859573211599 2.1053536634028496 -0.018787247041570324 -0.22938042502579045 -0.11463643251600371 -2.3811429658163754 -0.7490511961404398 0.59473381825360083 0.35415519404621815 -2.0505009307283175 0.49355535861703476;1.8768812485762161 -0.10410338590282943 0.79761551950237319 1.9168545479263823 -0.34357890337172509 5.2077951225995713 -0.5046516096416247 0.2221334333206825 -0.79114415826108697 2.5145649172793649 -5.3910122430776823 -0.99183211853424691 -0.0036156209435642198 1.1351687041754315;0.94339320303976992 0.094102734327904294 -0.43528117049151371 -0.94130236090356423 0.72053589782513494 -2.3674573351400401 1.2300121671709028 0.25288338411613825 -0.65604486391446959 -0.43613209286919163 -0.24737727197856335 -0.14830790646830525 4.6184953800822743 -1.041160811596946;-0.92291445621506729 0.0094996378962325812 0.21781247747477325 -2.0789421587219428 -0.11729432285089278 -0.015873774779783075 -0.39180482148339929 0.027359513084373628 0.28276842507903338 0.45616969896242876 0.50330585495478997 -0.021587643690723878 -1.566266369997779 -0.11402192764353819;0.25278444356555224 0.92417560516382713 -0.071621425633878771 -0.86543386656827326 -3.3118490034688599 0.89078636693789826 0.47248197805557213 -0.061073505547598224 2.1404830126011132 0.51983979838428085 -0.66663122478806447 0.085401707970968313 1.1243214693532719 -1.210390891838333;1.0248854114607866 -0.14640277381709074 0.34560424563981079 2.5753115851743247 0.79833491002208878 -1.8106180374931979 0.52683039855814062 -0.12950833950263316 -0.63347282494118196 -0.71917287736580515 0.68409994076721903 -0.97233610473619037 -0.57851153467322447 0.64665344684970305;-1.206860114845876 0.21003620734516515 -0.14193032533796771 -2.2256516875132104 -0.8680795385494533 2.1251016043895916 -0.70931148505724329 0.0021070543056867039 0.85277327032004824 0.14663981832826029 -0.61185812091296488 0.91596900392587766 -2.365087025040495 -1.0786208936619959;-0.21541046456386514 0.19642943486603051 0.0047746994400915763 2.0117148351908258 -0.33322848592231324 -2.6743469273264031 0.21671415984662962 -0.069312567374544262 0.73820220371113221 -0.87945477692819174 -0.99892821919426111 -0.070702908434101819 -0.13004060697236372 -0.68816087214960486];

% Layer 3
b3 = -1.9523448100957908;
LW3_2 = [-2.7641425987812407 3.5779323377884191 -2.4576408496529858 -1.4111298662905394 -1.7497748517310854 5.5239825162106948 3.524067889645556 0.12913301002229394 0.6977593376595087 4.1908070536572328 2.8571229051017624 -2.7027584628699088 -2.7447963686673931 2.3608230640230059];

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
