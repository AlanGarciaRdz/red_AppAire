function [Y,Xf,Af] = PM10Vallarta10(X,~,~)
%PM10VALLARTA10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:46.
% 
% [Y] = PM10Vallarta10(X,~,~) takes these arguments:
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
b1 = [-1.9780002468284417;2.6423325969868645;-1.8187432208515297;1.606905261849596;-0.069418007792123967;-2.9289202734953226;0.47652997393358654;-0.22754945885891878;-4.3391920936633124;-3.4860296675493148;2.6032424797110161;-1.4096047428310798;-2.3826647605391904];
IW1_1 = [1.3534435122967035 0.1492446273952503 -0.41831313931454278 0.29962273931061134 0.017088189438200972 -1.1670314795475112 -0.50385758726557628 0.062511199810759976;1.9485488416569527 3.0173664916229654 -0.69513103723437841 0.32263378313330859 -0.028083803738096817 -0.17703820538179305 0.15497380179345166 -1.0287729034792508;0.21512880768824943 -1.1336988227758682 -0.35416470061640604 0.237605327819431 -1.5022585084025826 -0.74491632390543683 -0.29386638384862074 0.24630764480175474;-1.2444262332621367 0.46911868426371106 0.89469179935798449 -1.4311915873019869 1.2565365994899889 2.3188772545370004 -0.62145764178909502 1.6604127594301499;0.059937054542122614 -1.2209434668893908 -1.6930883077600036 1.8899866466346369 1.6478601828203556 -1.9189460996395946 -1.8298968281721348 -0.007836293945980153;1.8481142445782468 -0.24509137881099327 0.10476165000189766 0.99233374696158849 -0.35837611205914599 -0.81381163823691027 0.25877206622740578 0.58925282143069535;-1.0071819374397535 1.2179539744105352 -0.15299403125693617 0.45070118881169507 0.93531328827825166 -0.60551928574472835 -1.1420150603968311 0.22912820809154963;2.0186247157857427 0.11717138461741279 -0.7540311230535014 0.068132615124571916 0.66024497111449154 0.24695372826773093 0.46235283586775122 0.059126883263272603;-1.880221449258386 -0.0892364087008434 -0.48071259396216559 0.79317667356449995 -0.2924570608957312 -3.0377304634893538 0.57427797725956398 -1.2720933313289355;-0.35785430775141236 1.0023793702028665 -0.2239370696124442 0.24554193394773238 -1.8049854144961486 1.5899587449095107 0.572194204961471 -0.22127606877907963;0.39467024909052473 -0.43791331264469013 -0.6026021352305978 1.2964110362432009 3.5873740367266671 -0.72976888020672548 -0.50887426287436111 0.059774577072361654;0.1008972150616269 -1.1013020101990398 -0.4273141488855286 0.71198301062213998 -1.0300971234343224 1.6294782998784287 -0.30317676295703977 -0.60673587550394836;-0.34493802989680522 0.15173803228034 -1.2022868086993248 0.78022985967467473 -1.4237385302841703 0.22448498297000299 -0.50970057367287358 0.054118262401244142];

