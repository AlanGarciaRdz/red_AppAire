function [Y,Xf,Af] = PM10Centro19(X,~,~)
%PM10CENTRO19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:06.
% 
% [Y] = PM10Centro19(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.74715286209999932;0.95129887148877712;1.300401588443342;-1.2839767493632188;-3.7866336685004849;-2.768288404992604;-3.5732971900683572;8.9378830518336585;2.214482899877555;0.9379224257101294;-4.6573423685473001;6.0308745802481978;2.6068856921389227;7.5125132483369095;-5.5428174036446194];
IW1_1 = [0.70233957899643606 -0.20020603197288872 0.10645264104259251 -0.22875736859727624 0.15906975097720802 0.60716799918986009 0.14823237737528724;-1.6990077109600292 -0.34093318944455947 -0.52670096635957098 0.11386773696702912 2.1747408151542231 -3.5860583419377692 1.6279058458999323;-3.3953605458705787 -0.080183916791053189 -0.97582239207686461 1.5473330171669017 -1.8900261512112655 -0.8334690229549746 5.2680948333053585;3.4777452423272233 -0.076992173796639488 -0.010337095435708443 -1.6683495089272486 -4.0699063783647595 0.60893479915404924 1.7069411780948935;0.97280977242221667 0.33425326372525238 -0.24189875379460168 -0.1493558213628281 -3.4617480504470568 1.8440822915669433 -2.3319495077310397;0.80260672165433555 0.10484182419205709 -0.10777355739907257 -0.29663681051404961 0.075546797999039725 -2.0612224643239223 0.043816783757884351;-0.21631422655478474 3.3973830939193257 0.69502178696118566 -1.3006556406794827 -1.3042624364607662 -0.97065934812144028 0.1318983292327725;-10.957566315250507 0.1256678314546619 -0.47784293125003996 0.13395781385372132 -0.3165344639503021 1.8594451008589126 0.18288726593698115;0.59647505557359082 2.6976823389483671 0.0076236959074631938 -0.15927595867152333 -0.27985283016279944 0.20712176555375508 0.56386717603425696;0.16788590718380683 0.026896817794679791 -0.60648196809168964 0.55698616165049653 1.8146882150333188 1.8534380116706779 -1.6823739514771572;-4.2889693552093213 0.15613915421371863 -2.3303901564279208 0.67054853220479782 -1.6626915902117556 4.2321873017745864 -0.98644529758097865;2.2579713250310354 -0.68195215583772173 -0.17926468930729927 -0.76236829143090779 2.1244260565409951 3.5212349548757489 0.42717867552547095;0.68368639101485673 -2.6925572764059691 -0.46833043242230482 1.7063037335317537 0.70576104859132471 -0.70374443815313859 0.60331417750761174;3.1954953896517035 -0.0012210320708972442 -0.66170579926526285 -0.2995032420831894 2.4199884020088414 4.4937866023313422 0.066242122117710814;-0.71537864664430706 0.061372001878763759 -3.6670364000529503 -0.48001984885175808 -0.27993838207773819 -1.2851713748864726 -0.10732314777817092];

