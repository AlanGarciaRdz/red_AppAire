function [Y,Xf,Af] = SOXTlaquepaque16(X,~,~)
%SOXTLAQUEPAQUE16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:00.
% 
% [Y] = SOXTlaquepaque16(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.9450889286446489;-1.629027967449765;-1.3002646081541029;1.2134281113111296;-1.4096759149035196;-1.6896929865785433;1.2346629320318658;0.57294091336173802;-0.16025693569427352;1.2079412069163775;-2.1953300019879385;-1.2343733684763611;-2.5843437512469323;2.7592056353891241];
IW1_1 = [-0.66291920407218341 -0.6695349921845184 -0.44029781431109744 0.42904750741043329 -0.11843716559993225 0.52667402754534698 1.2729017319404072 0.030443991636988209 -1.7800214607438924 0.15609288694010467 0.39027630620030501 -0.24261237003034633 -0.11286782006489741 -0.81133006947242525 0.096997668966826503;-0.29166931775028865 -0.42870367618111893 -0.45396125904490836 0.016546679416558893 0.37398358317866542 0.53604319604370509 0.87017936682762931 -0.20793024582848091 0.83886659119784324 -0.45728281122411341 -0.22485174570217559 0.19699844950257489 -0.29182856121473377 0.0053645142607118947 0.20559853553936841;0.38680260780169612 -0.27892874340644014 0.74859991830200501 -0.13478148311718977 0.9382840481255923 0.53354115390884904 0.22952072305111854 -0.058523340424505618 0.29368928830522123 -0.39045707450494715 -0.24222813583223832 1.0018934810937021 -0.82292214518838258 -0.31688446446275786 -0.52474454770377554;-2.3911159184290103 -0.70827860171096291 1.912147748544593 -0.69460896552562235 0.30938956893856912 0.1013979889865631 0.76332555545627534 -0.50994552781948776 0.97834373522487916 0.11464914529541508 0.11236213468816809 0.022312991180672016 0.83904543514728713 -1.2579058625092001 -0.41132058157330065;1.8797129437223625 -0.67344420887104162 0.66596384161980537 -0.73859428389734716 -0.35471716939447873 -0.11797290146993844 -0.94058144880094519 0.71879346142563727 1.1092511249992816 0.34550641804618326 -0.064211748471774993 0.58595852657720127 0.023203604940790639 0.12967936837639138 -0.87835963245389626;0.16245125503664173 -0.21615752510344921 0.47174410352421375 -0.045736584710334975 0.74282820842320096 -0.35141011073149575 -0.41425451325884277 0.22713576307106126 -0.27661264818898978 0.25184802266212591 -0.10392466278147199 -3.6781794153441041 0.18479373693576767 1.6149084465957135 -0.38116016334020691;0.82253553349425934 0.76088129627475687 1.6799062175517314 0.45687589436866421 -0.54191791860193084 0.60984450416783076 1.4317750791034394 -1.0687064578650902 1.1710779205799506 -0.18751805421998313 0.40340413933600927 -0.35050338006908294 0.49613108024415986 -1.1082649893174714 -0.36969263555046528;1.2649326169695372 -0.34994509252368428 0.11157257961535738 -0.42095136698576763 -0.60147865048619664 0.63712711337819361 0.015664416476362977 -0.81292026133940598 0.062111906128443112 -0.033800217998854833 -0.698766339012871 -1.4791244308587475 0.20489174991208467 0.37681035850076594 -0.039407947598802617;2.7613237884372102 -0.25537398529816463 -0.61644570772251805 0.17625296585844924 -0.43410596539631935 0.74841528551747882 -0.67758738870156432 0.72476739939330859 -2.1463175251209341 0.10574838315453629 0.01432133708302619 0.51544886674730162 -0.52700998867048487 0.18284311425427677 -0.012034305244017848;0.59142749144631379 0.166126763746205 -0.038228508816662246 -0.26391977984944065 0.049565944132366847 -0.28077211741317137 -0.90546812622155892 -0.89805987973510726 -0.16186805951553765 0.22814508754158935 0.176794390120732 0.39175459941022989 -0.28023356448530157 0.58572612759925846 0.44614506675464405;0.81126356787246345 -1.4906837494345559 -0.73117971250388047 -0.13227785774621001 -0.36018493314870043 -0.84795989792007265 -0.046154861879868531 0.38374894529425596 0.63427967017422238 0.2974308523022875 0.061451610380821212 0.89273584262490679 -0.017600689241829677 0.53009702193757113 -0.53773023542615139;0.021385914478491051 0.39513854282094174 -0.051333648552277532 0.30400325460888522 0.49645933545689963 0.51883117571177773 -0.28605998271548294 -0.32286997684754681 0.37109524602580307 -0.16381942485256429 0.64904582820698975 -0.26768703588152643 0.75148363914327432 0.55409589795878433 0.50852483851749841;-0.032037762231983513 0.1616814131010027 -0.35326397426547856 0.022350862441316652 -0.71433545409223587 0.36093048716489323 0.40936002280649036 -0.36670188418938238 0.28107585542693064 -0.23237559281180897 0.0018940349473420418 -0.55515562912534311 -0.14361470410556854 -1.4741032373948382 0.30688040143458711;1.173912235137442 -0.36156928394332444 0.98573962459756814 0.73779120299038614 -0.24531611952297336 0.40135302316846166 0.0045879799218471861 -0.19589962599033692 -0.13376216856107376 0.21136656450184757 -0.30248513851167147 -0.70461216775641533 -0.16135489120012309 -0.14112448647631748 1.0555534690422774];

