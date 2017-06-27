function [Y,Xf,Af] = SOXLomaDorada24(X,~,~)
%SOXLOMADORADA24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:34.
% 
% [Y] = SOXLomaDorada24(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;11.9760479041916;17.6991150442478;0.00572573718866304;0.0175284837861525;62.5;0.0546448087431694;0.125;90.9090909090909;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8675515289976161;-2.7757006380120277;-2.303482099469627;-1.3751329126071485;-1.2845317523974817;1.7751289519743092;-0.88472623385711768;0.35209934522142383;-0.78737308056941491;0.037020032754768839;0.95078043661489864;0.20715741227603154;-1.9307951385669526;-1.2108371351424623;1.8191459617335037];
IW1_1 = [-1.2425655111140463 -0.61731568334786546 -0.54071114397549425 -1.0456736301707803 -0.73086673249112943 -0.013941191497471153 1.2498094746888133 0.21658195578332198 0.27436366206101209 1.8600146916427358 0.14699078210784131;0.88215833529056964 -0.75081204635778898 -0.43623246578158081 0.55665713416307439 0.11132677151741489 -0.011603596252688659 -0.84122703123665665 -0.51879082892618644 -0.40385138908423396 -1.125893870180652 -0.17599340267839994;3.8873281018830554 -0.25096200581655875 -0.75838451528189299 -0.16429321732753691 -0.30643529816422083 -1.0429376835332222 -0.34350475215988074 0.019980348644201958 0.12455668241394954 0.64835413796350083 0.079901668436443279;1.0281139402094193 0.31177027792537204 0.36341481314651991 0.19915627727108703 -0.091697134231935193 0.14788519864388208 0.029031992072651905 0.95140643413691783 0.36587455078289011 0.78551627979589322 -1.1588423217953823;1.6994140204343375 0.16396161414626273 -0.72237668529070309 -1.3099056312194977 0.033581346786469735 -0.78398399692380871 0.48915871529497268 -1.3521989199985196 -0.50103195759911912 -0.71881510953878724 0.89407998166413594;-1.6353518223070398 0.022862018944011901 1.3394848283150016 -0.5408637459141884 0.67223769731244243 -1.1838557641256562 -1.4906311494328883 0.36771094530486992 0.48803940996089745 1.3370342777861184 0.24834335775138783;-3.6218667459254266 -0.23455785514304764 -2.9785048962561569 -2.3461956330810372 1.5082934305965856 -2.8396683857955876 0.22490265881589092 1.5486344783809929 -0.20773487945791549 1.2414487470232587 0.52526714466853197;-0.60661503536890804 0.2839881164936221 -0.75142110256371086 0.37570251484702749 -0.53664068119425157 0.14395366771238088 -1.1002981013840023 -0.55686987583698677 -0.77239735765981532 -0.53552762612308158 -0.7255902679711228;-0.26867425281072366 -0.062169292226674631 0.46090102440034419 1.1410805646151814 0.8769683467396876 0.50319393182715388 -0.15423859153569464 -0.3979550338717438 0.78437937231829413 0.64525942689330074 0.8256035591528893;0.82005127518457532 0.5507211373681562 0.30339900579160128 -0.60948886987588391 -0.28832328950847191 0.63542806601189361 -0.25926025340087555 1.3707578300678758 0.16471838377144052 1.0297399118037176 -0.47257749856382725;0.32026934318899047 -1.4740341032561406 -0.30253671606550325 0.81597568694698375 0.40816634471223179 -0.047385933024666996 0.32468425407104212 -0.26888108962225649 -0.18934286304706932 -0.30666687726259784 0.17197258920066771;-0.65522889955363695 0.24043424710926226 0.32586382407944897 0.21223896592861605 -0.58988991020986414 -0.51468927311026302 0.57782961083285245 0.69686422163707185 0.80339227684985437 1.487906145936295 -0.40775926574553745;2.4600224333133855 0.079079613965840137 -1.0088118496405498 -1.1419450862119429 -1.1036626755101602 0.79958995569614055 1.8584990792252376 1.1150067078131227 -1.1158162671494078 0.34779367136541406 0.74260527739601911;-0.43775815961669723 -0.26695280618686601 0.30293006641283476 -0.043993985985127812 -0.21734572803281277 -0.43215530697500121 -0.39874867992408242 0.78785998649713063 0.61905281353841113 0.13639863745938094 0.64114776921015182;0.68844952080143051 0.50306199211697789 -0.60017312608928164 0.43274573489011942 -0.75055350287395017 -0.43510598103692988 -0.74357414335277183 -0.60358312167170569 -0.51297246833611554 -0.74177535675153305 -0.052448800933533546];

