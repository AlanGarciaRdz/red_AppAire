function [Y,Xf,Af] = COTlaquepaque10(X,~,~)
%COTLAQUEPAQUE10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:14.
% 
% [Y] = COTlaquepaque10(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;14.7058823529412;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.448430493273543];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.9271758915769697;-1.1918538696170011;1.2567150696244964;-2.4899656842554156;-1.5599878474940998;1.1812758852990128;0.19940456435877474;0.52882768184867335;0.68741346896398192;-0.24274653770897861;0.68222420369865955;-1.3279485459372871;1.148850886659079;0.69276158764564255];
IW1_1 = [0.2034890783431659 1.1656942911666437 -0.12995740099011102 0.33543699985106279 0.080543951041786993 0.6054813605624455 -0.047885524420676687 -0.057074360133931148 0.036495700184038672 0.7108506843387995;0.15541925356876954 0.093624183552466794 0.33009970159826951 0.49754954210158403 0.42351387307608102 -1.737815936227129 -0.12666857554764602 -0.16252311575617598 0.1636258074624829 -0.6824783229620609;0.45037001973543073 2.3186998310444489 -0.30472238018003112 -1.0106896307734923 -0.76954279886526478 0.54442199866941121 -0.53845307499527162 0.20103858680472117 0.50679767418337318 0.37858513773736818;1.7842756802155675 -1.9060740218031438 -1.7243903485208436 0.27207563820489311 -0.87444258428024313 -0.15298405132237292 -0.44713187850275304 0.20404831341391158 0.36842514803734294 0.8919716095871536;3.0225663160227443 -0.51781143939798235 0.061095773470132203 0.55185354934461239 0.16733995018525327 1.1333591203340088 0.16195121747895383 -0.049056951669007261 -0.72885628306344685 1.1220257317546696;-0.095144887796917779 -2.5655198523978795 -0.72704558547395837 -1.4242608456307149 -0.30300441979637327 2.0686290453775471 1.2958915628119438 0.93262897824712654 -0.55083480515312999 0.23725570584491504;0.097089335337567056 -1.6477221061063514 -0.18460652343350367 -0.52746833183426622 -0.97778007353832241 1.1152892406222144 -0.35166796365886233 0.041822609261418633 -1.4350683497936847 1.1233138089162644;-0.33621377826862409 1.4057920854843737 -0.44663687245352418 -0.040756882692116629 -0.18482212915688118 0.70742030474723394 1.18726497991298 0.074314170283655945 0.13108846794594009 0.11321589077339991;0.42481709541598506 -0.22109933329887568 -0.029981690067525553 0.25191540386535555 0.37228147922119881 -0.72174090268710789 0.88839288133998984 0.22415800867889071 0.26712772612312874 0.77850309607919699;-0.063754527778507111 0.14901550157525048 -0.26350680841480384 0.35092105533549051 0.27645546664885939 0.13244432296392883 0.9842686536541998 0.16605751786865117 0.16482809069052889 -0.68810503215606633;0.19373568973122965 1.0557560227666016 -0.71969037677822922 0.89907270863699063 -0.50286899956959663 0.42040846641905327 -0.90047779752240731 -0.83914637133691805 0.155839106561595 0.61217132229979876;-0.10433578719986662 0.7469462179391323 0.48551471445820615 -0.21324934972457879 0.1367685422019688 -1.1157408354884346 -0.35438560555761761 0.24315947556122175 -0.04324176493212091 0.072579362057268143;-0.28974397696541904 0.20129125011750659 -0.49310944393326916 -0.46140578011486971 -0.46855893020311701 0.94903451400238026 0.72864384920653957 0.2901093292623293 0.15763249044832012 0.68683014393073816;0.81237388344820183 0.30247233303201498 -0.34157580487472355 -0.26569497445455925 -0.56820053754968669 1.4324395390095974 0.026313605850919613 0.13392755176954899 0.080431859830441488 -0.77605938584219158];

