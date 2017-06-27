function [Y,Xf,Af] = SOXOblatos15(X,~,~)
%SOXOBLATOS15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:41.
% 
% [Y] = SOXOblatos15(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.9541805092861575;1.1586870615160629;2.689832773749711;-0.98286839437500351;-0.30233347625925039;-0.31700108361773144;-0.60275318583639992;-0.47579533213126923;-1.6240064570760464;2.8514884710716086;-1.760536845055152];
IW1_1 = [-0.50814840170374953 0.521762714636133 0.058749228365282756 -0.84499233506399696 -0.76227833687391233 -0.058159180043991697 -0.35629074552311196 0.33717009011137017 0.45386194417366854 -0.51124130914735677 -0.82149755063894325;-0.32113541151781699 0.0078699184682172914 -0.3581529960503318 0.50498934891772862 1.083648183396223 -0.95554001849574866 -0.30932230161848667 0.34281899719600128 -0.22507883792031702 -0.0079301786059463031 -0.67628073900395491;1.2238775386199867 -0.11706417829715526 0.91204431179933731 -1.5136356646233362 1.7529627077915153 -1.0538179344118901 -0.10797790718951936 -2.3812641115698154 0.36886375731496052 -0.27904617313245628 2.972312209993528;0.52156199868046815 2.2602500156491176 -0.99958860405324701 2.0944581941533307 -0.79925195316325237 2.0239939356524079 0.16626649954871087 -3.7604343913491403 -1.6920008255624812 0.50927512863346491 -1.1175883725917906;3.0873791186391131 -0.67590659212166804 2.5651446116787975 -1.2392899034012208 -2.1662192013547004 1.6292044958750971 0.13304158001305705 1.4394798946969365 -0.35694036094164822 -0.13011444578337489 2.2858114294802792;-1.6203926798630979 0.17269218293494706 -0.8901994464066425 -0.23041628339080439 1.8165645188219672 2.5898007476299991 0.64420965254604257 1.4013478322491713 -0.24672659162446212 0.75413943759708491 -1.0568388783398106;1.5028424537604899 0.041332227571395604 -0.57606344557425548 -1.4487303987766231 0.65004767245571771 -1.2848004461666895 -0.45132431067449819 -0.68589048525612972 -0.7169313569783351 -0.79515407013105199 -1.0690532749058168;2.0748242200925575 -0.12804353660207773 -1.7371723720680525 -1.2080283194423322 -0.10086691124308358 -1.0209779490880411 0.53701502278060176 0.29455078536487078 -0.20800688351923574 -0.046622327662568491 1.0160707396054023;-1.4545407807090667 0.83522744000877447 -2.3898778759082426 -0.23243287182798611 -0.17907480191649344 0.88815162613524246 -0.72754724160327267 1.7320541955847268 -0.34695132915937804 1.0981088507260293 4.1559207349545089;1.4561923122743732 -0.080282071477355443 1.4920073261103706 0.6581362978981663 0.60899857086266673 -1.113674960381271 0.49270031582938301 1.6913127857342403 -0.27679472018783646 -0.98415704439603946 -1.6563634432244294;-0.85539352942613578 0.13274597949338579 -0.53870614101647474 0.087998425820170131 0.66031990728324741 -0.56750362523288178 0.75123460891915472 -1.0354639764903328 0.011403924834258367 0.41384318414796112 0.28411441739080778];

% Layer 2
b2 = [-1.7704517297539994;1.9090231036677068;1.3220073138897872;0.73166808105863401;-0.65879807317920303;-0.077214676493747136;1.0903039659086737;2.4466177812480647;2.1030184328409014;-1.2890699426505365;1.9368444912474101];
LW2_1 = [0.20961362275761131 0.15063891524607703 0.66408737805131324 -0.65843346162298499 0.94022986910166417 -0.54862983530093201 0.26041661942383454 0.42300533769303394 0.29924408952469561 0.99380782480885255 0.59996153267286123;-0.31655344539408969 -0.8019861835691422 -0.16712271287637784 -0.051373093108795495 0.98934383788871927 -0.0085335647310380222 -0.47810289638109971 0.56170228356886209 -0.039800330989991001 0.71953348688680574 -0.025733663709043814;-0.20387242669861252 0.82403471002827156 -0.58720907192239602 -0.91126542781625819 -0.87041021268374641 -0.82978952558005215 0.47253310226058276 -0.14289322478425365 -0.56306171718935782 0.49545073980244558 -0.46290174493941322;-0.31581639880543821 0.29894296130381054 -0.28662194181700007 -0.6532410087833298 -1.1317354140827831 -0.25707362457422239 -0.02359102838343069 -1.022890165119003 0.87768220806596742 0.064101698152603706 0.64536790635197638;0.32416812598582145 -0.092577330245021322 0.26886257438141847 0.10505520862727755 -0.099118901473615212 -0.061715054874729017 -1.2477440719639117 -0.08105718293829231 -0.01860689252186204 0.97643888940438417 -0.38495867806353506;0.11323679291342761 1.1617210879710722 0.75932674512145681 0.21183371715775884 -0.28050927631577438 0.070729756784615905 -0.67559207629907381 -0.73511382453114793 -0.2080116828382684 -0.062683720219827238 0.10226377246710243;1.5495403060131003 1.7397558975973517 2.3447190640934497 0.014206686649545622 -0.19431774762971327 1.3931535822832561 -1.7964149158029381 -1.3542334624387729 -0.31018565530772446 3.7612211890089022 -0.40702834983034819;2.0850381932435065 0.98565490821346158 2.9270057189515062 3.4148576004501816 -5.4684321264245312 2.7190298066264669 0.93757646851536858 -1.3437401215696931 -5.8238422855743819 1.7088824611620315 -1.9807947811463043;1.7943782960608043 0.38417356474860431 0.41749965558395158 1.1221628540678805 1.5916336851857675 -0.61167150859866326 -1.0808142295151169 -1.0380327150373205 0.15036622392631094 1.1679437084984357 0.065627367421682917;-0.46761024605043361 -0.50399612378852154 0.29579109176754037 0.050826534858333577 0.91126860971155244 -0.21693621469177393 -0.48878055900118828 -0.21156090122669546 0.52210632389315714 -0.75745255613844542 -0.79630211638832571;0.96115232847154974 -0.13813692522269305 1.0994827414085573 1.1256667010825741 -1.3990311058007787 0.33300271224280809 0.53393672785524426 -1.3966398900978245 -1.5030918977973653 1.1305506049044158 -0.48887418144179251];

% Layer 3
b3 = 1.1943849147573622;
LW3_2 = [0.024100686846080716 -0.24053557657360589 -0.10983104198979339 -0.07553870429845902 0.15688561596240891 -0.13062675027665399 -2.2568737557403189 -1.580621006212146 -0.32217124318650092 -0.80009561786358296 1.4802776555706312];

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