function [Y,Xf,Af] = NOXTlaquepaque14(X,~,~)
%NOXTLAQUEPAQUE14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:21.
% 
% [Y] = NOXTlaquepaque14(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.03490136570561;19.6078431372549;0.0212539851222104;0.0523560209424084;0.00632111251580278;0.294117647058824];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.7589186757404152;2.046893913186056;2.491513439699415;2.1373598118134014;-0.073913598667634819;-0.50237031407810184;-1.4667847486085108;0.011412673318926578;0.63875174705237303;-2.2497559747201357;-1.9884001793422903;-2.7537368825400654];
IW1_1 = [-1.2435513707291532 3.2914764209535461 0.23154599519382629 0.10510873090221351 0.075540605900043162 0.38476004792923524 -0.075828336672148985 -0.44496408135667809;-1.4585176480688478 1.1290314816473328 2.8630908671428057 -0.14894553248840964 -0.31719852642217211 0.29628257267948144 0.022648263998063016 -0.85507300837998179;-3.0079347477496974 -0.33583639325867576 -1.8883059132091777 0.84549745330458437 0.5322901474796905 -0.10627305810619514 0.27900014106841287 -0.69210385274260655;-2.3324055001305553 -0.54701074942872585 -1.5168440524909419 0.67031382464346723 1.5737051905595649 1.2097006609519285 -0.028926638006482749 -0.70981895530523864;-0.26835820616044842 1.1698132563698527 -0.48618740207745259 -0.5355257347820046 0.87057235184819659 2.0410281475581602 -0.092714254917126843 0.39308750511540647;-2.8255681591564263 1.3414969151380531 1.2372278493074869 2.2934137570045197 2.3422788233067489 -2.3891533965765528 0.35450470026071462 -2.2681428941764881;-1.6477593348672699 1.9658415283341852 0.72821036625957536 0.94550928581963634 -2.6135877530475837 -0.53537515889534903 0.081881178778798511 0.50792034314210999;0.86304718431934957 -1.6998255733628036 0.37541017718218561 0.090581186084769214 -0.27158739568794821 0.79063399061680528 0.13968930172103475 -0.93797050648346036;-1.399550345881311 -2.506529366963441 0.11665933210812496 0.26490322283116324 -0.97369075093452195 0.0071305780896088883 0.15127059393070449 0.0950481392621325;-1.2953996871240536 -1.9435175714699815 0.067129206944037234 -1.637203278181445 -3.5049506707045417 -2.2261886494443148 -2.6746288679106769 2.6070047782280183;-0.024298141654303038 5.0004371321506138 1.4349686225651381 0.19028666534025557 -0.064490485434903336 0.39272306306296062 -0.0093994441166634635 -0.49131853962523653;-0.45610300664703285 -0.022962918970431158 -0.25594782394893068 -1.4805769401198083 0.17736959049764159 -0.33574625212194686 -0.083759560273584291 0.44592495541445648];

% Layer 2
b2 = [2.499784877311606;1.6883733523014808;-1.0503830620545858;-0.13392335580076423;0.1826745259047175;0.3651459227108132;0.1525073660396265;-0.56002174238126212;-1.2758381332510371;-1.8921572810014098;-1.8027976633930367;2.3073115921288485];
LW2_1 = [0.064189740851673574 -0.31154682943712481 -0.093609401126857728 0.67188454759142424 -0.62144722788754758 -0.061910793054786688 -1.2792821144877808 0.59982075430375148 2.084293322074469 0.37394950334911325 -0.8253039560643799 0.69185153923769493;-0.71643704421592103 -0.84748227762627815 -0.91059774723558051 1.4615857355220216 0.86919032823738829 -0.41810393753444974 -0.26317829045462121 1.6376312304940375 -0.24952437754320192 -0.13657143674963873 0.10499794260961866 0.17306099227860938;-0.3720346723905591 0.18163064245886554 0.043518349060095607 0.38445035656323967 -0.51852869333612561 0.45251507344102715 -0.18118762221464724 -0.8240208389809851 -1.2391203224722172 1.0407208896895703 -1.4929144478391181 -0.46380590763816965;-0.0029437140173846411 0.36056951146292188 0.72195675631786527 -0.89990380726227936 -0.90571089048911591 0.22189647537436966 0.22158678945879062 -0.71024665344542925 -0.16621411372992678 0.11218625159653528 0.06901181067897072 -0.10173509280262656;-0.31476526999772725 -0.012055320370862536 0.79400753014184111 -0.82984292247337144 0.39850300137630845 -0.17720673010451374 -0.67775383183229976 0.61739500903208855 0.83252815685073056 -0.2553162879501315 -0.2363973732277001 1.1645646892579131;-1.2772955890106545 -0.13770170889637154 -0.74611681036955024 0.53661253066567638 0.84217006659247362 0.37004003552366388 0.64959917277965029 0.54152110519802465 -1.198311420615866 -0.29697088474072059 -1.2926164972805363 -0.1116601484006971;-0.30591417951164795 0.38585520523190675 -0.4541312399619829 0.37799678185355934 -0.34777162576701759 0.27759175608899822 0.32793700838710693 -0.5864272563363252 -0.39548361139585214 0.38155775952012844 0.00044240084423571857 -0.93780089832084834;1.1079622949428878 0.20904253311008542 -0.24302424432066916 0.51845542454220528 -0.78378229949629186 -0.3047540583791592 -0.67935664920956551 -0.64727348664745399 1.2254180660256484 0.2981503474859597 1.2568424179599527 -0.16501696849589281;-0.20060198332991644 -0.35690591891715368 -0.95265992874816507 2.2173700526057725 -0.21164742909638679 0.49080332671321231 -0.18889442924854052 0.2513488664292729 -1.4184252927320735 0.79052086042722058 -0.54681269098368035 0.57240769700113003;-0.38687504684133595 -0.39835972861294017 -0.62402967163294243 -0.39315247679941689 0.26706223193907969 -0.9307791568673387 1.0215010101486712 -0.047310029847376603 2.3727918552197522 -0.33894338241709454 1.5805757891922876 0.56730655694755183;-1.8546702672349666 -0.71694488490110664 0.037228289751649282 -3.1225378244279187 0.6090599637350429 -0.89298076012230587 -0.015921999886630678 0.018004843971174044 -1.402617562329006 0.10632244247886732 -2.0798359880615047 0.56263212659849304;0.88892749187611086 -0.0026607256065793485 0.64250955470890958 -2.3782536607713647 -1.184279078967728 -0.075554836935851757 0.44884936293274902 -0.91723536789157945 -0.90045533223973762 0.1217007170950441 0.16683845833723493 0.41024333303848731];

% Layer 3
b3 = -0.24701797962027064;
LW3_2 = [0.33895743119517857 -0.52821374007008559 -0.46047335778940729 -0.85808331995447396 0.74600035352816896 -1.6149511098054654 0.98011860728227718 -1.6892393787212614 0.38129570674856461 1.481920018594062 -0.7353297451426718 0.60901708536596855];

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
