function [Y,Xf,Af] = COOblatos5(X,~,~)
%COOBLATOS5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:51.
% 
% [Y] = COOblatos5(X,~,~) takes these arguments:
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
b1 = [0.71058844254196074;-1.5851810100296779;-2.0439140236751889;0.22471243394441159;-1.1955640449924645;-0.73370889818404872;0.16969414549486009;-0.094421638882234399;-1.5997784824088452;2.5515867929631995;-0.70243358205401074];
IW1_1 = [-2.7462543402065704 -0.85877507849662815 -3.9504184085531908 0.31231412782802292 0.7908602518624136 0.78334948372635982 0.90442153278922854 0.78802497592286547 0.13128034196452415 -0.68118586147738136;-0.58427039492712851 -1.1424711991191718 1.2840046900049678 -1.5572504679274077 0.7226014507972699 1.3909855242899787 -1.3524095074338007 0.19541739516538612 0.41489271469943434 0.26951784412322283;-0.51371331923860841 -0.64966346112097351 -0.10519575933453869 1.9820209072375989 -3.587639751318791 -0.15700422729112179 0.40442583999570969 1.3435359917046077 -0.71090991998011321 -0.077846401140630878;0.63179074659557799 -0.041003059179949744 2.5403368382260596 -0.18130316400071214 -0.33750981671733243 -1.6339723431883664 0.17945225953873473 -0.028307479605329623 0.71430221997508547 0.0039473148903133373;1.1225113999132261 -0.12475108199404773 -2.0957842251228289 -0.60159692272976906 1.0711795628120422 0.49593867992711749 -0.44755976190193059 0.16984206055067491 -0.15190721353851186 -0.27043468532441073;-0.15618392728082939 0.5995934479044881 -1.0464152647246396 -0.52711913256509224 0.91398054076854096 -0.013066087187866463 -0.05390868747057799 0.1726748705433877 -0.026625047611759815 -0.13036479747159557;1.1084108559745782 -1.8314396161262929 0.24639436345212054 0.054538485652767449 -0.20901737858844632 0.032868955133860282 -0.062787029202128558 0.46602633572373736 0.056137368881095592 -0.097567438568590459;-0.87273513187705465 2.4934166616230624 -1.3413692504034211 0.59059081381872924 -1.2037524660585051 0.31756138466675382 0.00014616978025891805 0.12769230134001044 -0.10823950740773729 0.014792193243175468;-2.5018113642204409 -1.032537712467035 0.60844807922279154 0.24233440079155882 0.5967925160461327 0.11872324595056316 0.0215865564514462 -0.20246706687486976 -0.10985844737792529 -0.057058622896919216;1.3637039958473578 -0.44012534489056604 2.7428484364466672 0.86044630216537277 -1.0462744234698547 0.3657551992511015 -0.10595155438047987 -0.54855377850432219 -0.039697267798992117 0.088830112952563739;0.18691644308053015 -2.3922777189008326 0.6529748685117347 -0.62174143331466614 1.5541648929621983 -0.084340139907394515 -0.047377875003424406 -0.22535267920087115 0.036898646591224139 -0.063511740940432479];

% Layer 2
b2 = [2.1744076130513164;-1.6838737206170802;0.32635581001135816;0.61703136254430957;-0.56371969833644797;1.6613685928750759;-0.43219916934643421;-2.9188841720146099;-1.0009819348981162;-0.64876140723759212;-3.0718960530610611];
LW2_1 = [-0.53183665789395351 -0.5288151578321153 0.26191842630460543 0.923206484492474 1.4970296981738933 -0.58622827298215763 -1.7187022176714892 -2.3618900097339912 -5.1681723515205462 3.4617723310690658 0.77056397659265408;1.6131320030109584 -0.64941558841912972 -0.07999490314641225 0.33130224054804247 0.57958442012313161 -0.39390329678672764 0.55221128654742468 0.8076524463267265 -3.8980782628582862 1.885336359121867 2.0910138188772849;-1.440458293515626 -0.40151881304987191 -0.54914006005239779 -0.96276318091917579 0.92129034577804125 -2.7905863525144174 -1.6508001426675967 0.19175833875683607 -0.085038143417753051 -1.6344054258949763 -0.4662432478146547;-0.34003293933950862 0.025322035852831014 -0.02543201470362496 0.023651089393953637 -0.27924770615776001 2.5361642053969331 -0.60349264817299386 -0.17032596321148918 -0.80056183518648527 0.6288279395005596 -1.330921103309314;1.5526261583053982 0.40947423793952947 0.57461542760638773 0.96265710426489226 -0.39548836170303486 1.6032376586790713 1.395693597972665 -0.41502184434083406 0.092563678605359717 1.1487073243899515 0.096136626444119244;0.47604160927689626 -1.4163496250663454 -0.42364570279796532 1.0902353513787784 -2.3005808267371974 3.5028592895709716 2.9795372426882443 -1.5489747103390237 1.5381857708254656 -2.2462908352246269 -0.40236144549627567;0.36661700823562093 0.13586607997072245 0.17056019572798115 0.17098826361068881 0.42726066720940981 -3.1796510515147349 -0.025193484936860008 0.2415532367463252 0.5810106559399113 -0.72316513906456581 1.9397313492462067;1.322361448567049 2.1723525255837886 0.76897889303737177 0.69550890450135539 5.1048169653131863 -5.0235973796731841 -0.17321617955275875 0.43819552333218487 -0.02603066180653018 -0.19981799800612871 -1.1770641194301326;-1.2220130632846147 -0.95111113919966894 -0.49263581862536104 -0.16843996808139275 -0.50805505535389928 -1.4015363724559542 3.0262637747057162 -0.55724387453270041 -0.84728687178921214 -2.994425235638031 -1.0077430579482543;-0.42686659932500831 0.58982494711848021 -0.12659107054662885 -0.66761695714046387 -1.0457204957761597 0.38940142022631796 0.67048861133344617 0.22225343918065552 4.8715639703119775 -3.045631512707343 -2.254171822275441;-2.0745884209282162 1.3517817194756681 1.5889034493949596 -0.99844256227591976 -2.6758581105454162 4.7552019070197016 2.4205451876961259 4.058553707307099 -0.81062392398350747 1.3342354060113142 1.5380446915976371];

% Layer 3
b3 = 2.3287193212597108;
LW3_2 = [2.4087872132457919 1.5757221772513581 -0.98227124457687964 -2.3799283474292721 -1.1357408394854063 0.15202969287714357 -2.1517107726157665 0.15693522976206162 -0.15263016845587671 3.8686783575182044 2.9872024439707578];

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
