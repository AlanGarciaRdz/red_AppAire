function [Y,Xf,Af] = NOXMiravalle17(X,~,~)
%NOXMIRAVALLE17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:29.
% 
% [Y] = NOXMiravalle17(X,~,~) takes these arguments:
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
b1 = [0.49624155674131609;1.1662866399979328;-2.0194393013158995;0.92959186750207434;0.37631654938947129;1.9103025112285725;-0.53807200701894531;-0.94926402506611696;0.43302168112497813;0.030742497945732812;-3.5785704501383582;0.65965314258529739;-3.3431372309356608;2.9797055663636867];
IW1_1 = [-0.243834255034487 -0.45128455519636945 0.10996065318250113 -0.51386031975176016 1.5503734251002419 0.28435499062774489 1.7502767887691089 0.05353796481637773 -0.92815613100139194 -1.0621295848365058;-0.51115045529178882 0.30277648859214024 -0.26699956587918211 -0.80668069542555298 -0.19980503170504835 0.0089708055927439773 -0.36639630640301735 -0.23820299287977292 -0.39968057403394697 -0.12310330115441834;-0.28894535812404143 -2.5671514675631451 -0.026609081883153692 -0.22263838717687645 0.51214759525058229 1.5473600859688921 0.1179397454110353 0.23409970489017717 -0.23549490531724382 -0.58283621957953424;-0.58062205210109163 1.2567295365559916 -0.16139329618925025 -0.36816475793287706 -0.55763772886057228 1.0782891974437803 0.46336305546969114 -1.0325296247938427 0.1678787772905441 0.044035540577599119;-0.13913601641181281 0.2495801492752846 -0.31760668063986036 0.21018267888028264 -0.62963914729220272 -0.99642361491736642 1.2647209230129624 -1.3325981481152827 -0.087691707813750797 -0.68378184317747215;0.36011171050015306 -3.4032847411986555 -0.00037082779188996919 0.31371693524443495 0.83523541853875538 -0.88209845290532585 0.2598928466408077 -0.3831414485726693 -0.67637722610919693 -0.30187723803941591;-0.57122161169757535 1.3253765958420989 0.11001073376195508 -1.1673812537110504 0.50309419148008216 -0.34909412057857619 0.75188125217342816 -0.69028977583647977 -0.24097813443334959 -0.37015706264480019;-0.33633162696148733 3.581030238481878 0.9368804037439501 0.01891470484061638 0.33759242949018664 -0.27494472782204804 -0.094168196838028975 -0.12292816142523331 -0.57801375168976443 -0.12126279173807811;1.1615554025433927 1.2256168503767493 0.16843403991703612 0.25265258670710039 0.084729736010304077 0.35272855845709278 -0.049797590305594885 0.4206521561503615 -0.15272840898708812 -0.093702218226472719;-0.54177759266047232 -0.061278227007169631 0.27387800982061722 -0.087749739789973108 0.71321879745693928 1.6778362003377156 -0.48494159816611598 0.52234950856788265 -0.72720423941490575 -0.58418816962015507;-2.1376208974995468 -0.31380128251562828 0.29260460880310174 1.5012187131441779 -3.2639812092477278 0.089702467278183567 -0.10881993381677726 0.029865580560328116 -0.52160745000131647 -1.0476000160245105;0.059314346179965519 -2.2273833450550153 1.3410991595023607 0.43879033199454398 -2.4213568512991204 -0.22164130642290986 0.18094300304780761 -0.30245472391618694 -1.2698750049353174 0.56876675114037578;2.8507187361961903 -0.8176328441826376 0.12283543706505469 -0.21167020962045469 -1.574108982028035 0.03368469307712825 -0.66085219137153439 0.19104061580892109 0.67010239444859709 0.12434323487706922;1.3653519004113048 0.30489508119377023 0.46680434112304992 -0.25262628824483524 -0.67085134099266919 1.7280883607661077 0.19246613644481469 0.22975173010797845 -0.4219195599446926 0.22136013911177846];

