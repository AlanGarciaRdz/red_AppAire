function [Y,Xf,Af] = COCentro21(X,~,~)
%COCENTRO21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:34.
% 
% [Y] = COCentro21(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828;0.448430493273543;0.241545893719807];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8498665244030739;-2.1359463340731728;4.0275101027858264;-1.9803777761543095;-1.7744977934430806;0.51605205775411911;-2.641769956269608;-1.697383577096587;-0.92109950959545017;-0.13076490634572577;6.3337503875655026;-3.6884550650357153;0.79978243952307282;2.4975444197226926;4.1651172557453098];
IW1_1 = [-1.2507378923220411 -0.78222672938040827 -0.22054780602487503 0.94722084549302965 0.48512584655818408 0.37475250451437447 0.14657402006348788 0.013536953337703959 -0.024599365006008768 -0.088507671110736166;1.1344075634754476 -0.7648420541124421 -0.34570103594593454 -1.7768415787894176 -2.0396368730418293 0.32592721036860256 0.030766074728599695 -0.20981683043022728 -0.41972312098633568 -0.22754658860289442;-0.46335945988262084 -4.2398212001508613 -0.62619457896505826 -0.27834080119361193 0.22476526786589388 0.23187168703795175 0.24299517254936187 -0.4360695141317612 -0.68070602647524925 0.39352167056245735;0.32973553939401201 -1.8130285872004988 0.57739975249181386 -3.2878986032428266 -0.54329488040367646 -0.76772509756125518 -0.32990081448509834 -0.021147124415513936 -0.11019878581884546 -0.63789274336028368;0.36940676228478231 0.24736852720548574 -2.9963944138635314 0.9686452972395696 0.6885708487133072 -0.95922601573484956 -0.18156671317851866 0.4570142083394142 -0.092932503347733619 -0.063267478830474094;0.051606843745856612 3.2556906351479311 -0.030387144670808497 0.15289731457543268 -0.04714905533652116 0.044813240606689342 -0.081510136941216851 0.13887961928656528 -0.16768741430933751 0.062517236803908319;3.4704426975331404 -1.5368116992977068 0.24513697869624723 0.66387329730344058 0.074129743137474141 0.72771606658127763 -1.0979162677481891 -0.043293153203809692 0.64026505761509611 0.78983620482247097;-1.3179462833609901 -0.10932926462073037 1.0280779382870757 -0.50939963209868988 -0.77776492773521122 -0.74363292028556394 -0.044032368242080004 -0.51779053237439854 0.5087787272976575 -0.038796800886715242;0.73007380538746036 2.325188175009635 -0.1297177907818568 -0.59170707485962692 0.040202018010152968 0.32720767387354344 0.19004630127105832 -0.66168758308868203 -0.9045168603345457 0.017734609570306925;0.59315565435691842 -0.97773170013248223 2.3106827355662358 0.58255483408624031 -0.84990048936643392 -3.3424043724600145 0.37971999358712272 -1.1366999530174595 1.655880278794831 -0.4184828882086124;0.59796288438955658 -0.14252447381490749 -0.027343078644943394 -0.79350038898993835 -0.5417829355974253 0.094486950271490858 -0.019055098565211776 -0.058366764918235732 7.0429997511319264 -0.052110103834899647;-3.4549362810343638 1.2666534746094669 -0.030654137915036933 -0.74349746309051334 -0.75980908813698089 -0.40916381489574544 0.1851155008202886 -0.6806086000785464 0.8266955375665952 -0.02580100295118453;-0.77986016214223508 1.2721723720943194 -0.87729270398605486 0.61765808381498633 0.7659129300432812 -0.29105957037919328 -0.17214490416964809 0.59688732122711896 -0.56056816527670805 0.22064980927180589;3.2156402843928951 0.82384885659127427 0.29163191857875698 -0.62043951627215077 0.55627717127743825 -0.20545026180798207 0.034374928671391074 -0.22011600153797256 -0.36634514082120095 -0.36456451199560524;2.1648269922829204 -0.69502988619907913 0.31986992318785162 -0.34265710402374439 0.094539616287799527 -0.31881418530111283 -0.17974265906867706 1.0882185124480639 0.64859634057952387 -0.35202624199967925];

