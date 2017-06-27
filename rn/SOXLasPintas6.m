function [Y,Xf,Af] = SOXLasPintas6(X,~,~)
%SOXLASPINTAS6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:44.
% 
% [Y] = SOXLasPintas6(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.0179856115107914;95.2380952380952;0.0558659217877095;0.00576368876080692;0.212765957446809;166.666666666667;45.4545454545455;29.8507462686567;24.390243902439];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.5306527533726189;-1.3028553655230852;-2.0253297347916246;1.091138191254549;-0.70798985030526296;0.21719422484320069;0.17942125083482227;-0.55104599507310481;-0.88265083951574386;0.91181693533832353;1.0380674223189195;-0.57609522495874299;-2.1291794719001498;-2.0659811184704511];
IW1_1 = [-1.9395694024032177 2.433088041742876 -0.98773536638013371 -1.6004057411663115 -0.7499548836897818 2.3573678153085322 -0.014461272425747823 0.42571125880303401 -0.064348778757737424 1.3655572815980204 0.91227576255613263 -0.3798243469966282 -0.48641068059020881;2.8328712132334934 0.71189148193211549 -0.006700548304296533 0.13097949974847015 0.059389602604402292 0.051464322606300572 -0.85869572295858032 0.32779207031994506 -0.1278984028559457 -0.62913391598233903 0.24296469643744537 -0.38088315128975314 1.2659861644054546;1.5845796055065446 -0.34194168534770197 0.080999633714141789 -0.63599710559681177 -1.6044078750872994 0.65076673136990737 -0.32489116861350753 -1.0569886075578245 0.80280974069449773 -0.22007325564112565 -3.1480898400530721 0.50276400887729544 -0.08187233609677956;0.26931966715112504 -0.04502900220674376 0.94869891306379739 0.45585739992226354 -0.35723175789372752 -1.7743660764333169 -0.62544050743518043 -0.31907210294806421 -0.32545779696033877 1.1702885286811724 -0.64620147252315041 -0.54298658854993209 0.10145990811879824;-1.1985476964586483 0.85947557364785321 -1.4444685902386822 0.53124873817417484 1.9328204588969193 2.4871987182341129 0.68210217821309682 -0.30797931167154874 0.88063472528327413 -0.86229573023947259 0.2080937923678052 -0.22122684865839415 -0.4989535116593109;1.0588323184660176 0.19002844267541844 0.13220735919143084 0.11852618021411734 -0.69148574550300368 0.51959609108443827 0.097794821822520528 -0.26635079662213479 0.85703503693810656 -0.37181138856574647 0.24921358209079303 1.0045318898126061 -0.29805678139276842;-2.0699027237691836 -0.020624605555876283 1.2585670428182025 0.34067883050473868 0.6266436683117047 0.16599893669702287 0.59092083334752254 0.086679162063103526 -0.31600546770080035 -0.69778770378782884 -0.98617728173559593 0.56912768756221011 0.50968427808504835;0.24687928061445652 -0.0077891577880376869 0.68047743449706799 -0.012337002321123308 -0.36582116185745417 0.84199395470406013 0.0097017625834072609 0.16691216456199409 -0.30812143999008734 -0.63310412857719423 -0.83744374007477673 0.3049841392453706 -1.6701649059317538;-1.6167518555409308 -2.6570030666103817 -0.9108535930989714 0.4137577477093376 0.86108395240105862 -0.026399636278323389 0.2004296380117673 -0.78246677879503701 -0.060744888402857765 -0.22042503960291704 -0.24556524429904031 -0.37115315247009589 0.9120829014154257;2.0285677414482102 -1.0689653379924178 -0.76539863298624333 -0.62903936647726977 -0.77838865071949925 1.6134847088668394 2.0992949589458667 0.87129005088071787 -0.16862888756173602 -1.2064563824891474 1.5796950414275324 0.3511261747150996 1.4104394347400058;0.045267799233259159 0.75814534507899112 0.25268287030223779 1.5486451691770535 1.0217050779559826 0.76078440767692124 -0.65904651337386844 -0.070065576774196697 1.220138321440331 2.068581467920835 -1.4836513713659587 -0.69576479028631055 -0.015870717890832241;-0.18230153670704818 -0.04898258552926716 -0.54810419441529379 -1.3627698758761766 0.55356123135728663 0.039094620995790738 0.15098641341661934 0.17057058922359292 -1.24170593796608 -0.85943403084070524 0.57372785477596522 -0.84762789672818928 -0.33250097467551631;-1.3686385180721417 0.0058871157508762952 0.12575165397152271 0.043500583422856037 0.33925480386161444 -0.59528655737787273 0.22312515255026308 -0.2747130120600596 -0.010312088132968711 0.32591663761045175 0.51864955224435605 -0.0055899005954852671 -2.248737578397678;0.0012303550794791618 0.14767913952769329 -0.58241012145682391 0.66690396875353164 1.5252359651231477 -0.9803309312599926 0.051053367554949963 1.5251016485760447 -0.55763673554538307 0.66575660337745179 -0.41862577433001857 0.33688758630373644 -0.28759728462152295];

