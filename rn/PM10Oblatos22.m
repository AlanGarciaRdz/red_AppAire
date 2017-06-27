function [Y,Xf,Af] = PM10Oblatos22(X,~,~)
%PM10OBLATOS22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:25.
% 
% [Y] = PM10Oblatos22(X,~,~) takes these arguments:
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
b1 = [-3.2254992282863055;-1.3560118344883842;1.4224340773219073;2.0706866159710668;0.68180625744302159;0.36769345922336005;-2.3843584704601493;0.315021895175642;-0.46061670299650198;-0.97229613437016638;-1.3455101696749461;3.773247716783044;0.52400116634631477;2.594102579782958];
IW1_1 = [0.35147290267901032 2.3816306691652307 -0.20716302769143707 -1.3923660864077099 0.34064824028107327 0.31209748290556122 0.99683243646367714 0.30480011068261703;-1.1577757755863789 -0.3631884928241132 -1.3452867838671405 -3.1504482048279532 2.855423194947488 -0.14179467711803473 -0.05851233608098233 1.1804609547322258;-0.84564069159207411 0.87672693342061525 1.3763788725979065 -0.48474078599617815 -0.052938876893706618 0.21141932121706414 -0.041291881360670198 -0.88415243276681588;-1.4447307391349304 0.33214553509538519 2.4802678085168139 -0.21641169778332611 -1.2109083678804318 0.13405983241241029 0.24588688634959466 -0.49959557704277824;0.25061950881485706 0.65033781386355949 2.4536787374385529 2.741006532194874 -4.1272988427103749 0.74374431931549312 -1.0589974196656742 0.26407862146855199;-0.69149444801424387 0.71419622006612604 1.6526165014412462 1.8210746504365838 -2.3639053605666809 0.71996924200735946 -1.0052270976635755 0.055038481619208324;-7.8660125798968741 1.1522702936695792 -5.8083430071256714 1.5429745358152578 3.4438056336680667 -0.61398036905040232 1.4694515850335144 0.98490900065349241;-0.39979704210443628 0.42412094231230929 0.29687971952979531 1.7913284881712297 -1.1298908265321945 -2.5519874903600686 -1.8377084053658252 0.093293107737689243;-1.5368584722208296 -0.66106007536256373 1.0786230486581372 1.7376496961220229 -0.38359704090271085 0.21016302516877883 -1.2823125928361274 -0.30781864767745581;1.8512446829740588 0.71225899436897133 3.1506150437544513 -1.879451593097242 -0.90122937273834403 1.5208127284770563 0.22158118856935433 -1.6454673416265604;0.45372126711361471 3.7873991511845633 -0.4197915632782383 -0.084236065369368132 -0.41884022064820303 -0.37253921225473197 -0.95882295075329949 -0.19872416829671274;1.0246603908395031 0.4054111227406817 -2.8595591719647189 -1.2369137064693085 6.667286330661728 0.32366635708569924 1.3353846813338304 -0.62004975154898345;-0.29861808377974869 -0.88638704946153579 -0.63717592240652032 1.2108525886768411 0.62885891823657158 1.2153662303161601 -0.19071208189404307 -0.65585472306351167;1.308674628781602 2.3177355523469378 0.96750201614122877 -1.2757901737929311 -2.1875092162229994 -0.21562747681921976 -3.5801839300834954 0.90349205400445132];

