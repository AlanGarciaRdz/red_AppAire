function [Y,Xf,Af] = PM10Oblatos10(X,~,~)
%PM10OBLATOS10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:23.
% 
% [Y] = PM10Oblatos10(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;0.00618238021638331;117.647058823529;0.0560224089635854;0.00280033604032484;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.9585930979474597;-0.49076359516243884;1.5558994139967233;3.32603534869564;-0.60708069514532481;0.75076979902043028;-0.69124398423202471;1.3890872988694614;-2.6804428346034488;0.2076505969724167;0.82730035216882991;1.4676286316803808;-5.3722238975233303;1.0150942983420412;-4.9079847543686652];
IW1_1 = [4.5497234409243728 -1.6308312731710071 -0.52278733831045954 -0.004140158802818511 -0.040177201609059882 0.065779636849675735 -0.074642193612920738 -0.61157731262695381;-0.58326638829796373 0.036529283355979519 1.9439354602889136 -0.18681002076278252 -3.9545795998752267 1.0371642190572323 0.38696178464922393 0.023589463785356146;0.98691695129659529 1.2788150075295823 3.4964148881578745 1.3913416545308392 1.1145538173801506 -2.5402942886757898 -0.47585562274408549 0.63062084622573678;2.7449292364166094 -1.1484450182049961 3.6509675470502176 -0.38285895518361596 1.3830242835555608 0.4071391491463458 -0.079534182445345866 1.3491611533790062;1.4057331796064303 0.67005577663952287 0.72371966687317146 -0.19733732902943452 -1.2519425941179374 0.37156574515476415 -0.040658097147259993 -0.02575671836062287;1.3416840371445482 0.47777806536500422 3.2689471034868767 -3.0692350115845084 0.61052416471814541 2.9088765850356628 2.158129544393288 -2.9858499540202188;-0.45561605417164203 -0.4308791755874895 1.4515063483491675 0.0051360049552540438 -3.1140895286025061 -0.96299533243841673 -0.15646343343062369 -0.77995287386399903;0.66036468746715959 0.47658642563780212 3.5451117931944864 -0.43622110719612894 -1.1790748027516713 0.76410699071786348 -0.36639983202171356 -0.57681723016655417;1.1454612670210127 0.71891526484666479 -1.8693490012652358 -0.77697432814766754 -1.3389015008624245 1.7830753268934658 0.37862100891908335 -0.74147058667464483;1.1929765471948293 0.15543754498260209 -0.27732395082715555 0.63100157550864522 1.1848798136516172 -0.86723479470310993 -0.72486657375815255 1.0788491983760689;-0.51563091025680285 -0.016410944327087527 -0.6026066915136381 -0.31786220582456898 2.2155688462170042 0.51384806001993655 0.18760432414070841 0.42623028586296696;1.7593116485841069 -0.88159781251300318 -4.6488282188747201 4.7601652327062993 0.99424901882132666 -0.61100374188513806 3.192206036994528 -0.43903861524322102;-1.2597263292662382 7.1319757074753367 -3.0324182957449777 2.6587474630529098 4.4963179786309659 -4.800315147591216 1.8297097198423615 -0.93465701045436755;4.9589751541451594 -1.215434160196422 8.4456874377094771 1.4284752868834374 -9.3564954342404754 1.1338331753089428 -0.68964056289529396 -0.85998015072412426;6.1797500243760437 -3.3688056574203049 0.2385439738557841 -2.4826160228085197 2.6643300780688448 1.2526361579516176 2.3716520987260084 -1.8636546491266344];

