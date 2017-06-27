function [Y,Xf,Af] = SOXOblatos22(X,~,~)
%SOXOBLATOS22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:43.
% 
% [Y] = SOXOblatos22(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.1769972701859883;1.8705363150337444;3.1162113107844056;2.1407831545539131;-0.35104724869187798;1.2605553157455216;0.18178317851170017;0.70528546649581025;-0.042500195874428777;-1.1451334986284327;-0.79243634574727084;-1.8467984839039875;1.4832774048069863;1.982189953897336];
IW1_1 = [0.24741831644339476 -3.3237614840064591 1.4271721422752908 -0.61363295054653755 -0.22702965650752324 -3.6554176314925515 -1.1199273564527228 0.40164025263029596 -0.11686850670746471 0.95085600927003633 0.10764601285378907;-1.3338077593088327 -0.949723057554548 -1.1598224572295739 0.16047898389142393 2.0068164395721042 0.81593611391408416 0.47102152552491294 0.68172315577192788 -0.21505994075741364 0.17921678434084237 -0.20796692598880989;-0.94571906383749704 0.074529270085199148 -0.29236584631672391 -0.60859749010653053 0.63640635489019448 -0.80462375501039696 -0.564344065745222 -0.096310204959581661 0.18757565734808357 1.0898422076139185 2.7549298982263575;0.94219149347074249 -1.2164798628983846 1.1258486654604909 0.063739379090877429 0.72723072346995465 -1.4032933711762323 -0.26543195948591669 -1.6944757430608364 0.17201011263790936 -0.71226491152289551 0.91736208797102903;0.99101069058797975 -0.31716170459414594 -0.84355600806633735 -0.61252233465581396 0.088785919365491628 2.0450427027293379 -1.0004512898966562 0.058785215615917562 -0.63682057780391466 -0.60061281092865393 1.0417511848282428;-2.6855212980238612 0.3520102565234402 -0.25348786899103043 -0.007661056080520175 1.4823562476313299 0.46727176249063584 0.94311268537951087 -0.20176298451913136 -0.084114655704270347 -0.34679037189634937 -1.4967480862334788;-2.9026526262188446 -0.6868375711826934 -0.88984464648385853 -0.49911657307304141 -0.29527268783252852 -1.4972363960948529 -0.17613289952844141 1.2733440097085078 -0.033438376320668754 -0.46838750785151445 0.51517438742914845;-1.4185413815891317 0.68222893446542665 0.52061161264106826 0.82294057411329957 -0.94282625452873203 -0.0080487810311431398 -0.57508852701181512 -0.69254126040428166 -0.25082321832939597 0.043933443240840836 0.50579580348146902;-1.251169948392951 0.24513411691227485 -1.3593524004686999 -0.78201398376324249 -0.43151733865684588 -1.2893610029581977 0.21894959753332044 -0.66208408269153585 0.055832913677305245 0.16988189134631948 1.7633866378468848;-1.4883347898681802 2.212249846150339 0.51027201650507992 1.1710939828483919 -1.1025896628202054 1.5717772421894489 -1.3205863267277698 -1.7238970369861817 -0.31750839334017789 -1.9651265547505152 1.4693688477938702;-0.86423729798156934 0.63850086901095993 -2.4674022381049427 1.2123263833387119 1.4617744106029662 -2.1266770765144538 -0.65880488718490038 -2.2232783246950629 -0.56420722694113801 -0.3444757528502716 -2.6387569042743917;0.42704853288997552 -0.0026522860526546317 0.26056169961045195 0.015104675381181452 0.033263354835207704 -1.4487915070339066 0.29061739197274944 0.882511025219054 -0.16050018884296244 0.25242404042945876 -0.30990754330869857;0.048412807889351268 0.29547215742286242 -0.20621242782724614 -0.7242845296324113 -0.5145618623056476 -0.6362678142174375 -0.74852289113590431 -0.36434911567671019 0.71841855616956796 -0.62615201656005059 -0.48877889405008756;1.4398477961338894 -0.24840407758450583 0.63272434548495005 0.68731539551108689 -0.69446483530074055 -0.77395944807835071 0.41325708389531762 0.66652076506550251 -0.043273841603039702 -0.31054352771553245 -0.92092368473006281];

