function [Y,Xf,Af] = PM10Miravalle19(X,~,~)
%PM10MIRAVALLE19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:19.
% 
% [Y] = PM10Miravalle19(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00382043935052531;0.0208986415882968;0.056980056980057;0.0063552589768033];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.25522373399694309;2.4731024100979928;-1.0136308927080373;-1.3942158586891478;-1.8721035021123127;0.26966772458845589;-0.42372996520829076;0.34638240086698086;0.75736231792428799;1.9155708308588557;-3.326049179966617;4.0440757586540688];
IW1_1 = [0.016237792024394203 0.23988565637814468 -0.20896375653079977 -0.46875741243276331 -0.33236258748771336 -0.62442411588585811;-0.74770315862936787 1.9927003984798568 0.098637180041249897 0.12024559577677255 0.4783698381346122 -0.061709200562285738;1.7432944393050733 -3.1172417003394748 0.1987605784399763 1.0395242164905647 1.1431689156500919 -0.19309014142989334;-0.89716796380437613 -0.43919186326703452 0.18185454649616928 -1.9732512638238111 -1.617973677002317 -0.059605338315006445;-1.0971097204058424 0.37670235956484505 -0.78623237998921935 2.6583607244978067 3.5335691702066376 -1.6480314999426757;-0.08753685012988266 -0.099146802469304865 -0.7064959232496667 -1.072216417912542 -1.8260169127582346 -1.1921896187647312;0.98242398540805254 0.28974772880729166 0.01441107298513933 -0.64161160551162622 -0.59918218727744577 0.30053159159768567;-1.8486519439564573 -0.12242522720699946 0.0083951786105139394 1.0025801394634726 0.71250364777990904 -0.27085998453054316;-0.017445660404649378 1.8102027248839987 -0.2703187369394115 1.3369094429130186 -0.24416977259556588 0.30841480135753491;0.76013284003666903 0.53397432345998075 -0.14755804548456952 1.5124846841413175 0.9334215361706224 0.53355125093624822;-1.2095301987669171 0.0088817398820103741 -0.24307719376263354 1.5142811334665485 2.6231543399063151 -0.92883321628098636;-2.0175204949488199 0.36549816128381951 4.0470022635833622 1.9266997536172199 0.51245168100723626 -1.9031962519373875];

% Layer 2
b2 = [-0.83093380175419262;-0.33531426346849003;3.5894075238187795;2.0916912504014338;1.1681431092884624;1.2110447158078013;0.88889556261884139;-0.81804440610141971;1.0890987014094984;-0.99165724195507687;-3.8218497824670918;-3.099834037918372];
LW2_1 = [-2.9810038135435759 1.6181714625192898 0.40068268569869114 -1.6562130428230857 -0.2498799532698083 1.2883659418701077 -5.253745998082251 -1.6806402080327412 -0.68761249865342366 -2.2255215622070432 0.39354640757685594 -0.62361244788656667;-0.003769055675151213 0.21810716133797872 0.31907964457039201 -2.5759982669443255 -0.025893273298229644 0.4286616853866802 -1.4375132102720436 0.091678405306757499 0.35415431773744827 -1.9838226129935947 0.8037991996817625 -0.43392092072310495;-1.194779735430088 -1.9122072747322409 -0.41915034975783133 -0.94264570996855657 0.23507278954093083 -1.7691374974062697 0.7057325356694204 -0.45389023084546892 -0.039236379310768468 0.82495684682710269 -0.88076171722125396 -0.30977642522136628;-1.5551279952976238 -0.60427463602329923 0.047063010758809989 -1.1398524689416185 0.66595774506988947 -0.21004944487407545 3.6676835808528923 2.365196874365989 -0.0049541113234089079 -0.44409037885294012 -1.8208112794228342 -0.42124435601071147;-0.29199866675503083 -1.6296250707607816 0.051262972503371737 1.898555659011711 -0.49427367739218564 0.25171251585341747 -3.2214764315970901 -1.234538740084187 1.3138303422638753 1.066880783436823 0.16612473096678096 0.17786406908821087;0.56897620505032576 -1.2833089785934804 -0.45415131992732427 -0.3238719317434518 -0.083123511480355183 0.035628893194524662 3.0072922425663449 1.5823380847211934 1.1511785383697237 -2.8524153351648835 -1.315286720757197 -0.22250536163054846;-0.016317502990926484 -2.4955188668461292 -1.0677436826380975 1.2105986183219235 -0.73913300651514835 -0.1775199203020037 -0.60101717248396036 0.69117904895983751 -0.83067366932704578 0.43333153569394978 0.48926077618165986 0.15414711113061247;-0.24488404942962264 1.5874607197368609 -0.24230183707001524 -0.97086620111221344 0.6521641555261859 -0.30296000573549836 2.5415761846135356 0.47771189901508371 -1.3080490846519597 -0.22295862310389392 0.024638658829599584 -0.022827323462502019;2.7000485581953333 -1.5315612423734235 -0.38013720895231679 1.5381561122032641 0.14856402582448941 -1.1169793769137635 4.8528863698684832 1.3606744444921555 0.56340721403136562 2.29843900381411 0.055025989460385005 0.71850684558535372;-0.80571754572435261 0.078611106655858645 0.70526357378133575 -0.94901816027670838 0.87956023012735152 1.530331758782032 2.0588271247939574 0.41240219117982896 0.16750441340438779 -1.3077099978257403 0.17288673105181307 -1.0063302294064382;0.26662708110749067 1.587292282151888 0.755554900325771 -2.3233169812468972 0.045957547244566813 0.54536905343589315 2.6476600221266162 0.8168906959984984 -0.98331076421597541 -1.0203907482633625 -0.53597649265039504 -0.032922474950254105;-0.28293329208758011 -0.33496390892818795 -2.0453864244074351 -0.2854163993815636 -0.45855805342420924 -0.86791989133045944 0.42580713044116797 -0.21397049937155002 -3.7548494410028121 1.1137555748190118 1.2959914627835747 0.079968794578516481];

% Layer 3
b3 = 0.19723509726604219;
LW3_2 = [-1.1871209497684179 -0.60173647166540922 0.39536093066432221 -1.0010563866193931 -1.4457501221796996 -0.52566153286704254 -0.58923660624125307 -1.3819609859061028 -1.1653461733946515 0.50702336910695933 -0.98443983130305712 1.400153184990222];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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
