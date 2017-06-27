function [Y,Xf,Af] = COLasPintas8(X,~,~)
%COLASPINTAS8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:59.
% 
% [Y] = COLasPintas8(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.241545893719807;14.7058823529412;0.0179856115107914;0.0558659217877095;0.00576368876080692;0.212765957446809];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.4356244416123185;-0.82458880201269746;-0.75375740137633551;1.4571276253279304;0.023474947143963792;0.4180022450756628;1.2028402142914447;1.1120155105902561;-0.052952148823137868;-0.9198115720604062;-2.6224789223843903;0.63976359627037915;-1.5561559560271514;1.6536914844699295];
IW1_1 = [0.47964008451982298 -1.5670954154936056 0.86570926162660655 -1.2098448978413179 0.84158263811725487 3.6583582824821401 0.15994054174434449 -0.02129803222166685;-0.52753823980926351 0.24941630180961355 0.47551518929320163 -0.15047724116240419 0.64779865481870758 0.07403133871010896 0.13529400637742756 0.84846155719990024;-0.41452929080188955 -1.2221591463014236 -1.147607358130091 1.2013156207157396 1.0896752541761006 -0.68352226898794621 -0.649549806207669 0.58124091845021864;-1.9670648025149389 -1.0323918857577086 -0.20918549144211207 0.57847122565683373 0.56794857083789341 -0.27046073787133978 0.20470348243416173 -0.45987682149831721;-1.2289686461034957 0.32250701240088908 0.94910293580474314 -0.85411290266269968 -0.28060463609919589 -0.96509109733540555 0.071139686053933587 0.7683257945357681;-0.53228118593235074 1.8468327454904139 -0.52761192895118791 0.14936563101230768 0.18607692746337082 -0.085133367317885456 -0.36640320912200613 0.079124600321469035;-0.12060077661538239 -0.74305212724669001 0.074507693545763545 0.53409930829441743 0.56294245075639915 0.52312349051335827 -0.18908199864180456 0.89980424828748395;-1.3918489224546124 0.72870275096042281 1.962249909717015 0.16825539148752058 1.8860432194484777 2.4819301472026232 0.73787968261100068 0.74112983977155822;1.3035814606213074 -1.965084447517409 0.17745261716359734 0.58277790310355648 -0.56313948783604761 -1.3147536550625714 -2.3582445015531759 0.94477764162789357;0.39558261673595707 2.3354422210639161 -0.092632731681790856 0.44858855051920449 -0.11842532393217463 0.76099765765554994 -0.44957097040691724 0.33114799284618995;-0.13949421190869812 -0.66616112327751154 -1.8461381949929307 0.59395015739273038 -0.13480578690855999 0.91075760201532807 -0.12349635022988963 -1.4945446081561042;0.92516248905033427 -1.1824289188844843 0.84801838015649311 -0.37299647742118952 -0.11420435554988166 0.46323126767922657 0.34550067146132984 0.02628912381789391;-4.3420367918459792 -0.34785150346211524 1.1894287353008974 0.1753116731093145 0.35593128882955044 0.61704813224831212 0.45544681659078928 1.0171454495518601;0.60012748404567029 -0.44252601587084595 0.64116988995452595 0.70050196391052899 -0.16976980837831798 0.096322019229661521 0.58297089787084888 0.21847991622634838];

