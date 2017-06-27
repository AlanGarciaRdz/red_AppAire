function [Y,Xf,Af] = SOXCentro19(X,~,~)
%SOXCENTRO19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:29.
% 
% [Y] = SOXCentro19(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 11xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;45.4545454545455;0.00627943485086342;0.132450331125828;27.7777777777778;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.0145377219563532;-0.49749213446081675;-1.2984445851175805;2.1224029933553958;-0.87154017713511345;-0.63160103151769731;0.20125710237861869;-0.48982380087037919;1.1119750704906144;1.0203807767942226;1.0260914811556379;1.6735132098677472;-1.7238029265997072;1.642693944665766];
IW1_1 = [0.24305275126154718 -1.0921067268971745 -0.4675931422539486 0.89668113133648597 1.5830603236259058 0.850964990025186 -1.290031159129847 0.75658018265658045 -0.30452856503250852 -1.034734761295014 0.8953639315884675;1.2919245546994182 -0.11727176334203954 0.15271792184841895 0.5378299766767668 -0.51625926476482331 0.032515699482512317 1.5859542061515168 0.04617899648313778 0.10301817841137081 -0.42355031783185487 -0.10293111445638334;2.4489653293291842 -0.00078603394830710472 -0.14808791790422299 -1.1751578781456238 0.84365161309619996 -0.20128457139593878 -1.0340860974137733 -0.27518543287303043 0.1578855269624771 1.0830296447609022 0.94445867582790188;-3.2434069553080138 -0.19303846389690943 0.30039521173165384 0.29325127710568433 0.45868336279190053 -1.0962084674951391 1.3007484330623169 -0.60603271120610636 -0.36903216069052658 0.25932042661574423 -0.47054073781567818;1.0172528638306242 0.25634495830846116 0.43983706156500291 0.13968519149324063 -0.53741083003103662 0.62593318149861599 0.44743134321684053 -0.38275584048411793 0.25445306025153153 -0.5503402044998752 0.034740041295833232;0.054590264705155177 -1.0384540703365002 0.47821854024707344 0.43397175868354021 -1.2708236954944963 1.7980473989823962 -0.68029080713275147 -0.193828922413979 0.6189891725876715 -1.5250926854760389 0.25039400524322586;0.48798547444009066 -0.36180937771655963 0.67627683395326854 0.13445055267096326 -0.037646061364849118 0.3286457223998509 -0.28678362448520461 0.27293347404477675 0.33362796701453595 -0.55489139044818747 -1.0980982916847251;-1.4218673819594687 -0.81266654615350742 0.32352146173764185 0.36551421618486929 -0.54819764696255124 0.22597313740205269 0.45196686442835465 -0.17708732302808972 1.0414792059336695 0.54358567887230702 0.61246676937547784;-2.4005497675530965 -0.75486341707468807 -0.16531066343447953 -0.53310577355331568 1.8355261875384261 -0.93806050107204986 -0.23628787666299012 0.35342991191202661 0.012819996541869707 3.0589527681481594 -2.5380188478045635;0.65576544795718383 0.33341215238459598 -0.42731367080066546 -0.30596875569199444 0.099327488709418377 1.0510914835124991 -0.080275554821213402 0.18404899640063702 -0.46671114111464052 -0.8241029416328195 -0.30801550340925843;0.73636255455073363 0.15008350427538106 0.036405770895393631 0.4143551254193546 -0.15863512434685609 -0.095327060013723972 -0.37272060135346124 -0.35012941827646626 -0.30618292995294 -0.82557609046364377 -0.54225823974757204;0.8051331799429905 -0.14355089572698654 -0.20607065453695997 -0.2448033125555458 0.4578577490814329 -0.093180425672305375 1.7950904946676627 0.39225019259082133 0.20432075095726723 -0.36628569984870923 0.07314699655738674;0.16858875915256494 0.18037350621547779 0.33061894252003543 -0.34635614892004984 0.91029813849195484 -0.23497885552197506 0.095727193307280953 -0.3634801967989521 -0.23679338290766294 -0.77776830578938605 0.92980300048671694;0.5178392204949378 0.092578550049129099 0.63070157602290111 -0.00087689846283157437 -0.70937476217548223 -0.97105758994812608 -0.93559542074181967 -0.70234355715115837 0.042075179419587383 1.5110480001125279 0.74939169235907643];

