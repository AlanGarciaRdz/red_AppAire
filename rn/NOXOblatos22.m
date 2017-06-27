function [Y,Xf,Af] = NOXOblatos22(X,~,~)
%NOXOBLATOS22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:34.
% 
% [Y] = NOXOblatos22(X,~,~) takes these arguments:
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
x1_step1_xoffset = [1;1;0;0;-10;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;4.05679513184584;0.195790504160548;0.00618238021638331;117.647058823529;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.6920227848862357;-1.7388186626733231;-0.5001732175201512;-3.0341028916322932;-1.7592141406290902;0.47772058349507057;0.32240399607345382;0.23894649444935301;-2.4740261321237025;1.6422211140288152;-0.37196780320777778;-2.0181670217886758;0.39235547942070415;-1.638384094739278;2.8995171710875152];
IW1_1 = [-0.014265264440893393 0.69199740741123106 0.73304750119845064 0.47331159636561138 1.0704750050473195 0.66232016543827665 0.72845642738369909 -0.094840991190175417;1.5438110989787286 -1.4460760253814438 -3.3116126471354144 1.7981371384465616 0.76467140441534709 0.45523287073997099 -0.17491785862540069 0.077424346530934357;2.0062503425453477 -0.98178450679974028 1.4492094716076058 -2.1757803650826584 1.4071694464604576 0.11068655355025515 2.3607886886849045 -1.028177559744617;2.0281558530056469 0.013855477097270901 -0.036267588017533374 -0.53038020827984866 0.77597152468802122 -0.71000929017709968 0.36949424043287721 0.05942484225234447;0.1056924673316029 -0.9493046289156013 -1.2374858249314629 -1.1357279763924197 -0.87373939617520047 2.4265503186912847 0.36689765530626872 -0.60417355609612677;-0.94398388039919345 0.78741334864997881 0.85800126773659557 0.49895989559096865 -0.24543104416033126 -0.28573997555265518 -0.26902944039047644 -0.042089022116487546;-0.39156325823982158 0.36967327271016592 1.481561297415982 0.33156269993346016 -0.80255105279179795 0.38331135955560147 -0.73190039115303329 0.2627281766217881;0.54985477513426895 -0.88574257659180755 -0.46765806536642684 -0.35459036449809889 0.34311962916845296 0.87632530335128678 0.50328598156518867 0.062405763939330387;-0.74691118907615284 -0.10947701450617819 0.26161973413130574 -0.86633162384200602 0.73577693302044977 -0.63276912531464424 -1.8403418772226516 1.2825908141411642;0.44342782193237057 6.3521981028281251 0.10408736675268968 0.60519765729477293 0.15617982165247932 0.12110829518865991 0.051083474928232772 0.21166569615254377;-0.82077094776941917 -0.28809005312095637 1.0513053347205497 -0.36965260683776768 1.532983625734037 -2.1855638048928419 0.56793656554086425 0.73571084562567535;-0.26449280286339388 -1.3275740087424546 -3.2667247096062288 1.6893508570037383 -0.48879978529368867 -0.33354957709333083 -0.2770058731841335 0.063019516003150561;-1.6544949307655048 -1.0359816258401846 -0.74037719121026502 0.56545852322241852 2.6557977732802573 0.062548782810330952 0.58192032742224042 0.19134147510365401;-1.615591051802014 2.4368208911317684 -1.708489148457812 1.1309628128607889 -0.071629783811690856 -0.030429489506471244 -0.78692971647647614 1.1360029992537515;2.1584239058484416 0.44115365267416073 1.0231891996758171 1.37635300054693 -2.0447375805210481 0.64770970882015622 -0.13791534935954064 0.89229167191169545];

