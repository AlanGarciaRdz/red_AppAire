function [Y,Xf,Af] = COVallarta11(X,~,~)
%COVALLARTA11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:21.
% 
% [Y] = COVallarta11(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.2717317427265153;0.5229059641956284;1.3086662853348676;-1.8893560923215076;-1.3325717662785681;0.57029797337552124;-0.11389087511469047;0.77416367886623083;-0.40847056447514157;-4.1478597276934099;-1.4201664979131157;-2.5740892784626341;-1.269763187314934;2.504133964176146];
IW1_1 = [1.0227088130881119 -1.1347145715884497 -2.1874299032885229 -0.15431549418854409 -0.0017345540039420335 -0.52850893178268499 0.20933158051258524 -0.93018257474686683 -1.3395775505159149 0.39294295642206334 -0.26581289925974677 0.015122294077935998 0.079012624221516586 1.1610447781723179 0.23036613468647152;-0.45409816126818409 0.19773258435235561 -0.062718936848238857 -1.3339247840842712 0.34640613638952072 -1.3304807602803284 0.014859107238652955 -0.33711333112062136 -0.54099557661340358 0.37625617746139067 -0.50782152836928762 0.28592415931734078 -0.036370709990637379 1.1616431332277897 0.45287087029951933;0.2821763455304922 0.32629608860033904 1.7367467053545544 -0.48471131980298332 -0.16059359751053831 0.58138549397198458 0.12198174238918423 -0.068867455105683845 0.86122711530346696 -0.14447387281089283 0.014655235342743232 0.10914013375534144 0.0034152395922881634 0.48849407794562871 -0.61394208689843932;0.040094198548829764 2.8273870816787201 0.38492357865353816 -0.2662026940633983 -0.24254971285805166 0.14160311036029949 -0.086731210543327955 0.063611420754754386 0.12340844579280662 -0.091449693382172625 0.045350834573519239 0.020001922501302706 0.26545104300074235 0.013419541819300641 0.30439172374438894;-0.79131526813225306 1.3692111262963833 -0.52859209470593072 -0.15492109252370187 -0.35607197009132363 -0.67912901446382312 0.24486293643812446 1.0161546210398493 0.32616246919318009 1.0156258922167198 -0.66712997371358251 1.0231030747891612 1.4155922874766274 1.5463574893257783 0.22318915178769858;-1.0305040393006279 1.2618178930645458 -0.074292417692777002 -0.10831639335979618 -0.57589719677841444 -0.37675991011561633 -0.050938033380444843 0.17577857427292429 0.063489765846863541 -0.040327285954365917 -0.17381004985293444 0.1045720242337226 -0.066594917370711881 0.96217605834455289 -0.10528008059852387;0.37408279214379769 -0.65220016409754389 0.54051650759407399 1.0690897042985403 -1.1405382699666375 -1.9888356732035224 -0.41773690221317533 2.1034011464303664 -0.28682089018952095 -0.059824603672668286 0.74160209775381958 -0.12510116930644677 1.3390913251208114 -0.12733157840322801 0.012132476545084842;1.3788891466249409 0.84367307216497889 1.5402173722657531 -0.02130167444814306 1.5966061150505462 2.1701361187756714 -1.2682296971760301 -0.59099613207978952 0.67338117547834708 -0.73361826038901956 0.33838552529071192 -0.011764008859840892 0.77727114429132294 0.10647291454355817 0.20759314263540984;0.37040428427932209 -0.34160368321563206 -0.62940322461131049 0.89219485598246229 -0.32883462374986727 0.27151149006746017 0.012771235344230952 -0.11415292441123542 0.19679005286778506 -0.32242980954537592 0.082748102478463884 -0.054490357989461218 0.32033017963297189 -0.1486485513087521 0.085729092183559563;-8.420572440361008 -0.2315055239373871 0.35110875495861044 0.74279112082724852 2.6264697720518364 0.34004572670527616 -0.049312403819939496 -0.23728715812276885 -0.2946948176308673 -0.70789185665053012 -0.46493490147005073 1.6298847404819097 -1.1798299859673009 -1.4350541166514597 0.45084226416065831;-1.9009159001463078 2.2255813765164856 0.37528714706087091 -0.60292964712405261 2.4366622073627089 -0.29777431658910469 0.26342513250087207 0.63098123309224696 -0.4557142469109054 -0.051575193761600219 0.46832154582293967 -0.23577031047646768 1.3902826064164648 1.1724715421967984 -2.0060530737548596;-3.1472512005682378 1.3992643352908589 0.44919317615405246 -0.44585439618554434 -0.63197014919861538 1.3289533891762018 0.059899757868655507 0.026993889713072212 -0.14526687765806359 -0.3368757726099334 0.24547754227044807 -0.13517071086061466 -0.834152727600731 -0.44480357441407348 1.8147237352794248;-0.66457239088322695 -0.56446128703197362 0.27666968618605686 -1.2274911634038677 -0.84217598644255476 0.26276408173927762 -0.079203788971833139 0.016907207508525399 -0.55791350515541971 0.29076767584216162 -0.27916941130593143 0.022791345423429841 -0.0956989137506771 0.60116638315889293 0.24635897690767505;0.36335452015785918 0.53076056419195006 -0.19774171503901686 -0.51501848643141135 1.5650143208137814 1.0182985095664336 -0.42408645304627141 0.53229912772514187 -1.0219716730124921 0.33892011609673683 0.0037493244935013562 -0.4607930349270416 0.28300380803500785 -1.2518369117064791 1.1829836311976183];

