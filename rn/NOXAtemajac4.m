function [Y,Xf,Af] = NOXAtemajac4(X,~,~)
%NOXATEMAJAC4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:15.
% 
% [Y] = NOXAtemajac4(X,~,~) takes these arguments:
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
b1 = [-6.1472415258457085;4.4542810207531218;-2.2355732849618524;-0.35747658548529176;-3.9493501967267886;2.7420404451864049;0.5277021416708525;-0.12294534986799072;-0.97773905196885413;7.5451111085627556;-3.4587015150512812;1.1045906547662738;4.7721203868100766];
IW1_1 = [1.9134186047527924 -3.005817341433739 -1.1341967349495929 0.9154582693048946 -2.7680788588764087 1.0197968909371014 -0.45264501268573998 -2.6363737720000624;-2.8135429377184877 -2.8222377848984284 -2.4476459658866738 -1.4386286787746059 1.3167699188629971 -0.081408644337188987 -0.34186153819010878 -0.43203808170397773;-0.75480917052671193 3.4611270531511953 -1.6976634383116294 -0.26698416062604874 0.082032982765468054 -0.014987341141368876 0.035196762028733002 0.69126255501930145;0.69978024032450725 1.7819055189275372 3.4899286169416017 1.8113678801314237 -0.41727436508301075 2.3464600394360375 -0.55003402491192332 0.022377620309186656;0.22523237234250124 -6.4658428599014472 0.063103360806647094 0.18472603876420154 1.448896850850121 -0.30114115823920862 -0.034115584725170053 1.0296745744346423;0.0018895514259631343 4.3016300429297623 0.64871393561649437 0.171248529512498 -0.063116390490764826 -0.2706292804212696 -0.13741178631071901 -0.1304190025688636;0.81114434389007983 0.65873869800769702 0.7736753940414608 0.18972017734294375 -0.94406424155913571 -0.0818276808788376 -0.10875189316485291 -0.82769194199203355;0.055711625365932618 4.264436893234028 1.6611514994742933 0.14810984552960396 -0.61220148122821627 -0.035026730881637179 -0.21923022533168776 -0.057056888437697822;-5.1965655544169529 -3.5562926546567106 2.9542358763456513 1.5364566174411864 -2.2697627762319641 -2.2347564875325459 0.51333700023682294 -2.5141531656602329;0.82059162679464626 0.52919098671470255 6.2770901715556739 -0.40649932735037775 0.42795685079980234 -0.033953086947628587 -0.086272065453050231 0.028018814148574957;-4.5843633535290724 2.7829004857536903 1.6239673619216801 2.5755122960575632 -0.51531980207998818 2.1237538568412453 0.96177029415777782 -0.55075816652488729;-1.7848825609902736 -0.78513865433230901 2.4009282677854817 0.68804078941714564 -0.22129394395395338 0.22781685709371602 0.28338813959639464 0.48477104053872666;0.26500838248017206 -3.628244217138008 0.84469378685807339 2.2923994281956461 -3.2017557247742694 5.1008785990600147 -0.58784039363952478 1.7099709423048999];