% Layer 2
b2 = [0.2381212855595829;-2.2830643122312413;-0.2119712473002584;0.44435104376741541;-0.56054122893736535;-2.1621413345412872;-5.2406934059653909e-05;0.65896742211958248;0.23984607764284019;-3.2880368639209605;1.2872199477739539;-0.20198041469439093;-2.0690534541189396];
LW2_1 = [-1.5600438483904251 -1.0014576902804215 1.8170942643318264 -0.6174747698707066 0.72363859821681387 0.34237320648450875 1.4688189284258257 3.0507445456945157 -1.2830499593952998 -1.8942995903783726 0.61802704715006129 -2.0974376950440936 -1.0214500033157055;-1.2438664118726064 1.6076830308599586 2.6029534675745269 -0.66361321678524576 -0.11314884906832572 1.5422009472156031 -0.20851187670272509 -1.0270853892568961 -0.73007463738099831 1.9997537596973538 -0.087824885628394078 -0.27693683300671457 -1.5262022956109083;0.19949475608577238 -0.31660448658564361 0.081806242755111044 -0.071189151584191659 -0.64786082255253641 0.61169540685247958 -0.21223812840664735 1.1960578919511753 0.36874374688011624 -1.3404100261854539 -0.71471021928695122 0.6127885352979211 -1.1857914206146292;0.92481976215049611 0.38186088779092958 1.7494271519882127 -0.14732761349283535 -0.3927801730798991 -1.5779754851185095 -1.3854845232506143 -2.4409183659631157 -0.53205077189721828 3.914719444171419 -0.81560727384557474 1.2928643430513058 -0.19468750626422537;2.9218043316799882 -0.011622218330650792 0.27883144721351133 0.22528935034467615 -0.50014690406052731 0.43141611471367619 0.31206583329624249 -1.4550855981304769 -0.10639262754027204 -1.0374956372890172 -1.7285550905524336 1.4449285290901723 -1.052625198306222;-0.60273483214286561 -0.015370057875516447 2.6309532752944671 -0.46047883841909626 -0.19196104499931052 -0.008682228294211225 1.8810775808395457 0.68445215589154729 -0.29879305886633822 -0.61085383405775195 0.12905882433143351 0.12848279926060668 -1.1281152872852385;-1.6866527652990886 -0.1091753246876682 0.20876740912314737 -0.28054005868721815 0.23865398517051883 0.98351255641431679 0.0064203658172616446 1.2127839160441249 -0.13746803431653995 -0.43864699259812423 0.60463557049638172 -1.1870924626599257 0.028444220944370272;0.42650376745641305 -0.31318380731023876 -1.3692229202436312 -1.9463136690260199 -1.2348656902816717 -2.0812471062936493 1.3443544357717965 -0.2512422419858612 0.68277553801224133 -0.234313773098972 -0.65493375405403609 -0.27896755988665251 2.7556804055510637;-3.7643203284519879 0.48563647589251413 0.86402795293491386 0.25777000298231856 2.2899991409773754 -0.011844471428419517 1.28600636587985 0.19311747505251123 -0.49159856049128703 2.0572316380395126 -1.8174865850457482 -0.91821452874686449 1.0627344457972312;0.087953035232958707 -2.2914282929292025 1.3030916734096736 -1.8459599416962698 5.6290203422227236 1.2301790335290854 2.9718139924663896 3.9747817641236192 -1.0131108578738781 2.3004583136460788 -2.010958259044485 -1.4339382643811363 5.4350985694690639;-0.8411066654000956 0.91312277799001618 -1.1231489626919073 -1.3675825144440215 0.34821540667380241 -0.32697099977203598 -0.78397652847572097 2.1158095998541255 -1.8448594568192567 0.15535482280765989 0.084923732184908951 -0.86195883250103422 0.97937345421306521;0.96546911865345109 -0.084571009870988076 -2.6038786868809161 0.34769103772920362 0.14405543254495606 0.25397828821977708 -1.6627275309986114 -0.60782405865048317 0.38506347708929944 -2.6432649619112225 -0.28532584356679053 0.29132944114178866 1.1690735891770472;-1.0205219669410308 0.091426058731111745 -1.785382379947186 0.87190271187853896 -0.036824017500780737 -0.55676260433617353 -1.5830050435957097 0.19245030397813465 0.34509653218234548 -0.12189066493020409 -1.18791634354002 -0.61068014630070311 -0.5325203081184019];

% Layer 3
b3 = -0.85929633919606951;
LW3_2 = [0.28321011904303578 -0.21886903017188011 0.36414055160197389 0.1350840218773299 -0.41277832526198266 -1.1852067656151541 -0.96210962163429936 0.15593035373771155 -0.12472053758751528 0.180072430644344 0.25763801529091557 -1.3632383441778435 -0.25491928211358683];

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
