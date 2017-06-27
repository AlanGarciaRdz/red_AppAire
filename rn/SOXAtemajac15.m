function [Y,Xf,Af] = SOXAtemajac15(X,~,~)
%SOXATEMAJAC15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:24.
% 
% [Y] = SOXAtemajac15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;16;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.6728296477436095;1.4724575715131807;-0.69998676128828019;-1.4465211746030295;0.84364088405438276;1.1098056105405054;-0.80522147971324198;0.80496886610789564;1.1164535423933306;1.6202083553764399;2.8323009644488861;1.2916997865130795;1.7357908194358262;4.2286538296554879;-3.1311581922390914];
IW1_1 = [0.6734680904692274 0.20658178936625549 2.698884505470299 -0.75937447474887942 0.8876311391278463 1.1422115832547795 -0.098496100155256325 -0.93361960004209277 0.11767247977654116 1.9901225335862467 -0.4292586235834136 -1.2978118511493835;-0.13265435060822778 0.030421959546086553 0.022688710422078887 -0.25689840814465759 -0.004008295774671055 0.41367833358118944 -1.1261033512434659 0.52148681954296838 -0.57712980869667185 -0.0076228782869892878 0.72149963945017836 0.92765007527137366;0.64974349639475959 0.088380600894924582 -0.15864790437058063 -1.2839134810350585 -0.031701320411677024 0.17539766765025105 -0.69614874910200297 -1.049566726866995 -0.81463779960489791 0.18266630334096923 1.1855017071525837 0.4851007939659609;-1.1533215530195997 -2.4704484641771014 -1.7199497794106517 -0.40654224982206344 -0.41722219978712044 0.073681671484929739 -0.9372910724616822 1.2388656148593602 0.58586050745853435 0.35339568114689768 0.001669452848013557 1.0012730242622241;-0.61422219163518799 1.7070023215635777 0.0010178237090002745 0.37120148083201487 0.51709978475469054 -1.5886200975335623 -0.45809019631624859 1.0059628961387639 -0.1360432892455776 0.019280320296686637 0.35127373949521001 -0.28441539032838142;0.23243782468772606 -1.6104957692527169 1.0232594027685087 0.73876602473425912 -0.39791411438924479 0.19644973445165875 0.21328730952673655 -2.2295880866349069 0.14714382562161799 -0.33721411717648558 0.50440301150588285 -0.065516734306620084;0.54856686818827649 -1.7888862874208877 -0.050214934112076663 0.11509763593833482 -0.87404200660214004 1.1447923806273927 0.21313943807800736 -0.13537553785461118 -0.17807532451120855 -0.17799473495628371 0.0050838146253561478 -0.1617152510869882;-1.3357231756936989 0.2123902662535111 -0.81037400771494172 -1.5009392709420231 -0.96143822367805853 -0.186076584374019 0.92951220648130439 0.46328034537463297 -0.14395236177120907 0.067689694176824217 0.83795361408948821 0.51891997945004931;-0.04447187804412979 0.41135666125241516 0.63213380873115499 -0.93084723183767648 0.79519534639339184 0.86821668090204529 0.27476674457063321 -1.1715401602682152 -0.41258200284933771 -0.31319672616539218 1.0879343358412836 0.42579498885236822;1.8808214642690928 0.48001653561464031 -1.2170092585544794 -0.38296413843935029 -0.16299484255277627 -0.46537585656330982 -0.99896734702601497 1.3703784055107371 0.81062135147445613 0.073156953806287409 2.1734645777172705 1.1801469845563135;-0.48193671992770831 -1.2907349369687706 -0.036414417108144928 -0.42804233364342253 1.3170945641939125 -0.43530769282639542 0.69069712702148878 -0.10650056753833037 1.4268199412165326 0.180390428784344 1.0940461454696064 0.77514459261901969;1.1796852536316218 2.7404968534658263 0.36779233156726843 0.25689514020787968 -0.54978961768794365 0.031794593234265096 -0.19970196059038983 -0.22758547130294321 -0.47083190276229142 -0.18390914918620735 0.47018669762312909 1.4420938303705815;0.69443987975790067 -0.30602945758226197 0.14198245792439002 -0.35123881194766626 0.45757447463975665 0.35076139088483532 0.18386098010813301 0.84833132802355549 -0.60429439107175498 -0.1961791875617494 0.27281769740021744 -0.24807506231790724;-0.74236288371047643 0.33119372135071068 0.84250933168406961 4.0317641486431519 0.29568697909861669 -0.010212012833439296 -0.13705111438272463 -1.4318743454651306 -2.4511644187568007 0.01453481609760642 0.11830543054844705 -1.1161070128228738;-1.2675505919078289 -0.79147832033380461 -0.48440203216249006 0.35845917287026163 -0.87303780053667224 0.50410474689976814 -0.88068376493481626 0.42611298941876508 -1.7158093809258397 -0.099111861615263822 0.052286236345509884 -0.92763873951123099];