% Layer 2
b2 = [1.3424209808947538;1.5320448919437397;-3.6036034827517609;0.48986464072193381;0.29914390354439496;0.11119186127144731;-0.62644122192728391;1.3482815203825544;-0.92146503625614451;0.17400396319829847;0.70254247189886854;-1.0155392404191339;2.264739692507217;-2.0337364045398396];
LW2_1 = [0.1936518532614678 -0.54555452394705617 -0.16633238426053448 0.29290982192854187 0.54417633252286035 0.52840389270180377 0.46378881717392245 -0.66146742487814092 -0.89474798676055867 -0.84126990951305547 -0.13465539660065987 0.43794243068345179 0.90733251521125546 -0.17582456508868796;-0.16822854031920892 0.94222026873677478 -0.17355103082743331 1.7027971352207256 -1.3199386348543272 0.47368256918417956 -0.55198752261666473 0.35929891500133476 -0.052254334016618983 0.76454143289168619 -1.1224592012893921 -0.38438388781861144 -0.34835642842825099 -0.30427617414757113;-0.26597594498488519 -0.17812319584246639 -0.34573021769446244 -0.77767157841960455 1.5767982431041747 -2.9295148956671904 -0.23202424794435939 -0.65978384223787612 0.0056065982583492109 -0.33894647282186086 0.84976487690908087 -3.3425814374975062 2.2602007840122611 -1.1590540363151121;-0.43599350933240316 0.70755950387578059 -0.088688530999771489 1.0738608756495751 -1.0543309746003395 -0.50515564209784003 -0.86002049445088491 -0.49421120152584613 0.52718862272951394 -0.27935883436150705 -0.5657036297989938 0.31212822149190417 0.8568817797536088 -0.36062084975190795;-0.25074192290954722 0.31093824294267985 -0.10143443076373991 1.2695166869225538 -1.219152151798147 -0.11964393117948932 -1.0889715472518327 -0.79039227661620259 0.49732702173432913 -0.29181807058281339 -0.66466872206434058 0.38486610289068723 1.2482687435321653 -0.52905042425057869;0.52756460201610289 -0.60554839665191906 0.71254012636427844 -2.1200073188236206 -0.7965981740542013 -1.5051635542069557 -0.23240548179591458 -0.45740302234780922 -0.020679418106622011 0.064148091597403423 1.7683938286303544 -0.60036399964946341 1.4094207237573668 0.56309158053531649;-0.60283466889930326 0.28739764468957052 -0.32913071658578236 1.6149137271708403 -0.054223443285700744 -1.2252702908099806 0.029438783673481624 -0.54518423838547347 0.59070893970422633 -0.31623802196733442 -0.24038254298775152 0.93846932588823628 0.32531928043659214 -0.62141300954535972;0.66430913305997952 -0.61592563498822717 -1.0421536459549856 0.76556546340575071 -0.63595949390666318 0.66946465635309571 2.0816558009896786 -0.69206234985794657 -0.51587257707501366 -2.9893589774857356 -0.61298014507674503 0.64428624273780133 0.50360223940915505 0.587810942089809;0.15452687547950433 1.244672622068854 0.5941176104569279 -0.33501344570034547 -2.4983152253575587 -0.42061151821305343 0.18504548158921111 1.1012790371549142 -0.14427616027635823 0.27468379864120807 0.84444946033253721 -0.39196259953188828 -0.63631236192757135 -1.7213987580132077;-0.79068596773986577 1.2458523914382948 0.16926922815940956 -0.997535229767884 0.70894730855391652 0.19051221993589054 1.8401255235460672 0.34403311353931204 -1.4895797810860303 -0.10851763784757652 0.43485656864830347 -0.5746556118113717 -0.76185294369479961 2.3387327710516632;0.71815860689895328 -0.9536648378554583 -0.21383961839962817 -0.046940302877823921 1.0258083403767255 0.64798424411135847 0.68321159039668899 -0.52132247945807342 0.05564038800911017 0.61827135466491467 0.39564865792663029 1.2325171033583096 0.01079525011900407 -0.82002179260986907;-0.084637070881848783 -0.047553116285872464 0.70886789485404744 -0.42138467474121727 -1.4252433208692177 1.5814077234577826 -1.0828247092731949 0.88456904134564818 1.8974070998516925 0.84467450377367448 0.32968236538479673 -0.2957118537544372 -0.010392047532523008 -0.88130336171954593;0.45941576608827778 -0.84560478983307041 1.0802240557098073 -0.6887067820077486 0.71978767700570345 4.6357198807361009 -1.2677103452964549 0.45117665214537778 -0.011356359006673398 0.86591115956452103 0.070690606399268566 3.8187333558402807 -0.75247331290837327 1.6299512607775477;-0.2104938638841331 -0.10562720775977991 0.57864461831904379 -0.31797929417419896 -0.93792161575316257 1.1458707819128582 -0.75466044978076219 0.90063352903379723 1.5397255138861086 0.91545886020101674 0.39219513618156693 -0.19173816512972511 -1.0684308343459414 -0.65861765619472312];

% Layer 3
b3 = -1.5930898944175287;
LW3_2 = [-2.4784508707433361 2.1286705436119417 -2.9466527956662851 1.9976926691705394 -1.1468057546292252 0.47108626427104405 -0.58985117405188936 -0.28158052337522632 0.39381232366178143 0.12476694694280822 0.39277101122886954 0.88660241784369132 -2.0689454415849848 -1.9466210846643446];

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