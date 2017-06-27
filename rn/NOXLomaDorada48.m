function [Y,Xf,Af] = NOXLomaDorada48(X,~,~)
%NOXLOMADORADA48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:26.
% 
% [Y] = NOXLomaDorada48(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.00280033604032484;0.0179856115107914;0.0558659217877095];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.6447125003625536;2.6902365100742531;-1.3961532271385553;0.75849512642002648;-0.71625292065410662;-1.1333722582054788;0.35003862071741337;-1.0828505791949019;1.2309195413024512;-1.1795887716264042;0.75544492137221098;-0.79617362477895071;-1.2190146905227672;1.5735201277062238;1.0224914547364423];
IW1_1 = [-1.2218841684305379 -1.5225061009571188 -1.2712783341192213 -0.82365410913948367 -1.0975227438803807 0.061379474094416298 0.54693352931900563;-2.4210487972813293 -0.16412651235960435 -0.39250078992896975 1.023168358480494 -0.56438738080304029 -0.090325839955475287 -0.15492061758198206;1.8061339415471516 -0.88631743641246308 -0.64825719594335207 -0.71762245820773907 -0.95854385409527032 1.6241113168457506 -1.980042459661161;-1.369465822646686 2.0374087678012596 0.84778538132275483 0.24229326217626229 -0.88360627780862133 0.78686520196202592 0.6019135632473781;2.3890128779927493 -0.52281792788446724 0.85445625265998637 -0.59702006002072239 0.73029478640191758 0.022108487691055924 0.051050509566375232;0.28577417160345497 0.59490384613282277 0.23114461610844239 0.5318679732452386 -1.1440457708328151 -0.43588691447432565 -1.6247203516502682;-0.51010217389553314 -1.5448800526761408 -0.18480423874866855 -0.7749519290215402 1.2329989193003799 -0.053365235789352268 0.46978069276017276;-0.68380314495921812 -2.6218922762190635 0.60887241302608741 -0.37860366288058084 -0.23288417338930625 0.50209176773099096 -0.15306565396578981;0.75562530473505729 1.578074324036024 1.0043544253354486 0.36748487196577378 1.7307322990923977 0.65269827368362154 0.017391387982710955;-1.8599568898663932 3.304512248510266 0.022538734441437849 -0.47908208846345413 0.32991267301708538 -1.17254990295348 -0.47741043064565142;1.0250467758969903 -0.75647366346751777 -0.68895265342677148 -0.62617438577290496 0.45380841283214901 -0.56433523678917263 1.1673143481408654;-1.7464857317153308 0.74617356445918037 0.78878403596592794 -0.75399847465570691 -0.13603871761604627 -1.0712468773962296 1.1713565604185201;-0.29968571830301233 0.67404847713903604 1.2296467793203489 0.71915813471441026 -0.017626187702321071 -0.76794846810342066 0.59942342362728773;0.15764741458012679 1.7446764217230439 0.19438689081472046 0.10925526354142297 0.031419437640076715 -0.04835717612486462 0.63916382992491294;1.2353468299112693 -0.51129510725767824 -0.46144468879244666 0.81417602484386453 0.075465271347410517 0.32483863316829215 -1.2534692964175862];