% Layer 2
b2 = [2.3593853560864608;1.3797207035038352;1.2804979211564453;1.3922939567978361;0.40311756958342093;0.8875626090553238;-0.53291441573460063;0.10643980960367695;-0.32062305502153737;0.86708117778255445;0.74473576710288991;-1.2032525657245499;-1.2976759162164;-1.6183576099321295;-1.5896178554538165];
LW2_1 = [-0.33773137188498931 -1.6015603745449023 -0.31007940265799533 -0.054542113369868028 0.41690775306551997 -0.060103470729251401 0.47526537622994597 0.31880720744469715 0.85498977244899299 1.3022284203198629 -0.88730921412972263 1.4205767325934913 0.70742798649264516 0.94451437848083719 -0.39865109086002093;-1.3884270068340689 0.42946858267543564 -1.7259956791496252 -1.7162735094526584 0.29199218285688361 1.0278153658384885 0.31908058041299653 0.842762351581266 1.1252329714440927 -0.2309539328140095 -0.91122490919489807 -1.9454882052790556 0.56958714162505708 -0.3528608509862417 0.22172183371315135;-1.4698974701643541 -0.56759901874547014 -1.0744661016614305 -0.5441310804045959 0.43955095258323867 0.76036596253271238 0.33407977456657773 0.37402164156503132 0.85473751843156798 0.24355229652018873 -1.5055862144898671 -0.87229555685153415 0.56111837436548606 0.65638027491878681 0.93680742192797251;-0.24006308028289364 -0.65637679309389674 1.3848365533046227 0.071899341001700118 -0.013105899570993965 -0.39714804347423932 -0.055203921339138248 -0.82069757292469958 0.073667575484429829 -0.34292238846115403 -0.28016288656691729 0.028772117513824094 0.30549583892120935 -1.0948365028744163 0.29367814396137226;-0.32214368886032452 -0.62546131962758023 0.38115943141515013 0.55356189765167252 -0.36141624859337373 -0.12000644304406106 -0.73624471517923562 -0.72191888097589185 0.045209468930044856 -0.64508645140825827 1.0374191184397303 0.59407730098543854 0.21401013343076419 0.024545348391900035 1.0725606913986023;0.25659069932772094 0.043554133708752135 -0.75291166098107665 -2.6447067094884842 -0.45599199646845984 -0.97013193635676787 0.38056046068037036 0.83429112382818782 0.83006739328449441 0.57964856540484166 -2.555124813769492 0.49446638089660794 -1.4448131722223656 0.47918135149084962 0.43726948553328387;-0.10561755977452726 1.0103488885663774 -1.2807407942329896 -0.54312182665753395 -0.7871025868272109 0.10270228117044451 -0.7717371231615493 0.51856254454482387 -0.2138028645564177 0.65114833276765416 -0.16938490305484835 -0.3869250161254652 0.052240740481381817 0.23833393162579425 0.61680567501385652;-0.64183612491695841 -0.80089051671627354 1.9457752075507893 -0.087005769975889602 0.4057361675711334 -1.7516687749112174 1.4044458819334849 -0.57025053777817181 -0.69716798549525028 -0.22635575414485429 0.76992810439996118 -0.98209339071448631 -0.72540750460585357 -0.46028650605028348 0.80211713232869764;0.032717699339627662 0.012961381774922051 -1.0493217342655206 -0.5818615217186307 -0.16301479145139403 0.59188658236900771 -1.4191529422180218 2.256650461847356 0.3420769339786871 0.56652575499811597 0.097066347951960799 -0.18721233681493155 1.3950063641703632 -0.8289163319896713 0.087315788711265316;-1.3539251304744666 -0.94232600099349673 -0.98813958944244107 0.36458121044425362 0.15402990430951546 0.65206322030155184 0.27027268287082717 -0.45456698932736894 0.91811415577629119 0.66974912994997415 -1.8443338733863301 0.051831316539948123 0.5913112983153902 1.1965226492567984 -0.29342737809738201;0.12447581808149391 -1.87127430859989 1.7290010188995395 0.36414673922594093 -0.0062216166629490014 0.67020923290552292 0.096461217893974521 -0.60159739629183417 0.72351267839085032 -0.33021202828046403 -0.086085323764071978 0.48018830640636917 -0.81756845745391393 0.43328100317438789 -0.23634147534600292;0.79391061830382204 0.86950191628671381 1.3199746167675408 -0.57224872083731027 -1.3143479978084982 -0.96703938197673633 0.55957817192296844 -1.567729638354924 -0.58427156376448386 -0.54506413171783108 -0.14381076457927114 -0.094315777052113248 -0.4174838468556229 1.4939923338879515 -0.32594825934197186;-0.39001995756611829 -0.25213236480633183 0.71118730305484412 -0.45573664742527492 -0.78682436793712729 0.33036489046259665 -0.87449735602317502 -0.36864140338780937 0.026747474175349385 -0.11930770779188495 -0.36267126207194911 -0.1706219655927104 -0.2640144876189856 0.031563017697752729 0.31360255904431245;0.66412117230469592 -0.17605741489449647 0.57699722993082292 -0.1002886951738307 0.42302613131413858 0.3933167607739293 0.71008941655294899 0.24549615385955825 -0.36605659731629697 0.078962976645596386 -0.040935623358400057 -0.18917695349273114 0.46518049591061006 0.051660618378030876 -0.45824210727172815;-0.82167957112386314 -1.0392482750442684 -0.31809065394210623 -0.060684563291608068 -0.99012390667888162 0.11668843380401459 -0.70065839139460884 -0.27752346310403092 0.21191598502489531 0.28282817775198266 1.1983545523443704 0.72095013792756679 -0.31378652934085444 0.14971420083166523 0.70863702851437727];

% Layer 3
b3 = -0.64016540016924117;
LW3_2 = [0.61990386057668811 -1.7742453576935029 2.1104801831315072 0.52672024459958433 0.68332675784628583 0.2248850346027762 0.97235491883746927 -0.51001431939212583 -0.6823419423718371 -1.6921669676336459 0.3677705972099049 -0.6864180968558502 -1.6270956579621025 1.3612166602205162 -0.42085057250820179];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 166.666666666667;
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