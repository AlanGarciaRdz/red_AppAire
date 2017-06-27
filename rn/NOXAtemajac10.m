function [Y,Xf,Af] = NOXAtemajac10(X,~,~)
%NOXATEMAJAC10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:15.
% 
% [Y] = NOXAtemajac10(X,~,~) takes these arguments:
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
b1 = [4.6191407594584;2.6307168572013566;2.3838520601555415;-2.7291616234037446;5.0195797114648499;-6.0751141360842995;0.07658209693956923;1.3078477893562914;0.149087741445458;0.31630392853864503;1.4058234424476201;-0.9584355811409152;9.4790592749315845;1.698740556981118];
IW1_1 = [-0.021617628828165758 -5.2137795609064428 -0.72851071280256618 -0.45386066214000098 0.60098051505633365 0.38858209934891325 -0.21129976328468297 0.472932410186092;-1.6896106200036807 -1.8259107493520077 0.19725359226385614 0.80790185547566584 0.21531312926929652 -0.12955080550511361 -0.39872773636938952 0.34176186991286145;0.17328112188867814 -1.4021589315389948 3.521490029605749 0.37332720459443675 -3.2114500289209933 1.4634100305627029 0.42410609102418767 4.0343240712345949;1.7546498431489468 0.86428060640809479 -2.7324533551596391 -1.2164416817575856 1.5426526489563399 0.26714043697370166 -0.70147773997072371 0.96365523151114707;-2.6077774135611542 -1.8289322495499527 2.2800089979748215 0.8758712273524577 1.0838664238148381 -2.0879770330067946 0.83767766190765103 -2.2967795729702862;5.2243327875185983 0.12347272451436785 0.095195516845012221 0.02073563519624972 -0.95736164422208669 0.49991123978506491 -0.040149887309522153 -0.39620494709370646;1.047921733357611 1.7688102141344169 -2.9561277534421202 -0.86329814507073188 1.1128683574439273 -0.55714049409206257 0.70611750788121497 1.4608319537671299;-0.98085873813719393 -1.7405620635771628 -0.59791919843099883 -0.055404547716610297 1.8173748366653693 1.6354030113281348 0.13255680922699328 1.0184266411607383;0.49232966538826384 -3.5214983045737833 -0.6049803146791497 0.94642767350974111 1.6443813399080225 1.115673717876865 0.42151193569887724 1.728316349016962;-1.3416618506833486 3.1576267169387315 1.9851533280475271 0.013311711380857067 -1.3842929964709834 -2.6830972564221178 -1.0689419686433528 -0.02754260175019126;0.95913041051399772 -1.5772222087431298 0.087489163551546845 -1.6601404183021478 0.47452650369378985 0.95943968656841816 -0.55050298574235879 0.79221229858901732;-0.085486435002110617 -1.4074222995400756 -0.044437811471342258 -0.31630578972750711 -0.20934541738677112 -0.36453573040447712 0.068462013168074612 -0.20392067460510968;0.40348304582915523 -0.26745727893620858 8.8574461812004941 -0.20301060917625693 0.055633565075414927 -0.42053538647861793 -0.045433913793428905 0.012164248185127111;0.40019541049167012 -0.36055173933455259 -1.5805040945124238 0.90486901868867431 1.6807219968125677 0.93763662201721765 0.62735018801056397 1.2592934402052933];