% Layer 2
b2 = [-2.0417530960711479;-1.6250623396804764;3.2117625582125222;-0.23610112420759077;1.2303363761504837;-1.9891942226986263;-0.66679808706699006;-1.2253864230532248;0.23098997421738088;0.49718905860639995;-0.36227373258504952;2.2042341644817869;0.81547284278394738;-1.6220209322569819;0.94523493918538293];
LW2_1 = [-0.18636861742894278 -0.62160500496166116 1.0520291296888802 0.28554439301611223 0.29221542654614158 1.1492483362387198 0.506581285151813 -0.083527807159772482 0.51276427152474768 0.40335858962992049 0.56342413093371002 0.055534745314092977 0.34300325869255699 -1.0097779702763123 0.87838635345975002;2.2257909172867518 0.82347470539030054 -0.72341221610119399 -0.40174230905454655 -0.11326579285000769 0.065038811595374113 1.8246947475914339 0.22000071347405856 0.48597884987514489 0.16832246076188687 0.29146380281074658 -0.98061272009417388 0.0042837031294053144 -1.3904993699084662 -0.74364013293718478;-1.7894758298226969 -1.0814801154039051 1.1412743736531634 0.61771156243106007 -0.76138954463997399 -3.1567294466791194 -0.26789131052670223 -1.5742544838120802 0.68154117639899692 0.98701358354978175 -1.1770508022964872 0.98972757820003265 0.56663549949917336 -1.8383825341122957 1.0248858318808711;0.062983971477982514 -0.15023951343562839 0.32672049002911829 0.24760328704290682 -0.023128951678009307 -2.3013253948431269 0.41961338822171157 0.66592182312562764 0.30608327386102563 -0.2748716809520162 -0.18393750547912688 -0.59125402801688276 0.27737017516465784 -0.15897958073445309 1.0294985480091285;-2.4775180126873639 0.23256314152859209 -0.22929864906588859 -0.68422612147251138 -0.0048622129303120334 0.78530156767430315 -2.9513695855782371 0.278962719219157 -0.6124618466777294 -0.66190607711778404 0.15702427253648527 -0.89998033816442213 -1.1229815904388611 1.1067762983830314 -0.16589683454924126;1.1469665677434691 -0.30540328534794603 -2.0965695553193617 0.28143813721585154 0.75391003122152633 -0.021121920890058696 0.18319391506801719 -1.8197790589799387 0.071750369587662566 0.39328226744264294 0.7826663358549687 0.72510546088743899 -1.0773692099910015 1.1342937173225072 -0.19786456353583731;-0.81827173950461662 0.31805235143543364 0.7567442030322975 -0.63435068106000925 -0.028630110378134722 -1.019014829127886 0.61107498561496243 0.72757766519724321 -1.3875613539546161 -0.39788211129057299 0.65075697163589674 -0.99342075182955225 0.7774918903845216 0.59409584071279342 -0.34914959199045714;-0.4800863911980644 0.038716705628948495 0.58388941615351564 -0.47665941050277832 -0.19841969088224012 -0.73242659914686892 0.89375029527724437 0.50263951900869708 -1.1776066978711899 -0.25429955866130033 0.5530790765471828 -0.81208519311392313 0.89960180426951208 0.43257899937213956 0.84137115207861335;0.41842404770706532 -0.61360356503993208 1.7035718725673117 0.70779002185035245 0.1863606280440448 -2.0373281017274079 0.89872055370580284 -0.47579440166968784 0.53747813579742498 1.0529622189678582 0.83530893733222 -0.031551264619800123 0.43342876663464819 1.3462104278800886 -1.2675935065056847;0.5556462291612051 -0.023481120170471093 -0.68933957952616032 -0.33411763758839585 0.1590953822237855 0.45203988248415905 -0.48909195672053218 0.16319718413477768 -1.3044245384316926 -0.061441832137431131 0.26095887725960293 -0.45077543751970234 -0.48387078303031239 -0.60196610307588272 1.5715621271893929;-1.1614297798086002 1.4051571061181942 -1.1332935212012845 -0.43554326667620669 0.019137488913218412 0.17500871700447468 0.74475947141956267 0.19941907843834394 -0.68895413108438264 -0.012178980885941472 -3.1450797736982832 0.20896150940527963 0.2169180634527097 -0.052689432533382256 0.84324689430881228;-0.34266182915813803 -0.2208424364290206 0.58007784707506116 0.13027511289906521 0.79791968644796529 -0.70559096121937936 0.60889609018106738 0.5399557693510415 1.9571240954403313 -0.31207511688131295 -0.27402439793241895 0.34709542289893841 0.21505426421696353 -1.589050130166348 -0.77023908325713986;1.4653944198052886 0.26869159763460992 -0.045119050947834249 0.45785459070485901 0.63552336313028324 1.6096909544470015 -2.0494086161538667 -1.2329155038996751 -1.0614122866755678 -0.49240446930206844 0.13443858345179718 -0.61216783353664739 1.3423072617433252 1.1984246371713854 0.74347583223484592;-1.0115410079843543 0.1536709326294636 0.2511014117303374 0.4472474373417194 -0.15679111280170555 0.53155468208508971 -1.7884846914191437 0.038721064680208757 0.83859028258946289 0.012653185398637582 0.67588550328337138 0.35216606214621637 -1.0113394801119444 -0.023188328067741244 -0.57058419770360536;0.4304751116375235 -0.67471462073891741 1.0953669580280969 0.48328645369900697 -0.71565055722572757 -1.0030025634180577 1.6383843177940465 -1.3391241104149141 2.6238237757698997 0.69241058831007884 0.020962008021767731 -1.3379741691255189 -1.7421180955833846 -0.0038369798980210858 1.7189212538471095];

% Layer 3
b3 = -0.10774122829723656;
LW3_2 = [-0.85005619478187411 2.1694708228132247 0.31111592083880341 -0.89796948738914384 0.69626131705456895 0.53839705029665907 -0.77274160320372265 1.1435560032112451 0.45820695249005061 0.8581281916803194 -2.0876138399139204 0.5029207136479269 -1.6286912391772566 0.29692278672032907 -0.34406908652318968];

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
