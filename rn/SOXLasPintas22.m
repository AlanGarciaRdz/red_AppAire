function [Y,Xf,Af] = SOXLasPintas22(X,~,~)
%SOXLASPINTAS22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:48.
% 
% [Y] = SOXLasPintas22(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.0179856115107914;95.2380952380952;0.0558659217877095;0.00576368876080692;0.212765957446809;166.666666666667;45.4545454545455;29.8507462686567;24.390243902439];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.7711238567291729;1.4618355603296176;-1.3490884266309588;1.291638321732079;-1.2360060350351914;-0.64983649383880948;-0.77352127003134563;0.20546483898756387;-0.21261761507958271;-0.22992898274105861;-1.6883178459287056;-1.1463188996121227;-1.4087502862740722;1.7748451969881549];
IW1_1 = [-0.34365049921248814 0.24685639784022489 0.076677573880221936 0.059014823463159387 -0.015611043351998338 -1.0241342569378491 -0.41379030256828359 -0.11043325118795867 0.17824987070971773 -0.026568581478372561 1.5878395993853689 0.46885064061866066 -0.85944583098959926;-1.0081332280829629 0.17321552512004429 1.0125217475324246 0.56362354687393523 0.60173412443320451 -3.6807634511394896 -1.3625662272953338 -0.223311913803872 -0.55791658350296214 -1.6747939078985652 -0.78356220923835529 0.77132851953661596 2.9760966556097781;0.56010055163416927 -0.056161069568012575 0.59078317413390768 0.173986445931501 0.22563275698486218 0.38201020015007447 0.22692026502223739 0.30909500401290529 0.11457077687509064 -0.37489129148281253 0.65664493366240351 0.68361378524740779 -0.31419127758387727;-0.75502097917413513 -0.13328221875327723 0.4046805695901321 0.18185899674774039 -0.29687250501198176 0.15743955299856369 -1.135059698724231 -0.070921137250867169 -0.07284065050000614 -0.346044330033415 -0.77215186406725955 -0.50913585640467873 0.87939931922878822;2.2766850923251645 0.07509083370299649 -0.21995231484673752 -0.048174208403588555 -1.2456420928846652 -0.12790273122746035 -0.20310739799933122 0.06917766935716646 0.34658193431408046 -0.36506767432354231 -0.99305848901561344 0.42305287628339455 0.6152476399275606;0.69719022654476248 -0.067219094572922231 -0.11692886576854543 -0.31793410347817841 -1.7005306925965284 -0.064230387921181298 -2.1129857058207318 0.26092928473141824 -0.039203216132264906 0.14851134123790835 -0.80127975998474521 -0.025514496268056103 -0.21841622070718628;3.4077111468207115 -0.12160006878202856 0.20112392255295369 0.7419951529501988 0.2503177150173948 0.12796963183733967 -0.64455305909609462 -0.77033455137848872 -0.12329452192009858 1.1062904895854442 -0.67806463889550506 0.38982426756673944 -0.72145921499153021;1.228843852385096 -0.23208258545998003 -0.41095610957893414 -0.18674980624375914 0.41219903500585392 -0.66735931243565749 0.50556530826582091 0.1559496625332866 -0.37967621919865452 -0.66136943798308667 0.21913693215234639 0.49409795378055216 -0.58238315086182169;-1.1737279449601987 -0.08212361041588942 -0.22248180878560395 -0.6294653450014509 -0.32132211539659516 -0.70050681937858816 1.1084126972366566 -0.13318559817464659 0.067355832418253561 0.77001616123275807 -0.59161576746326117 0.25610013555543798 -0.29980452065996638;-0.49709752735569851 1.331886662677819 -0.46328357187062874 0.8114776268528715 0.28498603273201611 -2.1966867799114689 0.78346801218401185 -1.739675367417882 1.7344716025385409 0.63487314302592257 1.3619159506779546 -0.34773864746341498 -0.43014168511438639;-2.1174709034319821 0.038502882296228037 -0.52750664061094266 -0.052469135752060803 0.40058822057272481 0.75495938616734126 0.37313617795263332 -0.074276854702074638 -0.15317401165162381 -0.57385739480805287 0.031850798231549841 0.42230995680095695 -0.15255632165009458;-2.2729705012866281 -1.2069514862123416 0.10557209386274692 0.43364321816313428 -2.7580057722401579 0.1385227873059392 -1.645343012767009 1.5777879339320089 -0.52253288905460604 0.80064112309892788 -1.1297581858578229 -0.19331009077383332 -0.36542776476202621;-2.4438585074618269 -0.37584960636061809 -1.2349246910041398 0.4523710092482589 0.86570111948752615 3.7408961582061622 1.6208840495965531 0.27946949864117104 -0.18458304899967479 0.012736729780460497 1.2149367528656889 -0.41974806270677445 -1.876239878529617;0.17736135392482 0.43815190573428553 -0.27228128542073876 -0.39999572257924632 -0.73688830316949516 -0.46311260361942019 -0.87240596927022007 0.12315705749512275 0.54950345496406328 0.15274184895952217 0.42618167644275112 0.51297006066176998 -0.55211530918047813];