% Layer 2
b2 = [2.7705395703074802;-1.1931566751757163;0.071729347036331978;-2.4278737363205307;2.4276281428207676;1.6959282528134791;0.62059254975168854;-1.4255157240480014;-0.81493824901752765;-2.9011107570150374;-3.7665975096413042;0.75840533244810382;-1.7487391807298587;-3.4006397046704748];
LW2_1 = [0.29035809942155083 3.0301917348149816 -0.070104844378126141 0.085872368216216979 -0.058369367195994365 -0.28310197613690397 0.068932560030983164 -0.10456433768052988 -0.31291549450392203 0.29591809950338754 0.42445163871789182 -4.4547838736808565 -1.5220068373193454 0.29842284597576701;-0.26190500020891633 0.43812397929300645 0.57836079796608852 -0.11990645090575125 -0.043205243002508498 -3.7329059996827363 0.084992276398980396 0.55092123720231245 -1.3647794878443005 -0.10859956954244808 -2.5172848511576764 0.055889981281325565 0.54550497202718462 -0.43233509132053449;0.80487743205289086 0.7340467643863996 0.95005492980813988 -0.39802956623218538 -0.34345392025324178 1.0116413440678023 -0.5926549845215614 -0.31809336668812699 -0.12453401080369919 -0.47505823370646544 0.41699867951441627 -0.91288076339031599 -0.0012043880096267376 1.2289918678784644;0.19196678290372857 -0.3802991406371517 0.12780948696759609 -0.91897387450526047 0.2161481343654974 2.295051601299932 0.084611665774704151 0.031951004371774186 -1.1343516869471051 0.67868709505245384 0.44012794256438142 -1.9102671088088796 1.3150118386658551 0.37669438376708397;0.40742540716194486 0.30706687079804401 -0.12002165289346209 0.87149303206477235 -0.15545584986866076 -2.4073134187231489 -0.1569449918757497 -0.0029482017572875288 0.98996871919466511 -0.56933621538069523 -0.47188991826023413 2.6474852956994708 -1.4735693996453978 -0.29164715363853772;0.19788718111171164 -0.44557707912324285 -0.41027624571993643 0.22225221272351278 0.090524965877167629 4.0737570921187967 0.12695631494555637 -0.49193263769896811 1.2957087292963145 0.079627188379347055 1.9547325349443214 0.16497596254291857 0.032766122644662624 0.27138310833515616;1.3390180666445408 -0.82633471377848589 0.13180995992336877 -0.51828454590357698 -0.23537170728093432 -1.6982504887866803 -0.22664886482810376 0.20588428603188416 -0.61438838969656129 0.8540200833035303 -0.86875847045352994 -0.26573133308718344 -1.3877548391261454 0.68505206250932427;-1.3262449566515335 1.0477187748536991 0.0083800288521059703 0.75800695678612895 0.41588067422834646 1.207914031827523 0.081740652916897874 -0.61537291993008159 0.47065588093584865 -1.0095154471065275 0.64382148591415334 0.30669235120342553 2.188929534814434 -0.68578606274093068;-2.8941151649481922 -0.12513620675002959 0.15106713496793037 0.14801039739293234 0.19955486468176473 -0.028163428450323463 -0.57253725959297108 0.86178540052240959 0.44211895934768308 0.34867742075955005 0.7189396182582537 -0.48536551975324721 3.1466846310531529 -0.017357445780734903;-1.1807065196642761 -0.33735299152489684 0.08341037962646676 0.65994728133244729 0.77365346858771256 0.0099961203877169738 -0.68557502291243444 1.0163633707105801 0.65191306158294327 0.47424546231807096 0.58325055278358773 -0.64507617350541502 4.2508373646576594 -0.81186114689551248;-1.1415255052087308 1.426021750430402 -0.096352398894818891 -1.0679922263883352 3.5774409743777311 4.6504326894173786 0.5610982355405707 -0.070399514072078728 -2.5882158511566535 1.4891222831463247 0.98972170521024128 0.5479652100893001 -1.041873923300376 -0.01380838089097918;-1.4117192386524708 0.67346621417236874 -0.43609846727430235 0.26975780626016205 0.093378730936032259 3.140559529265198 0.080359725709146082 0.30110406403723727 0.84297198896958125 -0.65464053245297826 1.4794524653855905 -0.035754461024795167 0.18464874866906186 -0.34746893292817432;-0.78019942590298064 -0.27158341574373607 0.0065388141291947734 0.45057732717317256 0.45441314789733073 0.56864999121488635 -0.44307341201739936 0.057489868636917608 0.5882594479725749 -0.11919928713828136 -0.56064038096520818 0.51077263590837185 -0.09100474616911565 -0.27972825589137318;-0.39878502479976069 0.54121400044063217 -0.10640400233029707 -0.51980311522050182 2.7886418801868671 2.2813920672211236 0.23660585353856281 0.053986258184090703 -1.200361309777189 0.94632106424844376 0.4900237510231506 0.23143505037161635 -0.86184281874847812 -0.15720995792589459];

% Layer 3
b3 = -0.54212162716319212;
LW3_2 = [-2.2772259300444988 1.8756103780024083 -0.27239179926346141 1.0116626435168365 1.0147690512934096 1.8389552246877057 3.8109266881471573 2.0337146775420782 0.36475361912112048 -0.38535343997792249 1.2771478834089149 1.7590269559211871 -0.24465678235544819 -3.040458793024893];

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
