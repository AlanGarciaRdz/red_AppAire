function [Y,Xf,Af] = NOXAtemajac8(X,~,~)
%NOXATEMAJAC8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:15.
% 
% [Y] = NOXAtemajac8(X,~,~) takes these arguments:
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
b1 = [-0.87137582843026296;3.879911388846494;3.6527242226503791;-4.0608387083200546;-0.51429873475555654;1.006213936298207;0.37064396410077588;-0.6383444441864653;0.41308579724299516;-1.1577921922817405;2.0942980605370791;2.1659130823390784;0.50849108862254355;-2.6969350718069656];
IW1_1 = [0.13161774266724868 -1.7343149040539187 -1.4214609613371081 0.25502941524609357 0.29306671685697377 0.82597809801578015 0.95383471496417804 0.38542447033067306;0.45241753413996511 0.41060081529407089 3.8757792846233556 -0.60307057901252337 0.34757598172587195 0.65348044480927836 -0.33468973682651781 -0.18928939279980556;-0.32332040918298183 -2.7311116845100694 -5.549465611545104e-05 0.045966570752714736 0.41486376726701335 0.12209247216167801 0.10942192297708039 0.18564503612407152;4.5693023239674568 -0.21355319073697501 0.18549344919786029 0.18659451881102415 -0.62133934446684569 -1.3362220025909715 0.52153865693854917 -0.31032905407669009;-0.036338993819105173 -0.089708332455962381 0.85435575743967829 -0.7224741483007362 -1.0990386596405293 0.31073768569428295 -0.33226916801388257 -0.59054873560263099;0.24491501037353436 -2.24606607319962 0.8914936561115443 -0.78038315066936736 0.25152233743100599 0.44198317304169821 0.85785536477224622 0.280968549511104;1.0282645928254255 -2.4320656248161279 0.44158929249475831 -1.1703601514448312 0.2097093171612664 -2.2253105809005298 -0.80870938342421694 0.15887063245251515;-0.9259105936353611 1.1389554876949557 -0.55992812215600685 -0.095859926510676444 -1.0897978325398487 -0.034023987458499598 0.021094719062990309 -0.6838490484511246;1.528577983554785 1.8540651471526617 -0.62578022754572249 1.8750651403197924 0.61690923587763535 -0.028762995095264872 0.066785323574359692 0.39077036138210386;-0.23064280910105187 0.8671741459926775 0.12591591189071483 -1.0318702211277921 -0.37828138795041882 1.1048559676095187 0.004856816277816263 0.042768936554365165;0.71502751742125736 0.7659683364661366 0.74975368568208423 1.2746195522988506 -0.23921000737272077 1.7436483995297503 0.15734450122608934 0.099371481958349703;-0.17552120801884655 3.799379626550341 0.07683729485926194 -0.070275183269706498 -0.9974745346002466 -0.18042583215285951 -0.090219506032874153 -0.63272203627811185;1.0647143246632935 0.50593701666739599 -1.355140971121757 0.95667353669782773 0.49043007233422148 1.0800602721719714 0.19390088151849108 0.21888165171463195;-0.10138554199758125 -0.46826011765105763 -1.5094544637088125 -0.67797288303030068 -0.45998345013680941 1.1388045550476242 -0.62386269279649231 -0.43988866284136052];

