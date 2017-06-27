function [Y,Xf,Af] = SOXAtemajac7(X,~,~)
%SOXATEMAJAC7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:22.
% 
% [Y] = SOXAtemajac7(X,~,~) takes these arguments:
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
b1 = [-2.3850851935563413;-3.4358682738219111;1.254563089033615;-1.9839381431547218;3.9145971614057991;-0.70338521502444706;3.2639613396468246;1.7871810265479251;1.1890257549669276;2.1704520729397649;-0.44883024927981885;-2.6718131739521565];
IW1_1 = [0.29859041125938146 0.24939306584028992 -0.087623227339518994 -0.035302621067720107 0.007190700816349864 0.34015785792671793 -0.086626916952610905 0.29709180679561253 0.057925388885629647 -0.37963295019928978 -0.29162029392886518 -0.66925050285893128;-0.19596030398950873 -2.8236817231932143 -0.75431123179762494 0.19542511937507231 -0.13932113074539768 -0.16662256352398669 0.39934131857188565 0.45468754211919071 0.19493520297316094 0.031501893162741233 -0.01282091034194815 -0.036531288774787195;0.4344105239136426 -0.34152342700953486 -0.34665038727153669 -0.38395363035487995 0.27060110805229382 1.1068109204322569 0.46474159829360551 -0.45935742772149069 0.37794525367736415 0.39181933488114312 -0.38594478836245294 -0.18494777732643977;-0.17232230294726558 -3.6420985386499032 -0.3062000664394991 -0.035146823851970647 -0.064152339931052293 0.16891323492466043 0.11029083681127708 0.27021485605913065 0.22811662616597864 0.36737876565526556 -0.030475715736162819 1.0777954420521962;-2.6023047861245892 0.43244597938444823 0.85638698783265699 4.8239383087928296 -0.77240999270646526 -1.1838184705834018 1.4452242335936907 -0.27999591657373363 1.3251865796825173 0.26578608950387528 0.21305766565494386 0.29280557094261894;-0.47577208448885105 0.91823823266698212 1.0889026872539034 -1.8089985304842613 -0.22130063008773626 -0.093978172685392602 -0.82851535864691261 -2.0163385946475429 0.58337394188626257 -0.055087593148403807 1.1839230762568962 -0.38685523337843702;1.1245253999400227 0.50004628632926451 1.7241721765167255 -0.1299350757786438 0.068182327359739309 0.30066234992550761 0.84907870454472056 -0.2668346551183044 0.71395694104901919 0.60381748900438548 0.45282095864052196 1.100026902546823;0.41980645890504326 0.45861664249246392 1.4100403952923153 0.056903381424602488 0.00014932311935277401 0.095323207270872512 0.2843649978883197 -0.83582277254053161 0.29703636637803377 0.41777800617792615 0.69250379925802907 0.67905024407556858;1.7373527223035719 -0.18107755700476919 0.86841464709868377 -0.78509750638685505 0.39188961669967431 0.49312738009668494 -1.8760970991527184 -0.6821975205656895 -2.6749524391478197 -0.37401052562386194 0.49641986220194378 0.81111572693364575;-3.206435689961761 -0.090259553983160781 -0.097475740568755312 -0.82803391964336548 -0.69938539329804428 0.071637990906015442 0.17529027067732586 -0.48983111180303623 0.44656778424630611 -0.27036954020481724 0.24219162162429958 -0.44600587229710925;-0.45879241262783332 -0.66346692582932998 0.3259169116598637 0.29283949835864798 0.50427282027718057 0.19782553897805258 -0.74931091605037037 0.85037230619266868 0.00042723102843587185 0.13343165544024146 -1.3339505957574891 0.90002975575114996;-0.1264728891413352 -0.10875707033863899 -0.23539828105797642 -0.35801750456676273 -0.18284473511673083 -0.14262099459983849 -0.019395122180269314 -2.2403914812611574 0.30321182365201321 -0.081729212352050426 -0.32992407476866764 -0.28129416163328513];

