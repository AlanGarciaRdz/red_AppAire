function [Y,Xf,Af] = NOXLomaDorada9(X,~,~)
%NOXLOMADORADA9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:24.
% 
% [Y] = NOXLomaDorada9(X,~,~) takes these arguments:
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
b1 = [3.8744720280350058;2.00330406570923;-1.5215961700246843;-2.1430090124504266;-0.51711125228407673;-3.5307909026158781;-0.022933895638828132;1.2171807192687414;-0.42511464400066395;1.1766544309079014;0.76340786505470593;-2.440464444548974;2.3369877995844766];
IW1_1 = [-3.1486178017877191 0.96631120026653494 0.0081305160296369881 1.2269880898949665 -0.38029483714811152 2.3566031453068534 0.84159823006795242;-0.36971166543606282 1.3386659608660967 0.20565035217693539 0.89020272228823283 0.07561111679330397 -0.10714590447471845 0.48241789814215102;0.69937097997660225 1.3051963586677 0.66926456870658357 1.1076980259073947 0.35823398941520007 -2.8606408964470158 -0.15482927427528265;0.40617775740797524 0.55082963698684329 -1.1244971729039923 -1.5787954135942897 0.22489651841404537 -1.2411594287876606 -0.58850135771920054;0.023346775519301172 -0.44558410875543408 -0.61055795895161957 -0.015497093207126958 -0.0044955224492792076 0.83820108029378193 2.2091466276978728;4.9276812928160192 0.11209614251309716 0.97266819217572009 0.47907528802857452 -0.40818638647761618 0.2853121385133493 -0.51558210018119421;-0.13585054607910721 2.2249747790227654 0.89502259761135528 0.75239420119879952 0.15600232676640013 -0.066457325288059921 -0.088189209338813537;-0.45169643903620055 -1.7986312889503513 -0.057461480581158533 0.35713422116786314 0.50668339457370348 -0.032194691384954316 -0.81550802648327803;-0.4585647873946288 0.50605838473017262 0.62805734870192276 1.1088956720183802 0.018401874934560771 0.52722349198591156 -0.68860106654411335;1.0042540284946662 -1.052528087560169 0.05667601096571754 -0.094634842263543573 -0.03163795921490594 -0.772993497613367 -0.72103608120701168;1.5802933624742326 -1.1554343575599793 0.40573707372213119 0.57600684876567709 0.0353999598135772 0.38792800017556517 1.0941926316584705;-1.8313906856804296 -1.4140953826669191 -0.17200186363294537 0.53530558281363183 0.15140361820741072 -1.0471023551426009 0.43401775346352289;1.1577003667692338 -1.4677554033316318 0.20023435160935202 0.30050133500514697 -0.77996553303491367 1.6964527460538388 1.4093211204470018];

% Layer 2
b2 = [-1.5317431247007416;-1.3529271327628563;1.3479709415602779;1.3743051188925786;-1.5047940034171339;-0.71164900234838091;-0.9353550719784155;1.5255253524299737;1.0745954489852927;0.15733018310392441;-0.60182878653385308;-1.5112013948719982;1.1144641620260178];
LW2_1 = [0.57162088078603646 -2.2912667554252835 -0.6968617246732367 -0.65729666247951413 0.22324219021225683 -1.1374701627026187 1.0184390688866454 0.6418809630702127 0.15146897740408216 2.0370912993731181 -0.37970846003666925 -1.663870137148117 0.23762503736594473;1.345627704903289 0.2569784746841477 0.92879157645908272 0.65464672454701722 -0.93721732846601413 -2.0113102418835886 -0.49167416671126657 0.80229045031394308 0.3946550533531531 -0.30865900217703351 -0.19918829701489713 1.1332895346999694 1.626372002534032;-1.677886162084586 -0.44862373978140585 -0.42246628246262258 0.63748697388225939 -0.50165575449146294 -0.31733810566720949 -0.20482973180918429 -0.65277090811014571 -0.17665483317077935 -0.26110689780329294 0.93453595704447945 -0.93043986979587612 -0.73207535405466162;-0.7485043338935885 -1.9012453996713201 -0.16088634548678615 -0.15075105473068254 -0.38914361328010866 0.061350025885149914 -0.58334879269003415 0.68642401710488199 0.554143680531617 1.1828926662212664 -0.052729334086242197 -0.69371911748977366 -0.34881542027232509;1.1386156954416919 0.63869951258136881 0.81198026058565376 0.62991305233875583 -0.70325325784085346 -1.6770273759808798 -0.10876441710392878 1.0115259343927201 0.84631585956433253 0.14895917777785941 -0.22417848693777817 0.27739657962141839 1.3156042103332575;-0.15622449473012101 1.2562992511163422 -0.63147716664033793 0.17766418337777465 -0.044483647068416302 -1.9442223765055711 -1.3267537981236044 -0.30139956050525674 0.75649731950600396 -0.78109699450148151 -0.50045324601443975 -0.69542693410003154 -0.22368296475289287;-0.64166852813961939 -1.3230505601933953 -0.730600866981022 -0.59506885794299913 0.099814754276984538 -0.55971902189823286 0.37825583328174633 -1.0775551957604161 -0.71824124032928083 -0.14158210741561225 0.32316223505647013 1.491301913915243 0.3848392888570894;-0.92305864445219099 0.11130260868378997 -0.36109009610968656 -1.0973109319475527 0.48728671698050791 -0.020434726779901841 -0.61534732599106312 0.84706882139049311 -2.048671693456082 0.54329715011791713 -0.81698612656368985 0.8703897515290604 0.062310542073938047;0.26360784987419278 0.38877563022095224 -0.3310502377123572 -0.27972280702284458 0.81085540159092129 0.21814833710718254 0.26892325271417233 -0.58205084958451281 0.76886945454427413 -0.095687742613952645 -0.12144035275482581 0.92728050543996487 -0.45522198828985933;-0.38559106321610398 2.1317049456628019 0.85584260402993451 0.50867294733576918 -0.51135423740636532 0.29325813684170876 -0.99443765454944055 -0.22941533027698202 -0.98742569315380746 -2.1959498648359719 0.72004775339579596 1.4659486643068937 0.22595018021581206;-0.53625005930489567 0.727183095326149 0.010108427828782841 -0.21637307603910194 0.78800550973045946 0.081037746445596984 -0.55738941509588757 0.07773106356855243 -0.45515880798218356 -0.4654548078889259 -0.061578977178500312 1.5586109838404587 -0.12138737603515878;0.26728182534159406 0.33962831712236785 0.34110079281498357 0.36568133168065853 -0.18415051821013403 -0.69618066525050915 0.15457440326129893 0.063640422163717181 0.12946096289055734 -0.64463703400280992 0.61423072881101759 -0.40973830871429551 0.11389774428453524;0.6047563660423052 -1.4704427086031702 -1.1249944668990679 -1.2167852069684673 0.61929374555472949 0.019203621315472104 0.12199320673567053 -0.97253256064010818 0.82350287205738482 -0.43122319758514727 -0.015107530444038682 -1.4205043180971435 0.69375525396889948];

% Layer 3
b3 = -0.065500957511644073;
LW3_2 = [1.082322555968118 -1.8945430545039339 0.3823751278235093 0.80063152741110555 2.5652482309886646 -0.24817895988880004 1.2219057253946177 -2.4176836893189928 1.1506688837089323 1.9311859967875822 -1.4316243858411573 -2.1711546582444097 0.29568311191181851];

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