function [Y,Xf,Af] = COOblatos17(X,~,~)
%COOBLATOS17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:55.
% 
% [Y] = COOblatos17(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.653056690449392;-2.4244420440339263;-0.48733068613839992;0.53724708129630305;-1.641956613307098;-0.82167498268292216;0.38970560116949038;-1.1870298646949273;-3.5028312786557021;-0.8274288134480845;-0.75925741840069005;3.7815869750856264;-3.4570563867856254;2.298562077868247];
IW1_1 = [-1.108239300230687 0.3060023006453545 0.91833040356612583 0.095152380818272375 -0.47132812767647614 0.0086799113195547492 0.04832730037162649 1.0653215127600175 -0.13540808432679791 0.97688252458635483;0.3939286413015719 -0.48290350504951818 -0.84457357854755599 -0.44902377520542308 0.20930293958990642 -1.7102212317513827 0.19507675776767339 1.1870371498579944 0.14086432720601108 0.030277847086168385;-2.0541654190140965 0.011098444160897863 1.3102652589573192 0.42841914638734313 -0.27858416766339306 -1.5848588129831438 -0.3668101581291951 -1.8349644607576494 -0.18458171042365276 0.32952273076896127;-0.0070593423093980607 -1.9702933560115905 0.72924632709905224 -0.26419358841157248 0.097079850956874825 -1.2383770024117255 0.2934041886847879 -0.055766980778651755 -0.033786902071275091 0.097017552844207391;0.0003700119168826765 2.8289629467827999 -0.18073857442681501 0.0041545700090452721 0.035443901501673092 -0.080648135292538128 0.012171941884012235 0.10609361016891031 -0.055706992806555826 0.014320369814105675;0.88445250359917083 -1.1003088479943801 0.74637345657654097 -0.14067622039768846 -0.29158258052288133 -0.33117666743747365 0.29679800768734355 0.85244190966337008 0.10431080717207745 -0.1084555680138645;0.049657574626794078 -1.2149025431342324 1.282991545486049 0.16409688627287311 -0.70872457730743044 -0.77603987910553374 -0.043474289712196808 -0.096269017537001997 -0.049885954351603354 0.5554195857055152;-0.77661528423432435 0.54667867089305011 -0.093558981050155601 -0.94970924464865181 0.60369937978041932 0.77566698122592559 0.97827134525513681 0.74218249992130636 -0.08961210605598427 -1.7175148172817924;-1.5531897062622655 0.13804243084569776 -2.5381301289181049 -0.18649206544781721 0.20880120313359224 -0.1669584514008827 -0.76265527678751899 -0.45504394744838961 -0.071324768859811954 0.17448390620477672;-1.3062234080322581 0.70253008722722543 0.4666162096918044 -0.91083306232430838 0.098199125756874353 0.17341616132288631 1.0853350262414359 0.81975230648914099 -0.062624964625982202 -1.094492004596098;0.048766198657573395 1.9549009496450827 -0.27397954124840534 0.063234813414846006 -0.18390828764655773 -0.32645035264313499 -0.017502821439720193 0.042463028593339766 -0.077387367729030612 0.24041413088489444;1.40453475435189 -0.18860531865255686 2.3035980997467411 0.37685619263561482 -0.37970457531269947 0.075470436878919897 0.4509052167002916 0.56256200390083166 0.048576649096254844 0.2328389548540592;-1.0009431915136908 1.3363442615592567 -0.82773958679302062 0.17213691396041325 0.33550783156643371 0.62412918612914914 -1.0321722829568991 0.64466108249815668 0.21374200375276073 0.6826306255871547;0.39728084888775683 0.61978395310939272 -1.0839690036981324 0.73569464128287454 1.2619746734698623 -0.72019823752390866 -0.64127171932226568 1.7363761288960091 -0.044688625089553728 0.89733122282966904];

