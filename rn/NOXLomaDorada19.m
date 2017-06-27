function [Y,Xf,Af] = NOXLomaDorada19(X,~,~)
%NOXLOMADORADA19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:25.
% 
% [Y] = NOXLomaDorada19(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.00280033604032484;0.0179856115107914;0.0558659217877095];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.7744542625749671;4.1987073084632973;1.4896820332893812;1.5224341087366295;-0.38319674748196964;0.24132241190733236;-1.178495702199817;-0.43480718722993028;0.052430910487259438;0.44962304863417346;-0.56392498308657013;-0.0037136037365773367;-2.4147548545480277;2.231640544648382;-5.035871619577903];
IW1_1 = [0.95590105464857233 -0.50582554059635043 0.087693347524135351 -1.9026735712406389 0.0024935952094658487 -0.65834592877378184 -1.0222480522793658;-5.0210075952047282 0.44544049819224291 0.91939464731642029 -0.78596034988438224 -0.60697439446375467 0.70134158807571401 1.3096098379313523;-0.79630889908552227 -0.1972429258865982 0.30217037318123924 0.39964664446397474 -0.62947225821645336 0.43098430440224322 0.45467385358229329;-0.48189921667155333 -3.8247422275557073 1.5540967028698023 -0.91382574706605679 -1.159936584077176 -0.43942151379035305 -1.0266244638691817;1.043596165953306 -1.4290146188242834 0.38076161546474219 1.3852996279317733 -0.31142975067315215 -0.16220087190922655 1.0210282761870975;1.2683406064156175 1.6758466041139486 -0.50312224191603738 -1.5823644361397688 -0.65797858471425108 -0.47394373676945711 -2.5854989526103966;1.5201586535357079 -1.0760627979725306 -0.7413301369798978 -1.5466631394159753 0.53998553521627568 0.4313225461440966 -0.86975714233434687;0.78206364294568864 -0.40750030903103152 -0.15043757060810162 1.0364548337946855 0.37995049133862946 -0.70439650015124688 -1.0912289297798146;1.2559980257792451 -0.79909864712594514 0.46891415540894787 1.5334959897734837 0.2892334886524941 -1.5487971411307955 0.12710767601817705;0.89965143495659294 0.67653641187285307 -0.13738176947249586 0.69499132695763355 0.41059093685215542 0.82019918789552337 1.0229182166628616;-2.4056359110148153 -0.067343996649419327 0.34376187177700396 0.9638781862712118 -0.89790136691150502 -0.70826779607366441 -1.9134448444814047;0.61170561610280749 3.4391315504197135 0.0010447636770354735 0.06422537498145571 -0.13801219563603689 -0.1767730244767475 -0.20125217804046255;-1.3420763273231064 2.5995557624664207 -1.5479527004803653 -0.30469119156397301 1.2429500831790838 -0.88098018355946417 0.49288441753770817;1.0307060708460152 3.4175679011138249 0.23256705171535486 -0.69056828555789396 0.11134968758715989 3.0735380926620666 -0.10182633542496271;-3.5326124487094845 -2.2310512511382572 0.54075244189295346 0.79165348848857675 -0.51991867179879125 -0.53102006475858299 -1.8676081664036319];