% Layer 2
b2 = [-2.203624859479862;2.2334671809110933;1.0063689752023703;-1.1309710811720513;-0.24879741170013633;0.56741659028132896;0.012667411855946817;0.10165911888986107;-0.3244749215693602;0.26271650044487638;1.2019324189884173;-1.759294790878436;1.8330876655200288;-1.349941850851633;2.0552354180097359];
LW2_1 = [0.72982020129772973 -0.33678950554555492 -0.5836866528813397 0.68967114989717682 0.25642696517993335 -0.61872377508999943 1.0520978189746859 -1.0735219143744124 1.0966421708737555 1.677987942184588 0.21005260145586335 -1.0412293561444947 -0.20787469278645171 -0.70874512506418463 -0.53306385637230769;0.54292205668883009 0.37687799921280796 1.0271717472580029 1.1042510554575167 -0.42737449585850862 0.58637182019879663 -3.0670337685309899 0.25516132377116324 -0.69324284181558393 -0.9561086038876877 -0.1672061648413169 -0.22450671025771118 -1.0977246562145238 -0.44717586615598248 0.5213473145076839;-0.41358667270881694 0.32096804463954487 -0.14965230660715281 -0.0767391949057597 1.2926719209239494 0.25574672713905816 0.73570166992746566 0.11466644653458381 -0.1123437179467566 0.68099914759889157 0.88672314568925947 -0.36879989769273669 0.294555567278728 0.40552793707698742 -0.070974263093115067;-0.031558491432869137 -0.29717117416464406 0.19048904421551463 -0.61459466670861596 -0.51657161467989532 1.1363889691261477 1.1987771391623321 -0.53405249897663776 0.28099210419922011 -0.87383938528940597 -0.21096236382504813 0.75523525652078505 -1.1004833754861569 -1.1472693879253433 -0.74180230208810494;-0.22304955536708976 0.19528232013325009 -1.0897483536519967 -0.27382209139524594 -0.056968889234622511 -0.55696427622379074 1.0728001507288076 0.58990847394632095 -0.84277203924723365 -0.2059427033161339 0.21257811573285071 -0.022530018327344848 -0.064380538080556909 -0.3904136473896333 1.1008287793492144;-0.41114997671170528 0.060583792638647424 -0.35363286199647154 -0.48216057198537082 1.0098398803122388 1.1443665600879152 1.214294238215277 -0.54525881586326952 0.16168420120942023 -0.53148947783411049 -0.56353045372063082 0.47799784132631096 0.1697726245236742 -0.27030866668237036 -0.29860462744484551;0.27196790335311838 0.067609942844423981 -0.33182309048615172 -0.46887745044703716 -0.1736633612148003 0.26653580563283352 0.44109662083544238 0.43884944744798116 -0.20848959249159227 -0.62884026443724839 -0.076789927604281938 -0.31314280735399092 0.040021681306056517 -0.2885239392202627 0.24629656242543857;-0.15149676167668985 -0.31211082773187537 0.12481262958498496 -0.029682365758118525 0.78274587686482566 1.2838344989210275 1.2070532693454181 0.36120251018050209 0.10592519076998758 -1.7287030477424912 -0.80499326563976581 0.060724525713943753 0.058610105811458715 0.12445233927317065 -0.28050659817003698;-0.76195974799869293 0.17200954467357393 -1.4070559277196835 0.13346823516775655 0.30929804904222741 0.074611960112862391 1.9920498153449164 -0.26793951197380184 0.27745255653962581 1.2633247914905252 0.07140827278713513 0.25514068991307648 -0.25727525331507262 0.28678536040622349 -0.64101031843895573;0.33565162426093242 -0.32097751024415722 -0.17677635437660688 -1.270390188856616 -0.61625567294802774 0.459942057581672 -0.81549849032463639 -0.23392512335167884 0.9622323412785686 -0.63481858842188488 0.052887172823141766 0.29209245028298303 0.25120833685376048 -0.74966434812570004 0.15929026537889918;0.52668588233091196 -0.035118721554333994 0.71731318747841044 0.76595838542941008 0.43523393353518725 -1.3306690056254089 -1.4068801780961864 0.15875600541229312 -1.085637771997346 -0.57334105862731566 -0.14075886382784675 0.39399673916981864 -1.0088672946954345 -0.63967579657031126 0.74986994103505311;-0.77406537160181577 -0.49596860264614523 -1.8832018537254005 -1.209519692003322 0.059388464965731344 0.16605539128858438 3.2132688335643693 -1.1176631217709976 0.30572211143094458 1.3553648716152762 0.29049988554094891 -0.077131972516314623 2.3393136432020372 0.64637742338260651 -0.97932477506126636;-0.46287158513703386 1.3227386671945989 -3.4501811929504997 1.4904132674022585 2.6073974648400764 -0.17623942579640275 0.62995759119115724 1.2781809600009222 -1.2927229600856636 2.5872231181329224 1.6312997017471871 0.85542356314256163 -0.56098634572038475 -0.05652431579738363 0.40582907745079377;0.19439012541920173 -0.58214122151796244 -0.07209628199039593 0.78649001759626347 1.1183186510337495 0.72958352869873577 0.63582932542560655 0.96344189910741052 -0.20088665044402843 0.1238627602102597 -0.074155177579405485 -0.26165747407656742 -0.29169216502818418 0.77672339001077351 0.40252335928374916;0.38331040621196599 -0.15560159884600361 -0.73764609077809784 0.58772745378813851 0.73070294709748373 -1.5802926752535427 -0.61333130647283252 0.27160600391795786 -0.62448020346339517 0.010111979974672667 -0.05789251359457228 0.4072844674379219 0.26642726800165578 -0.37554339621881744 0.036638595870324954];

% Layer 3
b3 = -0.65550968307774604;
LW3_2 = [-0.91575553839126866 2.0262300544161076 0.044872445460705887 -0.2431678174922289 0.48119950935875661 -0.69509461757326507 -0.43286203419824354 0.62058269160645407 0.37199791886160788 0.29883181313766144 2.1708187558807071 1.9485573103016987 -2.1683314058829857 0.25339318058733434 -1.3550153576172212];

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
