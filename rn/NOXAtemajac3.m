function [Y,Xf,Af] = NOXAtemajac3(X,~,~)
%NOXATEMAJAC3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:15.
% 
% [Y] = NOXAtemajac3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.04040404040404;16.1290322580645;0.0210748155953635;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.6053364058796205;-1.9015684645533435;4.1642837915693578;-0.80788899452076124;2.0302444484169326;2.1143989179671188;-0.76802913131462047;-1.0792233821774455;3.8981319247542459;3.6510301631110171;-1.3492897411755735;-4.7779515532803352;2.2196000788247834;-0.61700578061155686;1.9717635334369557];
IW1_1 = [2.0114661937319918 -0.87930503664423865 -0.11788984496582702 -1.4641289272515512 -0.48032833293818228 0.29494337870828441 0.22734373929580662 -0.61247113339626724;1.6871366977672764 1.476771585164699 -0.63896564087505003 -0.58318355105943098 0.34023000444807378 0.97704704891378125 0.10973138982087297 0.3670086192397326;-2.5208366811796377 -0.68115719900611327 -0.81135503818591781 0.55828754597340291 1.2766561118690616 -0.18689351169030843 0.18157440377869552 1.082960959476351;0.17786650937200435 0.73588295774723678 1.7372568434505284 -0.92587196397332339 -0.24804070755817748 -0.82977310277038463 -0.05572755711424679 1.4160406006069763;-1.7404417040175026 -1.1874874167181384 -2.228400492885426 -0.72793695858213614 0.53650010006358873 1.9756794976258201 0.40671682539270121 0.89237793693619216;-0.7652598639797733 -5.7819183254632156 -0.083384590161707572 -0.1257654951121587 -0.50670942643975325 -0.77794166648205942 -0.15892308902347344 -0.30528952969530182;0.20268980314902468 -1.7344735629533647 -0.91739705994888665 0.12336515234814854 0.33627026718421393 0.43268273430533077 0.15643533619419411 0.21462933538140738;0.21311097850500185 -1.4845299662806026 -2.1433301691463731 0.87425629285346496 -0.79108029991338635 2.9831825027349432 -0.55114673702818384 -2.2435119563927963;0.22641901479389889 5.3614137261602801 -0.10001163331288508 0.20692975194481938 -0.11438607001246048 -0.21947303755402303 -0.13614112499098172 0.088830418927400984;0.021551325215934683 -0.8957627248504253 3.8402269719797397 0.002105927720897207 0.059676454584615943 -0.11357686674513595 0.06753523052372562 0.015861894105947124;-0.86678005498510657 3.0397497546456229 0.084294591508774164 0.26429364085911017 -0.18782444850610636 -0.20510150234609406 0.083693414132665053 0.32402632635258555;-0.033953821932203046 -0.30320168370890693 -5.1987173558257345 -0.066572672493503446 0.050106213938552788 0.31317471797306967 -0.02391547402123221 0.0037766802059693415;1.032397249899162 -0.76565958995669103 0.016791075865775516 0.70927839868762343 0.31335492317582403 3.3709097034705167 0.50281788734070498 0.76420937450230308;-1.1975781233035099 -1.8415033190699053 1.2724637269775856 -0.070649652924092698 -0.93516699880529741 -0.073288531300777851 0.081056647717740044 -0.46780363983822365;-0.77737110380654506 -0.32330176886520978 -0.29499702861224714 -0.80962074779021431 0.21448379997704944 -0.1041646730438161 -0.083954605396231174 -1.0473811316790511];

