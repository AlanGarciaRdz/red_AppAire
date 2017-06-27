function [Y,Xf,Af] = PM10Aguilas7(X,~,~)
%PM10AGUILAS7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:48.
% 
% [Y] = PM10Aguilas7(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.1132783167285605;-2.3328454359145274;2.7504967184156253;-3.0512119404424176;-4.7848089211250207;-0.44485183929754551;-0.21993986959260167;1.0499740603579997;0.077578550500677843;0.49345182004901572;0.81039524130012042;-6.5570575273279639;1.2861979360089546];
IW1_1 = [-2.245849163785882 0.43593153296149795 1.8909348591720794 -1.2455789918846241 -0.45201490267315836 -0.37169839438298302 -1.4052917726693728 0.41781353927927628 0.33565976528062558;0.51573429715554386 -1.3247024248311579 0.046676051495484955 1.227170822870107 -1.3545662746964726 -1.7668535482788914 0.75942700623873682 -0.32554029107929727 -0.38538083514566895;-1.6179575667730661 0.21373435666111418 0.30324830967184879 -1.9990639290763272 0.94459958075184725 1.3480130333616671 -0.036039959059954066 0.73019047082235278 0.88424096726817991;1.4546912805947079 1.0818536185177767 0.77238437467289112 -1.4718196347534986 -1.1214461804436273 -0.72901510820271376 -1.5925703474154032 -0.37497926891254146 0.35684114476333312;4.8652505012408032 1.4860555780417382 0.042880631001272249 -1.1757233371588223 -0.67310290960151054 1.3459490674045465 -0.30783031789657445 -0.097714996345098795 0.83489929430106669;2.8247909972953469 -0.48169912488295191 -0.79008413115938148 0.3598774936512118 0.68240399118796213 0.85767071624535907 1.4196787124137931 0.87230574164810315 0.39335069973251474;0.49773383502729523 -3.0283107761593526 0.092162798799294482 0.51961291007354482 -0.076875380276416633 0.69739938672855006 -0.16405401588967847 -0.15232872132270403 -0.3200869055916562;-0.33442264981526915 -0.41616584150056463 0.8198415634690821 -0.92239960426862155 0.4941467518247345 -1.1385743412691653 0.62097896943724418 1.0993647679840726 0.45180093444713515;-1.8026046436626117 0.3768896802760292 -0.00059157247190830264 1.513526234396682 0.03899556841272897 -0.34132242050813777 0.55124184558106359 0.65346929057439951 0.39195532545722245;0.64447824393795961 1.311054813242589 -0.58520339185491621 -0.57666407324931745 -0.10219873773175131 -0.2087949836579488 -0.15329903178106521 -0.5308825075798177 -0.22750419153790483;1.6682184123155495 3.395984332477036 -0.29932347600864689 0.2144445384054855 1.1986741495022759 0.046025892292443568 -0.11473173996963344 0.12028430070321039 0.54915121400202949;-0.013123290830861913 -0.26032733763961313 -0.045856325829825809 -5.4520691099418928 -0.28838905905807249 -0.026026144137217131 -0.049709388660980347 -0.060892955896328926 -0.14027977717052736;0.31699290155869747 3.1020265331054646 -0.49243643959247319 0.30233605900270427 -0.50628216791428093 -0.3947755278026493 -0.30213736991019136 -0.16866435572274691 -0.18538238184631364];