% Layer 2
b2 = [5.9736539114310361;0.41311196362575819;1.6523942313797877;-2.8776321710617707;-0.97107708340382293;-1.0459077934304417;-0.55094069642752141;1.71070271711918;0.37630081930078152;-1.6020503416422398;-2.129685308308412;-0.80717126294941344;2.9336500615919632;3.5706290258920674];
LW2_1 = [1.5995429936655088 -2.2432772435697501 -6.0617389116673355 -0.32890018748035971 0.5844165153114127 -4.9747659741511958 -1.8715414223312661 0.61567852820320867 0.95090384413169571 -2.5959238155152478 0.72780957895538723 -1.0545510822066719 -1.5257844199149204 -0.86764982420790793;-2.1358641239285219 0.099133498125898528 2.5168026343695273 -2.2209086046590114 0.92566305808202165 1.059525849472315 -1.2301950111441262 0.36940715183608669 -0.89364065098394796 1.1549023595655892 -1.3981086936776428 -0.8498735997173047 0.27177879686597806 -0.37555330840145684;0.64118087577962402 1.2219851007670912 1.8106446817056798 -1.6068018277629059 0.83008663445652564 -1.7375276485700257 0.29366541576990368 1.456573479441398 -0.13018531699776006 2.2345675635108644 -0.83035010768785 -0.50237323356578689 0.067771761328654728 0.98338885330226322;0.89535129686255177 -0.7722779396895485 -1.4912425708360939 1.3329107521638925 -1.5971765780711589 1.5476230931099084 -0.48649627755831781 -0.22190690188411677 -0.14281614485316171 -0.45744487309197784 1.0830116172932724 -0.12102105351213212 0.047943652048687169 1.5850337397697272;-0.86535385372895335 0.56428454941131956 2.2438084319920306 -1.3933364136083095 1.1997325089805719 -0.78079061363788371 -0.90797088098675616 -1.5070515607758364 2.1992314600809326 -1.0732146848272022 0.70178298553065077 1.1287739972533706 -0.78787621821250009 -0.24883718157162524;1.4472205040097439 1.0290638340696059 0.71160332800821036 -0.48746258246012469 1.4606054124778669 0.4379144256975217 -1.7217285551394472 1.9215948062464643 -2.3573191151237149 1.5916812329359171 -0.61284193262713882 1.6773892591930732 3.6985430646614823 -0.24736108425215411;0.54017212098135248 2.7384457952230843 1.1003385407945943 3.7880143039014937 2.3341932792210938 -0.91645340392621732 -1.8290494974516336 0.94491422734744801 -2.002877510449073 -4.0846175435876324 1.2314484807289079 -1.0140224731675413 2.782312880147598 -0.4315853354598651;-1.6972284052178757 0.4277232519587576 -1.6495523593951731 -3.5018558257552046 -1.6554324120724426 2.9378767223110058 1.1575430352535103 1.1208877163057025 0.72991787964645605 1.1359758104341411 0.73890351013534261 0.075312257981826891 1.0833310508843939 0.15791240489753872;-0.43460641058878396 1.0656326863401075 -0.32410486707358244 0.39018125721467228 -1.1859888142806789 1.5444228359512808 0.85518846055452613 -0.35382915784846641 -0.24301043999058117 0.79547881192641723 -0.69474984021705399 -0.21847248298456129 -0.67069139344397821 0.1507628059266895;1.8107237589453626 -1.5061479267361011 -2.532484719165927 1.9928157095286665 -1.1493316114249752 0.2999589717308872 0.24135439391309421 0.78172227347832368 -0.31153858032052023 0.16587193556126037 0.97128405052926448 -0.23500353386111558 0.31748534830022968 2.3259024984058336;-1.5476750404776962 -0.63482408944344959 -0.25586749579594459 1.3638928629157188 0.43528231029179265 0.43859727165894064 -0.086940163104498036 0.28282831203058761 -1.7197621895061035 -1.1084377302517205 0.28972451130989224 -2.0756175968938848 0.72859062474430702 1.5410314815010457;2.4396515307029496 -0.95466654675642937 -0.97400595148778701 0.3893595101150138 0.18845420701683996 -0.25077901961449611 -1.200971251611517 1.2867408860425456 -2.7250589339016487 0.46604192666068123 0.35900464605666588 -2.2817752720884608 1.7522503762760493 2.2388906130270665;-0.90138681159527101 -2.861796446980883 1.5811555209475241 1.8638211328975098 -2.050655138233064 -0.66726038578715707 1.12036491785044 0.83423369131297953 -0.85194699511959604 0.15636041697399772 -1.3187577574355023 -0.48568135330244167 0.24621333676902241 1.7608705198336247;1.3725421545747833 0.35983947469271865 -0.60507494107127235 -0.23764055454590383 0.10625196646569232 0.035102763258489614 -0.81738284330152089 0.011407491714407816 -0.77336103604201545 -0.40249980441226679 -1.1454160258875612 -0.7704392896535075 0.60435481579553274 -0.49977122949124991];

% Layer 3
b3 = -0.047378135921995405;
LW3_2 = [0.046305320249254718 -0.20216093588957035 -0.17209955896359375 -0.45833357883707154 0.18913761157416462 0.13468522043224651 -0.08551644112192841 0.069419187444794694 0.3050555344907937 0.32544483051826872 0.20059732856132018 0.18812431042099276 -0.981605127432845 0.32066105421567243];

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