% Layer 2
b2 = [-0.82181864203974386;-2.3400842080509165;0.47532238624050654;2.2977557284899959;0.38060275221486572;-0.078607313819636898;0.49728605676126292;0.10138208390273654;0.060149914553332295;-0.5952721164681134;0.20266034593924628;-0.3533567284999023;-2.0474730650073041;-1.8144998342174059;-2.5497333235700177];
LW2_1 = [0.4990153696866047 -0.26558843014036121 0.49768157075759512 -0.36766338956068167 -0.092896046873246374 0.35122360576880635 -0.0020196272412006319 -0.76041504592698783 0.27005309442583314 1.094849507051791 0.017879519410139651 -0.40344530825311492 0.066370030847186595 -0.35231539706598353 -0.9929968624196932;-0.22275922978485382 1.2873072853900518 0.0065097608734038456 0.27543075201135736 -0.6740501422947125 0.3877298791227789 -1.0287470845629505 0.40624830615222324 1.5755029581291127 0.085204629015905725 0.64542701572697891 -0.37527714544447616 1.4402917262174892 -1.5430648504238196 0.75840080030014256;-1.1651326742077195 -0.015970734249413698 -0.29051523843480304 -1.6344181965392512 0.41351618641846943 0.35370430710627676 0.094903746292015714 1.5799548792895168 -1.3032835067994315 -0.23004240738258791 0.21107322642992651 0.9200323766473143 -1.1604066582312214 0.50392389110248548 -0.44327058078425335;-0.022782178652904932 0.23238287477444503 -0.42894525689111174 0.18317481868777552 -0.81361840251032524 -0.13226299478586653 -0.18811580980619053 0.52778681129834337 -1.2694806450680935 -0.017236196200513927 0.16792407414470742 3.381910681418431 -2.5131636893604483 0.5273287958593833 1.5185755810936719;0.13160856069271298 -0.36701691283402116 0.29590171286505951 1.0946245991066923 1.3435284285084172 0.064327417732309641 1.346759379583411 -0.094084484233114746 0.95014794940638003 -0.49131213642931298 1.0643375895023599 0.55046373558339001 0.55169190071154639 -0.52599644790251354 0.4185247155623299;-1.2304219716509495 -0.90651925449550341 -0.65003311056057733 1.0572245706129266 0.39615666898300556 -0.82631770183127351 -0.1236813163031774 1.4176902879528004 0.28976247218809564 -1.1782234005173715 -0.16537975011265005 3.0111717404078315 0.94758632776761376 0.70337096255755938 0.95121839971678579;0.76801708148474257 0.60926354678512884 1.1101175881901202 -0.14628617608306607 0.77353089116383467 2.4264019138745958 -0.19071104993215654 1.3304322558166537 2.0575045843244379 -0.66537729808703272 -1.4905099015471255 1.3845904145002121 -1.5474116593580127 0.95168453276836429 0.12404278004800082;3.5759892333214509 -0.35708896144600166 -0.38344403511426961 -1.1234851311399328 -0.26932737902829712 -0.64148320314386553 -1.1900265656253779 -3.0145561813033077 -1.5253450537126496 -0.77293911268600846 -0.0067903670372465204 0.35639379068672605 -2.1979038676065374 1.0954341920356128 -0.43867787571471234;-0.31933370003301698 0.22808158318594243 2.19531216032712 -0.95591453401789339 0.027709912023715075 0.55740989745349478 0.18876281609919091 2.3415945687977713 -0.71970228958915239 -0.17990549195073718 -0.11120795121371881 1.1502577287824227 -0.845229867191718 0.22427604074819502 -0.051202248801538515;0.96075558221559221 1.6696545573243535 0.082477722355328131 0.21815066765123448 -0.58936188672230649 -0.49757606795342046 -0.16449371825168857 0.45226292427532966 -0.59378482050294401 -0.45030461250985016 0.4594504861360762 -0.17573137416147616 -0.30189407032260573 -0.058635869119920483 0.32226792254065584;0.73783420155636548 -0.57105821929037748 0.31984496604312818 -0.78428599915480157 -1.359271871052673 0.099129311186373109 -1.8134370553692776 -0.22835764387425544 -1.0282378301022155 0.56314526181067892 -1.5495505928367341 -1.5581807440309789 0.39083491849125263 0.68263813879521473 -0.51271277063868115;-0.43099097605304709 0.75327559233631369 -0.22602954442078016 0.17365775784454401 -0.59014000644184139 -0.7717805754078273 1.5478638445789656 -1.3045975589960834 -0.015298284267551948 -0.84714740428405799 -1.0945879481212448 0.52525076376217783 -1.0731460966357322 1.4631953494697045 -0.77713341094221788;1.2082552117573826 2.7816106195682009 0.0093678211283220181 0.042037925323527223 -1.2099766357573791 -0.43300230006282187 -0.25827488091157347 2.798759064287514 -1.0568767482195056 0.98172944606330392 0.79522054745663828 -0.79558477213160983 -0.47087773239421216 0.12784605859131667 -1.2180735132115963;-1.1262402674069141 -0.53848079886308631 -0.28054451059432273 0.88120602062860931 0.38566010528554906 0.12377324989582883 0.25793663033720421 1.7030491072452933 1.0222206151867737 0.16665162063903705 -0.49646999249827767 0.14186627560989168 1.5473404057998785 1.3117203096162682 -0.37779966771889406;-0.88880967922987997 0.7290676059151685 0.22903571875580042 0.76415319182348962 0.10438160892765339 -0.2820116991907814 0.29745486025521517 0.050099920360042717 0.86712336953387503 -0.5035810959035687 0.45842621852866294 1.6100497523273201 1.01076356318816 0.048093530834095261 -0.0065177898521627253];

% Layer 3
b3 = 0.93958440340574012;
LW3_2 = [-1.2331208081421055 2.1792830565791728 -1.2995672865917842 -1.7480201226236249 -2.1173228735241976 -0.87753909891579862 -0.2110586596422768 0.96203899688804617 2.1434063558588026 -1.3766536073550839 -1.6086261805925515 2.4572057281664472 0.62287450193376759 2.1907705070293897 0.84072309101253972];

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