function [Y,Xf,Af] = NOXCentro18(X,~,~)
%NOXCENTRO18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:21.
% 
% [Y] = NOXCentro18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.7744177204289056;2.5363531354773392;1.5163900605937874;2.4172771815933065;-0.03495247176358042;-0.82730751515666867;1.0846907132624266;1.5988633018706104;-2.0767603217854806;0.12385849052058207;-0.23537613389471951;-0.7972889552752499;1.2134708126860176;1.7812309222013547];
IW1_1 = [3.6250198623601864 -1.2977706224812275 0.67901129098301938 0.22016064056390872 0.58472628929360859 -0.76896948805575582 -0.11986304384655846 -0.5731741366886437;-0.067722619256389643 -0.026186008751516599 -1.432778580720834 -1.4070965294968598 0.063666560570390301 -0.082966268094850332 0.010446443681343141 -0.85775285268977364;-1.213384632971215 -0.54787857437888476 1.00317947470251 -0.30555076022839406 0.28145517114703678 1.5160746430821295 -0.55297934908294899 -0.23799415062942916;-5.622670252717386 -0.24020154616823852 -0.010322435241124896 -2.5656370666601513 0.96285777381923499 0.82004700927298946 -0.14311903866141013 0.58490209474846799;0.15261752165372908 0.092080210796489176 -0.10169572761341379 0.52952435971225409 0.069413539342012304 -1.3956341062734108 0.19325117838152481 -0.51495739745172731;1.5698856203189508 -0.80498675991159974 0.038008525901225443 1.2336297715214923 -0.50587621373851677 0.71488660725080666 -0.12908669287568195 0.39168142885336871;0.74404179185387842 3.2224052257851339 0.1244346092894215 -0.37450559446570858 -1.3820556447896919 3.1153552149132189 -0.054968472176200447 -0.5532400169988102;-0.37148323186471149 1.8173210220642448 0.097415112076470578 0.85587569981242595 -0.057012478733915531 0.37440518297155845 0.080179634158820234 -0.085360351286739813;0.66226728341837615 1.0712474647065191 -1.5143928495483194 1.9179132053966175 -0.62283203187342129 -1.2587500783252505 0.0048903120026671937 0.64967698507165139;1.5164671953905537 0.71433723069018518 0.18177950962442083 -0.93686353763274155 0.46536373619958982 0.43427040648019294 -0.06623208584379367 0.66454930744626295;0.18345983188971837 2.7203850484659737 0.26896575347957424 -0.33538379605952368 0.22423933683771002 0.50075251802852883 -0.22833741029636254 0.3410863749336156;0.44012489133068045 -0.48331804613697693 0.018046445216693074 1.1955067738394896 -0.52436880768072924 0.88870996163828142 -0.11790268589768005 0.14112633937199054;1.2640490905087334 3.4059670306200642 1.0723706139187905 -1.3837797566250585 -3.2844037129379906 1.7768855288710286 -2.0674361815994793 -0.95762187150248268;1.9651343709468927 0.27499700066330485 -0.046305587079912558 0.23265254335040114 0.23374738874085765 0.66264552706745128 -0.4007780664601629 0.23142233200736329];

