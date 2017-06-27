function [Y,Xf,Af] = NOXOblatos8(X,~,~)
%NOXOBLATOS8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:31.
% 
% [Y] = NOXOblatos8(X,~,~) takes these arguments:
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
x1_step1_xoffset = [1;1;0;0;-10;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;4.05679513184584;0.195790504160548;0.00618238021638331;117.647058823529;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.1875736283784009;-1.590684104035627;0.72751701295753979;-0.81221783043118279;-1.7764115692563285;-0.25460184346250198;-0.20716657159687726;1.8669743969322832;-1.4280346525083814;-0.76387665480531053;-0.80444144829573716;-2.0688606369937825;1.6036201555754959;2.3270507691538254];
IW1_1 = [1.7971188712115596 -1.2880201886763385 -1.7197739808719565 1.9699742970633256 0.92544281824464536 -0.0083005136150941343 -1.2876339261450194 0.14388847302701008;0.38863208679465067 -2.1836117445947147 -0.7635520869036817 -0.64776973396910265 1.4846736700810119 0.039105145642233892 1.044288902558598 0.070876450880032735;-0.97424066330035397 2.0066760691444565 -0.82241928651924801 0.64382041492470088 0.71453474425302066 -0.73103913633296747 0.68951228427577926 -0.29926279327993149;0.18562797219831073 1.2714487344229237 -0.28530551699423323 -0.56933534515845385 -0.60965244423281795 -1.2838343563711818 0.10549951448115921 -0.039396527423640311;6.6287345757651703 0.070842817671713826 -0.76387775831767135 1.6088729483786639 -4.1037991757468912 -0.46149377552574777 -0.53358185825374349 0.076873208148557026;-2.1706215156754323 -1.9628117495972626 0.57271461988763361 0.33974499067902958 2.4338428816466995 0.85040647583818196 -0.15855890087603616 -2.430599067471527;0.24977735981567198 -2.3575833076412782 2.9893104448882961 0.4446551063868745 0.68283317953315681 -1.2071699611278037 -0.86147386139550541 -1.0567723669102316;0.096304337145816571 -2.0827436471373435 0.18053408506649554 -0.85478151423781523 0.10844033396350937 -0.27489872603772042 0.2385092857211854 0.03233731025795078;1.3578579622967031 -1.0232663494388756 -1.4926929077404669 -1.0910993473805597 1.6855626309933813 0.038626034565093177 1.3404772476742246 0.6016509608084335;-0.29682263115126578 -1.3620769449129495 0.99114486911110733 1.9326287763853471 0.31445509862147814 -0.11354601966121441 -0.19710260470543442 0.48611610398316141;0.574988984184578 -0.95566984401505239 0.83571788074040299 -0.89052450541901007 0.74285475619317409 0.62266707748592209 0.51323710739750517 0.25455308840973312;0.070906206606120806 0.56828990792513556 1.2355091463999339 1.0867336371312468 -0.10106577061188977 0.70933270383646085 0.021437035042589616 -0.15491116287275541;0.45356644955169423 -0.31485397262491549 0.48739074311274933 -1.2336578235773947 0.58757691304934545 -0.04913785075897871 1.4411707323442438 0.12892169534775341;0.68994640345526403 2.3783257710337629 -0.043869354045529448 -0.64685365317245747 0.064848314285786815 0.0027056720929803674 0.45664778042008475 -0.069117092572598862];

