function [Y,Xf,Af] = NOXMiravalle24(X,~,~)
%NOXMIRAVALLE24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:30.
% 
% [Y] = NOXMiravalle24(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;2.48447204968944;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206;5.12820512820513;4.16666666666667];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.7467302119002996;-1.8365078239781789;0.70602198129542026;1.3118535983562327;0.75328128165355845;-0.48806077511416718;0.022171727908417406;-0.41122066115079786;0.19801424502116996;0.20272462931391413;0.94183027306555644;0.42825920650852001;1.9169616369923745;1.3769194085976053;-2.4835314631161705];
IW1_1 = [-1.1121959367157144 -1.3505727440913817 0.63373185687799194 -0.49430735862512681 -0.6073309889606191 -0.60759391841154409 0.35875410558764143 0.097982748396881064 -0.21942195577001986 -0.13759462767719041;0.26745848662125765 -0.13552283531469342 -1.5297785857325903 -0.22366330793713679 0.085864353391502696 0.37648797646507898 -0.26453024446596302 -0.3368364364312858 -0.39431393186738084 -0.18484687940076971;0.24445994521836537 -0.018619685680058905 0.52200016269365501 -0.47814636713412983 -0.027556834488543382 1.726478976397779 0.8140296519245066 -0.73009312757904532 -0.4963514678043377 0.010804068775706013;-2.1777710539265485 -0.55920188746339761 -0.42500274016056511 -0.013214687353764451 0.34252595489672139 0.68890006773339296 0.43657836148661783 -1.1144112764515872 -0.87403830191967291 -0.6202272563541652;-1.0094151352128304 0.91664272476258013 -1.0317974932246743 0.59104423848582244 0.35650107411935711 1.2195159667798459 -0.11214475184927314 1.1053433275871687 0.0029361831127835691 -0.18825111789870469;0.15351554080169832 -2.4163713856712481 -0.24795720781529887 0.36532710196548335 -0.99443633807947751 -1.7494713193828912 -0.75466915249239019 1.0831356615625172 -0.19837897134092963 -0.11887860715245618;1.0039195535104382 -1.156405180687357 0.37389486463689037 0.89210005703155704 0.2739954778732121 -0.57253896744053268 -0.17902841531016839 0.34497954046148965 0.34367783727228368 0.065114230990772931;0.86400391382183162 -1.2512328605272374 -0.51664031086078033 0.57321325631029452 -0.22338571825694531 0.44288238515517858 0.83051242729595687 0.32378091339260689 -1.2312810485786563 -1.535079056132423;1.1611176249291448 0.65156394171621435 0.91748246833334524 0.13010984012440302 0.72555783078313363 0.2268375076399245 -0.63052455800129747 -0.25612539352628394 -0.016863960608268169 0.5069974236599486;-1.264221803224745 -1.3123357771468966 -1.573606666373593 -0.62339297014648654 0.23129323965275467 0.63771012107274549 -0.46526063940014384 -0.20943016979173679 0.35429310065841679 -0.48134877919664942;0.96489758179123064 0.096468928500890644 1.4323823781447997 0.32157705210204246 -1.3412969767586223 -1.2609589147016389 0.38063546005626958 0.26829754595235727 -0.70088733461593888 1.309602151203181;0.23832047498293293 -0.21855372651246796 -1.035829764849612 1.5332361592285877 -0.044861547595829269 2.3922958432074655 0.23864595782473574 -0.75931985666510715 -0.24095857895537498 0.45345752274188517;0.55598602766713678 -0.93973586371473128 0.73969411869737745 0.63232194875922276 0.3455334519256113 1.1125640317760812 -0.33287583806777399 0.18279130959669396 -0.42159479691308271 -0.50326511441276545;1.0387139875323459 1.4567046838811337 -0.18208206972946669 0.61343607156724622 -0.61788730988752949 -0.18810271448090904 -0.2122720338159414 0.27940801618651728 -0.68036652910281714 -0.51852171614964016;-0.46521869686838546 0.56067596366754979 0.20195304509564097 0.45430296425875033 0.81359875243163671 -0.19170971468481682 -0.30036852428188549 0.35319963153068545 -0.94599995876050602 -0.34540669442722527];