% Layer 2
b2 = [-1.5009541664885895;-4.0920926921851652;-1.4206684356204349;-1.7449759229177833;0.63824881975650405;-0.70520951756370398;0.20640665817142775;-0.39054073220578361;-0.013430479314606267;-0.21724648803386523;-0.33221256404112864;-0.24217574376102963;1.4339513070090524;1.3476798463039947;-2.0342019625301275];
LW2_1 = [0.66866236636367804 0.7823818650706067 -0.79173176163094094 0.57830749569882001 -0.024200980777040929 -0.21751654001043638 -1.2332965702044894 0.30344234706472489 -0.58500894038589479 -0.45870948383916699 -0.58670411967430869 -0.38154732924168305 -0.0050539922044855537 0.82249826714183105 0.43098066698584114;1.1942949055553209 -1.1991165992378132 3.3510655252937331 0.86555247703715366 -3.1642867213845651 0.67585574785152225 2.3351349090482705 0.64216564308619928 2.274822749427559 3.5274875734728415 0.1165188231050423 1.0428014218485222 -0.40242786333446084 1.378407868096297 -2.6762502251552736;0.22537667206354584 0.012302927768746825 0.41572652886456773 -0.50257400143694586 -0.18022386224585341 -0.77452088040097766 0.39020429750096591 -0.23416863613184921 0.1403821477480032 -0.64762498850354477 -0.44878039913942364 -0.23706355089120681 0.19081437606838866 0.186297617220232 0.68078953287055211;0.58175437502957739 -0.047606205535038568 -0.31454947024382807 -0.91226575874731164 1.39333369454707 0.86350244263754738 -1.0936952609664889 0.33207758685926791 -0.70074712625136515 0.83303462274292706 -0.15404677667758201 0.62562821401267898 -0.2192968646441146 -0.42686317235987398 0.15329956838032863;-0.17700517969699736 -0.0097741827187061599 -0.17618036783781249 -0.67616362146826614 1.1199846045309096 -0.31744070682059983 -0.88539167641045557 -0.75212899078868078 -1.4968597036102249 -0.61462063671129041 -1.4575766393595671 0.085792591480553571 0.082366620913628785 -1.1623763898598289 -0.093919521329696914;2.3449175074168256 -0.170447530894272 -0.35810594255736711 0.84199747614486287 0.44300809647955286 -2.4118440155127172 -1.3705934805521622 -0.33582544895286698 -0.056677962674450758 0.67673083055562977 -1.3994533544219676 1.214858987546293 0.45538817462273129 1.7895627158027887 -0.52855405934548605;0.38445572443153153 -0.14260963638748758 -1.6420876984197459 -0.16135864692251742 0.64256878387834782 -0.9339963985012677 2.0036091008137826 -0.25658973047529871 -0.0078823814771561869 -2.1651240818218662 -0.4523483293635352 -1.2118583904899296 0.075559660626771274 -1.2431509687767937 0.25219373508701642;0.34518164198560164 0.86490013389832598 1.0667960442550382 -0.68463632410312991 -0.34323509407841968 -1.1236382969652077 1.2692958844713591 -0.23347776687409388 0.75094190805680239 -1.6918781797924114 0.90152331789679307 -1.1616210207481816 0.49621849705450788 1.5324984929111058 -0.078325851629177462;-0.25421525303789982 0.32633656156222068 1.3600403473038807 0.36138154484203067 -0.85403452467740415 0.25947854783947444 -0.16834535775737111 0.31818735641787682 0.44954501059674984 0.68242983756415898 0.69104164933809753 0.44606313027850297 -0.054658772362870658 0.15011662111227481 -0.99795219007405689;0.60100178427618822 1.0202900826668613 0.7255616658048254 -0.16240401505575697 -0.030302272142028741 1.122834223959422 0.080998917428146716 -0.25618020346183118 0.24042431519799978 0.82824056134321344 0.010387813188901744 1.0163621191959873 0.1663432677111791 -0.63310589685743768 -0.0083420037606683206;0.06514380378234276 0.2128839441792659 0.28235472765008057 -0.19420285492545891 0.093349086194398218 -0.97440823234249974 1.0300994568386697 0.052786955468386694 0.096423895364680129 -0.61755093026181118 0.23144143892926464 -0.17437517681807718 0.031518199705811864 0.14543377643694985 0.13464016344760379;0.48595933259919971 1.0278626363719452 -0.2832131196930639 -0.18321820916987791 0.53624829203903468 0.9717257699871743 0.43556306193989197 -0.31455418886534026 0.25252139757548003 0.58114922456003848 -0.12512213626185534 0.85753386214963456 0.1600272946791356 -0.72686286904666275 0.32380182479010311;0.026747712489846823 -0.46528405777165827 2.3858381966288711 -0.21877094025729876 0.458577738358799 -0.43840883638876238 0.37095680371631501 0.78072489860070371 0.54451043859002612 -0.1683187476888158 0.42926064421131355 0.59046388288129759 0.21058882408425297 -1.0892618995006138 0.43251858453068859;0.0077708224894340663 0.79585136492148034 0.96276498583252612 -0.7201072476952376 0.20079341149475613 -0.95807062957878608 1.5899508005301435 -0.45944037125566412 -0.8980421519164834 1.075384293093903 0.16402655271792396 1.6623043957671948 0.85852493141277741 -0.19626836378830212 -0.32003234579401235;0.12980496289361915 0.076348182239156362 0.65230899588372149 -0.50811190609120005 -0.078653284301289372 1.4726734855497383 -0.98250273502832164 0.26071842028295561 0.0036677560197401343 -0.24126756158323664 -0.41254007078932942 -0.1790356742609536 -0.41945436940325537 -0.60625967909898271 -0.39609818876086283];

% Layer 3
b3 = 1.734584404409272;
LW3_2 = [-3.0691056532045042 3.6675998089719721 1.1044909842862527 0.57503240869250782 1.0189496731457757 0.70985485926349856 0.37118810141932584 0.5513721000905335 1.2797790323543761 -2.1168765285509665 -2.1409104117458622 1.9273336049777592 -1.5805170033737288 -0.23735139818197071 -0.67133272092373386];

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