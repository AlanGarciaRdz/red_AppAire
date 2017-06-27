function [Y,Xf,Af] = SOXOblatos9(X,~,~)
%SOXOBLATOS9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:40.
% 
% [Y] = SOXOblatos9(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 11xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.0572805905582396;-1.7821245694192533;-1.486169429399244;-0.77354113663680735;-1.9304043635804808;0.75935332669223343;0.1742021375735551;-0.8267932015573255;0.24617614012936923;-0.19816099295905315;0.52126071837092935;-1.255016075551751;-1.2179260151969316;-1.5159332189718178;0.59833474244381035];
IW1_1 = [-1.1240048608424178 -0.57933483344709713 0.5005311161738093 -1.0665371406647466 1.2640944941967702 -0.95216676874477701 0.20665628678262107 -0.3730582326678808 -0.10533364611611486 -1.9024590191963313 -0.63612684767574312;0.45537862793666595 -0.22861885523913034 -0.23976359447947374 0.55936183141061635 0.40437278770356461 -0.091717776558470215 0.70690840953605572 -1.0115934304387819 0.26564642425667667 -0.11707789506834275 0.11729008476607117;0.12447512220726471 -0.26860483650696088 -0.059362309468712578 0.95850590411847358 -0.14493412112109447 0.11510507861852659 0.75815253099953273 -0.08632060420172992 0.65296120424496262 0.81790697885746677 0.72684771196295928;-0.087415338124461076 -0.22580276925088741 1.2360405479171728 -0.12887273727848017 -1.7681001556069984 0.88572364697152728 -0.92793098359080395 1.4199346964363349 0.39377263902422011 0.44009882315112336 4.5007972417958078;0.83026966176878869 -0.3171543496560616 0.61793220133313309 -0.11510590344832126 -0.45715735428289356 0.68124902395808073 0.41149104552007709 -1.0172669230279803 -0.12703103569020452 -0.67623170945961886 -0.35729062523585053;-0.72080372281492133 -0.21916528481132252 0.8842610552300999 0.54260663311272994 -1.0083649449511578 -0.41854377748135385 -0.78961734877245693 -0.3625150986838519 -0.18305806147048759 0.035383179579353136 0.45074881732375882;-0.32507259301116798 -0.24835751217196897 0.59495523711089604 0.22362413191156807 0.92639545315140914 -0.084698625371150055 -0.14073326561369948 -0.18355570739515695 0.43020962786242845 -0.010255150216804719 0.67912669331698683;1.5432909868648614 -0.79580914205013298 0.15841171629261758 -1.5325161878290734 -0.40886356430674192 -1.4472099026341598 0.39415920868234439 2.1150329244390691 0.30105059815260937 0.70627945863292674 -0.81401804568128999;-0.97990620671717488 -0.4752227155470708 0.79654225239057419 0.017002545253482992 -0.2136401763733814 -0.049672352142583649 0.22812128757718456 0.29378934006590268 0.017974712578061377 -0.16594898240227274 0.087208523730850737;-0.6985582343016099 0.047330897796683501 -0.24528967596224893 0.028778232886498948 0.052969483498412337 0.46748877448521647 -0.26301485258678214 -0.187858178131451 -0.0080320269927280034 0.069351962591330918 0.92240928477085304;1.0141764256320434 1.2797212140283181 0.3242575496963459 0.79155985888931246 -0.7201704429336806 1.3261872182178454 -0.62940312574523449 -1.3288679192385273 -0.0233920613563087 0.079703991699686186 0.32361245014146678;-0.74728008978549498 0.73132649847353237 -0.86244723204843676 1.1685562954971054 -1.1927881637377205 1.8541387590062754 -0.26513489896020354 -0.80481958189660041 -0.72499643160174287 1.3246953873436877 3.1684749118556188;-1.1970257464382839 1.2488410762949178 -0.281884452578547 -0.52724095986756248 -1.1058633632819626 0.71108946541257267 0.56507995470179218 0.85232257504650333 -0.045638140365590212 0.88786384141698338 -2.1176370584933779;-0.68271825744198178 -0.073420925593436215 -1.1544278431713355 -1.1543683961487476 0.60399749877667552 0.36982963133589192 -0.44261987683743581 0.82365793550475475 0.20442170906357637 0.2678652073659003 1.1414863981111893;2.1384080768182381 -0.071620763189650549 -0.34899944300572072 0.61551736478260499 -0.079096849087695528 -0.91886908047171179 -0.52958941196274079 -0.9946589810625065 0.11308715746121822 -0.25762820182811952 0.75782993549010957];

