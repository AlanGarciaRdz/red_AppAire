function [Y,Xf,Af] = COSantaFe16(X,~,~)
%COSANTAFE16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:09.
% 
% [Y] = COSantaFe16(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;10.752688172043;0.00341273633199099;27.7777777777778;0.00632111251580278;0.294117647058824;0.448430493273543;166.666666666667;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.64125500075622921;1.4643566289116823;-4.3287432472810528;2.2717138334792728;2.1710138134034889;-1.2109810155031935;1.2184466848872992;0.079030819978985478;0.30807172052752402;0.73137482798794928;2.16835850642804;-0.84663073825579371;0.42872831379123066;5.1526051095279159];
IW1_1 = [-0.18697831136113674 2.3473576817093367 -0.14403926502369951 1.1196400522647634 -0.12551366427856631 0.28847264250225568 -0.038123182969156635 -0.1201194046897847 0.54266756405026673 -0.35539945358900416 0.71015378375727589 -0.078877510407093787;-1.3667436377222424 0.98548690644502113 -0.86190739805840999 0.45484681404206051 0.70978864516894835 0.93329093074882685 -0.48027716840974793 -0.18529226730050496 -0.4681360736228003 -0.71857106341720944 0.5659236153898779 0.83307965478038293;1.8220415160099666 -2.0141884738354774 2.0944862651935812 -2.8291672379965975 0.73437343720928039 2.15380098095345 -1.968926560092116 -0.27279962089902005 -2.0649711976466802 1.5110203620535101 -1.2488238402264107 0.96035281739746958;0.27438225083116424 -3.4226630111145862 0.011484558175122792 0.90989167776296764 -0.33783865981035455 -0.12450203489056819 0.32163886934076225 0.060661411685908655 -0.10453627503742269 0.20086220165260243 0.40305300030563401 -0.32443897319166781;-2.8391789649780264 -0.9223017724913456 -0.60674283074669644 -0.79137838486023593 -0.16477808576599159 1.435067169725488 -0.50167397642106515 0.33763502954027258 0.29075119351790374 0.2249685441650682 0.36875783468744799 1.5717100860621778;0.749551449987652 0.90896451776972953 -0.14238551968470992 0.28983595672965146 1.4893163725277063 0.08304242263411854 -0.9384363415970991 0.058284868281360848 -0.13568591495431237 -1.046981529015522 0.24800187574266627 -0.74184075939626504;-0.2504361188726057 0.10171130936404962 1.0519035553735745 0.27985661917030091 -0.16623593962574373 0.46768151901724209 -0.42129770729081673 0.45505241685513026 0.66056162746000791 -0.37725433037088368 0.97478286740943099 -0.48029114661098071;-0.09200684452480265 2.2155669154003741 -0.48218741435578588 0.47936335296012733 -1.2089657794303672 0.092081229658086003 -0.078693595998077528 0.29933210019221723 -0.10545354987456036 0.26776789762701392 -0.099358389857942805 -0.08382689589944059;0.31892262822676376 2.1032749188088706 0.37927696979231368 -0.069943791820048701 -0.98399745864727117 -0.08151880459083298 -0.10443099526753928 0.21968806516172856 0.0020837775619083681 0.30324974365743579 -0.2178807235172591 -0.010001831100111019;0.96062227876478923 1.6850676502924784 -0.72904363025582575 -0.17476983112028655 -0.21300780893616308 -0.20551620048517555 -0.24428451698111159 0.77951696151876682 -0.34188182421131913 1.567630461362487 -0.18828745600493252 -0.19972904040061526;0.11848674882526034 0.20081402417753444 0.053617799723485973 -0.30995506206703211 0.264179164757471 0.43417401012318074 -0.53734973182940171 -0.022824947913221361 -0.101723258616723 3.0084845430265275 -0.039354363576944544 -0.069822862234648134;0.38544427014075611 0.60096951540073063 -2.1695967843895256 1.6408637197767881 0.059450516391062212 -0.67906568489037233 -0.122915637061851 -0.58553601436270164 0.29848212263001711 -0.61670081505232444 -0.32286744975655296 0.97365723743401311;1.399585471053481 0.6115964334587326 -1.5069578364867235 1.3694663830280078 0.78793312598195298 -0.093470170793405055 -0.10285626486988156 -0.16171103446438767 0.22719520879485866 -0.32239009632106752 0.35343201163634858 -0.10389562200266171;-0.13850523006649321 0.45325127525605102 0.95335472562457524 -1.0667267316527618 0.3042522968319481 0.80509142029223568 0.54880097832606434 1.1170525560097362 0.70562345961028206 0.50354201843519952 -0.003246318579923945 0.0036936582775281643];