% Layer 2
b2 = [0.98677202875340142;1.5217468563755012;0.96531665732073679;-1.6352280754141224;-0.4546363614567015;0.69680295847519869;-1.813693548304276;0.42852940961458913;0.82429514304111084;2.1716816928042051;-1.1069848567348051;-1.2454143315102215;0.19752266083755732;-2.1097765118700318];
LW2_1 = [-2.3430957429220434 -1.2187548054617225 1.0070553510063274 0.33524589996098159 0.10254025460083328 1.5291148961521468 -0.55441079467589549 0.044167068545299656 -1.2609992695410954 0.44387995635832628 1.6175302437491779 -0.69686884289001327 -0.20115742338376719 0.10782619448409921;-1.0058741287798834 0.7794511086237097 -1.4796987870053817 1.4044618286357213 -1.0450180736529981 0.0022025595968800382 -0.48897983655094274 -0.18787143429749381 -1.366339193480264 -1.1745313716870074 0.85368785835933947 -0.43268379095132259 0.15892287085669954 0.1744151278940734;0.3817532077589455 -0.055349186511338869 1.0486658752459674 1.5506558651469067 0.40095672554781675 -0.94934149432981885 0.5105427894062029 0.9743763346853781 0.16630748308217899 0.34645903377504272 0.21148441562655529 -0.59587003680702733 -0.40161666918766792 1.4026396719148211;0.89595303263278503 -0.49230605037778274 1.2828935528902987 -0.017560229208043884 2.2469879113860132 0.78109448287703953 0.72013707614210365 0.3139811987815937 0.77642567665846984 1.647390618718459 -1.256694823922005 0.087612869067807034 0.25572908754303969 -0.70818338431078431;-2.1580411087256164 -1.5264866539206743 -0.1912083056447034 1.3355194016845282 1.5916699765304267 -2.2891432784917298 -1.7251386546729837 -1.3942121764618318 -2.378931127044345 1.0213146827284649 0.10081564448185031 1.1075804063848569 0.24758139095781512 0.57116676363324081;-0.74013291609812748 0.054045307665929583 0.28695350991374596 -1.3449608941065343 -1.4890244087567854 1.686856857179567 0.13586791695545142 0.60218127245147501 2.352010003269934 -0.93880483426677541 -0.056378913287504148 -0.58133704011685938 0.28903420709171906 -0.50132322127153461;0.11102332373213376 -1.8162054651931174 0.46394566964375589 0.48401157344045825 1.1347329772825572 2.6439280534889189 0.69732160394021458 1.4695675009256295 0.99025327533807472 0.78031266732048654 -1.5759940849132672 -1.857591791237992 0.75857924024509171 -0.41225917239663307;-1.210113139901019 0.032754090094343477 -1.1588989948589032 0.69325809945617478 -0.091988927623614089 -0.36409143308807135 -1.5261252215149403 -1.865587481957967 -1.0390249095807789 0.72891825243857933 -1.2077434135304415 -0.81859113709320852 0.3006383086760035 -1.2092263455995049;0.56024677570985804 1.7624460496690102 1.0505791716396147 0.128705075715975 -0.089406711710565676 -0.049286652656808684 -0.54302560101889774 -0.0070370206702708646 -1.2913636844136158 0.45506719375595356 1.5990983788539033 0.087960801207847994 -0.28565749685913555 -0.24861250979957703;1.4255293962273181 1.5654603089730454 0.67887550312154599 0.063795277762606281 -0.70677934682129684 0.46069304039148157 -0.42831835488755488 -2.0925159832944265 0.13986110462239978 0.76897533886051628 -2.2299987797605523 -1.3243746448987386 -0.81325000648997858 -0.27857274347682204;-1.30621889538558 -1.5186944560535978 -0.51003171024767568 -0.14912390502127126 0.93856050015822257 -0.88430580579734963 0.4204359891908459 1.8579051398188371 -0.043897525029887932 -0.37211386298494703 2.1382951687020584 2.055529078500077 0.83243220909169047 -0.18861117873776631;-0.020675924583643389 0.023195821232967852 -0.60141401891159796 -0.64623730698679172 -1.4434567179056275 1.5588387035626319 -0.36277462419710438 -1.2748273933718475 -0.06070375160977437 -1.2906624075233502 0.006977183829497649 -0.30371113232113378 0.41764397227337835 -1.2551032924594654;-0.053052732206384429 -0.62929104958690862 1.015663084641347 -0.58867777922200415 0.092379659090731869 -0.18980015446066201 0.5322407643883954 1.2331273182414548 0.90573118691022436 -0.63813702719646759 1.2129314484789473 1.310492124626399 -0.18676777538741554 1.0419100005726165;0.24967236632907303 0.18478540965996551 -0.87239366701058652 -0.05902708598313737 -1.6489890934719571 0.29296776865657248 -0.54587878559651004 -0.73307212793193344 1.2887429426939607 -1.9785728262912168 -0.085619823611554249 -0.64000218838599987 0.51098027981880068 -1.2772597487615986];

% Layer 3
b3 = 0.3919760798612375;
LW3_2 = [0.8932576928176843 1.7148178103577849 -1.1326150437351143 3.2850088098733137 0.73025608676218401 0.76473696527347668 -1.0187888257607887 -0.78935906805254852 -0.90745625659591878 1.4187533755241466 1.4641709561891387 -1.5432039168744205 -0.89514501333941321 1.1516394184880161];

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
