function [Y,Xf,Af] = NOXMiravalle22(X,~,~)
%NOXMIRAVALLE22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:30.
% 
% [Y] = NOXMiravalle22(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;2.48447204968944;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206;5.12820512820513;4.16666666666667];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.4157592285584746;3.4626262609286913;2.0677580542197846;-0.75822671468148162;-2.3520626402522944;-0.43046017833439454;0.023018318461952035;-1.1054176423053346;-1.0992569072529885;0.050891415741066974;-3.5570299827682108;-0.69909351791222563;2.2101354279625354];
IW1_1 = [0.15023895683510402 -0.65757947043449017 -0.41416390795227831 0.56765194321879753 -1.2734561140842051 -1.4361354056905953 0.43499229592416078 -0.23661572188310698 -0.50222896796601391 0.80870018166658586;-2.4866216300106085 0.59037211988123561 -1.5355782611045619 0.045003435512455073 1.0233345493209289 -0.53713168961007163 2.1226532199651444 -0.39210250626312471 -0.23586627855549963 -0.64147493587993287;0.1864187869194372 -1.2478864621979739 0.34331966078352977 -0.1100200724243325 0.8019483673575738 0.49791508845503674 0.2505098576275781 -0.15688220835775743 0.29214475843945387 -0.25969281179835885;1.7837695449752726 -1.3468834143796866 0.98525245473421608 0.016628021380448537 0.77113358916657937 0.87870594804034219 -0.41572813326889863 0.90719388883526253 -0.36865685295607609 -1.3853378783422199;1.7415654569585401 0.13564377023538152 0.0036669913363186757 -0.46307399243282854 0.8262224121984072 -0.037353756507571625 -0.11644660523478799 -0.090161300277779771 -0.26571750638671515 1.1401468450637418;-0.94335939890809273 -0.17346664194729708 -0.6368321739475058 -0.19186168344871501 0.2867808813466533 0.45413030703423746 -0.17023872390893119 0.15532471083589672 -0.35657446333390935 -0.56703389812370175;0.87724446506357268 1.0982996307612345 0.48089147788525727 -0.73798770374736566 -0.45383465852732197 1.0250486446262952 -0.3336905510418573 0.27562280168591113 0.10898486306669759 0.46647886346592582;-0.13938154137939857 2.1751814929987998 1.0516178554623485 -2.7024218158212134 -0.56140504625723242 1.2768357405322297 0.72518220457646176 -0.51073057289415058 -0.1569407559453968 -1.6833610546495044;-1.1872218978195046 0.46292133955227766 0.21253040709756049 0.33359193053598613 -0.65559979701059912 -1.2728122369849419 0.067040700626113559 -0.31212067905247104 0.022328986074168833 -0.3080584563197411;1.0628823378665415 2.1995732440092985 -0.55970986313296167 -0.83744723895825635 1.1678172055379485 1.4195080954078436 0.058111252003321866 -0.24386215354036359 0.52946120179305545 -0.33047427816927794;0.51007743654225768 -1.0964408934047822 -0.83328081040848512 -3.4254209716741166 0.18370862499740853 -0.76524568489026978 0.28387985001023402 -0.71697109350104704 0.67189641685304002 0.19527731035597584;-0.077401909330934895 -3.9687192014353756 -0.12933231165575498 -0.67309045702880532 -0.065755890036519854 -0.31340304151338216 0.00059472457604334674 -0.18108803550078281 0.41392129071454065 0.033493020771247439;0.39529365986457493 -2.5482533458245711 0.13849541298963786 -0.29694995205748148 0.32856298659878247 1.8873452713874888 0.068136364068416708 0.064129954181870091 -0.62853362380456479 -0.16831569754181938];