% Layer 2
b2 = [-3.1568707092258936;-0.88463028223926288;1.1984282166492901;1.5165132090220088;-0.73755293066784999;0.19798024414161469;0.041753291364921431;-0.020247947976359756;0.28169571816055788;1.4214823445596381;-0.70779534520391918;-2.9499211349188821;-1.3678108132709086;2.3340488407234745];
LW2_1 = [2.6419840976980167 1.1628971884880279 -2.4621966414487084 -0.9254537021710183 3.3154282975790479 0.6205538527092328 -1.4339750896717169 -1.2331786522673434 4.2465143547693636 3.002646888937277 3.002205609776293 -1.6422037909839013 -0.33801824159947252 -1.6015479951441101;-0.19806111957934142 -0.74441603555540925 0.27484839503761127 0.84248590380347366 -0.42909266295391107 -0.63837266365896772 0.89386388014713714 -0.34159503106698891 0.055210535117932308 -0.41741814879956529 0.43840891013049732 0.47496295842121972 0.12965077861005819 0.72058291101166705;-0.4372515053136421 0.83964966838823685 0.59208182513004259 -0.39079399097216727 -0.50152265922815864 -0.70214514683881646 0.10130597545815477 -0.31843253143271022 0.075595232319364367 -0.5212699673485115 0.72450679351314251 -0.93031370730510998 -1.4680477861518801 0.42180140755220907;0.32141927558765321 0.30230245369570169 -0.30587980114264157 0.74652681521422382 -0.81811727493458331 -0.11143319535211464 0.50986910269140306 0.41508848405997717 -0.73940819212092035 -0.94137478589807 0.17317452600345684 0.6036736696515983 -0.025325330501627847 -0.25547750907561012;0.18036633101788596 0.50638329956547912 0.21289259156273296 -0.61856664101061765 -0.037000810698004274 -0.25787512523707368 -0.098244268947937766 0.42386021340243341 0.5685320442294699 -0.32437383137859793 0.63738483756590403 -0.39157774533972167 1.6197070389138704 0.44208755541543299;-0.10566568467852125 -0.062993667099231543 0.069916244089762422 -0.75441210887901566 0.071017499808262829 -1.0897321380447649 -0.44929884886341043 -0.20735108699218791 -0.62673814765120683 0.41679533180197431 -0.45534804887183755 1.3486070093905422 -0.52233199120191443 -0.18981889660887863;0.13731086835431128 0.57725497858340724 0.44958155691587648 1.1443545745151291 -0.32349198097732523 -0.46300957919735575 0.34645351568143856 0.062564268209025359 -0.25140937629150406 0.046507165805217715 -0.65260822647688588 -0.68636871581884185 -0.18680694151268321 -0.78642910051553971;0.061842622744383777 0.63885677288639353 0.016853282275024598 0.17858357421661111 -0.27228169782853762 -0.10801279068617395 0.056822746705489813 0.12773844366326681 -1.0997396223453371 0.8967613729214623 -0.39927212564699527 -0.27254654350143365 -0.20059187540531886 -0.72141444271515032;0.40318582952010212 -0.44599582256452791 -0.44843231233989145 -0.07772055243319323 0.40495390519674945 0.34471933040456487 0.78884425090586641 0.11898325117079629 -0.73707567921015404 -0.40305534574410662 0.018574759835517988 0.77238061393221991 0.19414704737731167 -0.077839130336045961;0.20272860239861609 0.26100151565491858 0.3844689770180047 -0.59527513489865669 -0.31944851823026538 -0.37153263314123641 0.66045114124085635 -1.6003620579894535 0.017289868888471324 -0.60743623303435434 -0.080935830854401689 0.91382875583231238 -1.0092322389211927 0.1525857595045986;-0.27123022447622969 -0.21536236872875669 -0.44687703201903373 0.45719365509491233 -0.35350405183105166 0.4319638439764063 -0.42793619246628734 0.35105127846799988 0.69991433465826702 0.48127997330154643 -0.42125200266644558 0.56947998390181243 -0.2031103864160676 0.24515992161375055;-0.97580665067798145 -1.4020850841457042 -0.25938241748537011 -1.7412867290204805 0.25751331737146593 -0.69071367928688288 -0.87351233754710766 -1.3919878401760868 -1.2203939214654611 0.043160646660385313 -1.1913111161761183 -1.5103956163011083 -2.197791984699883 -0.69752300804066558;-0.012362814627723578 -0.082196310316375476 0.37571534441111443 0.73139528134772125 0.85827694843608981 0.038305038571988539 0.69933409988871675 -0.14062231777914747 -1.2127600589168501 -0.48765905135302845 -0.18133348777995026 0.20117611866244822 0.10829714229901566 -0.3560715899268273;0.81732139163183248 0.59626683380283796 0.35874864519292032 -0.82648234286888866 -0.28654309023909713 -0.46788065891821934 0.082445865502904989 -0.96944569889843391 0.60744975841016391 -1.0098377471298388 -0.19661713231699307 0.9305331946158597 -0.76250858120621468 0.33203706895074869];

% Layer 3
b3 = 2.2043972684712405;
LW3_2 = [2.8341935830644416 0.031092800549439099 0.12955976611723835 0.15068283439660729 0.36881863472781851 0.34664010008839113 0.084160411988418171 -0.043222823888170295 0.10348068915960747 -0.60817910177202872 0.091884449917852412 2.0167910631570636 0.086732812887183805 2.0160156265394509];

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
