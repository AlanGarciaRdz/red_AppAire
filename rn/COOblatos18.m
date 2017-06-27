function [Y,Xf,Af] = COOblatos18(X,~,~)
%COOBLATOS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:56.
% 
% [Y] = COOblatos18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.93079778347684394;-1.5724260767740514;1.3638024076241311;-3.5775138405855094;1.0099817006989635;2.2636058395906837;-4.2119986537912153;-0.17173456073554108;-0.1552057607907697;-2.5333982669560275;6.5936712053023996;-3.1052732165706742;3.871038983095723;0.94911847285400586];
IW1_1 = [0.98718763722432601 -0.78683005532123607 4.444628419478029 -0.94116360036565627 -4.5965531958945585 -0.095233820503061672 -0.048791377959862381 1.8904541084636535 0.23101972011639529 0.74302727804725666;1.4010121485789737 -0.45494398156548455 -1.1681317966523448 -0.4156586227311615 0.22580813282203865 -0.14456221454069856 -0.16149392140818702 0.47705342438182952 -0.11234501383579251 0.35917741180163965;-0.13418645864588452 -0.45414149408320564 1.7518736164204001 -1.4803730916451365 -1.6824698817095916 1.7308902819671748 -0.37020598953524697 1.7208139148676529 0.24956874401637766 0.45691688079531118;0.52856599452381614 -0.1496078894384596 -1.5268925393103361 0.25912455542714152 -0.50689549164362246 -1.0590239648852129 -0.27802536627693636 2.0072880473626471 -0.24123286589521889 0.095007171300730192;-0.97103761765141616 -0.61292060774672941 -0.17756810163594311 -1.1694150441033426 0.45813354728285088 0.73690850670507135 1.1346888971460822 -1.3859149044837773 0.11426360820698281 0.16404630672951634;-0.069511513728041277 -5.0440917329393846 0.95757802794596958 -0.17765863601944687 0.54675008691658789 -0.18559275595907224 0.24437097957299597 -0.52648559336596734 -0.050568307107934682 0.098620808787724903;3.4873340657426608 3.5474111733793703 -3.2952871725685466 -0.45197166143556516 0.31170101624503294 -0.10118293184388807 0.36060297538986796 2.8058384626513484 0.096327596028067647 -0.37806373254162079;1.0893290175017312 1.6239391847012603 -1.2377885680933831 0.31009111980938142 0.29758996889436901 0.013116928251784801 -0.42976724510848274 -1.7578063393443626 0.063700310867387935 -0.43519739049181633;0.50979873915241203 -1.0282087531549977 0.6782333505468211 -0.58806177136521731 0.26616414490572399 -0.2346958030986592 0.12416359098848602 2.1294863127964412 -0.15585003481726906 0.42690033941426042;0.033140535455031005 3.6809674718124921 -0.80229036597673242 0.56934903030756079 -0.52897495033551856 -0.50691416286486057 -0.03963179737610039 0.17971177054986165 -0.3005264764921598 -0.0054995006857206496;2.0199496615642127 -0.44238698731516474 2.5348777059701564 -1.1822763888921799 1.2586008434039955 -2.31975953792529 4.3567601020669455 0.48971535969383789 0.64180294424191453 -0.80249368073178684;-2.192562673052286 0.17787551175710001 -2.6391503277537196 -0.6868146487125818 0.35792819926712627 -0.67540861352527626 0.86489634550457672 -1.4348221451555361 0.064202899151732273 -0.12125121286065479;1.1523742216284623 -0.21995631048648906 0.60074542819279908 -0.83220198851172711 2.1559295107788961 -1.9252050189304575 2.2143019092013847 0.75778502994812935 0.5948012176978652 -1.0567458255856885;0.70576029319546663 0.15585587180381799 -1.0404932512092466 0.00064758080546883923 -0.67477820720134818 0.17623345038197633 0.13454227732335688 -1.3723311922506893 0.15688468555507837 -0.4671621736773135];

