function [Y,Xf,Af] = NOXVallarta13(X,~,~)
%NOXVALLARTA13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:28.
% 
% [Y] = NOXVallarta13(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;16.1290322580645;0.00782778864970646;0.0208333333333333;0.02710027100271;0.00632111251580278];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.029231536300952848;-0.36559507053555912;-3.7273510228506912;3.368359194180214;-2.7018426174445516;-1.2049115026487989;1.4209675527154999;-1.0562765780777725;2.1185052295898843;1.2911794485113752;-6.3658524577087423;3.5343601067769872];
IW1_1 = [0.81662418285243021 -3.3364308074909754 0.48375614974989112 -0.31760062774350994 0.60804277646158367 1.2595528367999038 -0.22488565844343794 -0.53206654563325229 0.041184500273133876;0.68569668865860012 -0.54711901081346703 1.2825312173146879 -1.4717598423817115 -0.78800662514790698 -1.63434531286312 -0.75034077867735061 0.83094134735257208 -0.13641999732090629;-0.15742841390116097 5.5080946507200288 -0.11833994810712198 0.051302493658443749 0.5121916715022764 -0.29957727332296591 -0.14505417947383287 -0.17981936705185506 -0.10742895242262171;-0.24022877899239148 -1.6508315544115786 0.98357530287995765 -0.41014493174729555 -0.39358065746542203 0.59784322316406169 0.8796218536150886 5.8396330648889716 0.37239308400204896;0.63639345671521763 1.0091464769057517 0.8682754900140971 -1.6854411719485165 0.45925766827087822 0.51535530062061286 -1.1122385083666888 0.53297345898357673 0.69354179466483712;1.9592681693761855 -1.1479476265438588 -0.061367476805457802 0.7201177231943704 -0.67109172715734766 -0.20367166943202636 0.3511964276186732 1.5626135212912962 0.2109779016636788;-1.5117337146537073 -1.96495765140579 0.027839685813664226 0.49682496723827929 0.71243313607696035 -0.15431756540170072 -0.35986472547392373 0.57390436902958264 -0.22743557448990884;1.6825299652999441 0.48710961303270028 -1.8761527208474094 -2.3800999173523283 0.4027560239155154 0.57996783395858309 3.1851947889289742 -0.75027824849563018 -1.5992157024567364;0.96423182638644744 0.67104906035959988 -1.3963789784949461 1.9563470679364507 0.22442192946758033 0.7871321436294092 0.13106824019140426 -0.12908879992146502 0.03177865851962644;2.8196258583426692 0.57131681366367171 -2.2961373961127656 1.1304259335007742 1.3193761414369896 0.0016585525201651685 0.79057340377938723 -0.54822393648015078 -0.42137473071593295;6.6287746196493949 -0.62189743137140119 1.1045567525434583 -0.96596025323522705 -0.21124579741118599 -0.10684955685699302 0.3872930876331348 0.90226220294604564 0.036321365010483025;0.67299555789988397 0.36634340855244851 3.2142358129652924 0.086164059524441061 -0.37707864537700941 -0.82885447252273936 -0.67527042137154147 0.38961453401774482 -0.058613039255277374];

% Layer 2
b2 = [-2.2343350181458961;-1.5048361148928964;-0.17813868981742786;1.40129581962623;-0.68885094837178951;0.24533151118324495;0.92337495284343007;-1.6350479809719243;1.9274565749521229;-0.22678479453784495;-1.6064191166814288;1.8887789111929163];
LW2_1 = [-0.026584765137428714 -0.8877718375017345 0.17703460248948688 0.67257320723020853 0.27809407521611845 1.3195471177622506 -1.9988722001592625 -0.10259917806595834 -0.57444607999117259 -0.85654453598227698 -0.19187842388188814 1.4115684969885089;1.8165316603580468 -0.50796344002011573 0.10512548833838825 0.4663574277542325 0.18421768065184696 0.53220035288475598 0.29331439055538744 0.49307445012757745 -1.4527925230433449 -0.42763404334008348 0.33147974885094761 -0.43367192054947812;-0.10388999536976738 0.012765490434889986 0.99213775103421664 0.39346276750866865 -0.45926258358513555 0.25835036695498315 0.088149532662960939 0.39463464951675153 0.60920261175524582 -0.70373541405688422 0.045153121196960508 0.1022809106842576;0.32916020850557876 -0.66337347937795921 -2.1483100198749789 0.27764620646167948 -2.6223973547083541 0.38593240174441007 1.6053263645724865 0.13169938240131715 -1.5587927445565597 0.74286749813068509 1.8743151201716248 0.5495742626949649;0.91425712558293337 0.55373212987799003 1.867770542465822 -0.11995000598534095 1.5779708565390405 -0.21549792238993037 -1.4301760552678626 -0.098077661848643846 1.1040051663655379 -0.53984071060847549 -1.7578716009362019 -0.34781439734475905;-0.79790880068391479 0.3706191005058404 1.16498196188848 -0.055488638314976607 -2.3245452996069909 0.10794265972507289 0.57592448872497937 0.10218666715187147 -1.6560901978770435 -0.15401751988287121 0.58406124398548764 -1.5595590870810838;0.24149339596494568 -0.65264504693520908 0.0090288911388745063 0.6449266358304051 1.5197102097945245 0.36239013807579468 0.097128607644658055 0.65838564678624001 1.1317994441543184 -1.2148798327270598 0.089812407061210631 0.43356147370580866;-1.8792419577304145 1.413747899777984 0.32369042137670645 -0.54540422612313788 1.0428222864557317 1.4874012913993233 1.0883865500223433 -0.21254878630395191 1.7166591924094019 -0.14224915791689913 -0.36846415559868162 -2.1699570504982186;-0.58897849777438926 -0.26730040276367018 -1.6731064894452214 -0.2115473750406508 0.38931020842452008 0.1547521018791051 1.2963236541066034 0.24710075902064513 -0.11473757012499017 -0.031153256807747953 1.2712078804878084 -0.034307659617351383;-0.19712095902854465 2.1512723319945843 0.59642003802689003 -0.20381120706433484 0.98286336112282746 0.40302210031394275 0.03613898011462785 -0.13364851776433495 1.8333919715223823 0.33120862851085364 -0.34914083402072704 0.39026674531852784;-1.9201045853844345 0.062750218542615685 0.5247030597972614 -0.30655234316029523 -0.23003649744257185 0.76083036236739132 0.70883644509128041 -0.087542686352237248 0.72762257773253236 0.19788978415580472 0.43383941368444967 0.12675110302966458;1.5768014910579544 0.76677477602031885 -0.39933620250702223 0.45978621545585208 1.1447403975732966 -0.91498135055871721 -0.8284958806874706 0.0091151748243607431 0.072620835844532786 -0.39707902344882884 -0.63381237218435971 -1.3928693249732564];

% Layer 3
b3 = 1.2146251503417311;
LW3_2 = [0.63721096041935776 0.075023647949988406 0.60596969754025576 1.9727376133189485 3.9079946091101982 -0.178878715974359 -0.41487134502785683 1.85634319064708 2.0880325714917234 -0.11863557157241753 -0.75955771118233806 -0.36353154258485937];

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