% Layer 2
b2 = [1.9907683794287854;1.9354194213445075;-1.2393236618438177;-0.66239493797359839;-0.46968561616657434;-0.0074967560699756713;-0.5366854616241703;0.17978862572109638;-0.25177748914166048;0.41712191448974839;-0.68867880823813155;-1.1137804090636381;-1.4262052329414665;-1.6236567193588132];
LW2_1 = [-0.60181735595124264 -0.24502142321299492 0.35200966605000605 1.0147935273845008 -0.19580336926995692 -0.99706332221063543 -0.40022428267951338 -0.28717728005545617 1.1387818818580462 0.81040182857971732 -0.32578883339068027 0.25751652968244371 0.21447921647928619 0.15151667675369718;1.4942547041598759 -0.31405425557500666 -0.07735217368006983 2.3676870142387503 0.085590630147319519 -0.17887350134437968 0.96869724490299969 -0.24651219066226465 -2.409020451980469 0.17294411568842988 0.10500722956575134 -0.89109512949214831 -1.1933504377725073 0.66555945462323518;0.45920612609230199 0.63197577305194352 -0.34484114541475835 0.53319210675540463 0.18426346619901901 0.70510397156567017 -0.25041354326246856 0.20548914098205273 0.056036886482335652 -0.7101049598546626 -0.56371353304159022 -0.10011142205447066 -0.64384970463939328 -0.012062223139531012;-0.18350717059436708 -0.79262164212297859 -0.5683242972979281 1.0305404025781031 0.06623345174620475 -0.17172771336459564 0.39641932001744962 -0.97426877089515385 0.75437501298477294 0.23877806263527057 -0.14714266623736125 0.41343427466333449 -0.36758996890655032 -0.29814930541058582;0.38674457497247872 0.22659182227562352 0.99506310914689744 -0.61356012389629533 0.10089821137558963 -0.70466778526331719 0.50184371736245237 -0.685730201818739 1.0919539947158432 0.71979369627243184 0.75631415354857723 -0.38072006110724588 -0.31252990285599819 0.38257952102190618;-0.34535886413645928 -0.22999017922084677 -0.08315291607787921 -1.1795796131042378 0.53463905865641703 -0.090579783905187894 -0.88169243143708242 0.15979850927921807 1.060335927060942 0.081872619413539655 -0.41693623659097456 0.37443890128089302 -0.080843144202080289 -0.13645691402082688;0.29013740229656115 -0.78052751708946022 -0.20749291876735443 0.059329086860520248 -0.16608256060724158 1.0104264420563136 -0.65090382031035143 -0.78670714301007227 -1.6620340794712716 0.25743592078473709 -0.65185256536899039 0.50616649962066174 -0.051011077793203526 -0.37036014554979191;0.4163127471179226 -0.21944229020187475 -0.109373606448668 -0.41593331668973083 -0.45261555362502365 -0.3350631703226008 -1.0592939109442827 0.65473832675138055 0.22848405721067561 0.52861304085233873 0.39564968803391176 0.47953094476419733 -0.11509586177234257 0.25020154000935491;-0.60630088600282883 0.23205346763956769 -0.17413514025450622 0.96813413373118762 0.62218413156221675 1.3471779654473808 -0.052697046266774558 -0.10445011629238896 -0.17617046577026449 0.62041081620224325 -0.43071005127540651 0.47745881335219204 -0.32822015124801152 0.084421955842355442;-0.46673858599844076 -0.065419270072241339 -1.3456333188466343 -0.77088176423387711 -0.032064763183403219 0.7509233316501478 -0.8125308822908679 -0.53054516109084515 -0.049003092173252175 0.015972240131903754 0.075507971057058657 1.060423008981507 0.0030971980203163552 0.26710163039221163;0.063962200826393048 0.71021533714059393 0.44012592458575739 0.023860822511834509 -0.64261652493906551 0.58823215659353767 -0.46652956507852006 0.021272065106263918 -0.96634550780906736 -0.29499581393921559 0.30162909367249052 -0.47469575482200538 0.39805468379107722 0.48752600311262023;-0.47720539641106291 0.1343697415617261 -0.46292620614271157 0.34915065578133464 0.17637451697325357 0.40042042906634034 0.16787455012991098 0.60815180436485428 -0.30065905006227595 0.47253728791435451 0.01534832413399264 0.073164514309415452 0.12322731878067612 -0.32425164694939967;-0.19335582779301266 -0.40662624120601193 0.1389177718312318 -1.2275537390230395 0.74400235341008647 -0.60162556941286238 -0.49841978349588806 -0.62108937286797961 0.86999818624737124 -0.019574204023663191 0.27862172553742293 0.31862541486070273 -0.31466428431632504 -0.025956914364754936;-0.2075367638016738 -0.53915579856125861 -0.98246704130824403 -0.2587951111143254 -0.82426292659176859 0.052429496027076472 -0.7151803361539405 -0.24969175220927983 0.29084544305316551 -0.75561217295879501 0.12412640401376523 0.05615722563433416 0.066350772204886874 0.203678104943781];

% Layer 3
b3 = 0.57686250139554673;
LW3_2 = [-0.27868819413417589 -2.163202114427448 -1.5721358898823172 0.68556760038222053 0.61687999320580555 -1.2775600370419742 0.26319117015972443 0.52337085523690641 0.47107700880460002 -0.95638720771965857 0.60650482985331844 1.0246960544104198 1.143775715625341 0.29814557189821311];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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