% Layer 2
b2 = [-0.90596157539429012;1.7996800701047859;-1.218782805508094;-0.42728290230029475;-2.1506337949573036;-1.1467767316476314;-1.3741339596551176;0.28819349237021097;3.1633489519951108;1.1103598612813943;0.62376791926152542;-2.588545524261479;-1.5566285815850618;0.54793892749759088];
LW2_1 = [-1.2493002216381823 0.68075954744575295 -1.3782921446839114 -1.9060397445989994 0.088943822101428774 -2.6011366118875032 -0.12782787499158288 -0.93197913143688138 0.092331511721528384 0.1431375734635984 -0.48449236016910302 0.83241871295528835 -0.49603260341956118 0.51407414088627812;-0.45147640333739347 -1.268053774139968 -0.46858274958836654 1.5555995762778851 0.63383715403658747 0.14089493220514612 0.033088743418705262 0.33829198724941462 0.77381343553060855 0.76867281647484431 0.93528301863076724 -0.75811655313691961 -0.54395226685474107 1.5796594315739991;-0.12802891196739075 1.4215609522812065 0.45300318116122307 2.045124840757599 -1.4813425379640248 0.1452375226418437 -1.0683167204757085 -1.0370200064571289 -1.0746760413649452 -0.048677775662095156 0.07017488479139225 -0.20674496804142847 -0.043516908309943522 0.54417923263892853;-0.49756638313929574 -0.4383399322056854 -0.08208265847722139 -0.80730957573607187 0.60937884340363169 -1.8966328213253578 -0.26089889248248432 1.5349327250392528 1.6712429428247708 1.3328594079459748 0.99264730910567023 0.1429735810625512 -0.79216495141963661 -0.028730280027730953;0.16731010878146416 0.21853580498260849 1.7085865722629159 0.35378250113600174 -0.7250255385871176 -0.16202582097641546 -0.28467726498204915 -2.0421261789224374 -1.8378546510914087 -1.0007965738234819 0.35659925020334748 -1.4041762892104299 -0.58339478734905625 0.091505766978989322;-0.14198669678421877 1.1995768738763775 0.6313967137841604 2.2655633460136007 -0.99711311796188518 -0.066814968151564041 -1.0870917371684488 -0.77156147330666103 -1.2187051771174475 -0.30329048920402957 0.50518116380805456 -0.47786392539407818 -0.43021391326264907 0.1043849305427694;-1.1600231007116963 1.3412724069917366 -0.58294002987496574 1.3950440241907707 -0.54476604695023423 -1.0071800694202726 0.014031937647628204 -1.3085266010734544 -2.254327512425728 -0.93547949537719843 -0.880402889396802 0.7224978397985703 0.91257436247237111 -0.17045756519008626;-0.50440382949669149 -0.34978362540622326 1.5201728727722519 -1.0034829718147276 -0.64283501324045478 0.24919833896399685 0.56807960838748717 -2.301688537174519 -1.3577494860291288 2.2806631678690654 1.1813167241567002 -1.0854621264014779 -2.40279128122395 0.77231264162626045;-0.28154206685170308 -1.6479987607177695 -0.82393614880632382 -1.1080415281753484 1.5624616254546917 -1.0647463360542195 0.31760059638376914 0.072632930736638526 1.1409343668950069 0.1690488270205493 2.173120861186205 4.40170545964369 -1.2726087580756384 1.7556195286273721;0.040768641571925918 -0.08858752855687646 -1.7023230590256984 0.69509706962387907 -2.9154431342198288 2.1940203465872297 -0.69175629605707023 1.9366985775714929 0.9412811401168063 0.18311499121511768 -2.0415211652661682 0.23798721818898377 1.0106608338308467 0.34545002598460983;0.24915670923227123 -2.0718493921631311 -0.2518977227557222 0.8925826434009555 -1.1617811758937906 0.80302724939903825 -1.0762571036264368 0.7886043556573451 0.32920183405533598 -0.44817369313443312 0.23057397967561347 -1.9786659164447145 0.29294709063711533 0.83934377043156028;-1.4145313433099078 -1.0296503876087364 0.79466856125026719 0.57234028127949166 -0.45724610498840423 0.57163560603441776 -1.3102794733967251 1.1892497473338397 0.9976547142509643 -0.12837914982974102 -0.5960037846530889 0.54005740171896299 0.22040365928610614 -2.6221496446787835;-0.98389619688115926 0.47106166908360092 -1.4560410475404826 -0.99703285498285799 0.63383478253215608 0.10839006844080859 1.804204232696482 1.4540020067563366 2.1736577516404676 -0.37101011458378214 -0.63308905256268611 0.25133449136381936 -0.1813363355035803 1.4946629030863652;0.19931162775584166 -2.0538147336218979 0.01189748337534954 0.65357669008074615 -1.085819188351854 1.3187131056914074 -1.0857636891481319 0.70085906263529951 0.38260488698609602 -0.39443413069461053 0.43675392606863067 -1.8701928745603624 0.10918907402509359 1.0535532837059529];

% Layer 3
b3 = 1.1815162319957746;
LW3_2 = [-0.092829319456290721 1.3383872332443345 -2.2756623857026881 0.25920082280121931 0.2216857876143877 2.4257669273224427 0.89697685641010083 -0.14122220974571656 -0.23791152152246775 -0.1399810729334853 -1.0733210374318818 2.0667368151943459 0.13911177404604724 1.1560458483266027];

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