% Layer 2
b2 = [1.8911541551272191;-0.89744265929893019;1.2391229038718214;-0.53306643044831048;-0.45845847672380302;0.4132643834910279;-0.092620417297990032;-0.81610265708406993;-0.79761558004547528;-0.10101539347811278;-0.49811302499175159;1.2618354239405298;-0.86204076388851747;-1.6745093765360097;-2.5325114294101247];
LW2_1 = [0.76785757025665813 0.79464135590808582 -0.48119683508378208 -0.086744555550395036 0.61598447440452309 0.034942761301523517 -0.68487143555670427 -0.077890218813201226 0.80355447931621526 0.48426205519830601 0.38019579666670378 -0.32202920856138362 -0.91225595403735715 -0.75403003090824727 -0.71451245165186639;1.566955379255186 -0.93860177402842659 0.30174044836282177 1.4044754246456688 0.80230449521677882 1.1889755898905783 0.43529629132802899 -3.2028339165939452 0.59775728916487314 -1.1161713848728763 -1.2516013042193754 0.30929776326448555 1.2423698690503471 0.37718611385159773 1.0694533429920012;0.44232491406644181 0.15823385603577059 0.14639493464985293 -0.55663266231948372 -0.053430454035202996 0.3929859049849575 0.83512590899106531 0.13190706695859805 0.04761414684702521 0.88815080636670962 -0.21840450203978712 0.47221549627617448 -0.21297744781286063 -0.18548621037741217 -0.38419379932416192;1.3150042737036172 -2.1863121240371033 0.23491770532710157 1.9305941615126798 -1.388514604970392 -1.0611706692405121 -0.82065446527897501 0.13487941151017349 0.50537117657130659 0.63203619409370337 -2.4985915087326034 0.65945797890710056 1.3177620484549981 -0.63979077595857148 -0.095902926902965466;-0.062835902112745423 -0.58523800841363927 0.41641903904115951 0.75256693606178249 -0.43947657872835993 1.13323071713449 -0.15525625525591297 0.3832646258122282 0.40478023018698817 0.56279008697817756 -0.44398532335146534 -0.069808050575200536 1.0056595156665675 0.0063952983010203586 0.73390334173063054;0.3228805826443078 -0.68152650052697616 0.018977970188026334 -4.3135546691069484 0.4987098530742512 0.81629744791802583 -0.55759224490848402 0.55177691914173033 1.4881740221135531 0.98004878534743112 1.5885939624285759 -1.0432565885321727 0.58139829686168831 -0.99577538576593561 -2.6335047367025726;0.14011931189281773 0.39740026124910871 -0.19522287576860617 -0.64826940963491553 0.00040896169936620059 -0.9353847061126499 0.77042713760886627 -0.22214555877616912 -0.29244890586967576 0.023782475140379421 -0.054532293881337825 -0.24204710826633363 -0.71293315480020192 -0.21452020032592894 -0.72268537097948271;-0.72899846991968476 1.6123959592632195 -0.47458051388070555 -2.1176815181113446 0.67815793490690635 -0.038842141748291537 0.52276042483063556 -0.34726621044049261 -0.63304299592707824 0.9500462138154403 1.9438390267260881 -1.2349023265566745 -1.2776942851577933 0.23935337953187152 0.61872418699959941;-0.061401773197221274 -0.57561133557131472 0.067188517876830306 0.67103104926234902 0.11280967248084919 -0.80173466430738694 0.0766352336506817 0.39332850548070997 -0.32567148376255545 -0.67042230480949061 0.40180610060992134 0.34298669688821781 -0.45256070385125413 0.24855261108290314 -0.96359957219859504;-0.50416382761635425 -0.16429044162109277 0.49113622646330735 -0.066577081553032089 -0.80214924610312721 -2.0546465040409441 -0.87952171577017879 0.98493914683260231 -0.58533210409205716 0.27055936878516756 -0.25492077408980385 -0.43697472181549873 0.32632524063853252 1.0504410086504472 -0.4036500374767435;0.42698459252335907 -0.66110639624833389 2.6998632262525608 -2.708326560558028 1.3579744373870768 1.274942884031866 0.23565540585538455 -0.59754505651030465 1.1756770343281726 0.54881560260104234 1.0091056582751885 -0.21009057109035756 1.8065552823876598 -1.7291464002281984 -1.8293950813958617;0.47492012070965633 -0.028944622856940345 0.39461739523098938 -0.14470671477130417 -0.79082302028080398 1.4537885185666253 -0.23069021673656542 0.051499211103543691 0.61190696542448475 0.86083240169523878 -0.82154166235037474 0.15941812509389497 0.76828414948798252 0.067264368477591527 0.69507019531010772;0.10913513706039253 0.32111401832424075 -0.22037609663495539 0.28222210019943372 -0.29226810903584627 -0.72666967441050168 -0.26071825292538342 0.54789400041619352 -0.47886222928658645 0.30739533499500382 -0.44844503751617254 -0.87885375160933443 -0.98080039177582445 -0.28975960690701313 -0.63397673134747234;-0.75196469949740152 0.49285696789407163 -0.071766369063231861 -0.8574897901078008 0.14070001899531179 0.69250530399434607 0.33275953856935808 0.14926679531128803 -0.052799127489973681 -0.25122517795466814 0.75846380479882614 -0.77554780803584389 0.082637606873025751 0.046226940315468687 -0.13425924664557609;0.21747381190773071 -0.53772653911950374 -0.32521002658723042 -2.6608342739035793 1.6089085081182446 0.16188618181311332 -0.038335484566735287 -0.17008920070603606 0.23512723348386036 0.01612077795340814 -0.35298883501792983 1.1074785702220225 0.61857665438274345 0.041013508523127018 -1.4785312898501379];

% Layer 3
b3 = 0.11909766914009071;
LW3_2 = [-1.078396864311465 1.3426378314076644 2.2993788886502262 0.54808185921530816 -2.2495185476842918 0.67351492976842764 -3.2393015745330533 -0.64058502354311386 -1.6338278324003106 0.70744368870508667 -0.58952699144872223 -2.17485388994728 0.89384583165658105 1.3745096126438343 -0.46317396197870941];

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
