function [Y,Xf,Af] = COTlaquepaque23(X,~,~)
%COTLAQUEPAQUE23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:17.
% 
% [Y] = COTlaquepaque23(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;14.7058823529412;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.448430493273543];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.7895589521070252;0.88818845207885699;-0.78917849685073616;0.84083506630452065;0.7949204519307822;-0.63152640711934804;-1.962276637087035;-0.70780799779278403;-2.1530951140154304;-0.55196301866570074;-0.47884875091530815;-4.9041029413496764];
IW1_1 = [0.57011605499182949 0.70203732153670773 0.48471258770858838 0.0046462430922348669 -0.064258277468850891 -0.61882556122971732 -0.80354771091231136 0.00017767232523220253 -0.0092412623948177341 -0.03781902362819517;-1.0149146055570761 0.072327486149968631 0.52949368870240499 -0.039506736748675692 0.22257909795283035 0.089294301381555335 0.66967306391099679 -0.0095017792970248996 -0.2013739386218581 -0.25642370772040457;0.5510783047177289 -0.39973674325751968 -0.061498382048920094 -0.65316716561659094 -0.29053023663636529 0.38136031343707144 -1.526762816208133 -0.16739118844700226 -0.71322203163303788 0.19552900967996345;0.40651756811860096 0.72834419388769778 -0.47658068703388778 -0.71550072731266334 -0.18680087325170466 -0.99310506097925799 0.66075012724681692 0.63272316188135902 -1.0601925657086217 -0.49167810473703866;-0.44492232940937054 0.52596356548013501 -0.16776989079716989 -1.0589749726824569 0.47733142186156297 -0.57787220881855261 1.4848209557677248 -0.34387045779252451 0.22858631740276986 -1.7254208017735486;-1.0711169710857198 0.018596479392743191 -0.75887920675591036 -0.22189749890570304 -0.25964855919272506 0.91094154400495897 -0.50854799226022362 -0.027487166194718381 0.042208179059099855 -0.17160472431180249;-0.12701715265131486 -5.4044202526166352 -0.028310306041221721 -0.12050027073561675 -0.11315411216127316 0.10052067160794664 -0.2424089985593631 -0.10451072020214665 -0.30050950627060657 0.084962051531154381;0.11834941068850241 0.071609027797174818 -1.7819640491450814 -0.43836063823502652 -0.49074053898527914 0.67897279686758161 -1.7533085534983446 0.10937050093358947 0.14561944544099711 1.0259338576327133;-2.0555372285284239 0.2697479106298209 -1.5993741424439163 0.026996204762276751 -1.0849999843786589 1.6297783575252724 -0.095883633544638927 -0.28309759296701542 0.13764581843162746 1.0862529762729851;0.58701891583194998 -1.2817347889448725 0.69282735942964724 -0.80705963230453692 0.42101631813644208 -0.83635437985837535 0.80515245658277845 -0.54883881174139348 -0.32572532083726152 0.5931016574831196;-0.30688621500548102 -2.4073098751198696 -0.10819069393590754 0.22516689533665718 -0.33923942372366495 -0.20780732521304807 -0.62696121471359589 0.073753942298781613 -0.055778885567989364 0.31361821623499647;1.8316958324586101 -0.2926318886147245 0.2876876016348881 -0.1229309665078952 -0.063733435492650578 0.20376834401481383 -0.89173691215119921 -0.13312368587536441 -0.017299386514893454 -5.5745797974520626];

% Layer 2
b2 = [1.1351922787478961;-1.6761899081661573;0.26861891025332374;0.68144196171714766;0.76146518287261744;0.049608600925688529;0.8577380820764583;1.7736712852920409;-0.36779501572126572;1.9205412148916134;0.81061473903383108;2.2498539241336717];
LW2_1 = [-0.81596011691005377 0.40726397192220909 -1.039682012264934 -0.59894763225248648 -0.24410698640654827 0.16314291700550443 0.73180008107869221 -0.62789269823283833 -0.77555160629795761 0.55353452276043058 -0.77051689146793734 0.80777311643205696;-0.036262612957549185 -1.1012239363531917 0.49558161235184872 -1.0162924521519359 -0.94254900708248301 -2.0688973175497507 0.31841053866853164 -0.71337919427620811 0.40573234630809679 0.090760845249585803 -0.96733845215920222 -0.31319729335629404;-0.77571069521243841 -2.0955540820914305 0.15941246269882181 1.4199346289074719 1.5121066656493793 -1.67438325487413 1.0337105419508019 0.97129219634974306 -1.7692968518030296 0.32339469051430536 -1.1380298250719225 1.6173613715937611;-0.99095257950592441 0.18540911999883319 -1.1442335769877268 0.1372116841172922 0.22829394493048699 0.071681677857573636 1.0319446551405098 -0.51383745019927241 0.2738742340770331 0.71993342411839678 -0.93800539224579071 0.95675442195777971;-0.26083467296866714 0.20636781085249814 -0.18041117477432705 0.85507956824591125 -0.75521567405409351 0.10005303807439397 1.198158325782178 0.36456503036319671 -0.53863344046434802 -0.42448694778412183 -0.99127657035544248 -0.032440964733177535;-0.41709132416332678 1.5003950520875697 -0.14190010135394043 -0.24720658942593027 0.70547078779396677 -0.98055880419425745 -1.1397184476700983 -0.68641718739483892 0.68214221336889846 -0.60715159283224074 1.2260174983165288 0.73815248629508412;0.8588278118141518 -0.64907543754531016 -1.4371846391254737 -0.20046001868586447 -1.3185636642796836 1.3287626609615173 0.12442097837462726 1.7551679720534892 0.50055170954712536 1.0620498043260749 -0.66618774762412925 0.21333528143286015;0.12708735154017972 -2.670923503107586 0.58690935444405867 1.0220030801144802 -0.95246662922455871 -1.003884812832639 0.77513298529926844 0.71238439261986453 -1.7340034530975612 0.28323437678951485 -0.84137114793769652 -1.3132434905990626;0.95957000216236699 -1.7703418902395482 -0.54652007683104031 -0.50562329006300311 1.4021431069414252 1.8470355844436928 -0.70893243980002696 0.32189056471882443 1.5182101064700555 1.3970629398512371 0.068150905921068178 0.38666170942126926;0.31300289576309398 1.7853600591542564 0.15416664040867523 0.76917496268211005 0.39688736742000291 -0.4288357536896365 -0.16580987666527203 0.38756638672538168 -0.294823931320216 1.1218456208760914 2.041609918538942 0.067372301945785945;-1.0163031725695335 0.9163911375947259 0.47598599616765425 0.0350062582443674 1.0473145675927382 0.56486089242258364 0.16987364854756284 0.43412764992178859 -1.3444484212117322 0.53955311642767245 1.237331034266292 0.26386556118494553;1.1472017600084867 -0.63931021178799707 -0.20384525705803086 0.80081351459778582 -1.3801236094853653 -0.69798546170559905 0.34239327373869644 -1.4247900666312701 0.31982092766445736 -1.1015515191165592 0.23264670529656994 0.13603128258825103];

% Layer 3
b3 = -0.625026221346346;
LW3_2 = [1.0951945975514636 -2.2886963662806314 -0.98871718118028273 -0.88381056736682684 -1.9339184098343931 -0.32271357362132408 1.125288218544253 1.1577962797359278 -1.4208611311763766 0.56431439801602556 -1.7069220216036016 0.17686751216526245];

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
