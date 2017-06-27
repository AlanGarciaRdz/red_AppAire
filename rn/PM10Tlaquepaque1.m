function [Y,Xf,Af] = PM10Tlaquepaque1(X,~,~)
%PM10TLAQUEPAQUE1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:37.
% 
% [Y] = PM10Tlaquepaque1(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.00773694390715667;0.00572573718866304;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.9692326940276712;-0.42925951269212548;1.4057872227963188;-3.1561473658955688;0.91408566266719793;0.85323975241510275;-2.8811597471524379;-0.19445338003458937;-1.5148706699572139;-5.6068206504409375];
IW1_1 = [1.1942908834838999 -2.3995538611710812 -1.1998451362064451 -0.075880982020843896 0.37156643144448653 -0.15156199848215623 -0.1952040692819684 -0.56766784568470841 0.31019826017888735 0.30519578272429276 0.041217953179791697;-0.010510121949334046 0.10899652705503607 -0.25930919605408415 -0.31831827401955087 0.068160114197842167 -0.73515870990037646 0.090776460425900624 0.0091857666028721356 -0.5403579112640382 -0.0200626038035829 -0.60105578073180632;0.65724032642128372 0.48188063757596294 -0.98751240738689428 0.51128234071125722 0.85918588440658406 -0.022587616971428359 -0.27087756664123686 -0.026085772647745892 2.1485198455302736 0.11976002380413685 -1.442284552587896;-1.9617098956492081 -0.7432074919319841 0.90393466129617672 0.084385124994747873 -3.225964785434817 1.2662128488451743 0.62533312792406903 0.48635577299053812 1.1868156805517218 -0.95674397821710977 -1.076775367937624;0.64323906358155736 -0.179191443163286 -0.43292100744379319 -0.12985321032838618 0.079587647505011516 0.83254488985232689 0.077981197491762133 0.083616430004845296 -0.075322918848470408 0.10169636633144802 0.26557837106605148;-0.22052995081960222 -0.14020936163756417 1.0897009303699032 -0.36161364510488969 -0.40646607710744109 0.0040570518179381693 0.11221185767248608 0.015862947864758982 0.49137342600900452 -0.22114360909987035 0.59039525865621456;-0.92389026875433167 -0.17114472559190708 0.870970445895067 0.20751481302423966 -3.526075631268824 1.2416835045673729 -0.18171513553457236 0.26890781045479195 1.429106161646061 -0.23011411420832414 0.064455113793197724;-0.40088438149165267 -0.62315314660939547 -0.74809414169504151 0.26979408078454598 0.15003182164508524 -0.1895384752180867 -0.050324326013250285 -0.072874679739670198 -0.45964442556558616 -0.010755397997388446 -0.33156596898242874;-0.70642438940225694 0.22762554206069602 0.93781787216381474 -0.051937181406363164 -1.049369774850758 -1.2811516137528778 -0.13152840356299911 0.063911328812729193 0.17802872747024839 -0.32681508348359467 -0.61731548222481081;-0.75210554228226334 -0.057083046786074516 -0.50152731756951263 -0.081378218396498891 -0.60918010074854512 -0.4357173947005159 -0.15657796943266591 0.71367285085864174 -4.2753994837321967 0.9337755863650461 0.92961413645778246];

% Layer 2
b2 = [4.5109925516378961;2.5436570353010408;1.2244007539133119;-3.9152629806051569;-0.7732522185591828;1.380637078625798;4.5750445809850415;-3.1090420174133504;4.1767651139750264;6.3961902049883781];
LW2_1 = [3.4204796952490337 -5.153354774857994 -0.38198370496305639 6.1432865083601831 1.7259455545159756 -1.254882431672568 -8.4262226832112006 0.41271238217520279 1.8454798125916578 -1.1631675691306014;0.38518214927230959 1.5914209041812803 -0.015409438139901855 0.025600560972235686 -3.442445379374333 0.30650296774132274 0.54009275853222494 -0.0038518822460912351 -1.6240008847689529 1.4262779019212328;-0.89806062494412919 -0.6594152418438225 0.81690959168808697 -1.0021972177217124 -2.6318203072486237 2.6280032566858882 0.86672027083165459 4.23111505056041 1.4656312110156615 -1.1192028966998233;0.18488730391560382 0.27835816583894762 0.97925647185183917 0.18175770720823187 1.933691551640206 0.23893373021667541 0.045244781756420674 0.06707402059879064 1.0286983333259783 -2.6460717369838935;1.7317286069858679 -0.42806024164824347 1.0840341925156263 0.32310850744377273 4.0686808429392638 0.09334558286021119 1.02847697851593 -1.0961217869907725 3.5929945389495042 -1.385358960926778;-0.85368526131444278 0.07277929750534351 -0.72704181398318424 -0.068121720864415536 2.1534437563621385 -4.1591835828575308 0.77022103503881245 -3.6253733272002364 2.1335109587195449 0.53047311185883095;1.984206590094256 -2.7412196493930745 0.42672480977366356 -0.6546038455873352 -2.9554198441155477 -2.4925055641618852 -1.0118360670719082 -1.5006113249083499 1.4665517738366449 -2.9448426848530138;-0.43917368882096347 -3.4872757611143257 -1.1835971840131949 -0.0099349519865986231 4.8546888473417225 -1.4426107079387749 -1.3677998487957288 -0.22377118041921673 2.8089646531994474 -2.297638522741714;0.11460976703756315 -1.6087422558838489 -3.3405353813847234 -0.21972603120947659 -4.6036799069593721 -0.067939917567074848 -0.10800906058202883 -0.17048420080467794 -4.0923653785873642 -0.39369469784281913;-2.3430914678588897 -4.0455002980888919 -0.77641125607299044 4.370257377289124 -4.77639434042994 -1.683904176961772 -1.1147451459235875 4.3680239082488326 -0.41712437053416057 -5.0564257081803108];

% Layer 3
b3 = 2.4919798952630385;
LW3_2 = [-0.67213017074476678 -0.95204127147451778 -0.10426155859970999 -0.66685567210479924 0.10321841717339558 -0.14840879209681943 0.14406417317955419 -0.56541144050834125 -0.13645741185661195 -2.7704743547375759];

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