% Layer 2
b2 = [-0.1266759961139709;-1.3211702515924777;2.7451835707843291;2.2144378144199139;1.0580765347924377;-2.1141024791709628;0.23514223892250755;-2.0218995501313293;-0.036908224910283408;-4.0580860682836208;1.2569364126506897;0.51598900927811076;1.6297167542944537];
LW2_1 = [0.50547115242425456 0.39806514728749409 -0.35705851693861418 -0.19046524230085782 -0.54296387256019163 0.54538502575376613 0.12779727673102406 0.54191817399487596 -0.086665018046529249 -1.9377290260043178 -1.288378585340044 -1.0058903386774247 -0.69250179797456812;0.18378182705478405 -2.3007990412948058 0.26968324398833754 -1.2446777688902351 -1.0553423654689464 -2.6166783152250801 2.8372628283226544 0.070528819823712605 -1.6256176244971987 0.39436214441854167 1.4247668210343627 0.43378312929281182 -0.98744916986452147;-0.76068640154713152 -0.028750095730843601 0.54246108005860216 0.55188225372806787 -0.1781453541737176 0.0070762822631905628 0.043959903809421205 -0.87214750064787638 0.11861340778072428 -0.15162272982572098 1.1202691990973663 0.32489310100293317 -0.42162640068722002;0.63559533106020816 1.3008958181153234 0.43168127345658547 1.2855866927025914 0.11057544765067265 1.885591566379349 -1.2348512427068532 -1.3920456264108543 -0.63788897424325086 -1.1012130529142541 0.94163854653173407 -0.76795641883102517 0.4741542354484144;-1.1065706107182467 -2.7720796308752997 0.021127813070425671 -1.2812972314335831 -0.25829747742309067 -0.19264812152784377 0.80209291396687654 -1.2065659990377671 0.7861485339280061 0.63835137593323621 -1.6100572370683153 1.5624616910844427 -0.28768321840863353;-0.36635524729004743 -1.3579975174860113 -0.34852148398256855 -1.2801201602298475 0.16764734279807189 -1.7238742491036434 1.2318697225785524 1.5301004403624421 0.74453737933927921 1.5193856750700396 -1.011688759606522 0.81605727726930144 -0.47655786738411043;-0.79594076032529881 0.16998546362554631 0.0037445035261726989 -0.25590066305596249 -1.4327363174200896 -0.71372653136202613 0.13413786353964766 0.86637762253558648 -0.68590241174045241 -0.83279870229686581 0.24576638518341601 -1.408445817277368 -1.4483046894959895;-0.96538235017165563 -0.36043396570939845 -0.030361912263088403 0.30460621684420486 -0.61059686606918717 1.1094142342657412 -0.81318169913952654 -1.4152575676901689 -0.58777502444698249 0.97246259880029695 -0.065479415586708375 0.28527795082037433 -0.15049700769918931;0.059795509748851949 -0.12526106033211279 0.26133538118603578 -0.22060686640147126 -1.0836378783811715 -0.41323558801970217 0.44796332710860498 -2.2715975693661985 -1.2627782467727551 1.0945165095282385 0.53513149480153432 0.753274643628704 -0.44407361324509742;-1.2328025651467485 0.10834575347731508 1.6677493219802371 -2.9585791307544529 -0.58772135789016999 -2.8539908567381733 -0.010048276004451275 1.0121342726289879 0.53662375260205097 -1.9718808140838173 -0.033270787678197571 -0.60645591986153835 0.27080681871464363;-1.4761367643571262 0.34566704484370225 -0.3332308292202677 3.6095560714616255 -1.5021310467815443 -0.73333478697515775 -0.099301506047772603 3.2401516534902739 -0.27436105125263899 0.63243762884380617 -1.3110728277516543 0.47463028699739435 -0.97739797713955789;-0.51007641813379589 -0.057115406285157287 0.21373382228820981 -0.59321598493963146 0.8681118473022722 0.35061346894171297 0.6191376874578286 -1.5178175658333222 0.48719149721360483 -0.18874330351830915 -1.4092287011186966 1.3148407138304221 -0.27491485433258961;-0.85768700106043894 2.0891447271907118 0.69512763721634463 0.89296897816116616 0.53798984783848536 0.35424881243599043 0.19110381503591531 -1.3554727250870084 0.39964305280758378 0.1483128215590154 1.9314632308839141 0.392572035672481 -0.64363110927305733];

% Layer 3
b3 = 0.33884448574947484;
LW3_2 = [-0.15120076210149314 0.21429450464997524 -2.3012334162470633 -3.1524907789521861 0.98448491734820831 -2.8539801926606065 0.090139291019538062 0.25498265011446181 -0.3909946213077965 -0.76447245801948605 0.069431840441669168 -0.98242936622318922 0.92651602177916603];

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