% Layer 2
b2 = [1.4581192721923173;2.1848877684782835;-2.3617712655427088;1.3170320706096887;-0.17946620476446284;-0.90199403555684188;-1.1045300720633835;-0.26026120950193893;0.47758007119161244;-0.60299134351832273;-0.66481671094340478;-1.0391281216083634;-1.2373705858772248;-1.1187187732041732];
LW2_1 = [-0.38100285064227657 0.1169910097134671 -0.5639074769378003 0.51703714143168777 0.52004039754017328 -0.92564167030961664 -0.13022860519333176 0.83695466954331454 0.87186840983964142 -0.93602089949567258 -0.40540524153754343 -0.098148068971935773 0.26822520338381184 0.22416402948229683;0.78478281160758923 1.0966532267122959 0.20156736125227281 -0.4345361463306136 0.026912946063559682 0.59066813169505195 -0.0073453345591877588 -0.49302346327373803 0.32391184862985212 0.098383554671732612 1.2679729792065515 1.7784122057217164 0.54402715823638559 0.44189703228548877;-0.26048401359800999 0.702034438486972 0.33899204876198435 0.41011851073098077 -0.59342460782637874 0.44800084517033784 -0.1980950954955942 -0.25267105611357665 -0.18191811268275596 -1.2928131339264894 0.32818019111336078 -0.91676521692659829 1.3313462308712565 1.4489734387550146;-1.4479412516435155 1.0515692054802972 0.037937462090392032 -0.191604086160059 0.038101556861330987 0.39231517604376392 -0.16528991694125045 0.39533870254281794 0.14369766809167525 -0.69198808441533843 0.40878795263275319 0.93856146205514801 0.59995878386729207 0.34458538635180713;-0.62245556327559892 1.2102961313056642 2.0607124366299097 -1.2776164935623056 0.67906642389561478 0.61057157192388878 0.21276515227468884 -1.5344178375258501 0.28996783283750571 -1.2299708146770822 -0.89227935711769646 -2.6838859460271522 1.3050530844358683 -0.69385929474851216;1.0446151661941214 -0.50704901077822684 0.025466541889348156 -0.0097686989103133986 0.0093689604827310383 0.16144651999451026 0.26801591548290282 -0.42189828821286152 -0.91864059832882972 0.9476906089019852 0.0081359714478490726 -0.082754225631559694 0.09103688865672975 -0.23887126646207912;-1.4791454760903386 0.24024032628117317 -0.13572423372399567 0.32087025922372081 -0.20186109689376397 -0.82371599110966953 -0.067007668149339436 0.14937337617594521 1.1105280998443812 -0.12965711208499944 0.16414620450329589 0.71788279599373761 -0.80601068623265448 0.49880276784622801;-0.058445368214701303 0.021728328791339256 -1.1280998089671821 0.71398399374005128 -1.1794124391815628 -0.62898270375120302 -0.61956796860217589 0.81443825118281454 -0.75239952087113371 -1.3338106252245465 -0.11485616311764502 0.66921199364009276 1.4577207169870257 0.085903109603018127;-0.48729339083124801 -0.35588858941763674 -0.043263266527710502 0.23625600485457615 -0.42978847827819505 -0.28786900477505328 -0.32414165029869896 -0.31290754391054965 -0.93265065502032829 0.18883404112146632 0.053189469424866742 0.25852855647620798 1.0223346779520952 -0.61793521919958538;-0.22057799613079826 -0.62112717404678108 -1.5493769217642093 0.28912855920670749 -1.5605893682338576 -0.81234240026556226 -0.49458730166254278 1.2168849752243145 -0.075206720794237181 -1.4718898306390404 -0.41481181077584478 0.63749309826197853 0.42189792213866228 0.59204328493049629;-0.028827822144847463 -1.2314312170687831 -0.24143935373141079 0.22742476069726325 -0.9224423318713294 -0.63913194876288904 -0.86764642211698939 -0.61747886056230317 0.37582959088520868 -0.93580235519492483 -0.38640806665121652 -1.1227293527462412 -0.25991729613128539 -0.21964245649316058;-0.87742887516948176 -0.9130446083886643 -1.2414356686035311 0.055393885780564735 -0.7828548160323 -0.23380752934027049 -0.60722771692147259 0.28313840736646578 0.90919330322407976 0.0051166552194538981 0.18704515637056929 0.55629006816912208 -0.69642716629893753 -1.2616859360006236;-3.7934317534328135 2.067911672482758 -0.2662198624096897 -1.0959026807238772 -0.56312802786451033 0.28693985693550011 -0.21268696565578363 -0.5100150171950556 -3.8994385894425818 4.3592930697772569 -0.13375655286303847 0.66925370399705808 -0.96458348937582017 2.1745437747222525;-0.91438641756206263 -0.41824823007048439 0.15569886702307859 -0.12090780106802002 -0.9848742458181966 0.44436884742435057 0.17584403998755255 -0.21933815817234456 0.56557138196205237 0.41132544324625248 0.2429703751745772 1.3102107880918206 1.0898648111176534 -0.71836186564790039];

% Layer 3
b3 = -1.6617663765834672;
LW3_2 = [0.71099459809208054 -3.1123500071538026 -0.26406603294788122 1.6218006050669049 -0.77942328637614411 2.0626373598621579 -1.8370278746767494 1.1721617716464234 -1.4653834373828454 -1.1702036081606324 0.79996704689638165 0.46212300704645276 -2.9975568788724787 0.19867497675652543];

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