% Layer 2
b2 = [-0.69478241345012937;-0.20817141988000115;1.4062215058610956;0.14719883486405339;0.61233688709097822;1.1024345856145985;-0.16895066368833464;0.95520453054467758;-0.952854645684448;-2.012674445723738;1.4384254673764785;1.6786836615126208;-1.8458331332244864];
LW2_1 = [0.17365489452605098 -0.4232077295624288 1.3007214622451793 -1.0393949120686419 0.81277312670815793 -0.077879757389258536 -0.097922375893585753 0.41413252535741046 0.42039807798210305 0.78525937178621963 -0.56703743585179955 1.8034959006421309 0.30680417752511407;0.30895745119591383 0.063354078958019741 -1.395326974610628 0.50258965219217744 2.072063474204719 0.11054826039582227 0.1129135401211129 0.032520532591637438 -1.2268186112828592 1.2459301641686817 0.086705648650728967 -0.4762893410633785 -0.47973294297862745;0.17583063604267946 -0.50272317109412512 -0.40892906290773179 -0.21711754107462583 -1.3039824063020338 0.89948070766003951 0.13858364184264982 -0.71288751115683968 -0.17038633586756352 0.48405756062482252 -0.67138862714401926 2.0672247072264809 0.33463562214758097;-0.63825885105313329 0.055662834733628742 -0.95636783469783948 -0.32230196948595075 -0.71136248256525103 0.31526421744732958 -0.66677210082344418 1.2091429206247155 0.71153445464442455 0.95212948757467564 -0.36121188076168714 3.4871945189811693 -2.2424630982096452;-0.71422823102333277 0.60313655096212804 -0.58097217200556517 -0.4420872452490775 0.33413008804206124 -0.13125084106943458 0.33182313752473902 -0.12679170925913699 0.29654243552939996 -0.21475046111996351 -0.41349317762403587 -1.2029983491478033 1.211860141660837;-0.3983812725587334 0.37685709629569691 2.9826864152905941 0.13281184829486789 2.6865933403905915 0.044414631578244254 -0.31348245980210415 -2.1090394545819517 -1.5235820700735514 -1.6846154513626304 -0.63070621067276533 -1.7522930032994986 -0.91909861886928734;-0.39843980403092394 -0.24147878557023264 0.41976859154971996 -0.59144719513858079 0.14337799045358432 0.052989029118267396 0.027331108861487353 0.092692365756973927 0.32904023374898522 0.498708669021872 -0.31748601914316538 1.1001251074779772 0.79784715200476208;0.9104235854452789 -0.67261911678312247 -3.3349945448074414 -0.63372999790615014 0.76857257347404129 0.8127995531448271 0.064570227184072709 1.8926259629585547 -0.1866407694244335 1.908545757632266 -1.647723260908992 -0.0055194472958482385 -1.1324534021576089;-0.70371891240497797 -0.18610163863645729 -0.7976527761552672 1.5000331355402623 -1.6079648871396004 0.35521578037595208 0.57548771919183084 -1.0428154975996837 1.8243083845455625 2.2773698956200321 0.51532440700099336 -1.6505507548739125 -0.57392497526063546;-0.063628546489168644 -0.38955968160797222 -0.67320356089708866 -0.32719341750605779 0.15990030179049228 0.53953212304335763 -0.32920511156505472 0.02745932085117898 -1.3666199779606636 0.82250750148230467 -0.51917059222702033 1.2905303534430184 -0.062957348344098787;0.87885943824730151 -1.2430443481567912 1.0507307729790152 0.68477089106957301 -0.9688319363030945 -0.090520513030067848 0.27835184273042951 0.39669454257934222 -0.2044644936498605 0.64428699582781024 -0.01325493623055906 -0.72528469300078857 -0.39578852339173037;0.22867526523478823 -0.4753128994370529 -0.57967121709863967 -0.86615915627479767 -1.5831150913558045 -0.4344928488337933 0.93457732681851058 -0.36398295849326451 0.26040838841348135 0.64600337066372904 -0.94740253660256413 2.0443517947240606 1.5132052136745895;-1.1505960315052859 -1.3154540720561783 1.8838208213798 1.8403438412840245 -0.0084114242290550117 0.074742813325304344 -0.48920197977910712 1.5009772487730015 1.705853171579742 -0.89951820193571419 1.4231943623856813 0.67389935283572067 -0.20196018765603779];

% Layer 3
b3 = -0.057723633616199366;
LW3_2 = [0.81853917262197717 -0.91018185026745968 0.42891866139836449 -0.33263697501386441 0.64747772578483509 -0.40355368047259782 -1.6007833913514911 -0.30103941898960634 0.31904923195852408 1.8318700667420471 0.96083363493765339 -1.6246268939619957 -0.26741050337749972];

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