% Layer 2
b2 = [2.3771567668544988;1.4707624783382187;-1.2439328530470222;1.2483322121214075;0.63703163616233738;-0.051631487644131835;0.18200930438355506;0.45033899383884313;-0.65719215564616651;1.1035742782895439;-0.83283691632035872;-1.2868722476672514;1.600584225588833;1.5712514014814158];
LW2_1 = [-0.62267018787279804 2.8123303057184761 -0.11668656252095348 0.11181879135234531 -1.5432046978785314 0.60068007591704042 -1.9001799766461887 -0.87018256091306112 -0.22082948657112525 1.9289855328749426 0.78249174647306707 2.9508016930465057 -2.8523196231502421 0.65946386235646515;-0.16958623973906364 -0.50212874845618316 -0.68803317551511634 -0.47893700296258951 -0.68150983151581757 -0.0058624128615075537 -0.65920336110330235 0.20787159652218121 0.27606175898353758 -0.58618547894085948 -0.601240698282133 0.3799415593956707 -0.31421543365396909 0.46527102790964636;0.6203977163138068 0.47734604048935858 -0.58726514963627541 -0.041709794527804225 0.44942007260609079 -0.22138463936252609 0.50698714931634803 -0.096980124453319411 -0.12279884496467992 -0.022733539602638485 -0.88335921340252888 0.07794842521006852 0.65789177928658638 -0.67059556432745715;0.13833635327264346 1.0100397387294311 -0.41515410698013622 0.52082858311874758 0.12898237618108604 -0.19158096803703017 0.66649529648862738 0.49595722810098009 0.68691828600611349 -0.14762711478019702 -0.403581294552604 0.30433844049398467 -0.66989370594010111 0.28249927313428513;0.29624566727350965 -0.32574296848463696 -0.77584092091098955 0.58003722058963081 0.12847759273811649 0.38302920976016264 0.3739086366153534 0.19254385853959133 -0.84637350101026498 -0.32239117887781921 0.36778372300277545 -0.074656466389814893 0.25253678530075246 0.05942129965093234;0.65727410119670104 0.040720113880372291 -0.46675298445146557 -0.71139900456784277 -0.67113582394182314 -0.37931737897125101 0.77620466472530825 0.61284829720139788 -0.57022207545455517 -0.10148799829596121 -1.2195658688510962 -0.31282238516882244 0.18247984318133459 -0.18408727812198492;-0.050124932965429192 0.05089682585563117 0.28091978947304475 0.077201419066518201 0.15627448299135371 -0.02029263915583597 -0.12879175628770562 -0.29765618407917765 0.38510902212916626 0.21992490436497644 0.32770216017817233 0.22521089939560796 -0.18239919839225607 -0.30976365154975644;-0.40378639033509389 -0.045055033454710916 -1.0494866220835315 -0.045612259129793602 -0.70706746421000466 0.3025859557265983 -0.8136656685416026 0.73029630340563867 0.38110545076715313 0.18927793029330128 -0.780644816625789 0.210721201633013 -0.001642202401325136 -0.3050199408133904;-0.80793967585492121 0.65435194400183228 0.62040268143236932 0.39915821988931705 -0.45682189270910828 -0.52606549667289082 0.95348131300328831 -0.60087342568393887 0.0058170922225215778 -0.067948654081645937 0.53906592416309562 0.001011419944856165 -0.21864982240645792 -0.26516137873563461;1.2491168474199992 -0.75226116598259085 -0.23149005411617687 1.0887448863677816 0.15524388841127923 0.24778145015105252 0.0018955360712212405 0.2563629343258671 -0.079896877795035057 -0.023801548900188582 0.89526435757626499 0.36267686069004768 0.19437236028348312 -0.58410128436439801;-0.23798178925111904 -0.14178296647990196 0.70517742348032941 0.48617116263381266 0.44847025207700386 0.71234978845825092 -0.59095165218585344 -0.079963103445018252 0.42322484060508148 -0.72105985385452709 0.58144139741500089 0.36412565858597445 0.68105800950710427 -0.15081141137387336;0.28642375038617157 -2.5559585136423353 -0.32137945005752805 -0.43508590997487245 1.3855794352084745 -0.42840974492083445 1.8146913578562802 -0.046456372022946814 0.20466056020679013 -1.7728997608443104 1.1183645870668668 -2.7439232062929273 0.90804613175711379 -0.7311329146729576;0.83126544156972115 -0.22118830454955909 0.27059294106954246 -0.66336075830838137 0.77051307811477809 1.9826447314251487 1.193416792716588 0.050857821174379848 -0.47257792423827411 -0.049935447585882982 1.176704678700458 -0.28548974105860653 0.79928314304849601 -0.36966520274068165;0.66214232961359187 0.59414150805231969 -0.42174996572569962 0.2110235852741644 -0.26662928461263236 -0.18972462612943647 0.0090329602222274964 -1.0692550070583311 -0.25523280018400352 -0.3305903151766153 0.26429592840737581 -0.047873251310278551 -0.33454951561141377 0.23736664469845006];

% Layer 3
b3 = -0.74733676872828902;
LW3_2 = [-2.2424478794796343 0.56622048219129817 -0.48451141644623952 0.46655183992747767 0.59742089678433641 0.69916511291348005 1.247298359453695 -0.94131910958742049 0.78332163720126702 -0.52189420111685114 0.16849290217790225 -2.365781113427194 0.18907822473765676 0.46489348504163047];

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