% Layer 2
b2 = [1.9542528034933886;1.4477231035391727;1.3024890227009176;-0.77130481929822836;0.57011154786464269;-0.58133136617596648;0.47935106225136215;0.13735046460185296;0.29196489270076276;-0.10036792755559035;-1.1748406859147535;-0.99509847210657121;1.702769493374312;-2.5420346184612788];
LW2_1 = [-0.14711690447507289 -0.18140836503753247 0.42209714848748492 -0.11979159394937679 -0.28285362662995389 0.88954835084290884 -0.084720128678965473 -0.11153854014817885 0.047617040386183557 -0.52267056007840607 0.71102431768462071 -0.67078106307419894 0.47126096329253409 0.28238993265862472;-1.2507167887963744 -0.61106762107427337 -0.14595936510425467 -0.42589508020033462 -0.75374499739554601 0.66826413053585487 1.3563123447006831 -0.57585005473082473 0.2091302056028996 -0.41160013016100561 -0.84434292221846097 -0.70329318145174868 -0.61727320338439706 -1.0540060882638342;-0.24280194988410139 0.12829517797086956 -0.50080483616678162 -0.74875451837330176 -0.083380089684298123 1.1093665560754662 0.044383210868897717 -0.61162617777874173 0.50968612387981771 -0.73146838708970496 -0.20149341712540578 -0.70271875734137457 -0.17939471769832976 0.98393400503712047;0.31331887310586121 0.63823202934373335 -0.65714886950147389 1.0869295416413918 0.73037804299715603 0.45886815904049555 -0.16492988397596531 -0.11069145508400619 1.4403347840259346 0.23402520186662087 -0.66750615026734672 -0.7577186323085392 0.45945270820787332 0.93477988693539937;-0.3255126345837373 0.53221187524281455 0.23031280829999992 0.369699584234983 -0.060916265476992755 -0.5168313532654355 0.48607319065774496 0.33255025083921363 0.49013244013341944 0.063638170154218326 -0.40707336934653382 0.074567580392383481 -1.1727589540577512 0.030781715181327031;-0.31205800054516841 0.088864541613775272 -0.11468738810882911 0.23085908901463861 -0.41930099317158853 0.3569105125749813 0.3950132494948545 0.51068065508939986 -0.26154727094332048 -0.96870664079098168 -0.16275252777700958 0.56369670689824158 -0.91815779473484471 -0.19215592122633926;-1.4197177209885705 0.22380319580314648 -0.25373769518519107 0.16424803093577553 -1.3880076340068259 0.75730581082168946 2.4344331463523345 0.39304812613848533 -0.35569404817033373 0.45057382509863458 0.52185361929602903 -0.04918906976417696 -2.2179970456343967 0.64338611340318885;0.022442560475536222 0.56189012402016658 -0.50250543672532944 0.48861661578940774 0.34009339691525597 -1.0302949355953963 -0.41494790740375737 0.060211974361602076 0.56358707087798865 -0.54100419772896247 -0.86856216383161344 -0.2959706781593916 -1.0629959159915732 -0.2905507614189618;-0.1059898625199741 0.3909414715854983 0.62669469283389523 -0.040271138277007221 0.030316078152077309 -1.2367821531804637 0.31713223383629774 -0.27305846189471811 -0.059779798959974699 0.021979858041818415 0.09371359625616435 -0.22949080435454997 -1.6022397079059418 0.73275854050099842;0.14040086291655585 -0.038842429773126616 0.71851494816964578 -0.2317045951201667 -0.39110658188652692 -0.65633875264976305 -0.11785356171021696 -0.14475267636026398 -1.2134928638761402 0.51293280514892203 0.64499241794782602 0.089031973302994061 0.49846265381710708 -0.64726908878479994;0.25029296297540254 -0.56823393633965691 0.23878149197014989 -0.18302906949164216 -0.0089770050513682358 0.46528521123342681 0.24677715199173314 0.046968166693064459 -0.39352451527655841 -0.10834530446662201 0.28966556863587101 -0.30324057151698114 0.96268939820272414 0.80810685994839404;-0.078148131695478462 -0.22315673607900147 -0.373360799056487 -0.28082665274707558 -0.41436653314474381 1.8552392577961134 0.19253075229248176 0.7095441409222798 -0.30844124136634654 0.61250990365866376 0.58101552536762757 -0.15428374004918449 1.7571958457461925 -0.60934500825302573;0.1268801816481471 0.2515466268282136 -1.9367601100765703 -0.24474166008808856 -0.031732678890006034 1.5730828785977762 -0.90827655453475353 0.34712657606940056 -1.1163389028426567 0.42737766158716428 -0.98960709693346982 -0.71070373532301034 -0.013507639271249799 -0.21239261959173489;-1.647875675824749 0.23760547958989398 -0.70466039104343425 0.97101057461355922 -1.6237564936508053 -0.21638657270880493 0.27477548529869478 0.3122846231886624 1.7100247964572306 -0.49617247019246613 1.7805638691953403 1.3743881524965078 -0.93682796524142919 -1.0806117634446544];

% Layer 3
b3 = -0.21270612346719314;
LW3_2 = [0.84563660054432932 1.0372273601511302 -0.61894405639831163 -0.42889165275303665 -0.62710153213416575 -0.34034405507188914 -2.0646337872887459 1.1552717708346856 1.0324328550899478 -0.63980794628218929 0.53117956882985229 0.97598583253974758 2.381095268011487 2.658754759436269];

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
