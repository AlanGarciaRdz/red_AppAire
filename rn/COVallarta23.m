function [Y,Xf,Af] = COVallarta23(X,~,~)
%COVALLARTA23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:24.
% 
% [Y] = COVallarta23(X,~,~) takes these arguments:
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
b1 = [-3.0227370181882169;0.52693336265397095;-0.27342747723814353;-0.2880607138605068;-0.86497531443119147;2.6650288749016746;-1.1481710570774799;1.7973687554601823;0.38120404497352101;-0.46079943807522628;1.2824796374408829;0.71478089017784985;-1.9154392873763841];
IW1_1 = [1.7593712222805999 0.17969232677136893 0.12337124938009247 -0.32109709500335959 4.219898713016156 -7.4797134783909947 0.24769206350864062 -0.37289885039882942 -0.85870469349985246 -0.052548459503260113 0.23028283321631215 -0.072785653305820791 1.2838315792182327 -0.68103197634744828 0.077898769661326916;0.13021084333053251 -1.0769391486111899 -1.5773253989621074 -0.31372929097529295 -0.44421167544460854 -1.4205484685367002 0.20197756967112696 0.38929718050210921 0.81329134946537918 -0.23824489381730904 0.78783782062810948 0.72120636446078312 -0.42885194452858766 1.4582767302178123 0.47004709890011759;-0.067644454348075839 -0.10872409676052074 0.77999728370259103 1.3766433961519613 -0.79852233318181565 0.24508086477610408 -0.013809776100378488 0.92539180903255969 0.22714898885452578 0.22131198603180524 -0.50612741033775155 0.074022493113745383 -1.2921967881573579 0.78499423509878308 -0.70369379548798749;3.2214709459505255 -0.17314682190902342 -0.47318161902259154 0.23153963734200636 0.1652214683629307 0.89571490288474442 0.3598938017650099 0.033551079428115707 0.12242959708566034 -0.56665672734801009 -0.51301226115259269 0.0078774810190516964 0.85375915282855619 -0.13130923325150265 -0.56459961477459464;0.40022948576170192 1.2716174099971347 0.86140804321271502 0.74621073474979094 -1.6703369666176175 0.12574699071112327 -0.057095819157602944 0.23121515103343238 0.37749514452850869 -0.082725589722419821 -0.10399597395619034 0.17921402206111439 -0.32638261212594655 -0.08392500719518492 0.25446165451404601;-0.27396353618163244 5.0689162004410422 0.35531303006457549 -0.072849952017056199 1.2838030351127738 0.35576112068463461 -0.098633209045306133 -0.025374299245625703 0.17207212454476606 -0.0342472836499918 -0.017623156950634752 -0.34220445234014496 -0.45658855658425856 0.11344064200727894 0.016947670544680736;-0.37752478321867722 0.28420040220387949 1.4691890248404635 0.28864685340895729 0.95178667783045967 2.2833331356732902 0.075115492809150558 -3.658556977563145 0.76462542004543887 0.49382937506017144 -0.64845687168841604 -0.25682274232584634 0.45379222794910101 -0.60289868122006596 0.045051805075858334;0.27015494911653648 -0.026499873842102284 1.7611890086391637 -0.37652258247450582 0.15198426035162066 0.43797057558160274 0.45320524667163326 -0.8563469154878155 0.38422976116550867 0.58220371585387054 0.47620566500099648 0.049188535287955262 0.03899755199155297 -2.0298002909231099 0.20141249068759878;-0.19909480162977583 -1.0086515579699455 0.44563166240461055 -0.057978439811059594 0.91401166013574275 0.45402555439079995 -0.38278743506728191 0.079173840607396975 -1.3094256517525036 -0.21798967712660922 -0.4165387163457373 0.36190191521617199 -0.87013354587361413 0.1712223474955662 -0.031741813144042258;-0.69853517664362796 0.072686882347301779 -0.39285967690044549 -0.36608095587841039 -0.19599042792803859 -0.4255573686470614 -0.10377144945856025 -0.1439376269437295 -0.46799789972908368 -0.1539450712866097 0.28294623485028436 0.17022757512920997 0.18774160191634021 -0.014522850800861541 0.45806549117790751;-0.025723111131082558 0.77630327960248557 -1.3731229290416902 -0.052694005574281791 -0.50333797886816778 0.75402173205738054 0.44561946454816637 0.55099918916458535 0.42408014336718564 0.54591204564693696 -0.051650260031551209 0.43279084697196618 1.2532880529059944 1.1157405821711335 -1.0179022315030073;0.25038495423392315 -1.8695606150203667 0.46473926219934181 -1.0834945826374052 -0.90868119104521072 -0.7104479713880224 0.1258038559814465 0.40059937372299093 1.2585403388555374 1.7141401170988995 -0.19081010002966264 2.5236269693000781 0.75119128483606201 -1.3693501238271759 0.1039639228402867;-0.95029780524346785 0.85094940617402515 1.5547328591525651 -4.0405178533740447 1.5915990166988148 2.9062029510910126 -0.06955377153979822 0.87926185226086095 -2.1297553627503176 0.29621932237015647 -1.9979251843482795 1.4715139103248864 -0.60369733275855353 1.7590750158184509 -0.54463586590109359];

