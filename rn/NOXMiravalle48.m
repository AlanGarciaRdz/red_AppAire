function [Y,Xf,Af] = NOXMiravalle48(X,~,~)
%NOXMIRAVALLE48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:30.
% 
% [Y] = NOXMiravalle48(X,~,~) takes these arguments:
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
b1 = [2.6861195246075686;3.6869685256148528;1.7371017570611604;1.476863457819718;-1.0014138061159092;0.51922331989323389;-0.14962342870022513;0.36401593750026795;-0.91176336100029576;0.3280033321600882;1.6905070157180917;0.81379539091668152;-1.0408210426953612;0.62098314689560474;-1.7727719117152023];
IW1_1 = [0.070792626831300776 -0.98781082934366837 -0.14505812147253427 0.77628337907184186 -0.27968424889763233 0.27686779030158143 1.3752605336431627 -0.86952444151517538 -0.48369247289082962 1.004388557694436;-0.13102403481077263 -2.643470453273423 -1.439161243326887 0.68174992993565486 0.56185496872460072 -0.033391418505682086 0.95155910437576352 -0.28501076790463598 0.18031411538163955 0.011558957154891303;-0.49837000432760797 0.37104353525664019 -0.41256621073604627 -0.23266201622568469 1.7662305041112369 1.1878815618518597 0.75441818365063962 1.58244929847229 0.17637558062648276 -0.73512715593466371;-1.7434050688913976 0.026276630692277994 -0.81934218889471067 -0.0045703291820220759 0.48427499154522002 1.002522636025253 0.28805728018550947 -0.017600684088201618 0.88316857112867997 -0.44009489278515729;1.7886034844963949 0.093673361025188626 0.37985951381725713 0.51393200663278704 -0.29673718623752116 -0.56066039830192171 -0.94602054011956327 0.49462924479859044 1.8316177407263194 -0.74138614629745125;0.68382702854436561 2.3531342929686909 0.19216002396168713 -0.45775978745973089 -0.26711176955017379 -0.81688893405168506 -0.10811346838607666 -0.079802360895424168 0.10921578776024071 -0.062207733562076428;-0.92000845579029578 -0.50341704292522726 0.10922655101434847 0.1418508378472034 -0.068908550328620685 -0.82600172314793874 -0.067259993161687265 -0.3235027173711823 0.060978274345919806 -0.54738162466736995;0.25724212248126399 -0.017194412038404557 0.49060565343990437 0.30562256740048632 -0.36060172576041621 0.44537325695521052 -0.16046695691149354 0.20050115333164775 -1.0226757005260378 -1.0119819239079999;0.21166542653461792 -1.1996719042521915 -0.33355211851164357 -0.59014557348947538 0.03096094215518368 1.1535371204950053 0.014777052871449889 -0.14730150574494502 0.140172279881707 -0.63408753358150438;0.10387839948491205 1.759633486264065 -0.4470752465987653 -0.063295092288408628 0.063308743068588191 1.2062869615438649 0.093540209960334533 0.046286062656154488 0.029063325721690597 -0.054776416637200148;0.15380280357944151 -0.82749437440267581 0.45734827134778283 -0.52004869118320141 -0.10958713330677949 0.93727570949168248 -0.10133404921421921 -0.03023381653487222 1.6838856790865986 -0.71988548351889114;0.30824440774101608 -0.42488644748014309 0.84655103546842714 -0.31492449915507376 1.337072449762454 1.3821823865984291 0.60489760008712468 -0.64327370436596554 -0.04474792337450318 -1.4476759415981209;-0.233123708120345 0.7277852668904593 -0.63490113888644928 0.33123016403715583 -0.79895149638486951 -0.61868916629246229 1.3092480999785749 0.34150977340937039 0.35425075334288447 0.5528860261022629;0.310840776347099 -2.1525672959822284 -2.1027042509560534 -0.48267162125245611 0.25156972643465436 0.79812826857615349 0.99016573912876493 -0.60520955999460391 -0.17211871060443185 0.32156295361822201;0.54374674746031459 1.1813937361251656 0.040168636405632063 0.66238113452031677 -0.5337328374015391 0.49756066374673658 0.39170182243062668 -0.94851091920844854 0.076224926361885881 1.1774005118625599];

