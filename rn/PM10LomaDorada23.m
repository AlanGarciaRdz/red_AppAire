function [Y,Xf,Af] = PM10LomaDorada23(X,~,~)
%PM10LOMADORADA23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:14.
% 
% [Y] = PM10LomaDorada23(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [5.2729379414052584;0.300925653863168;-2.9372696989583207;-5.2009338792625517;-0.13209441502857158;-0.82132998005642965;4.3477939092365219;1.422250726755671;-1.7005316761778686;1.6786479455937142;2.8380595242398963];
IW1_1 = [-0.88111042766541392 0.84174183476772291 5.5500845326643242 -3.986689955988413 4.2834686152401114 2.2673038875426319 -3.856753963724521;-0.26384655579725197 0.51219742873352192 0.17288180198425149 0.091286129039653802 -0.45616723707971446 -0.76285474924507135 -0.15923932073343686;-1.081471744268514 4.0082853256148363 -0.45137285352780193 2.2731043917067031 -0.96406174762823627 -2.1034655947747982 -0.68565886690565392;2.0900486178631836 -0.16527164089854426 -1.9204320893581683 0.76513961976880529 -3.1223179667213494 -1.7111729013049752 3.0663824515584905;-0.56921358742519945 -2.251559615761447 -0.75126201795921621 1.2327345673263639 -0.13667474868539475 -1.1139039196235128 0.48636694107383399;1.6027967489069206 0.4666612291246755 -0.56098360195950214 1.2156487536399136 -0.82449861740852259 -0.98436527423273978 0.20692365919451602;3.0872633647908412 -0.44823567209483905 5.1884872175544245 -3.3729642465026406 -1.6705583817736136 3.6343530145403102 -1.3850148807917497;-1.6286359222217426 0.16776621794572372 0.96624492048605137 -0.82577382642320996 -1.3349395684110352 0.4379140625319895 0.57835949252481667;-0.62359114631942281 0.34288128069828827 -1.1304610572337237 1.7823103881462186 0.17778688414746849 -2.8071863915077744 0.25696749534744229;2.3371329962338163 0.13548946874336062 0.29963356433254207 -0.78118613050430818 -0.17936574527684654 0.85314861177563828 -0.20244735836883943;-1.7464951963056869 -0.11149919471416678 1.4629552441001299 -5.6201491142661126 3.1693984443212426 4.6374359546005079 0.91672139683619414];

% Layer 2
b2 = [2.5402986277208122;-2.5835977785299837;5.4310707950940813;1.8613773735365171;-2.4460440482122485;2.1191456504720034;0.91655127872333564;-1.6598955349512456;-2.6353495070866466;-6.6623538934658262;5.0971787113513587];
LW2_1 = [1.717730651336089 0.18292827058600947 0.54028871012624469 2.5740082348896411 0.047100205811223941 -2.0690978719734487 1.5044789610662439 -2.3713999911306076 -1.1969446006276432 -1.8148955960541886 -0.99467964930100083;-0.95092954756389469 1.253525198679432 -0.30175851519769487 0.0038796827567519846 -0.48933433586559061 0.49640406769532869 0.29687396810021038 -0.49395058773982847 0.16798492513700009 0.37202470100303592 0.96458938802875016;-0.81870905230707713 -5.7498542313578769 0.11546833629528472 0.51621984376537833 0.96891779528991184 2.1344130289595564 0.95365051548794544 2.6695419024680778 0.46772918408742037 -1.9574977344434301 0.75200931277325744;1.1285534701207212 -4.3139084007959108 -0.26069839060231248 0.53383143255015342 -1.3116997394421614 0.62891304821581206 -0.43773079339536369 2.4817251593597875 -1.6972798383299117 0.63768936028457057 -0.14607082694465198;1.3605177872835623 -0.4567047267148725 -0.36445966336709018 1.0459030960840985 -1.1627757346962744 -0.90940469626477094 -0.0020063137656287366 1.0652054313431374 -1.2894979638299822 2.0659247231993896 -1.0855216272444597;-0.27682101057981245 3.7274737821122712 3.3755146750163707 -0.25608981147236587 -0.89245657503894049 0.29271948524892644 0.095499063271082318 -0.39107264976444561 0.61213304562744686 -0.87328220711993243 -0.12300183312259592;0.63718636627071901 4.7328290556415364 0.83907860169592241 2.0579362650013109 0.97665160446874089 0.89408381051381502 -0.1597524163419011 -0.98423260284301428 -1.5006153726220159 -3.7332731767032796 0.90427085448838407;-2.0763144700090095 1.7148709604824617 -1.1859617900363504 -0.41104558083654841 -1.9766382835425322 -0.63268169953294806 -0.8302126459459831 -0.31373779861830708 1.5223246868330875 0.90674684143179518 1.1859126775120363;0.028338267350860979 -0.85992123884185778 -2.2066217929976353 -2.1090725747333909 -0.076912549046804807 1.7107221812934454 0.20837839130671215 5.8588967686662121 5.3662290786496261 3.363532485188609 -0.36024520144184374;-1.8729800292857828 0.3446062126565782 -0.83111521348588902 -4.5164581802335535 -1.3222581717091808 -0.37792904926486426 -0.83714530498987427 2.126048800014964 1.4266686745724013 1.0718536933997014 0.93505723284304176;0.46897643875780293 1.7037241590252596 -1.8246328301021946 -0.027083449261669085 5.7401918834385919 -0.23595383770818523 0.54336135458846646 1.3510383727719852 0.60622139076888137 -0.67457763972250562 -0.42202986537397086];

% Layer 3
b3 = 1.0797042371248295;
LW3_2 = [0.24050128359088946 2.0667148701485827 0.2310847869130902 0.32293844978285124 -0.27223769123417779 0.22850171931632532 -0.27657144072868756 -0.69303216838156478 0.19257373095568164 0.88035693108108426 -0.36304667116286454];

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