% Layer 2
b2 = [-1.5148538208212297;0.63524537981987761;1.2815016965405934;0.60339556474502898;1.3856228962805781;-1.5957186942817783;-1.4089962177352722;0.95251816432324665;1.0009858462168859;-0.1910940788799623;0.38871271958246101;3.4126051696816253;-2.8739020101006334;-1.8420642935610603];
LW2_1 = [0.82818800759062494 -0.084789029207373343 -0.096870147151925448 0.28069991903071068 0.4450480226641374 1.8542839620039731 -1.2461541409119985 0.63763371928497592 0.35061510538948709 -0.032588637806873558 0.89883236107532194 0.13499186551867262 -0.43260126728699588 0.26371319415315964;0.30473014851875857 1.8299526748883497 0.56381715293808676 -0.26263906364213402 -1.2704762546752573 0.97908103707761118 -1.7916072405304049 0.62628124037533028 -1.2914165418030481 -0.13837769209236533 2.8497971142307681 -1.6087037630526941 1.2918581029181788 -0.21065363598763731;-0.59228773778849764 0.31970930863783004 0.50306853984874766 -0.25110094061122457 -1.1624802031429706 -0.93630353583516546 0.63215898507875423 -0.2852387467977337 -0.73090957015800195 -0.31023426212470878 1.1574359019096347 -0.50438273667032818 0.42904482234351121 -0.41627085870839675;1.6264763861141935 -0.94346334412188326 0.72561541412797748 2.9664976321529912 1.8953351309811899 -0.43201511286836564 -2.0352815853021817 1.8829624608960378 -1.0274422712533038 -2.4983681554942212 -0.72180867050612585 -0.6627953642168134 -1.3150572233306252 0.28427617899028562;-1.0605476164129402 1.4989507223366398 0.138920673927387 -0.77762281153957802 -0.85398943170057817 -0.43291029835589301 -0.19788487936867521 -0.26700474210603725 0.31117211687749263 1.3725263398033838 -0.7148225735870547 -0.29416264274436754 1.224315951019016 1.5147477554541413;0.98304749026305704 -1.5229634918916508 -0.076523528339082575 0.45341222336389392 0.51997184391390749 0.55618864208987884 0.28081744516563761 0.37881907990908736 0.205083544728796 -1.2854408658267935 0.85765522391111859 0.8442818904444267 -1.2088102003535099 -1.3832114007882361;1.4176671974296631 -0.49078937374720555 -0.54049334482872846 0.21191803222024955 0.18027774877237623 1.5480073044130696 -0.9470429821148264 1.0240478006415914 0.57130838209557089 -0.59423213064684455 -1.0969814576807602 0.34233556561739703 0.20575125464780999 -0.057727592957777366;-0.30982820478843703 -2.3386358790528257 -2.7409813805876295 1.5748592485169839 0.65055290430321899 1.8561756939909615 -2.9944203855958675 -1.2475668159505917 0.76780934562024938 0.58160532986594171 -1.546573647578233 -0.46088773460613108 -0.36509873190839998 -0.58769763321244028;0.88096568618137394 -1.5509555016073535 -0.91324295520947063 -0.87506340756000889 2.1029762756851356 0.20079523458555204 0.84320218459949559 -0.12346793449982779 1.3264008465904917 2.5034806642327632 1.0961152933883271 -0.71146223107604434 -0.36860073900426482 1.5410108574663803;-1.5858412462774751 1.2642236793545427 -0.7442945870742983 -1.5595825467457491 -0.37444159183560238 -0.5772570233560439 0.98024638533271757 -1.381268685584693 -0.023718778132232457 1.9002651763907039 -0.68362140899709656 -0.13450832802872539 1.3039691604101171 -0.056713162159577286;-0.16256913634358569 1.6654820449825671 -0.051098149898543693 0.40369309867653846 -2.5874154170364418 -0.41848311698660756 -1.0182062636838312 -0.25739836724477921 -0.69279676959118841 1.5102627391732546 -1.0077819859653219 -0.66736439361758448 1.2443585534080452 -0.10242060769631753;0.077606124543046134 -3.0578504079938447 1.3258395568394465 1.4730042979438795 1.2903868410937616 1.1489770094492429 -0.65629595509300187 0.2656192949881695 2.6582789516341663 0.19077141148634258 -0.019394495087747418 0.4702156274931899 -0.18966680172913417 -1.5643980152930217;-0.42350774727829343 1.3678731628157783 0.88840583587047006 -1.7403081824536639 -4.473059279808556 -0.400185148601373 -1.3580986106833415 -0.044242485109618049 -1.011960650054418 0.70706792019903986 4.5403932202171768 -0.34302042021784895 1.3799979470916199 -0.75837384621902837;-2.1232086201747267 0.53591575239596079 2.2228447951699768 0.80133148076881611 0.47753551313034442 0.00046639224931401338 0.35328189797180709 -0.83265366555661358 0.48840265148166095 0.642011485843621 1.3637041824538807 1.4074426058542187 -1.793274615945293 0.86893694929480503];

% Layer 3
b3 = 0.69492649634202897;
LW3_2 = [0.94161933479750182 -0.74209783218321934 1.2569264173683012 2.8011932402264024 -2.0618337998237801 -2.5607825322103821 0.79212146290770236 -0.2838898025574475 0.11573140628760761 1.6724083358331432 -0.40207532815869662 0.13735282695881781 2.8810256088941659 -0.44942602942654436];

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
