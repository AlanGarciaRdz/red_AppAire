function [Y,Xf,Af] = SOXAguilas23(X,~,~)
%SOXAGUILAS23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:21.
% 
% [Y] = SOXAguilas23(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;14.4927536231884;11.7647058823529;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;95.2380952380952;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.4616630139450169;-2.5082516780974613;1.3598011356444299;2.2014137676519097;-0.91638980981328766;-0.18327096260865172;-0.8186727924733711;2.5171258471666866;-2.0787230653329622;1.2194203284286755;1.0700293040175566;-1.33261148664897;2.0390210719586164;2.0090527037882469];
IW1_1 = [0.1483898867398509 -0.39947748859870214 1.1724973684195219 -0.5134323401609785 1.0414765720541788 0.90587693098275501 -0.31077788920767041 -1.2867680401216601 -1.6272681106990554 -1.0918881180878488 0.065574645933087233 -0.12421620017072024 -0.91672095609253013;2.2638820813278628 0.79497977983412049 -0.018790254842559931 0.37362190549486163 -0.30545452448874855 -1.6255055276246912 -0.54534716616292611 2.5695695159848446 0.36244421110247438 0.50450954354328603 -0.26580941800058289 -0.79754619554365203 0.93624760548855357;-0.47623643119670955 0.48451134261564843 -0.060660663609652485 -0.25464646472807989 -0.49254578160288986 0.5584218962474945 0.16465941628534131 -0.28596600508179626 0.62527295049576825 0.31033652463596106 -0.94643833637089303 -0.70356466340429091 -0.4745717081075006;-1.4134477493193356 0.1145784932305904 1.9694068871104529 -2.0372048655633792 0.32821065851732079 -0.23156052360448925 0.55851534495928423 0.66611370002394921 -0.41157914375935256 -0.3441157511106937 -0.85617008811938156 -0.070930563881421244 -0.56340941683661527;5.9575595546226454 0.64466653911117733 -0.063117212767395153 -1.0396125015090778 -0.32882747205402901 0.12696828360007398 0.31716224675505805 -0.29211052996474096 0.51309734478162294 2.2005212588446685 -0.66953018311891088 4.1625083493267487 0.066181079294232698;-0.58412691290736096 -0.43981317077338433 0.69349394857510682 -0.20516073684175765 0.51789253404446178 0.20130401582225649 -0.33453846996440567 1.0612475801742034 0.10739021411962822 0.057870393432791302 0.61473619021997294 0.48669453819397707 0.26561714931171465;-2.1067522923310977 -0.10239828612507673 -0.91849024230720622 0.7072096918462194 -1.0601357612708044 -1.0007652439597572 1.516303990355877 -0.0079864671170910076 3.5882758931479071 -0.54742622843642119 0.34932029698844014 0.18912086460549468 0.47831577523138613;-0.13704645508791632 0.011962957551668908 0.01221960799566563 -0.10892281843303941 -0.014771961092424403 0.029785731166455449 0.053083719841115401 2.6977204154908443 0.02574755740338297 -0.053322380900134921 -0.056612874101251605 -0.018560894230820239 -0.021689701882740543;2.7593847519030295 2.8823958030673444 -0.57129973042811111 -0.45669652855701248 -1.7366774904491644 -0.01781624659555606 0.4197078662857856 -0.75207220462102387 -1.2100757274899341 0.38952493421760848 -0.88917503358685412 -2.1763883116266358 -0.80701661040138828;-3.0328868077413813 -0.55629938373952736 -1.4028755151754768 1.221849094202887 0.033620463841891261 0.024395867931687895 -0.77575510076413812 -1.1402778180872426 -0.1047284412439998 -0.556627900124817 0.084969083249637894 4.7102589398227499 -0.632877351081511;0.38684293310050771 -0.16608838460786068 -0.083862581505277617 1.2015733617300053 0.59261963046821609 -0.68652933827159757 -0.74079625046641906 2.0987208983058121 -0.51683080954859095 0.40300618834517649 0.37453381241154277 0.41743673530074854 -0.20195162869887823;-0.37917520850639308 0.15172054474324931 0.22165384712503267 0.76969072219423962 0.64442293342931589 0.20640974625625891 -0.7044164626157674 0.23224018767335317 0.69458148562274447 0.089319016666746659 0.63597804737343056 -0.43435788404987069 0.42025585734285992;-1.0422500254250853 0.15108792811575222 -0.48897120070997235 1.1432495762312969 0.33054013980757879 0.8653824288077514 0.30930176307134682 0.96611812716703005 0.37833478487058669 1.9820294779523016 1.6205197928170878 -1.3891459060405502 -2.8034285991624106;1.0488227129645613 -0.076683323956876076 0.1831244394298179 0.44707373768422065 0.2037843383361401 -0.29426266625258646 0.35120890299323859 0.43956149936611555 0.28758781199748945 -0.26357474168320472 0.057684656277489282 0.032977157771529916 -0.043597847049171155];