% Layer 2
b2 = [0.7409964278767065;-4.0016707338868116;0.65087817022242411;1.0235865592280653;0.44425006372567677;1.3636766388754624;-0.79280661267516495;2.7827876083088596;1.2221263984170452;1.5951155447691787;-1.5563972604355545;1.7237511403363504;2.4856257076687416;-2.5592684189019641];
LW2_1 = [-0.43869940975870136 -0.16035852164999648 -0.23843471304577585 0.95862907258207108 0.24211354659642326 1.2739056649983054 -0.18768398452994553 0.94656558032276705 0.73791873460819168 -0.23171383706184367 -0.0026703874304261199 0.49490182865210214 0.015936252275573846 -0.047245585926765324;0.67881490916397302 4.0604320355266301 -0.082362206410175359 0.25387274261776138 0.018151249383478663 1.0045232960627353 -0.42627069667313627 2.5543900315699677 -1.9047723605608147 0.13458383229457882 -0.19894812417336943 0.15054468399370949 -2.6034221880923427 -2.282484823815762;0.036944973834975824 0.74578739741840328 0.5166705325298826 -2.3211527904540192 -0.75672158200685324 -1.0125474587266414 -0.37379288524336618 1.4816968473981835 -1.270895549152848 1.6633476452465821 -0.54212766119889089 -0.86448078203675549 1.1869712168153339 -2.3686561466434655;-0.23681412263834967 -1.0288566745056493 -0.45829138349349646 0.59626461140763476 0.30760960644250485 0.84513564042312883 0.11983038126802627 0.57931442599039273 0.55018918569334607 -0.20545033438135948 0.20157122058431787 0.41892892114747454 0.44422136478202229 -0.01973570070369858;0.39093815843847946 -0.40103980980134946 -0.13357117063306495 0.27017077093378422 0.60013985880627108 0.91422693181877135 -0.19434888137554279 -2.0416830679060394 0.32128485848035221 0.72574881957728909 -0.47963024061203596 0.58061484816055908 -0.18230659566015647 0.85022809721733072;-0.28507722665737834 -0.58045672398947679 -0.46173946697524421 2.2066028591536577 0.5355945652118389 0.96171359127090628 0.65717375503802977 0.80968008200170027 -1.3967700176454769 -0.7602991769533356 0.59049455497176451 1.0034731511855757 -1.3507989099788567 -0.24170117713252295;0.083656655195700549 1.5013985739536235 0.72167343204354895 -0.57041766220010703 -0.34073815716047529 -0.33872054042556188 -0.19767422019661568 -0.35889016633655829 -0.47511933381359756 0.11677779263691807 -0.22096702823386458 -0.35235239136135499 -1.0669919635090968 -0.088687757865044625;1.9935384469730133 0.32710206691680616 -0.51783440042560902 0.81000472706157889 0.55712440223876669 -1.4187264319791362 -0.60822075036831358 0.12550963390875489 -0.18187923893429828 -0.18350290753824311 3.4622259409984828 -1.1734108064678994 1.8685819022979162 0.65064198827422315;-0.73477647115954581 0.3049587357984363 0.45650222015067271 0.33397430242241283 0.10587043533218603 1.4078906344290543 -0.41992567047332696 1.2151952391754453 0.72653005968787643 -0.33263631940335114 0.088452048785963328 0.55363397284864713 -0.26130037342849005 1.362025082703217;0.77903577786530176 -3.5817162496898098 2.219348163021285 -0.73551013815459543 2.20450013372739 2.7038008749949638 -0.70488888557154683 -0.17670037653511392 0.52268673775714602 1.8327098730382938 -0.99420659126332456 1.0891604797390695 2.1299633708816521 0.032121711731286098;-2.0757729820988815 -0.64374107596511576 0.52636373272569892 1.1687959672228581 -0.22785085528909182 1.8527650146050272 -0.079825134830116537 0.44020947566597035 -0.81658626178878146 -0.021734034330865456 0.63096862858826819 0.79033272766012552 -0.75551690883729139 -0.38720446239972023;0.45251278132505213 -0.13522135007758426 0.63049298851052527 0.15422485344064091 0.88619716481322997 1.1227995971978895 -0.25440858361166679 -3.6114086033125434 1.7703353088809408 0.64710338334535045 -0.48479850633019261 0.5510230840486724 -0.49712289424526002 0.51636267536596414;2.4989601069742347 -0.067383569497639545 0.027101580055139823 0.60700163369190197 1.2975307630363235 -2.1720371211582039 -1.5901961886055411 1.0385049166347986 -1.1949255089763182 -0.34744282013376904 2.115791919936072 -2.4621670798991064 3.4366144839120825 1.54007983084202;-2.8418573888518988 -0.4466217560936796 -1.2447826482871651 -1.6439078562006044 -0.12439273124598943 -2.0983204856670215 -0.034204754476007612 -2.2891256469015775 -1.3940666148835015 1.5874882959593568 -1.4577767370241888 0.0076549100120499591 1.0524854909724455 0.52748698059868526];

% Layer 3
b3 = -0.54478769308269159;
LW3_2 = [0.89657715212047784 0.51276101518143147 3.1046981005085894 -1.7712645283653174 -0.70390054029635507 3.0382338852838942 -1.2047258096348445 3.6231794458073021 -0.7064107788159194 0.082018868006744225 0.23911356335496514 0.49970369938986647 -2.5663318938242088 0.19384604372534217];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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