% Layer 2
b2 = [-1.7998399585501164;-1.5560586788980755;1.7565908003185686;1.0985108748710197;0.53255824504010518;-0.23973343110515255;-0.18432759126614523;-0.019307809152379028;0.2275693690103438;0.6815807760371273;-0.65151190971027206;-1.1644383326160934;1.134739190199322;1.5294784146905547;-1.4826622819450377];
LW2_1 = [0.18607251601484523 0.004632162422812342 0.19425291544762305 -0.17010843073888748 0.43061346866908096 0.44882083409344309 0.6744661387037979 -0.17972837352299631 0.017166349005666059 -0.65154405549331051 0.45721128658150006 -0.54959408568679924 0.47881228543849835 -0.18137141520805722 0.73886427946405497;-0.079956772052764843 -0.047453841965129043 0.067838343772799237 0.028642799915908911 -0.0053938514339462104 -0.20652437744230884 -0.13747216136365731 -0.72937950445826516 0.31953619809282141 -0.29802574885543032 1.3387616107197442 0.91691054430384589 -1.2736907423559669 -1.0850214027778997 0.090624887915946584;-0.7768918626907978 -0.077071865656210534 -0.2963381112154852 -0.021214490349299914 0.47676148952708219 -0.15241601672334501 -0.62515242776603741 0.64996683415809742 -0.08540639200189909 -1.127865709102541 -0.78185558895138707 -0.31447771638557198 -1.0695706433850782 -0.54449195584496468 -0.77694926778370044;-0.27295951837496363 0.056339359631849516 0.33386533132577878 0.050914575705114963 -0.4601174744805927 0.6205857377287648 0.65310711312659009 0.14309371487930367 -0.30096951252173521 0.60665075588386275 0.82933075566782632 0.65662895961488921 0.79182285980746614 -1.1573403699840492 0.69752265422366877;-0.19714350743324693 0.10301235197087241 0.17924101922288951 0.38004985003449426 -0.96034274244943874 -0.56890893240971352 -0.017729141898267971 -0.27611579982484047 -0.060696373670545735 0.47853639635692513 0.5512831629731223 -0.39604983782708864 -0.38545076846205834 -0.059070383930622139 0.57250551773339264;0.22245369475162216 0.51514578314698256 -0.098044937320699202 0.82948896440374476 -0.060585228653387238 0.23162719519906563 -0.39503230210067003 -0.66283950305349637 -0.43660441368585312 0.36760447039350019 0.27290156909141428 -0.40453749536643063 -0.8849625003805639 -0.19984648233793731 -0.24156547369413639;-0.85559128180071931 -0.85952832574433968 -0.12730171225831072 -0.63944143961314437 -1.1329989136678504 -1.2027604809118664 -0.16867754800440835 -0.092167125686248921 -1.1055083603523963 0.16603048215896657 0.27616133512806462 -0.2218260745463434 -0.88601659512564279 1.0157563380003392 0.46096753864695561;-0.45387071680600366 0.074305465772820656 -0.18360992633669054 -0.30225873076272186 0.70685735364031599 -0.68239311366963185 -1.4373860782373229 -1.2074458245214461 0.077122403309254794 0.1611310286360095 -0.46026717919730542 -0.8177173226471991 -0.29101559877877659 0.44557378515476875 -0.17775855492044659;-0.53765708949885238 0.67684001992224574 0.35146255541140042 -0.17240715845807944 -0.58014925690428498 0.46096920231359084 -0.055084792270259066 -0.42342802916795252 0.70544703373383 1.1204446717744942 -0.97422587328096943 0.23107764250525714 0.059236897714909961 0.074387612389647084 -0.26101517064392399;0.56829932680357098 -1.1900072424669323 1.1508566331178325 0.18235276830171365 -0.29926090375380765 -0.062338982327722232 0.16899814915181977 -0.67275805014822865 0.42041037785161761 -0.1647247562942486 0.15428147455688404 0.30055282639880893 0.86034803621201328 -0.41883590687157796 -0.34523665388932756;-0.31901510874223216 0.2101592428132667 0.1029324568079337 -1.100733919047252 -0.84612942672921843 -0.38514714243690967 -0.20348166602108267 0.5897503543932221 -0.31329230440554157 0.32244274291314345 0.52561662129352804 -0.21422243601652033 0.51136637810074725 0.26758485439839558 0.046288353680414687;-0.19332289072757686 -1.030577943462248 -0.90334117982961293 -0.25033320241442469 0.74101004879968535 -0.40263123890447183 -0.87718004037357733 0.76410497418726742 0.3635211534439009 0.40589619620866219 1.7060748265600936 -0.081317874640190108 0.27063485927933456 -0.028718811753039034 0.34056034762479348;0.229407714838545 0.30839240567444098 1.2579435629113638 0.41664196722182917 -0.35733724750178869 -0.025521468696263261 0.44844105965007275 -0.46292391272191874 0.62065526204429888 -0.29419039655915635 0.4098347522856492 -0.04097104279003487 0.69547759624054073 0.51486571568258255 0.16039380191458349;-0.28957558183881305 -0.019890835532821789 0.042308368289786388 -1.0271301008257259 -0.018379649105593452 0.23256857925897934 -0.0084431915691434503 0.63714176748761264 0.026950217857600094 0.16561040869262203 0.87850911190600978 0.16918964783144241 0.57504870397878793 -1.0545414812234559 -0.43491671801769954;-0.766340611804744 -0.12396534889812844 -1.0269875504885888 0.28740807847881966 0.1475395278560897 -0.36333981435325502 -0.031942413661085974 0.65331586092864735 -0.20242767666693176 0.18864803305752015 -0.34471212547364832 0.11295286158339581 0.52972702438744046 0.38377864411185064 -0.70696550021294147];

% Layer 3
b3 = -0.18596048940905871;
LW3_2 = [0.66202509831500467 -0.81857591946235508 -0.81571137720861164 -0.94754294040023013 0.58593249488972277 0.85091854455680727 0.55927606502463645 -0.49936988138733207 0.85680740837545655 1.1850952962478083 -1.0989896991860157 1.4102400351816253 -0.9362966683198839 0.95849431431876209 1.0259211995574129];

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