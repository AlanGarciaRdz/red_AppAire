function [Y,Xf,Af] = NOXLomaDorada6(X,~,~)
%NOXLOMADORADA6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:23.
% 
% [Y] = NOXLomaDorada6(X,~,~) takes these arguments:
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
b1 = [-9.0009831987404585;0.34632665343257696;-3.7423673252561707;-1.6896814888451193;-2.5843266035839121;-5.7219867782077261;-2.677433041586168;0.56350085884862378;-3.5026014913394152;-3.4604167901356178;-0.43547156677177407;-0.13343072365889963];
IW1_1 = [11.23850468270615 -1.188453428861791 1.0529153388804708 -1.2641888324693871 0.23324278144569374 0.64955124790900509 1.1903156277256997;-0.63047826274601626 2.2408376489162074 -0.42959166576282554 -0.93322284929351706 0.1242215062721264 1.7254670297453509 0.052774155848997716;1.9370815825501657 0.56433188429916314 0.49788048975782795 -1.4226254074682787 0.12019154887386409 0.26356563127998789 0.69778112717616658;-1.0694760992482111 1.7984243640616848 -0.1741186108030591 0.78645815187935886 -0.66624804335019394 0.060676916453983765 1.0401994068268134;0.53304666746427265 -0.86240019137069202 -0.85911322362068276 0.946242250785294 -0.7910506940807519 -1.2248054173636802 -0.10731983753579449;6.2760474070135022 0.48689679513235201 0.57880397203360279 0.47557900967567845 -0.15783302036379243 -0.12698148066957143 0.56768229605973164;-0.75332099663442498 0.020331600838298748 -0.077773572856040821 -1.0248567133530395 -0.53671658423607715 -0.95647946989164734 -1.6942875327769564;-1.3722243370918554 -0.66523788154785124 1.3804608868533303 0.79910752043746203 0.65716922613747464 0.83270673103310866 1.3781234226966574;-0.019981535601383854 -3.39112000837377 0.61139931306371076 -1.2637513976551999 0.20152800849677935 1.5522511485168098 -0.77591442026600299;-1.8330283923069532 -4.4338193143324061 0.48855718790815028 -0.18673933032940232 0.021748185226470436 -1.0808856681216819 0.60164173196144111;-0.50022627772038353 -1.7555851486790259 -0.61401008107465493 -0.23386576814213211 -0.18221611758953221 0.12273305232661423 -0.59476200782019661;-1.5342187505350604 -0.73147570228022307 1.1341482951877764 0.71834324796415405 -0.2729267979187594 -0.14723249423696924 -0.057390855944335087];

% Layer 2
b2 = [5.6211660564911181;2.9158797094669384;-5.9375073812722245;-3.0777253188832003;8.3748071067958865;7.3800919508098701;5.6489441364362758;-4.0984117234519157;2.8780345762147577;-0.22791962517832232;3.9097772675669615;3.5084847659990213];
LW2_1 = [0.39082689716036523 3.0062031408721728 -1.1318955915522257 -1.5166546608289981 3.301017661477827 -2.2312412058632725 0.90590056537076646 1.2960236870303512 4.9328206252372144 -0.85633929291235877 1.6737335453376123 -1.795091847903741;-1.3708677474229911 -0.59608123615335273 2.1015359509536493 -1.3182737137488212 0.76184246041689774 2.7832601466949622 0.10797550165662281 0.23077156265583809 1.5680416073347121 -0.18908641098131801 -0.62391468161848207 -0.63017703299777839;-0.098961106372524671 -0.90309626393080644 -2.9931988704575185 0.17868847672537633 2.0814764289329468 1.8816372315464989 -1.1979412609851634 -1.4743335650547551 1.8401842176856218 0.89161252459269125 5.4300881237629302 1.0532040417362358;0.27909312563372873 1.0015609080057146 0.13498912159908064 0.83780952357529759 2.7697518552310045 -1.4018516501895333 0.39899324428819805 0.032397423337011823 -0.030521399928808521 -4.1700974958516523 -1.1736109279189002 0.44411539312034343;5.6538952207103605 0.12868000632474344 3.6393433064883127 0.10872355689453783 2.5664326213856525 -1.3590188539232839 -1.6665546992991405 0.68484371312151437 -2.1414453039351504 -0.52509823131881894 2.4753231115086809 -0.30616549432881907;-0.99218568751012914 -0.68822144988032818 1.9477495821923325 7.0342088282604207 -0.98817830543333041 -1.2026683671075526 0.41192911012551264 0.82731214865795621 -0.5617773313929999 -0.5858050540824925 -0.088852065746929207 -0.73149005567904524;-1.0573445567161162 -0.20647569481040806 3.81463865290922 1.5346925811282153 1.2227034207133036 -0.10207964856598958 0.48025532657574066 1.0131295999039414 1.929022824894838 0.053853905081154972 -0.9040793141989143 -1.8389150251042523;-0.21251321862818529 -5.4481062240077263 1.3405240869946056 0.38678274481655212 -4.8478124021524973 2.5900168720953447 2.5654710929853057 3.2015540722570344 -5.5690146487266938 2.2335371275276246 -4.3508375102627603 -0.28490450897958491;0.19096812580805664 0.91882669129080696 0.91537433666603252 -3.0489870228098792 -2.0587472336439316 -2.0728870797706205 1.2603648656149737 1.3872214182791498 -1.7922978922188921 -0.83030697173982926 -7.3624081136724708 -0.95236801686972006;1.1970468799252982 1.1011256682737887 -0.97503105114189093 1.2472637845659647 2.7537051371705132 1.126037165030298 -1.635595538837491 -0.2358364532371986 0.24147961958607217 -1.6057342109253365 0.32343121809285147 0.72183709670566931;-0.31826481371788495 -3.492692420730537 1.3942600537958187 0.78024095854247122 -2.17584429451674 3.7992531080710092 1.7871526045068502 0.53282561289075425 0.055739415453793253 -1.3107872258975266 -1.1949369003227441 1.867526042610816;1.2394260505345256 3.5320325944370858 -1.3109223015598939 1.4259816962974068 2.7237990837537471 -0.18092409665712411 -1.8950283782505981 -0.3768744007244913 -0.16114580031529613 1.4188884640042962 1.0144527695541059 -2.3103200957315866];

% Layer 3
b3 = 0.39774781585500957;
LW3_2 = [-1.3845139749822069 0.95835651217961293 5.2691226451115591 1.0285401465891881 0.28266592145430819 -0.54105608125489835 -0.65703571391921323 -0.87036688101230442 5.4845835420867868 -0.51093785540457881 -0.56452454978289601 -0.56338932807332986];

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