% Layer 2
b2 = [1.7504155766391281;-1.3911766493441093;-2.1631492239430536;-1.910319047798634;-0.71323867126044638;-1.1039792524231751;-0.2224441831385254;-0.82722431646907812;-0.48288204226820453;-1.5764354493755908;2.0053219881495759;-0.95388520884624517];
LW2_1 = [-0.19555657934891052 0.11068830488587555 0.30096230477660874 -0.10986337050140874 1.1504253727447227 -0.7997989491717854 -0.038754715498227336 0.098767134616033397 1.1021107529510896 0.17343851358801179 -0.40295806269777512 1.7119840400972044;-0.18991339816562017 -0.46169681262171147 1.0145819977685957 0.67155103721059217 -0.93200008369462284 1.8630235404159448 0.430084424485146 -0.72845172734421171 -0.36878288850288649 -2.4268425991734723 0.60308574165352491 -0.86881802907130068;1.8611763978228095 -0.74986002152271547 -0.59913244124766107 0.19049429937612863 -1.1810964639998407 1.1599699761354449 0.48139096322659425 -0.78899917963222643 -1.2725106120870748 0.25494948419319136 -0.51659963249873586 -1.9435492010269138;0.66374809694430714 0.50587995337929337 0.26339938872455859 -0.49978747696856185 -1.2592325653298018 1.5426054430384855 -2.3868305497841491 1.0295437726317394 -2.7375515062151363 -0.70626871050905726 1.6888148806422971 0.053041371334815741;0.99187774596089662 -0.91278044221604226 -0.4544031620987059 0.56793712904756632 -0.35774677131963983 -0.003428758643978418 0.27380124265548106 0.4588302057508426 0.19351920449291049 -0.55096655850785869 0.14905734167275089 2.9345677062208932;-0.42219005992453057 -2.1845151283615607 -0.49928933825882466 2.0808174170158678 -0.32954397163553412 -0.13089254113772353 -0.503570948695096 -0.59162786891779739 0.013998466171021851 -1.3293724300093437 -0.16655866299579561 -0.027789042090720396;0.088061238318891316 1.9199394463579034 -0.4998484602915515 -1.2747986574383052 -0.31560364246707395 -0.37413638326876392 -0.069183740162998386 0.69980710185733797 0.17783004062973792 0.80382897741841275 -0.21224930934126071 -0.067571322535889683;-0.62387170558010363 0.61153871072758126 0.47029497910037193 -1.1781034427855543 0.49556938380790394 -0.47994970030376793 -0.067596493489063547 0.67587224642473853 0.0014177789381056814 1.3485581448589397 -0.36122886644288849 0.08255349071542116;-1.2060890386410115 -0.26929012129896718 -0.33271958585813627 1.0468147442462234 -0.68894294551364421 1.9560256223569754 1.6019081296778774 -2.1696380166471108 0.00084028272163108424 -3.01333824531299 0.60267173805828789 -0.31419405607032652;0.38549523796673801 0.59690075852451852 -0.50048703368495762 -0.14494822827290926 -1.5012261985112307 2.0258045811265464 -1.03308582890977 0.94181553496929926 -1.169774632025228 -0.31942649391056788 0.5644577972191418 0.38560522633077587;-0.35331517811900459 0.20182886493480889 0.35885603724574522 0.51621239913842931 -0.075875392181778897 -0.92168493130765905 1.6852091236751712 -0.40393205598556398 2.6467417914540103 1.3643271239085086 -2.3945805065953571 -0.82855633232820014;-0.92153133097605722 1.7543137352231037 -1.0492389222910155 -0.90012675780094742 -0.71083450862496289 -0.32651567218671868 0.21775453176199311 0.45434602257086992 0.33053877813871557 -0.36640021465549993 -2.1773785718762575 -0.22524561826843864];

% Layer 3
b3 = -0.1312166013711904;
LW3_2 = [-2.0876147295754266 -1.3781089882385498 -1.1771456155456623 2.3366491441624824 -0.38651945719897191 1.6275144762842957 -0.55101362224899664 3.1354789339016387 1.7264765819668166 0.79892313406501203 1.7875355741234322 0.40625468858247749];

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