% Layer 2
b2 = [1.5365534366326725;-1.3866293825547955;0.96103560040642111;-0.32760874912445997;0.95974289282663694;-0.6260932849180787;-0.54626151502726694;0.24790107272276646;-0.24381973888524724;-0.80325123195283599;-0.84453429331343299;0.43990488985499432;0.86863461986143664;1.3443430861157901;1.2814760717045512];
LW2_1 = [0.033854541484610506 -0.70843049026975446 0.3396276592228446 1.0517954853192355 -0.27700802001584979 0.25188761487990785 -1.3382457747557388 0.31289190729379962 -0.29811339600551373 0.43808172948391694 0.92230570050959382 -0.86960878087200943 -0.59093300326491038 -0.41775147480345309 0.1037169672977615;0.59852451101440474 -1.0051424351821447 -0.33370808221474835 -1.1237846185937597 -0.38938123912761147 -0.40793755438079821 -0.04056822869879656 0.56479798215489341 0.37246909935354272 0.1509233070065743 0.62574900054477478 0.24427373343240971 0.50360763109461482 0.67387678440937038 0.36494387344062451;-0.17283304980936781 -0.15141798808413548 0.12205256960794097 0.38937403369776308 -1.3149560051388272 -1.0286013653667749 -0.74358049647230373 -0.76375622113502606 0.58026026908178163 0.23319066766015603 -0.046217586516160411 -0.41229656017874006 0.54240760861127013 -0.8692292695724595 -0.14328137865117518;0.86865391440707163 0.65175105013185985 -0.37117248970278544 -0.049579010203124066 -0.07678650603560884 -0.64694140403853984 -0.46317428577436393 0.11185294608784867 0.82198202877994264 -1.7353197682490014 -0.37730088501133563 0.51759260812047514 0.96070310410528292 -0.40592172017710393 -0.46601446946198316;-0.27164476247976688 0.44826595258491886 -0.54067754122632838 1.0334040880590327 0.053295367693670714 0.87307988460263686 0.78409981984388299 -0.33869255204283605 0.32629473547674603 0.027678918752300358 0.33994040454606744 -0.88962823741609365 -0.74813968132001096 0.79099745133195676 -0.0086681107140575975;0.65274390642825197 -0.48180078656526876 1.1059599478667255 0.2493079532278783 1.2391922409583065 0.12388094122601609 0.28508614027465251 -1.7213150461308595 -0.049906253518545815 0.7638269525639888 0.38003067845997651 1.5379810703600814 -0.92081402020513281 0.77868952395077595 0.49266564731032014;-0.74969327856071866 0.575502113870207 -1.0011191899033101 1.2021673176494292 0.1032432143545039 0.42982080703620823 -0.14325948504999381 1.0597980737007373 0.63408213871532204 -0.65628335759759293 -0.83826084126031442 -0.57232969644013054 -0.093259993629407012 0.27704172521716008 0.76019465306178569;0.52943660791562464 -0.74416078853151613 -0.24301529006504863 -0.40380494742316608 -0.17311659932274664 -0.92749406588491978 -0.48157117971862939 0.0060980841928096191 1.1174280537783523 -1.2304375445888907 -0.53554571436914167 -0.15531696284745711 0.29445854242502767 -0.21426117122593319 -0.99801340274768746;-0.15399840552144417 0.17694083051002407 -0.015983659312191825 0.043926536925944823 0.023966942216087639 -0.725955171861001 -1.1297772573230052 0.62835316021922871 0.028143179207416713 -0.17103844244340172 0.65531269444204232 -0.78522883379962527 -0.17824785102948582 0.49970113654460396 0.33569169626343348;-0.5560339850265511 -0.75737860002520641 0.036007400484409285 0.71422840642573338 -0.62783005740461961 1.1177375032276367 1.6971102895703933 -0.55584444661816779 0.28280623665642207 0.49104931159700943 -1.2343549007532451 1.1278750629357364 0.39814595839179923 0.65907238367686061 0.35439032048328123;-1.0036444059228229 0.60044936514543923 -0.12913140220410632 -0.034490288199385544 -0.25494241922744831 0.44971642692598962 -1.4809211816477885 0.19978355857713595 0.033463898013373065 -0.83191129240744255 -0.72439102437039193 -0.99745814637503183 0.15965593589621466 0.18313410448173117 -0.49396431505379956;0.91682496269105462 0.35854912559963342 1.4605412985465791 -0.55838984061791974 1.165766144969016 0.063500834154168101 -0.46205009309042072 1.1175519687737103 -1.2248649457880845 -0.51188389484923635 -0.50868250183227293 -0.20303528224807346 0.017800081259251768 0.17558861073219872 -0.42214626888399059;0.97023054574400747 0.24736682733899013 -0.75927741230641166 0.08657687683290477 -0.19302130029687647 0.62489807155047161 0.68301462532342605 -1.2241523973413457 -0.25020245644040368 -0.1556272801661937 0.64823446015467712 -0.010972238663279024 -1.1816402530200198 0.370814663249252 0.76484584021402613;0.8958758394650036 -1.5885125836435678 1.3471805018670084 1.019578164031123 0.14968527358871342 -1.3935744131417691 -0.33911240539460896 1.6452506979262189 0.21674837698009783 -0.61224839661573915 -0.041234090758773656 -1.0313113057354588 -0.5445191735971896 0.53305888451689876 0.96912033856263025;0.36484625355753481 0.6370604231187964 0.27254400190866718 0.86146457531234022 -0.33595194373908377 -0.45027800761186226 1.2782955877047666 0.28689889887905051 -0.022651337024144194 0.037322756578722888 0.20744984975667355 0.53695264016109101 -0.076282372598389311 -1.0955559419454231 0.81008695221798621];

% Layer 3
b3 = -1.1284172470615648;
LW3_2 = [-1.1901254663158423 -1.5232774326692597 -0.39017074220866699 0.92863767626750571 -1.0479993837390613 -0.82090272217350235 -1.7162319127106112 -0.94757680673115707 1.2629905793425626 0.58081079969474403 0.83721161415273915 -0.51715218451699019 0.96559036839856782 -0.47499072728546138 1.1938933974644037];

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