% Layer 2
b2 = [1.7283669255864251;-1.4766300163392609;0.67851322354839505;-1.0678641353771905;0.97956441416029327;1.5387158379748378;-0.084793597352022909;0.10446570614126037;0.39760151431727725;-1.0016555830279668;0.36982350612120701;-1.0012001867708862;1.5539122662345792;1.4312517909679747;-1.7349472999420894];
LW2_1 = [-0.16166716351541019 -0.91548518570866089 -0.10551326077668612 -0.15428659708290349 -0.44883326608791119 -0.021569825569669413 -0.17563957971435559 -0.13292842283270068 0.70084898511716565 -0.63759972323448888 0.10998471012450067 -0.81631112153803331 -0.11563999037653995 0.15248315144549657 0.27602723758895864;-0.4391399164454452 -0.44352781016905551 -0.43415992903312578 -0.7271142345998336 0.98320837674084793 0.44935696201338216 0.47762248600349605 0.30417725844089666 -0.62848746217968343 -0.96667957164149676 0.44854438511602795 0.20661593822548369 0.76559122270862912 0.52063641770413416 -0.17255237281872579;-0.78972973032889016 0.87905447972877282 -0.076279639304882046 -1.239090118988226 -0.51993702513460538 0.52837787614093357 0.44710489576656698 0.5122357615882962 0.08855374620794966 -0.65366247899540786 0.36480867447590837 0.44556940303715686 0.22705332174738546 0.43026187608679989 -0.010731917998699075;0.38458062722589648 -0.088100243412119375 0.63003674638268847 -0.28818190000790228 0.82016021103235093 0.26810554020226568 -0.33183659488095069 0.20284007112513355 -1.0093933373965867 0.84260374468443844 0.059533940273156276 0.14740082505796376 0.95653991783099235 -0.2115890823019396 -0.37057825384181969;-0.12007116799224671 0.46707934848045246 -0.45175442168055074 0.34215670958184385 0.29781833319327872 -0.5405934242264866 -0.21087929330098709 0.32176799350410562 -0.38330633781474144 -0.71497550874010529 0.2291135492783315 0.32348240689281954 -0.0061827990030182689 0.227141997121907 0.81930067727751388;-0.33683446743033429 -0.77804053185875377 -0.14468273175441757 -2.3062304788308108 -1.4188018838681007 -0.64013819587242626 0.043151659698686839 -1.4782911870399267 -0.22398924633263084 -0.6352622544644061 -1.0360977019933577 0.6853543844928609 -1.1909785926748122 -0.38996545894881002 -1.1581467642326273;1.0426534235810172 -0.37804309220596499 0.051210008265894315 0.77150287723073141 0.00096098505742854903 -0.18641338549090722 -0.35002332390883889 -0.19037974133166963 0.21541800563818567 0.3468858627607157 -0.17137335102326107 0.90707992493582057 -0.081728958514527841 0.11133367983360923 0.46721848829326201;0.038799511228672631 -0.021947713598846869 -0.0052221403406854695 -0.41275587692517607 0.53871587637489227 -0.18539187037297347 -0.19102277757029135 -0.46683150942174534 0.27612191216485443 0.33110352466210119 -0.77835232020797118 0.084744524138580177 0.078880776843023553 -0.1959835482623096 -1.572124249289502;0.54215333656291187 -0.60822668233844923 -0.77312518560034793 -0.092394882577750678 -0.25626097622118332 0.32211239638673717 -0.78225926210760022 0.35242443833048215 0.44330232409585779 -0.70564852804742328 -0.26219113149494833 -0.23046944364236013 -0.41129754913038113 -0.15092137358384927 -0.09355777718605969;-1.1546082301507599 -0.34334780207976223 0.2054458830061405 -0.42951626238819202 0.11802688512469879 -0.021582429219405442 0.10778347186471149 0.021011362442053087 -0.15127148945329047 -0.42197721762860124 0.02291971911879729 -1.8289789364731441 0.034094906203148451 -0.057708892875895063 -0.62143808521328725;0.97062063185935477 -0.24378729538812491 0.19658118312338671 -0.46227063877044916 0.76604789415438213 0.23916571944458723 1.224652526390392 -0.102594889089415 0.2175400116171809 0.72651146907080266 0.22369031838083409 1.0500363279023939 0.0087038251818512304 -0.79311991462193177 0.54774779620112546;-0.171658791595177 0.68737591348999649 -0.12065506017589905 -0.1140540779703817 0.41398814516053628 -0.049190588730139304 0.39482368404055113 -0.79032893935315962 0.5325273537535139 0.17302298667185081 -0.37029277986376524 0.6506837080232899 -0.193795224421729 -0.62887889948040643 0.19684608616365384;-0.1308122606566508 0.20536125283345127 0.089759408493200826 -0.48854802898180338 0.48369105446563693 -0.32357108078185259 0.32906275206521579 -0.95535445010399622 0.5933012550213872 0.77558607677936442 -0.59083718786431072 -1.2156735301270825 -0.46700793280559144 -0.18694759296677896 -0.205604846228992;-0.26970651341313084 0.20611168415150977 0.10889935712180861 -1.5153211137412792 0.65255948563131028 -0.24271543355279818 0.24592257955884281 -1.1653381916110379 0.76943333465237052 0.54107188100420878 -0.58153668476794174 -0.73252775235727718 -0.44868725168668311 0.10710089849493454 -0.044753855399848663;-0.72075501151641019 0.31777420536553513 -0.14594582116282917 0.61691037369185786 0.58601459978551862 -0.47061604973578541 0.48057233155536022 -0.49109956792455639 0.10327038785767902 0.6929392219055901 0.3704873741984947 0.24388105965448006 0.03839836903570823 -0.20214481564621148 -0.36195973638289464];

% Layer 3
b3 = 1.3486200965678501;
LW3_2 = [0.078604698589373342 -0.60691757961495696 0.45188737786700289 0.45248524558418418 0.24169171183807148 -2.4443849698095863 1.7332515299686939 0.10478200371870711 0.13034605525232812 1.3725018938256921 0.42999793808720438 -0.62086007166838031 -1.4280255761844902 1.092940772152823 0.099745486083087823];

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