% Layer 2
b2 = [-1.5632140844500324;1.2650667862691267;1.3598866716267939;1.0009004325855269;0.80119247987671394;-0.37255889543783616;0.16598550765928466;-0.44475151542346075;-0.39788210859325079;0.27535614084748228;1.1714876523055644;-0.5921380510191655;-0.72135504446415444;-1.6326775083297462;1.8139114778862402];
LW2_1 = [0.53357645895936323 -0.057565286651098196 -0.38897442656607772 -0.79439574228161081 -0.87122619562720194 0.57215282252264787 -0.92480066870149302 0.083724939011274341 0.27354623018952862 0.86244367335250272 0.2394926958713372 -0.68350850739884539 0.80095801250269894 -0.58757690402615759 0.25522443267318284;-0.015668371433445575 0.4151843841165534 0.20423332998224619 -0.89791435835521916 -0.40114126475066675 1.0297576206850607 0.49414066004861934 -0.33374061116582771 -0.47100867400751145 0.73858742281911394 0.42474790394100082 -0.21970825714645259 0.3725308601227541 -1.1868268457305005 -0.58592329343049787;-0.26993703612797709 0.0013976149819886451 0.30482649323131833 -0.51140617973619273 -0.24513251066846214 0.082023116028074008 0.4259658665223684 0.76167320367402336 -0.38624652664713083 0.86266748552256556 -0.10577259680073098 0.26836043507964613 -0.75988955660610091 -0.51114747771298463 0.47169968414803248;0.19107200203851102 -0.026625021412752477 0.9270082358058449 1.5321317345651053 -1.0795355562889033 -0.74649326706732577 1.6360733009767856 -0.032368656331325275 -0.58961040863130709 0.13515481233489379 0.24966400271191175 0.67092236417529449 -0.19265282543467133 0.54241492722188067 -0.083459821390143435;-0.65925783390736703 0.9831678570346114 -0.20170617514816994 0.14476964039296186 0.78029883531484334 -0.064563812214496433 0.95304361698352313 0.3848290773904901 -1.2726429383613067 0.34337742658276399 -0.1876672436944381 1.0914356756890682 -0.47398755280853494 -0.60945044754757294 0.46991767404481821;0.31430191050559442 -0.66846041554029434 -0.10624509569939983 0.13103899307394595 -0.5865257241631513 1.206396979581045 -0.79903036863054144 1.8385224469992696 -0.61628293270375445 -0.029018481735670783 0.18746691279809974 0.29509772711657556 0.32344211551005148 0.64502623391616087 -0.58990928518044217;-0.4588574685582088 -1.4647054539826898 -0.39876857811745609 -0.31120282955157291 -0.48742812174981276 0.015272636703469462 0.43598305089162992 1.2380626895551687 -0.61941754899785584 -0.62856821388938655 1.0478741870382404 -0.26927767724388679 -0.1128255857444867 -1.9388329355505032 -0.12762242794528342;-0.60732272438569512 0.52442999359174469 -0.22267039027690436 0.37113947850496948 0.15738731231838987 -0.54173879289348392 0.59319779310796794 -0.17394510582244588 -0.66130782832565249 -0.2965368811627207 0.06100008576564557 -0.59804909361871617 0.64727588860319851 0.74921319150362953 0.30357363504614709;-0.73306452763868457 -0.012851544484843214 0.14906968081170346 0.14601323207983696 0.0013987360861413096 -0.28091048150404235 -0.78519193453490377 -0.50753667599256758 0.27511228342676791 -0.38902931275130109 1.0362342787870666 0.47832234567168352 -0.22125141619208075 -0.46992383369128271 -0.0082215146087818349;0.29362278607675391 0.086329948532000128 -0.31877137236757846 -0.63026935618788049 -0.25616268246075397 0.33049823545471918 -0.71653698262562382 0.80117803099006557 -0.31366352885313858 -0.70893827499053164 1.4848760680331445 -0.61491670570231438 0.25967608988581303 -0.0075577577449292901 -0.033563962704862602;0.46852622905879965 -1.2136097263990557 0.041296265247245972 -0.72820531891306217 -0.14721567690684348 0.31666583272526755 0.020434199405679261 0.79016518308060724 -0.19772378958898401 -0.62905100093314092 -0.71330309747165266 1.0433819098786508 0.13357003068134929 -0.049322808342543475 0.60988279287659075;-0.86168148438356107 0.36112228607917535 0.36856773545165827 0.32294718996765509 -0.22842946502619196 -1.1335767170439284 -0.55580978949732363 0.16203247528285197 -0.35698453235020333 0.66953054189645389 -0.36162254778693381 -0.28384369288848066 0.18562307546131959 1.319759500201948 -0.14363430839291033;0.38027232253120047 0.74825645008723618 0.50175077805257728 -1.5818899533054767 0.058035557618871865 0.30520748924353608 0.52000386197150328 -0.085082232928695017 -1.2037780589481573 0.95437813495405144 -1.1752470946784661 -0.10385443446697927 -0.081441293665431347 -0.11350407529372639 -0.099933253204794611;-0.72203308450152459 1.4635992796279143 -0.96534171903250954 -0.85037442417534026 1.6997627017778123 0.73530698292946506 -0.55580950048335276 0.11716515243987748 0.39867650629410023 0.67695213475881466 0.15840251540296016 -0.55837163043934013 0.81788109679211496 0.29887147661624058 1.4215706776133328;0.55350579567250024 -0.20161347546475944 -0.29631996499407037 -0.064565367825872549 0.1582049444438024 0.015351119183316003 0.79074842990914707 0.6609820484041149 -1.2274630990977453 0.20880980682455222 -0.67349239157046681 0.38505577765402171 0.62360127310311109 -0.25744687054022836 -0.53109993738587491];

% Layer 3
b3 = -1.8617825652310671;
LW3_2 = [-0.83101419767405726 0.74658478593691213 -1.0192837274874187 1.5172831117068948 1.0419210354528063 -0.61119454604088108 -0.56554190386658099 -0.73829934500250338 -1.085719127170889 0.5861480651761275 1.3141749538069094 0.98044713822472285 -0.54604228175490743 1.6703910573518719 -1.109523149238091];

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