% Layer 2
b2 = [-1.7574358056106834;-1.5269657867036872;-1.1990848066118605;1.0930779033885516;0.95507876003328573;-0.42926095879512233;0.43169512846256641;-0.14660276158570718;0.44320106193333852;-0.79481211443384003;0.82012859911168079;-1.0368817508866757;-0.86855344270870094;-1.9982982542561707];
LW2_1 = [0.50897214246975708 -0.03292535574318621 0.46164701570989469 0.81234099853059938 -1.7269102257422249 0.49124814516648396 0.079118371699908263 0.88521727065944544 0.010177005302639115 -0.44749333424799886 1.1369504689186962 -0.1172474774492419 -1.1266765238766541 -1.6015055424974693;0.043975447913148502 1.2202402249909856 0.65141909953714006 -0.5967242428715972 -1.0560720633750682 -1.0025581143234741 -0.40207231535722332 -0.016737507533054183 -0.78616391531554286 -0.59375334064683072 0.061266200062158403 -0.33060811537838009 0.7458667701273084 0.38271355508008165;1.7814681903452454 1.330356301079981 0.4557361572740789 -0.17969952899548858 -0.050922143111780546 -1.3102670750023961 -1.524321485509875 -0.69588123569268046 0.19034497267483977 0.13621403087926953 0.57118165781135333 -0.1980352028773642 -0.50111352685657284 0.57512005800068111;0.48275969066638247 -0.22764319127393637 -0.10368666994878188 0.45450643191398249 0.97009651470836655 0.322066895609112 0.017762006584852229 -1.2803942098984995 0.46402782121323899 0.26923994527336509 0.76507465773655747 0.41787524108561674 1.1100923130969076 0.0055502878672136829;-0.73057247941705039 0.29619263050156319 -0.049124511405427021 -0.72909130654758403 -0.14263801713987925 0.54771897335395514 1.468709386093197 -1.2011634431674412 0.6256122735754851 -0.38445345728866509 -0.028906472938631335 -0.049075595281977399 0.12297713508663975 -0.17214241541525163;-0.018839543873025513 0.22943745899009019 0.63579493061631931 -0.54712881515961131 -1.3634194026048778 -1.1873025962052839 -0.22194089131691216 -1.3519522081041468 -0.12183278440003316 -0.85549730112463196 -0.21600758413683943 -0.64545375106230984 -0.12328247648617417 0.12854447603827943;-1.9632754899558498 -0.59586354863793412 -0.49571776308609605 -0.93145868068674254 1.5732319870576148 0.57263788614343636 0.47753365449215096 -1.4384688778057981 0.42806950404035948 -0.09103296152367224 -0.56854758630460944 0.35620401135991459 -0.33882262229575949 -1.6088756097602948;0.27929118572463812 0.18580253097192528 0.56507012178002014 -0.0023342291278736519 -2.0853481460758152 -1.7424737766156466 -0.52241062638292046 -0.75592585296039105 0.11575826274837293 -0.23450718866102968 0.040496077165061865 -0.15295886644173251 -0.65910572665558864 0.44698517368037505;-0.022736844769967207 0.73346856253453929 0.37989987609513853 -0.83356992671936536 -0.68308293616121907 0.1039286246606204 1.6865415843033227 0.88747873950405098 0.32544528106784265 0.18749167505367229 -1.1475447413051649 0.40165043062444605 -0.23254130344396692 -0.76529170116040113;0.47298412298847936 1.2585877481850538 -0.14736908804350821 0.43742078650212857 0.53938392326496198 0.14873096292133425 -0.16074702132493701 -0.42313458443532015 -0.029472882607036364 0.0080460950206716307 0.81091609514990037 0.57651829112751263 -0.67156367506876091 1.5602853848234108;0.21674458565141266 0.28142848923412567 0.73669750117100541 -0.32218370314708478 -2.1109670698955667 0.045842445374854227 -0.87813225167116682 -0.53033094707598216 -1.8813486896003988 0.66149186913381386 -0.41128945527385552 0.22535869642858311 0.22840049310614399 0.77578054498752569;-0.3620582756444527 1.6204628859333159 -0.50341222751317738 0.076943851269139746 0.58837237221677885 -0.69897724321637811 1.0392833519407785 -0.44600368405639301 1.1221454558491328 0.36909113178932429 -0.2797394165382065 0.3312513332232625 0.27247827183395107 -1.6510739882037551;0.56019721810201373 1.3520809972151036 -0.45694964688416412 0.61178443615732603 1.2796532196495447 -0.92623056762883083 -0.96982169745193059 0.70748991784434967 -0.76983350877188716 -0.20625015461060903 -0.37344166491207503 -0.78724102351701553 0.4564501695909231 1.4108203888707542;0.16406728193487485 1.211611805287548 -0.10205510715102684 0.22384202173846632 -0.096590530546772441 0.2009708480477545 -0.33541577151720586 -0.16997832949070776 -0.88197100060487488 -1.0699675034258558 -0.097715350056183731 0.18502977999265677 -0.1627581414543588 0.54384715938589578];

% Layer 3
b3 = -0.20037363849411499;
LW3_2 = [-2.0103707148728756 0.82360518008886152 -0.51044095142752033 2.0609528068433725 -1.4479922985246541 -2.0455017437074203 0.95647750850088409 1.1245976647195932 1.0330146565653826 -1.2510486167435673 1.1041439609058972 0.897097470747661 -0.91248681402025233 1.3700766656944221];

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