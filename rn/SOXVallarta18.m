function [Y,Xf,Af] = SOXVallarta18(X,~,~)
%SOXVALLARTA18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:07.
% 
% [Y] = SOXVallarta18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;10.4712041884817;0.00782778864970646;0.0208333333333333;24.390243902439;0.02710027100271;0.00630517023959647;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [-5.802506468618617;3.7730834741977839;0.28477057025738889;-3.775052733091838;-1.2066369006936053;-1.6835634469685152;-4.3730983542075066;-1.2986746595704539;0.24084861819322526;-1.5321068575416537;10.393829817727436;-2.1803706130254241];
IW1_1 = [0.55460728405759163 0.09121493344999404 -6.8177420028944811 0.16632618272626568 -0.71065494306917953 0.38780273910854862 0.49651580723523753 2.0284498664817598 -0.22471478245135879 0.023670666726999259;-2.9651876895900213 1.3688466793412426 0.1440637241368424 -0.12906205013036742 0.98227141479013713 1.1747404890825548 2.3966629406326181 0.070617294360704172 0.74330771212019764 0.49130959625541637;0.62632061632630742 4.1027714385229759 1.5685367736043905 -1.2409684289426406 1.7121159425649632 -0.88301554263859527 -2.0977315888684331 -4.0213365038052808 2.8338409244835052 1.1463733449694846;7.9014393665646256 0.53743690519850007 2.3857130886187776 0.20020039752358251 -0.27479500137864676 -1.4986045880202825 0.3558056730552458 -3.7598464304077361 0.48071397904604918 0.77197494185149873;0.25057554542580995 0.019026710763094448 -1.4294950432150488 0.27887135279399833 -0.202168414682665 -1.2577849684399938 0.46187572215572109 -4.1623745591275245 -1.9694269721876028 -1.0483226961855154;1.0975475304088653 1.799998310648524 -2.7027936836655493 0.18526163402469581 -0.85124286539236771 0.53418438941185231 1.6409319303548633 4.8579927256454756 -0.54563250119482265 0.42387270333925847;-6.3719929815617373 -0.29390182207245341 -0.4978552289000322 -0.98759514168578888 2.0261298690992415 -0.99315155821228851 -5.8554532052785628 -1.068912529221852 -0.046850797862373686 0.10633885419047719;5.8162639955788213 0.012099275016614338 -0.37391348175213462 0.59666787133497401 -0.54661189623186601 0.25001529529097444 -1.3395834823604296 -1.0096379207292632 0.20572781304836024 0.75217983951308864;-5.7543965534998369 0.20652720837452601 0.23538106118029192 1.3480715270077879 -1.3078136131918439 2.6515296145697222 0.98389569479937478 8.5240528563947855 0.54867434218602895 -4.1629520234356514;5.7939493998973575 0.13554361837369086 0.30873631311433475 -0.014481983750523786 0.20726330582949154 -0.66045169793184955 -0.061265951469616386 -4.3038512742838897 0.053691366841811777 1.3679846568312093;4.4406836322898302 0.013618314621638679 -0.15599763523429161 -0.05446827776334992 0.012381714820446206 -0.048019644690492372 3.9794643349266825 2.4396584023213377 0.0826359670655024 0.39121338037396841;0.5871607001168534 -0.13908468406212837 -0.12580464086482182 0.13319161998536799 0.08631959935139713 0.30356639144094261 -2.051618286798214 0.055007847367639945 0.57304297148929895 0.32148385692089043];

% Layer 2
b2 = [1.7980299571223921;-4.7755346803374152;-6.3535397029645369;0.043158571360790196;-1.0244355277131718;0.63097133150159024;1.9715893423485105;1.125372348513294;-0.98493743808217826;-0.30952943609754652;2.5213482176187698;0.4512886156312923];
LW2_1 = [-0.34812538176569369 -0.1982693399292898 1.3071599615518177 -1.288223036604748 1.5488502807058102 0.43781467813114716 -0.61704639226642843 0.11033241224553415 0.043624080596635931 -1.3223759721331279 -0.82422368330278295 0.54125256213847328;-2.0965411947055288 -4.3006809571077058 2.2347862612915974 -1.9212549266577643 -4.2900516648496998 2.7096643691676001 2.2686068352944617 3.3839040730088055 3.9870035303447988 0.4828188364564443 -3.3631790276713054 1.9501808236693663;-6.9796320185242466 -7.7753304745003762 4.0355821816848252 -3.1588381995671511 -2.9187336951658951 4.5506910852186868 4.5888981255562973 5.7452152158373853 7.6137883452509323 3.8250537524854544 -3.9407248270584754 -2.0318614048062695;-2.8725340058114872 -1.0197716060586961 -0.15997710950242247 0.83061008417010795 -0.71546553403932334 0.21572484471506936 1.4346928243082067 5.9902259855863749 0.57498238602575769 -3.3309175906700279 2.5422102260382333 -2.2122704706107141;-0.17447904815779169 -0.043774437166655633 -0.66172252617874683 -0.50254551481217669 -0.063954031190508909 0.82935475306793649 -0.52011070439514218 -2.237904521343435 -0.85921920189417456 2.561005470596089 -2.6540453348695565 1.4969131590024449;2.1820241391619248 -0.68738214812161635 0.22059937209364178 -0.99606521383999891 -0.042033346807126074 -1.3826174807561917 0.46582811691530812 4.3406331876237108 -0.52726811894559766 -1.8588829826544764 -0.98710702247056992 0.34136701929709212;0.39613093466840943 -2.7598308923431545 0.42673927082329921 -2.1813476165471726 0.54242583181336179 0.48260352085218372 -9.6475501588906791 2.2978893974199623 -2.6421934944348719 1.529502667879806 1.0900173492454557 1.1983472466012601;-1.9501768323044557 -1.1296316456200151 -0.37891758245211277 -8.3260335694045153 -2.7351266262127769 1.5331793741445878 -8.1552007094175671 -5.4347505712547415 3.2954208687200484 -0.98628153804844443 7.5093153333984315 -3.5125715898228678;1.80042330227775 0.8591202427903053 0.34229240464868288 7.9660519945651789 2.5916372247965049 -1.4032595869939477 2.6078888493318861 -0.48668012687809259 -0.34082982329922784 -1.8872850649405988 -1.278044996004605 3.3175920988847349;2.105482734157877 -0.61735585832508821 0.19116646165515855 -2.4066948557677512 0.062660254081274333 -1.4706700780988351 0.027377310311223639 3.7127967700054758 -0.45423652712592749 -0.2660578567931639 -0.033225046656356394 0.51396440770086282;-0.17147930533133743 0.41823621729405536 0.36478643331248117 -0.792988620095045 0.51062855116824335 -0.0019583892336759272 0.37371526240026409 -1.0382552212712337 -1.4450848478603144 -1.0275270125005442 0.61871184504774268 0.34146345878314838;0.32514679038502592 2.6617933697197969 -0.46120198119243377 -0.1283022233671855 -0.36306638963157334 -0.48750089081670434 8.928741282130817 -4.1553276822367486 2.5054410626214745 0.62838053642647573 -2.7452765304620317 -0.069236413688874204];

% Layer 3
b3 = 0.48858209478892745;
LW3_2 = [0.12654630774476169 -3.143069734963178 1.6907700486963479 -0.098280121018983993 1.5575257492430024 -0.76959752606221188 -2.6549570930148119 -2.130000688916748 -2.195536545622025 0.7888865812004483 -1.4496976172900242 -2.6709215412529663];

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