% Layer 2
b2 = [4.0203376395845991;15.686095080444289;9.0473213079808588;8.6891768293964464;0.26990960815683285;8.5684407475554085;-7.9536974180808402;8.0070724384547649;-4.8604063104805677;18.282413734115107;-11.707672311082401;2.2477163934385254;-0.21188655645655574;-32.542495894905251;-2.9896875182062956];
LW2_1 = [-4.1649411002779138 -1.8526870071384804 -7.1500278220851259 9.1907381690376226 -11.730977327446286 -15.389155747572113 4.2438484701209411 -0.932851261367031 10.087597666927641 -15.504151842815485 -9.4006727981734688 -15.473838248868121 1.9868029784668741 3.5868635947502288 5.5247443261672808;6.1904238779279286 3.65545291183646 10.986384866667903 -3.7079602211460827 -15.098257833114609 1.8508647082581127 -9.4314859075023438 3.9793987244899873 -23.110536397329074 7.3667525756898646 -13.991575699471253 -0.6314287847766934 -19.388648692563379 -2.0692629015097777 2.1553506179187143;3.6949072927932911 -4.9605472045215873 -3.6894799697064156 -12.68598342674791 4.9334757248439436 0.077846690667712493 0.60590015981896161 -2.412099055962456 4.2968435328341767 8.5712723279598606 4.219802712652954 -8.1455856696567128 7.4582949464373005 -3.2267401508940399 6.4503325299497538;3.4866568129050903 -8.930243722470097 5.1297742065074834 3.4576612325508571 -8.3397683671673306 0.31285033560218706 8.0913119250358108 -9.5734092358843981 4.5345289660149835 -12.244534877126972 0.56105820992104116 1.2294671364216991 3.2093787608734896 3.7634456695053542 -2.4507891116696103;-5.5281133397061488 -4.7594406845178128 -0.42174890509363205 5.4221034005302773 -11.195668483739565 -0.52779516314979669 6.0160845884876304 -3.8315554644693566 -3.1798442116436485 -2.9695263437244099 1.1356742595159397 -1.8935896513940627 1.6563966596860424 3.4873006278915413 -6.4471577115135892;0.0083177206240002549 -13.274206387628846 8.8878699479525327 -4.8696464913442137 5.6313619535986001 0.44914759569722551 3.2502046308748063 -4.9706520232439955 2.1060400407287059 -8.3064548976301218 4.2397853848641196 -1.0377908555254938 -1.2903741822862627 3.8565221960816016 -0.39048460302314408;-1.6614112569114166 10.106861789031022 -1.3108467863653224 5.1409063984020857 -0.92591680948873201 5.4021534015957311 2.3383096712029099 -5.8881960676531939 2.9564577021801766 11.414400647460333 8.712858585961877 -0.44703883643277942 -1.418996125723027 4.4495620242073946 -1.7203996490403444;-2.4938438568059298 -3.1277498089335376 7.652105229762066 5.4133181099091772 0.9128627026372198 0.4709591710363461 -4.7328067413731585 -0.60031813211378837 -1.4231169132160777 -10.119678393612777 -10.567576831622002 -0.11695885495087874 -1.0007448165558361 -2.1824021409610443 -1.1634726392944501;0.82435295583536561 0.26740469187540555 17.289118208191272 -3.5055811648619999 -4.9076516544747779 -1.9944112068184803 0.055607530247722248 -13.273432234677157 5.8944761900686551 3.5958302874110424 -0.42857781860902522 -0.61095586118183454 -6.3362889517153063 -3.8024320590333813 1.4921947489444201;-7.4184619333071504 0.75399191139963395 13.682758532019657 -5.393137488079951 4.3089011174967986 13.71276304089422 -0.21937007720772689 -4.3936227047181386 -16.414714616882925 -5.1633233238756722 -4.4389032440172231 8.5598127177198684 -10.307601035299555 -0.9345205547554859 -1.393990763245976;-2.2886690604765043 0.50109589393771192 -5.6880387968513473 -10.88328732745577 3.7219060456338577 -9.1185307367856474 -5.4550571039073921 13.640059652955774 -1.3152380199223068 11.312289194154307 2.8789702623065714 2.1520047411499998 -4.9098760069263285 -0.76716730362904462 6.4170078124220096;-4.3385290007401753 -7.4908665741294094 -3.91681832553052 -1.0762522528527751 2.1222926865902174 7.093215016212012 -1.676224924486535 6.4405818233982304 -3.1368525137621872 11.130341431546814 5.2362007140208222 11.026858972882296 0.89469947896485269 0.035550226406695355 0.089087584532983419;0.68267582848608332 0.532273121919147 -2.0499464687439182 -1.7319544148028758 2.6423189244665268 0.50980544903287739 0.98706377866762207 -1.8052780571086544 -0.10693384133535785 3.4303121446828113 3.1930770838533142 -3.2029685802285734 0.98374692281315412 0.74806202156619717 2.1747489183807454;-2.6322501140929 9.7933118326438304 -1.5026229094742893 -7.4443609094966874 3.1709207141762543 6.6374435643190335 7.1589658609947753 0.48198273309052603 -1.7615962710330508 4.900727369822933 6.6475818320211468 -0.0019390649753794828 -3.4090758168319533 2.3929588103190529 -7.2700208947726699;1.8490929279902248 0.61822261292732739 6.1977924637566666 2.4110834075563807 -1.2074493306126872 -2.7335455696281632 1.5151899512312454 3.0426966299382174 -0.2516797697477825 -1.0094042904986347 3.6767000575888042 0.41702124534622576 1.4525025546026786 2.6765667752154125 6.3554583115148011];

% Layer 3
b3 = -0.45677785899396395;
LW3_2 = [0.037768087691751329 -0.070354401754983711 -0.005271391019607146 -0.068452399522493962 -0.019261843031972425 0.090319319125349865 0.077923864989614164 -0.16678204834330362 0.094595075781924193 -0.027336285351905909 -0.060515479204767436 0.010656568581282777 -0.061531253551376605 -0.0459609497128355 0.10958615312683194];

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