% Layer 2
b2 = [-2.261173174996697;-1.8424875778828611;1.77501116536889;-0.37787992837946205;1.1472452850837895;2.1925010608685791;5.6088607382447311;-1.2395186137121239;0.53694188793362507;2.0549728124001363;-0.063232154152500594;-1.2708418496910148;3.9810445347491576;-4.3503587077521004;4.2341221934832216];
LW2_1 = [-0.70063285418383037 0.04221276683193588 -0.042225437573770279 0.88143979793553573 -0.10508231850450664 0.59446279805870439 -0.018628599047784911 -0.24205259916125532 -1.4346429214982817 -0.52887482128218799 -0.99328640082389053 -1.7913522258701691 -0.51504431056399436 1.7795303834213376 -0.4872456052551804;-1.9080591143915306 0.51633225133864713 -0.24027711494276577 0.084799341632416675 0.24957501792312331 -0.7243664632123118 -0.10640390428925431 -0.95064069727711431 -0.44008403659365924 -0.013089790630354684 0.62631980826178413 -0.46396091854225513 -0.22879872280337787 -0.04666490538775675 -0.23482350116191886;0.59475706428223318 -1.0977066556902517 -0.20899658811256588 -0.34180851831584819 -0.71992475560359781 2.1327013847126137 -0.31445605618296607 0.90768050257697597 0.97297003611920263 -0.65034478247870453 -0.60417367588078996 1.2434416567786453 0.32542287248530927 -0.39660335240316952 0.30778882813209257;-2.5292817717139453 -1.0231311640115963 -0.046616048906035587 -0.108034577545045 -0.46042500101537875 1.7751006429537568 -1.2307439151484703 -8.5656921023272634 -0.21149676459023392 0.84802059085938442 -1.5935125554384915 -0.34691034330690623 -1.2582379391718403 7.7100713135478562 0.041522732154154196;-0.28097099384237656 -0.15379300938713283 -0.080651717742798168 0.56933870520300833 -0.33407203192744772 0.47157062338595002 -1.2246747377538059 0.47974218978288991 0.80796327923077538 -0.49800662070334001 2.1862663234987632 -1.1380611667435643 -0.050580265694005304 0.44013255793272205 -0.21118660883738366;-0.38137149717865548 5.064292753986364 1.8963466227295471 -0.26362574311451159 -0.58234416970376079 -0.91824020597169742 -2.7879278469674866 -3.6399990975746555 3.6309951698975222 4.2041484785189036 -0.6250627871510005 -1.1631817744111266 -3.6007802544352403 1.4217635987420263 1.4676189777178787;-5.0967871135034857 -6.1521858875726911 -0.73903571194184237 -1.6760089629124306 -1.2467667512943408 6.3221989335751791 -0.0041655293154111289 6.8594885030277393 -0.45414753297981558 -0.89385250324669718 0.17717003927130551 -2.7031631478654154 0.94515251861035809 -0.27410167659165441 -9.7526274497153942;-1.9946580327795487 0.13681664421021097 0.081059354251970944 0.72613808186143536 0.10197885825737912 -0.25909980821092654 -0.63807935239292324 0.31960865083131584 1.3663572782117348 0.61249374141554169 1.720656319857099 0.10157053240535072 0.83603314788799554 -0.93300505160767133 -0.1289517318837283;-1.4188025357761882 -0.32353458625092391 0.35669371699631525 0.37622227095264982 -0.47169743048055573 1.2467813107682679 0.93449647056219831 1.0900098138965784 0.035759628186588385 0.62051979520128364 -0.371790358966193 -0.59994053842109463 0.39272901582993297 0.54991538693633391 0.20200025598899068;0.30637128323832841 -1.4141771372205487 -0.18958674705821735 -0.45733642409472353 -0.96692913248360546 2.0206000831135698 -0.49331374715501097 0.29034420583057935 1.1788308501602458 -0.62741587013735256 -0.75950552979617958 1.2000776751403712 0.32118179725691215 -0.52304819181754136 0.41013214184950075;0.99971184565083182 3.5876505372527547 -1.5904934058894216 2.7316769180321492 0.1507711513355017 -3.085230370338905 -2.7795043403967448 -0.26921429000165376 0.43491599584283386 -3.908674161753396 3.6680660273026522 1.0626938188468105 -2.7425017528741371 1.0038251230009454 -1.4158159625267224;3.4965181416024915 -1.2357453633259867 2.1306829023063565 0.68339394009233723 -0.79552342599204451 0.50679600009793002 -1.5669283093117607 0.12971583233482353 1.8683589089876029 4.1607104692072907 -0.2099384284526431 -0.26002451781438324 -0.17070493813732487 2.4144897383529758 -0.980517948678577;-2.0113032263607278 -1.094664851564384 0.2961322639527742 0.080669340657432864 -1.5337269662558943 3.3130755234412632 0.37762091094411665 1.9750904666276696 -0.096101853591804259 0.10614063047751954 1.8803542790819279 -1.3931789276791617 -0.45037108274080134 1.4883128634911216 0.10889905461274588;1.6762801649200705 1.1454077263635496 -1.2665596083414263 1.751692265709434 0.45803306075276717 -2.8386638613486888 3.1807566997466772 -0.024063280824047441 3.1103347644330315 3.9294370702095907 -1.4798005307008322 0.22949975425655314 1.8228471056249063 -1.1922540546079394 0.74363476294887454;-1.8124637213644978 -0.25258968380388153 -0.60414769545849478 0.17239053544780858 -1.4038946886175121 4.2432452495640209 0.44286824650432016 -0.45214685599346038 -0.070914441012639939 0.2557107213024068 2.3605940411094113 -2.6674864157342979 0.95349601885784818 -0.1987459496735548 -0.14736538329759916];

% Layer 3
b3 = 1.3808113093332992;
LW3_2 = [-0.35109766659983355 0.894580071745259 1.4600511787257278 0.15265747673351365 0.49899040812854789 0.0377667128219649 -2.2867412394832183 -0.48727673410770433 0.59745394431102095 -0.97934735744000512 -0.12354370955713567 0.044348092511192816 -0.43818717142357322 -0.076878872865508444 -0.10366796772761316];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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