% Layer 2
b2 = [-2.3552927062571967;2.9852389960127863;1.3465238230515519;1.5926031232400581;-0.48960357929062659;-0.8471717025010419;-0.053341801257934793;-3.1586062164619184;0.7772135693476433;0.23948820722918887;1.1843471624813331;-1.5263251613963829;2.4212931584522659;-2.8240545229565255];
LW2_1 = [0.93347465996678869 0.37559203752143266 0.0067953388807583332 0.75152940005643032 1.8839329017659809 0.55442430067171311 -1.9605520860301966 2.4961557810847252 -0.42467848620599224 -2.2250048716708104 -0.22608825836060426 -3.0562790366506492 0.48055221959767819 -0.59198120680370236;-0.99993298020607491 0.42076824700465643 1.2997071323356859 -0.21144897573890267 0.8306182403781055 0.70773025095419029 -2.38294522239867 -0.96393381101083098 0.2766262228191409 0.72946464610234374 -2.0517641779639999 0.16581895962984328 1.8932323873179389 -0.37708265080209352;0.23949398467216204 0.17264035304674208 -0.2791755794975358 -0.01511151686443879 0.11726900998210059 0.41191184999217134 0.40153419501709342 -1.2112703453586262 -0.77760375264394332 0.84262455322981245 1.1625817014387809 0.26887724462824009 -1.2672360798460263 -1.4758474709693248;0.60366504810800559 -0.26339637633329949 1.9025763858864808 -1.1422799872814848 -0.17659384055848087 -0.084710342384528861 0.48508054019092806 -1.6615915750719454 -1.4091557992097898 -0.078654242228616084 0.52475373309757711 0.89914364901390775 0.29896145040167177 0.91323137459663706;0.79562480346819986 1.5953847357530819 0.80350247953942955 -0.13584185650582786 0.083873784265514617 0.016307043188105105 0.23184650686459246 -1.0699095984405687 -0.48369109261489451 0.16291371894999551 0.76220852453710264 0.68523735564504828 -1.3054291061768739 -1.0561761799808724;0.4449484211052615 -0.39267339462672196 0.98750221670383143 -1.0763635634362407 0.014908784045544334 -0.52674112397007677 -0.28480429287151282 0.46584831642940483 -0.67334853999217459 0.27988469103411534 -0.13333548095810033 0.26393885452956328 -1.1140902358483189 0.077443203138832045;-0.040810533553895099 -0.3771784923583657 0.49317409075410706 0.52320956462278767 0.24523224628268181 1.9516982292950731 -0.11582969658626384 -0.3904981825232075 -0.43335959457095646 -1.4302294153075588 0.80053991314640094 -0.52630955249752565 -1.175692916389133 1.5171030458953718;-0.40185774556307635 0.39279056515343869 -0.14136157591728671 0.17729542513850402 0.69065259721458883 -0.91818955893766174 0.41992473794072949 1.3370020888138174 0.3100103126578696 -1.3249370415587425 0.12568730702538741 0.074194667988252069 1.0985719722181957 1.0294219183250504;-0.33447728473769733 0.23035206112230891 -0.48901539819591039 1.2930734850125982 0.034421063964717676 0.36728730507802454 0.094661993216900747 -0.80019319383774112 0.49099958128817767 -0.11535661086878235 -0.17403923056997503 -0.025802476587159295 1.0049083345213308 -0.080371222473026319;-0.70411670590663089 -1.5203572621248356 -1.0840209468087774 -0.77163612318431329 0.34523301549530455 -0.42481759173407713 -0.80547384518013831 -0.54202065182063264 0.17090650353577874 0.18823966252664831 -0.63623500815444967 0.20785631883478023 0.03275691906146351 0.068952740993033612;0.33634154215737394 -0.73247720556637907 0.38330765790824145 1.6653282981094337 -0.21908508664742557 -0.99224267238641473 0.024781553213542015 -1.4032150281664038 -0.26208904275089656 0.62527017212599267 -0.78211469355392282 0.87668523672421206 1.0129773270979501 0.22512312866586906;-0.36326788070824134 0.32312655053926709 -0.22814504155190621 -0.33601105234089362 0.89735357460184351 -1.4269171609445392 0.12254011469272297 0.21916275052039341 0.29997989379390166 -1.1615784235923059 -0.0075915846489533426 -0.63003009621359363 0.067089079865872092 0.66954843338966497;0.29342124900472671 0.83417530670485718 -0.18936558283854277 0.091666432103518464 -0.72210923038888142 0.58050262402238295 1.2508827194711012 1.5618019410738557 0.16666380687976837 -0.47244058392498933 0.93981408099061403 -1.6441264762284058 -0.3985929640992516 0.60271983412743224;0.14071699646751815 1.6175541506525166 1.0597117005881054 -2.0294576073634727 -0.084941621163601114 0.28724429035674998 -1.3323650348377725 -0.10718070468642729 -0.031082259153660044 -0.60596016553224408 -0.020636880308019183 0.22387162453956888 -2.0570884449117686 -0.54889829553790948];

% Layer 3
b3 = 0.36552531626025858;
LW3_2 = [0.31464098205508956 -1.6284584709374188 -0.3942210521003191 -0.42303988837518397 1.364708399143568 1.0431370549924848 -0.14209035924608998 1.2314449930172613 1.2660540979921922 1.5449185509653238 -0.35119863633843623 -1.2078464529123416 1.7800340335194667 -0.1632670099422113];

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
