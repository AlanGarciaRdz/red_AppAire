function [Y,Xf,Af] = PM10Vallarta4(X,~,~)
%PM10VALLARTA4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:44.
% 
% [Y] = PM10Vallarta4(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.12820512820513;0.00782778864970646;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [4.3501197015177189;4.8887713601034646;-4.3929163607760291;2.1834477759657722;1.7818402547602195;-0.88935883701824603;-4.8146345658900618;4.231539268925939;5.868738271698196;1.4741312547265102;8.2188640582947592;-1.8205223161880859;-2.1970866617044029];
IW1_1 = [-1.3256010904635516 0.30967777084119424 0.7865116776469665 -0.13835878198796286 0.25712842608478603 0.91819614224085777 -0.23074941191691817 2.9925794210038528;-1.7673595627790331 -0.75656786434174184 -1.5142943322628608 1.9642440935932342 3.8734692136467848 0.32794810025105792 -0.12893134339905232 -0.96386491484577075;0.33019185361869124 -3.2452209086176542 0.10166128591098297 0.78238754406186284 -2.3524413507428288 -0.594466116253062 -0.06723865894962279 -0.28215030515347517;-1.1856804995739785 -0.039395015360344281 0.40270556520374595 0.65521313440661388 1.5673490322108348 1.3451107754143461 -0.56606249383014318 0.41461617808247175;-0.38629799656834157 -1.1275513909178911 -0.059687959994228927 -0.34230301087485659 1.6290022836313371 0.22888393627219067 0.10672180869611585 0.009010780918629651;0.59668874167901254 4.1541416559474369 -0.55848830008522832 -0.0074935534125126352 1.0223017617696795 1.5639239646631355 -0.27861402624975862 -0.13352628857979371;0.52324830201045847 0.8309500905055025 -0.32109825470088987 0.74156076379394165 -3.396383861735385 -0.26423406626299628 -2.5452329512408913 0.489404550874873;4.1653898767570912 0.032635431936265745 -0.92819301438287438 0.46272925131234077 3.2342228813260903 -0.98242986594602333 -0.12587039581559839 1.0889082552777887;2.1594846985408318 -0.40437773390332105 -1.684338917095167 4.5590830060983132 4.2697555194857308 2.9328104646502124 -0.11142977028996891 -0.78272742220997193;-0.30193751956324227 0.74811386742822805 -0.36103878421443641 -1.2213157021909056 0.30912481971752054 3.494534590089446 0.47000539126481006 -1.3779534386033747;5.9634213265370306 -1.7027382992302773 0.23137607082296135 1.1665381548152287 1.8156538241099158 1.535086543888182 -0.61409487813836527 1.2502575771265712;-0.46076569496498387 -0.34888719005101032 0.71283393682796536 2.4039910869000312 -4.237679590035083 0.73547306650927291 -0.63751448650402154 0.088637302814388891;-0.16476700829239865 0.14738610102147112 0.12841684246060686 -0.59899371280925195 -0.39281345228028325 0.99309991837007183 -1.6357699546458628 0.25467855848496423];

% Layer 2
b2 = [1.3192104006449976;0.77752200174966601;-4.8354403016109906;2.0746929081555305;5.267339883294718;2.5364854256133547;-4.0949335821934962;3.7451958389750328;-0.11847775023836911;0.31903631612300265;4.445451419889058;-3.1586089971168083;-5.1081134936191095];
LW2_1 = [0.29603630212938947 0.34554969480686598 -0.1304156133112456 -0.60209458745662048 -1.1939090027797949 -0.42279311932366542 -0.51133134503334521 0.016951847265411747 -0.015597844005572514 -0.24204627165735848 0.095141198642463315 0.30728074788776988 -0.052279671736886968;-0.26959754098415112 -0.80950333561771748 -0.069243885356223389 -1.8422309353767059 -0.11661273546603634 0.40053372052957659 -0.59438439129214526 0.73287167024558098 -0.34592784260534881 -1.0022479613442166 -0.9167721815013008 1.5456802367890501 0.87741252889353782;-0.034155425135221282 -2.1603508052025462 -7.7710647924359337 -0.73138407696038843 4.9172063165268867 1.5680919699838622 -3.1248808831840398 -3.3183006672595834 1.1694693992055549 2.777099636647812 1.7352384019457623 1.7462392325702809 7.1043154893534206;0.0023318026422895696 -3.3408008859332528 -0.12876398847358539 -1.2418924307245574 0.72137322681887051 0.90053438208769787 -1.0617382260980255 -0.51692378786597259 0.80024423397390154 0.91559295745307878 1.1938805938078885 -0.79411326229356871 -0.14547854837805943;0.92945278681370258 1.230411753181007 1.910539394928239 0.64083716347565944 -6.6702920185309038 -3.2402534930086055 -1.4878652793326497 0.49708174839823038 -0.44317416816515798 0.28401171667079717 -0.40204144198473168 -1.1391298175214277 2.9012814235880091;-0.70350365582913943 -1.7761808191401929 1.109402240200835 -2.3297934353452643 -1.3153174860997729 -0.68444763848362233 -0.24532856064236236 -0.094664363627678327 0.14132172023000913 -0.22394031004749598 -1.0531774191976837 0.55085573259466214 2.109931117916541;-1.6655777593302976 1.3369884257285642 1.4042612408519661 -5.89603832780878 5.5229614871745873 -0.21656754324545496 1.0804447376853199 -0.67716749561476075 -0.87738885679291023 4.9602131540829744 0.35394424967144711 3.9596199352881167 0.14200967895184408;1.18944831654286 2.6111705070629991 3.2257553895913351 -0.80148022903733451 -1.6269010001467288 1.7465771042594767 -0.4491445131401175 -1.078552149547287 -0.1931011605071552 -1.6594892202761373 1.0910737562341692 -0.44529902732149229 0.79780706268567747;-0.31468722657676584 0.79745249501584137 2.0953305814180663 -0.085679771950379471 3.9905509238183847 0.35929179637174019 -3.4479777157603215 -2.8207076051832809 -1.0062200440227895 1.180609382182056 1.8187031786524928 -0.13068924820087355 6.8081071621271088;-1.4283378393680772 -0.9255293770867864 -2.593671876973886 -0.35779633256788496 -0.44428684990238082 2.1090186942485571 2.5186313925429666 -0.025198591923194118 -0.014123738444388551 2.6387401662918339 -0.19273610782499417 2.8012372672662589 1.0825431024321606;-4.5391307167631103 -2.587405871834648 -1.8094436143414154 0.82323628599434084 -1.6614944022316978 -1.0768121497328609 -1.3872180266768288 -2.7196137486394831 0.73912390479439383 0.59809014420652074 0.92339742473559805 2.7583740022552994 -2.3832472842209182;0.22226303494693689 0.24917826581106711 -2.0236090892244101 0.6188508339531229 -1.8423888794606682 -0.28203772018537876 0.44531062564308388 -1.26778244879033 0.17757783072508471 0.76349546114920741 0.85812056776467294 -0.57221321583910312 -1.1471242944103275;3.3558603661370445 1.6238402982762783 -0.59954712289471512 -1.451209791115138 1.3092730578575844 0.46337251542560415 -0.55717059406094871 6.3525828541196478 -5.6079018984069773 5.3205954735954117 3.5948724576760425 1.1474046990413111 1.1255395641950703];

% Layer 3
b3 = 2.967673049048781;
LW3_2 = [2.7358436312143217 -0.17444638210011656 0.12547845819152603 -0.066700679153288117 -6.5606662573124632 0.12948915415574702 -0.039834299699395663 0.10717257956995865 -0.055755655631900346 0.055082006491090185 0.03523799753163076 -0.15888493182707389 0.13585463190944949];

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