% Layer 2
b2 = [1.9426283299410594;-1.4475891389467865;0.4709551760355275;-0.95720882341329572;1.8050757598193174;0.29290348161147056;-0.16178135663435492;0.074085491794095987;-0.3207845198101088;-0.7120781111815927;0.78203786853050805;1.2223181852748861;1.3935112843347321;-1.1271924110223615];
LW2_1 = [-0.40531428105784895 -0.54014637335799043 0.3235244501095299 0.33054880363264422 -0.052507836965693847 0.48249842572211904 0.2339324170809903 0.22090336571599967 0.3182414561297861 -0.56110085698826684 -0.56538569489396473 -0.74723757884138309 0.47662525244704623 -0.35044037615503537;0.33837376427619981 0.24847986916529796 -0.36419115407125524 -0.54704680243571946 0.36453997103908165 -0.61018590213860113 0.58886969645549581 0.5592660121807117 0.1334079247159439 0.78945030050319376 0.1323613520725147 -0.54838205668474238 0.38660716360673708 0.42475394375288711;0.19369372785936895 1.7370034501239586 -0.72079457828361981 0.1156969912119868 1.5435920773026208 0.76418247256057159 1.4108605999143353 -0.86264680678631978 0.63437151230364675 0.4223001696923025 -0.11443606028524274 1.1017081002369484 0.52572156274856074 -1.1731960069877636;0.42629036255360098 0.49021471096853081 -0.69379290029887897 -0.42285100086690941 1.7228000951955764 0.6046381572150179 1.3637708142266534 1.3234906136241871 0.86539131653746182 1.357674577856163 0.46820403730117827 0.3926740098563774 0.098000350876744677 0.12216390956395566;-1.679895236239999 -0.19045787836009501 0.99174318089954894 1.112733136435653 -5.7501324089848955 -1.2133209909460181 -4.4493794925957992 -2.1499926203955773 -4.2311500857428728 -6.3575262416373093 -1.7409879918730666 -1.4921055841765134 3.0224382811861576 0.98382244331774515;-0.263203477905742 0.65499370691134362 0.28652523505254424 0.19588014384983216 0.28550165161091723 -0.42444308323017377 -0.076400508529364503 0.6844088143042748 0.20552253306250792 -0.00026261367499414226 0.78171209550708642 -0.041058926864849715 0.022359803192882589 0.97522418594858284;0.17990525863693882 0.21353596801318137 0.29766849482299901 1.0397083125423154 0.32738192029902363 -0.03842644770399635 0.21184527724202309 -1.392086453834519 -0.068193984271247302 0.088461471208276216 0.88707000062296282 -0.42926318510097117 0.068858314550051841 -0.24101447778631779;-0.34847302958990112 0.96437312649028784 0.15494045906808218 0.54821265627450366 -0.63605559380152332 -0.0033114836158330274 0.28124420905859676 1.311266422609408 -0.38010994749920241 0.4683711315551492 -0.92878711720511731 0.68242595896843972 0.22120904648549058 -0.42197468747468686;0.048642593944138161 -0.078537462213765924 0.044408263366415165 0.66962544184871153 0.90101487783248924 0.20098644941971533 -0.41781252812578129 0.037098904388668447 0.17151843135546352 -0.057810763661306594 0.37098446129722135 -0.28402383444178292 0.048280509673998266 0.52744666404739615;-0.37395568507466115 0.58902303544456758 0.20418496593269847 -0.57372025850535469 0.16101067544897657 0.77658609602552786 0.54815746005841159 -0.29937335974112222 -0.13246852649569349 0.071312969461625991 0.64213023218578791 0.55421699722933915 0.004084008089015787 -0.66857413143671107;0.23361746897414565 -0.15941369890059384 0.13525875833842571 -0.41319200869379563 0.75926609368059061 0.85239504792120069 -0.37184432705838683 -0.60080975116969615 0.3137449456201859 -0.20208488551134562 0.37726539465464393 -0.51657101664223182 -0.080597390447871259 0.43637723709427123;0.51005498869075938 -0.24762208728162635 0.49554712906463327 -0.15133124281869617 1.0763026114373033 0.31180221744509057 -0.59531857944034106 -0.20219575413628216 0.29277617474195766 -0.52295596198193584 0.82230190596812092 -0.35384180997880799 0.014002651427299407 -0.10547135504078936;0.14476427279388279 0.65343830682216131 -0.096517360419120124 0.23093088991754354 -0.33206453750992199 -0.677563663771237 0.10294870967391934 0.071188664569063628 -0.54498925513072838 0.55052437269908006 0.33590007347719975 -0.67424515532305418 0.46987549002566437 0.71915583109468573;0.09814992675711709 0.46108163565987925 0.17490871135001909 0.67618037547636245 0.31305588505342008 -0.58397330312058382 0.15217042721237237 -1.0034670169680258 0.17145426755148277 0.20209145146981139 0.61087168330870567 -0.1612959247002809 0.11889464527168743 0.45102085221167704];

% Layer 3
b3 = 0.29301328254297648;
LW3_2 = [-0.3746950248394626 0.18027147810747907 1.3054382401301281 -1.362938836370005 -1.4430733393596007 0.68393442003943428 0.68875489341487017 0.71149004499632429 -0.98991806017008721 0.26966716950119157 1.4104091245533954 0.20646070357960292 0.3354724144702223 -0.84717319472473662];

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