% Layer 2
b2 = [-1.5001650517435718;2.070396753810352;-1.3592044209695231;1.46641684261214;1.1278025490256893;-1.2814832337478803;-0.076493154977539821;-0.29118084827259388;0.043695372280469727;1.5846271461613188;-1.2592828871309381;1.5236521390618958;-0.63262335788929192;-1.7318163412226921];
LW2_1 = [0.57749792463617933 0.061287391551631806 0.6070678485719404 0.979713605947094 0.31701336187741119 0.3152038578804251 -0.33369086243899959 -0.7916004478932509 -1.0414038690240732 -0.061332978679534841 2.1252720178651274 -0.11701665926720541 0.62544675306424913 1.2343602614344471;-0.025680036789112071 0.46311536512041668 -0.69837214495411748 0.52910143483270311 -1.0054199135761452 0.51262333277416261 0.23465382382259867 0.90285201251020153 -0.1748437800500755 -0.026019770470971107 0.97432797690711692 -0.75977843507845044 -1.1100536847513298 -0.52654481983556822;0.26108210353442224 -0.49610539476447357 -0.22620709104245185 0.31518215576131847 -0.003421988865421291 -1.2801938511537461 -0.24046234930160221 -0.55357879449215652 -0.11049247698755929 0.30187641924213493 0.045161413497767908 -0.4995586393077574 0.86426545592416348 -0.61349362707073973;-0.21425361377866448 1.2663345820078726 0.5903477907764938 -1.7510875161029575 -1.2053220600056702 -2.7908780494343253 0.14741765235176799 0.69481240908566733 1.1925601383442599 0.54222950879412846 -1.442862498161313 0.058032018255488024 1.1919887759813386 -0.19203217131244241;-0.040176236266326847 0.86868711982362656 0.17110008304647853 -1.2118698246164825 -0.54647087846236408 -0.96932350847021154 1.9751637185650499 -0.88598915367427877 -0.044438102503800356 0.1024206160563346 -0.23644504937346547 -0.29707264610124939 -1.2690361524151448 0.066255351682432351;0.53390736449694598 -0.55650215220054611 -0.33100299289602253 1.4741580134872472 -0.28904736286013794 -0.65576842344182273 -0.19481857317373705 -0.44213602191229451 -1.0916304118496647 0.5493209903381272 -0.63223254554435004 0.0083993619585709667 0.37655356703659609 -0.96467901818374635;-0.37845083275548563 0.31899487137151816 -0.96304030406803953 1.5836443833968559 -0.78952621884566832 -0.082114546604530297 0.6879230378208282 -1.5788817582577184 0.54165913801020182 -0.63280298555570391 1.9323333474429345 -0.74386538742245245 0.43222474967410246 -0.32560563799156184;-0.50078785864814113 -0.98053336154744852 -0.38713995858848355 1.6471956735505835 0.10990086059383469 1.2989781998008465 -0.15160218863169256 -0.40415533601345033 -1.7435990584512533 -1.4880870224074343 -0.095595182950320184 -1.3554235913200297 -0.25534874503524047 0.028501258476787271;-0.85413869093958428 0.093336852043889848 -0.88498557851939863 -0.26149661345800285 -0.90938184356847152 -0.38586690798792594 0.24068563205981949 1.2734263234261354 -1.6051951081279134 -1.6055678085474747 0.097193942349550699 -0.38675803252350927 -0.12155129412356735 -0.35639634302429607;0.13593618398077104 -0.97226588626602006 -0.43496324196473191 0.51350560256903122 -0.99518084183742306 -0.40548333692944993 -0.86109174063401661 1.0108335617015023 -1.8344134278325992 -0.077490702949502277 0.22874056238334875 0.18694926490571645 -0.37751583805482192 -0.94382547010460627;0.53280355877396757 0.39422638945890226 0.45086879768212379 0.49078914445452071 0.10293200227736106 1.1701201116550688 1.030831880333307 -0.78914000756595526 0.603607128780421 0.47779112202866753 0.55496356867126739 -0.48253227577009722 -0.19818685897942587 0.76141746173773917;0.043674038630713452 -0.78693053041739891 1.3942056315751992 0.39004428841167793 -0.49273353668760811 -0.2811710248350564 -0.094096465582321515 -0.61336881831519374 0.66902823324792382 -0.21716622456731391 0.010922812394808377 0.72227641739958548 1.3591717193619406 0.045362617682113027;-0.021211751110711746 -1.0675857708511214 -0.023379582495595075 -0.072207089938622168 -0.51613147850566166 0.62045613129764998 -0.33601762311370503 -0.42190111827493931 -0.33201201004371245 0.74548629636846797 1.0061968718763654 0.61103984044007298 0.99848183380415456 -0.42756609236568388;0.050131646005016149 0.43711053703245989 -0.87626288683927944 -0.56394089731371244 -0.68342482620845735 0.53253743406968423 -0.4429963534873641 0.020856518388601843 -0.052544556123551397 0.78191263205346018 1.4258688949250746 -0.56249470091165454 -1.0553116837096137 0.24704829986040955];

% Layer 3
b3 = -0.35795695947392647;
LW3_2 = [0.66446630511106075 1.2221924781701039 1.6664749083618957 -0.95541978855610987 1.0160737109107032 -1.3344255531283211 -0.80661793522502823 0.6771650160701489 -0.93505200432343405 -1.0834528579456701 -0.76770769028773855 -1.225521611033956 1.0979022733304786 -1.411182945921261];

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