% Layer 2
b2 = [-2.0206764793156577;-1.5413503514755733;-1.7111692442737647;0.26646484511033824;0.87854367880373552;0.30060070510361941;-0.05501237341247834;-0.16530813757139248;-1.05476998837595;0.44459528760382566;-0.62338514829156999;-1.2861303281489527;-1.4814841268132515;1.2421951212981515];
LW2_1 = [0.35993296995325591 -0.68207355376290846 -0.48909760969606497 0.22552471094592746 0.25649561306881263 0.60379769609095169 -0.2131110318145501 -0.33058088726921137 0.69396079523128784 0.35800373002685409 -0.30207170002240546 -0.23629255618037692 -0.81043446292575905 -0.51940530944636187;0.23849959038708146 0.33848756087282617 -1.0028514266402977 0.10873735966289516 0.26438905926265877 -0.59640302843982751 -0.26141288667658574 -0.73213670612985149 0.97347806723579067 -0.17541359530832504 0.27134069391192805 0.003505894293638321 0.1862001793778649 -0.39692739609984257;0.20201934353062279 -1.1988824368158786 -1.5177863984955573 -1.3128094644912907 -0.69945810171321188 -0.72077599837647965 -0.44505664220424895 0.1294801398480305 0.32037056122285656 -0.95630043904107875 -0.49621230542610867 -0.46212229391003457 0.035258369796852401 -1.1067131218278112;0.16200238019901531 -1.1659698837796524 -0.025958421637533174 -0.81084719202250111 0.79417777254789146 0.10846021031803264 0.68223506052391247 -0.036634110429057364 -0.64564313409859886 -0.080620336581318466 -0.41985601549353885 0.11296164197437436 -1.1794824375411173 0.098073433434561014;0.20742589915072299 0.3902558116100846 0.56109099659172423 0.35964340512610538 0.032879552878253997 0.48505060462665334 0.36672336586012794 0.5715908384411964 -0.83906315117454022 0.49087427597779204 -0.063180122066411618 -0.47969216287549116 0.76492029143061524 0.66249890687943314;-0.015277757751718218 1.1585680443874868 1.3428867170536491 1.3624088656909734 0.55613494863945612 1.1989910791583864 0.25208681636807589 0.15035448240586247 0.9369593193798319 0.75106818547474652 0.57184601031859716 -0.72272517130484659 0.99664041993513375 0.42585509552692297;-0.9517172882295285 0.76854494273206941 0.11930444210088137 -0.8348516894258704 1.1624322651924464 0.28258855908498171 0.55842133578553421 -1.211195008498281 -0.75729332992606946 -0.64705735264675923 0.38601253912044287 0.24058876322661701 -0.354326726994379 -0.60436919792848121;-0.55291556406226372 0.050023081157455795 0.36343195529279948 0.030161803343191695 1.0212565771049804 0.94073457981339947 0.8415185708407682 -0.84241920336580989 -0.62110397995725153 -0.81390563606377919 -0.29453690917670788 0.46542384241783435 -0.40635574881544906 0.53033402989381662;3.4563769343174351 -1.7341253617061618 -2.842443543404289 -2.6764669860496504 -0.58929499592557089 -3.8882987942763845 3.157856409837283 -0.16973787169324553 1.640631010880381 2.5891055928248816 -4.0582226865426163 1.9208833615988554 -1.8388374800712244 -0.04230179770746173;0.36906021288463248 -0.065915741057649455 0.49736764090100472 -0.47762135488128776 0.18298315341132076 -0.20725992848216773 0.11166816291875938 0.027441687756786008 0.89277170190521427 -0.066745962048365179 -0.37031385793525745 0.78408140115315395 -1.0981787656623936 -0.4424937454799549;-0.54178841787362808 0.18557329367479486 0.35178644942482384 0.022602907037850124 0.85019079367985317 0.80517243986371423 0.67615710826597519 -0.76878427233989333 -0.58471493894850257 -0.66862931319529528 -0.12183148069762985 0.24456533735995489 0.43121772067215408 -0.16872413995395899;-0.079088370732867661 -0.46017996319576265 -0.16699199936611525 -0.33566055618917734 0.52964098886678213 -0.19618386517453695 0.3869346126942288 0.11516723706262999 -0.24481747628923192 -0.18504059551196048 -0.22046062839375175 -0.83793344940485592 -0.86453272153314931 0.11633474765017876;0.049453661364187988 -0.15729875572047411 0.58760997918256463 -0.078630242055184443 -1.658719841917857 0.41183819391633797 0.43562224703189584 -0.28933541107606914 -0.015680329953568113 0.13712289226590155 -0.8343840310214834 0.24194494868961144 -0.85338543933202415 -0.93022466469716025;0.28374020867643246 -0.14885010115904554 0.05065205942444552 -0.27775976104508149 0.1244229280265776 0.43270862504803925 -0.10723069010556309 -0.51382178570651638 0.68066258190145046 -0.061086128805761204 -0.07539752649114316 0.72055884808688275 -0.59254213660886224 -1.2744686134605774];

% Layer 3
b3 = -0.1038275222845403;
LW3_2 = [-1.0954008684796586 -0.06898209714409996 1.5540584811512781 -0.21621981612689284 1.4655234078874744 0.36668324671845554 0.1372672640600294 0.54844526440222752 3.0706036779034234 -0.29221502773072255 -0.73503567757245525 0.55053301072995842 -1.2491531495522308 0.46604063849646582];

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