% Layer 2
b2 = [-1.6863859476944292;-0.77265240870749596;1.8006039865783336;1.0441837294586038;1.2624187122742649;0.0083930593626701348;-0.87791270357570739;-0.12126808970080256;0.97346314038976578;1.5244748615265649;0.69039275251557075;-2.33237300638572;-1.8337117200948156];
LW2_1 = [0.14351427913185788 -0.44952161818211556 -0.79463164932451702 -0.10024096026699796 -0.17380982000178874 1.0147090926287761 1.971371481951395 -0.097809174815340946 0.23023171126807979 0.14183022223690539 1.5564166060027993 2.248606064130469 -1.2710411352964988;1.5833405448329436 -0.90479232005043531 0.40259683793170625 0.57073411082354286 -0.32388405833021611 -0.27510583016649792 0.57064699319721368 -0.38080570024958149 -0.042271267492371617 0.96951085328910447 -0.096198084278804913 -0.87434503159608568 0.63018773814912443;-0.86245722287252069 -0.3685694217611698 -1.5758365026338845 0.20670114174610013 -0.74766030251719529 0.27794928208879155 -0.71405792591754225 -0.61502719021915042 0.26916986730461895 0.82259086315825547 0.69275431112913799 -0.074862816804143598 0.10489055219185434;0.25214322724229643 2.2775085285885588 0.30247562769658409 -0.24934950388614047 0.71349659470086901 -0.35380515200261442 0.22877286609267108 -0.60739071307354531 0.81434868741561606 0.21674876004267357 0.55870203922578809 -1.5111825400781895 -0.73258586180062357;-0.89528946162296141 -0.16352449831704463 -0.26022666237969311 0.40110984490133605 -0.31000728371079667 1.1166919517627412 0.38916589814390362 -0.97229704026518593 1.3406003659485117 -1.161707995449659 1.0476495083383384 -0.87126306499217476 0.62635074532739898;-0.62269980383123913 1.1092265366415974 -0.71724840512470323 0.097354667744105075 1.2188690119958865 -1.4478444162068094 -0.21507465530840153 0.54492779730973928 -0.54764854417811759 -0.099312635712019204 0.25881242257202242 -0.22674972921338882 0.43578082600927326;-1.1144848805113758 -0.92421133547867407 1.3924349292736951 0.32268075894008585 0.15751035482719397 0.62169083368345923 0.46301504109234631 -0.29530168641304483 0.5087272821493305 -0.13988530394160509 0.48957287300259622 -1.7936925858950765 0.89004200938485989;-0.015718278385592553 2.0321841381309063 -1.1668358829239007 -0.20632333517080462 1.2342254337467509 -0.73158821068326318 -0.23569253818363889 0.42253113614698262 -0.25139938725947431 -0.012582062412880252 -0.16337235182067544 -0.51347682515567894 0.39974320008560638;0.56856853147300002 -0.49289199714986148 0.24017581674719932 0.5580885369503954 1.5560448595188481 -1.6397669799428578 -0.13142454638513085 0.25091518349089287 -1.2952402843386401 0.76264763488464193 -0.52999951613745211 -0.52887459900600808 -0.65020720241450503;1.1422262599662456 -0.083640272214898601 -0.88936102541889572 -0.35329516057201804 -0.47719703017106851 -0.7314700422260243 -0.18411326269436479 0.34780923301754019 -0.19969380057479716 0.12817214958621043 -0.60265453795241075 1.7430494385273436 -0.63583109740831123;0.43103188180543689 2.4971085287798038 -1.085696249247309 -0.61613404773355918 1.1374973530732908 -0.77004676656584514 0.0012472092525323067 0.43726723580376775 -0.17033928463521261 0.63778593026534125 -0.50859733492053538 -0.45441866036737072 -0.5453316814056508;-0.28530406910348127 -0.34963159623722584 0.62025094974823025 0.55073956935014856 -0.16722798499279151 0.67671427011422536 -0.71111172160646707 0.39362961969170229 -0.8810222969598549 -0.64626660270766112 -0.17246900674404614 0.89686622974516927 -0.45038434528754334;0.19723990120725821 0.53439668329381063 -1.6730895248765447 -0.43807392401689199 -0.1361519607622827 0.59873140942849878 -0.33100814148304908 0.2405861361621881 -0.21957081277410748 0.21875526712258259 -0.44859954756078946 -0.88261426435544066 0.52027829534538239];

% Layer 3
b3 = -1.2584465719197366;
LW3_2 = [-1.0791723648811948 -0.56306928663650802 -0.67514678006784734 1.4961261862620339 0.38242256462275281 0.81245867132070404 1.9785136353004613 -2.6039628995329314 0.55620060768447666 2.3270838532761418 1.7766901959989112 1.6650696177692463 0.73684073390759464];

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