% Layer 2
b2 = [-3.0848544781309948;-2.8473188069300397;-1.6172762475807341;0.39981847881950888;-0.18014979328435532;0.51555605797578297;0.35380308955652939;1.0013250111792871;0.92746307098708447;-3.0259268025141735;-1.0089357866515816;-3.010477611985463;2.2688994189425395];
LW2_1 = [0.26145398295418953 0.95493652768192216 0.36178037473140467 -1.3397365332849527 -3.1176301425112549 0.53446754620777115 0.17108401921306954 0.19700764670350529 0.03413133155355412 -2.9619993646683707 -0.37390481409290666 0.18454916216576533 -0.98554777503181257;0.7775118094766128 0.70691962906459915 -0.2772571561235545 0.0094842521170750288 0.630221699186849 0.60783320505204486 0.20805047038758276 0.86115133050123205 1.3319207726080233 -0.70967090536673327 0.68749783221252403 0.108009691028331 -0.39613070615959151;-0.86829379198951107 -0.85789342176124816 0.77793143586651825 -1.5083751372428862 -1.0139802917995056 0.25587664572712382 -0.62909999203084266 -0.3385713358810199 -1.2654704671707382 -2.2214650324189718 -0.2319928304072022 0.91794891429023107 -0.49921445215518861;3.9405969655977153 0.16414732751542421 -0.84932954642200464 1.1103917315615968 -0.5577812436061893 0.53262213660375979 -1.4708544923126234 -1.9608363920809699 -2.074513756350318 -3.0586168312245134 -2.1416218698924103 -0.11434031022500175 -0.6671562739468011;0.14679564284461977 -0.46484895142594329 -1.2741494912448994 0.20073803723632483 0.80021302870662425 0.71409502582853257 -0.7156898475408715 0.23496139130109678 0.81558710304061954 0.32219267699292525 0.13602725339536098 -0.4127385280941025 0.12997598811629796;-1.2667847591022059 -0.82462818002089244 1.2561694822563061 1.5074797473936348 -0.91665514244801205 -0.28799083797499797 1.2798358119255837 -0.10107060591540512 -0.44679805835606251 3.0213997779173711 0.30926957393197491 -0.19551023024048433 -0.26753327123647547;-0.016842874673327915 -0.92187282499546186 -0.85700719200715347 0.58301495485629162 0.25661862478579411 1.171651122335138 -0.91502331840207829 -1.7457840693735645 2.1585560082439121 1.3206363455210692 0.26789351223729019 -0.48609744028555291 -0.88847931446447626;0.69884400245583256 -0.28837875477655128 0.53025809715210082 0.17326143018147405 1.8865581483514315 -0.68223606673526871 -1.3746993157571341 -0.44011951606116173 -0.88434316668994994 1.7033621962496373 -0.49035775648806768 1.3067383161295658 -0.71809533393968239;1.5312803664692205 -0.95713162815816555 -1.2227626743765139 0.17843034021178036 1.6597605213860152 1.0053886712825377 0.18441198901806116 -0.70999808658240005 0.31523656626589391 0.17115361206663851 1.907908140927199 -0.56139989194521267 -0.82110417723322493;-1.6368396427631324 0.70246829477521922 -0.3835377037956868 0.62443928017566552 2.1482105537282381 2.1831003642491167 -0.24911480356829349 -0.28036507119527065 1.3953841531924274 0.31504838611834535 0.80259738417541426 0.059529767287471752 -1.7650478043659157;-1.9327015432885433 -0.75993892848560574 -0.96558565252302897 -0.74597371203211993 0.68641595085249507 -3.4673291847107239 -0.8616589135016165 0.84509427919916202 -1.1322514507514569 0.46098214126108694 -0.87944058879640252 -0.53903036287244932 -0.161316915919753;-2.2410677475102898 0.63643680904469124 -1.4907206178296819 0.42661608733477518 1.2240651271289207 0.42893030866818593 -0.61011308306162715 1.2639374675163475 2.432826709444996 -0.73848351082525254 0.95974828622601327 -1.1125551061585432 1.1431743667309755;0.82554995598895742 0.17410241998577169 0.25944311812495874 1.378263989448353 -0.010350572664071973 -1.7578339213361198 0.8962260165953142 -0.66550051275414912 0.84462960488741767 1.9114868683596236 0.79933214030156119 -0.76198203941146136 -0.4885698815361581];

% Layer 3
b3 = 0.4249151771689616;
LW3_2 = [0.47919193740801941 1.1164323036687034 -0.6392069419989761 0.28979016335601693 0.40646281472571161 0.72504479298843072 -0.32306130194524796 0.19068588971931966 -0.35646705942243029 0.20563857424109502 -0.19533469922789817 -0.18035081440404915 -0.38541796530621952];

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