% Layer 2
b2 = [-4.0143806162118825;1.5913248680917904;2.0181384327235463;0.60283467697386117;-0.14999225469546354;-0.73192808291317557;0.49521873681889655;0.30494992567920381;-0.60007430801683814;0.52408688703060713;1.1385035696381698;1.1867629517257543;1.5134343696815926;-1.45576795939908];
LW2_1 = [-0.78752905295572373 -1.5223388193094347 -2.5760814139612362 0.83069626134842101 -0.34716446398967926 0.44980579218559669 0.77938113114739105 -0.69952869267929929 2.6598638247066413 0.42337322626597756 1.3512888402756842 0.3945981520502051 -0.70878997043806802 -0.78963626024391664;-1.0503839049337147 0.11070214156796734 0.38279482262865988 0.31734103595366692 0.045432901689600805 -0.58197797801136464 -0.9214090083771318 -0.91161486545975223 0.097209655006450166 0.84396939922057801 -0.68899953556836002 -0.92488342019027125 0.1783709934733782 0.63021105620735529;-0.85871898381630463 -0.014360633878175891 0.21862125162180712 -0.613038856534319 0.11395159593821533 -1.0441751298587325 0.50392533029590514 2.149666444852838 0.36046645067013489 0.58383602453770389 0.3788142822098266 0.7269236862587799 -2.0266153693207918 -0.37480896997532431;0.20421435681388594 -0.61093853401198761 -0.88391886112875073 0.30868210320443978 0.27124050772344016 -0.67192245688068297 0.72130892472239838 0.30437899284118719 -1.9538095132421764 0.022363761175102269 -0.06728778705377142 -1.189564975966408 0.16199343932981455 -1.2190746608506791;-0.59450474125194452 -0.41887895329655817 1.2209046510102106 -0.99066736590756699 0.6968315559917313 0.48206814192497655 0.56105781923287346 0.35366016805437506 -0.13519432797901573 -0.67592842407233278 0.44789551210850626 0.42174336156521186 -0.75329005994278408 0.31465914283873619;-0.2609231538932652 0.29153471886694393 -1.530794768790249 0.56245503318416612 -0.019295188180847685 0.67182973491209252 -1.562219403265259 -2.0637437573584583 -0.19956308298846304 0.7909843609568934 0.11654920434946632 -0.68651354821865584 0.26605696212720048 -0.73682775589209426;0.058951350703999358 0.99562939408477613 1.2555184282173355 0.39587749479175899 1.4799831329192925 -0.18166635022377592 -0.26270039187179195 -0.11733907890062042 0.55715303630283564 0.015556308714032289 -0.24510898583717849 -2.1145958899010426 -0.80014824831272513 0.75786166285737522;-0.1739335465635482 0.53887130427268126 -0.53225932889120375 -0.31850102395265034 -0.057138074070884184 -0.31063160221710084 1.2448343773110431 0.48821722802854395 -0.89781874692744157 0.068787628402063428 0.4256879072177851 0.017288308045002219 -0.28430259100355282 -0.4437053870996211;-0.58913472617394969 -0.11613512630208117 -1.2424937379453125 0.11742153149789358 -0.85509958603987457 0.81342946225723634 0.32829148774794065 -1.4896151009478644 -0.57750105915555328 0.5910458922321814 -0.12306099432348333 0.27736960263962879 0.1003332968882119 -0.45371027711406875;0.72962145491105856 0.17573341371985815 -0.751087912194072 -0.93341130023598495 -0.49088314349763196 0.80413284298626464 -0.24505732069187863 0.14833437375732891 -0.87645826195116228 0.14482729360045901 0.87140916420138981 1.3340062249908655 1.1196857543978207 0.67913174547971422;-0.31478159158614044 -0.2263636125357277 1.0992294186056841 0.76099691778339784 0.19009675635499013 0.64698655574036212 -0.37017646084599309 1.3631835288318388 0.91448263856892975 -0.39850454650532208 -0.20991684747971273 -0.32432959269115502 0.011717325089521315 0.23376760218009168;0.46601713270411271 0.30200419488432056 1.4516934759443092 -0.3821023184412915 0.86301246908960616 -0.76417848502079488 -0.58111425242559078 1.5599487803369243 0.81325685911928591 -0.50794023313275072 -0.080303811086591875 -0.13885249529921942 -0.26062556046394292 -0.25416070754986086;0.5724055816926884 0.84947926082840108 0.3261472976568851 -0.34283228161387957 -0.23643604886976033 0.22530949980471188 -0.21154244352470541 0.93659217950889917 0.26858341605298003 0.28989657727933787 0.05857763825052581 0.43656240029286708 -0.68656103325269568 0.0066936761357985278;-0.86965729377685297 1.5310094012214233 1.2140977913527116 -1.0860085590482706 0.7943419400131061 0.31457363173422892 0.20705002037951209 -0.18776962396130675 0.079845772680437188 -0.71628482298184992 0.23228823844502799 0.4233795966838122 -0.7896638781148515 -0.23350936293563548];

% Layer 3
b3 = -0.097506017380416907;
LW3_2 = [1.5189620262931309 -0.46259800032745502 0.36872743626035032 0.22783065588158097 -2.067113506409969 -0.32568950301210708 1.422209807685475 -0.78020604496781132 -1.4712257274075553 -0.30966359453636394 -0.77405578524271479 -1.6543585257417117 0.28551604536925801 2.2149080612977401];

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
