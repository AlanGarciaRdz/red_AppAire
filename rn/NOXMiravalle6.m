function [Y,Xf,Af] = NOXMiravalle6(X,~,~)
%NOXMIRAVALLE6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:27.
% 
% [Y] = NOXMiravalle6(X,~,~) takes these arguments:
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
b1 = [2.0472908644312686;-1.4430533129947218;0.10123322187998936;1.0803179069680777;2.018851304906609;-1.0443487234699913;-0.2911040982559554;-0.90666103711076174;2.788045015818315;-0.30157862179406447;0.17729301421518123;1.3056391318217559;1.4385471900645701];
IW1_1 = [-2.7020564237912614 -0.59702890676895604 -0.50555421893487129 -1.3298013079165112 -0.56088666351019245 -0.42411050752180657 0.43436402009105252 0.51620990330535532 -0.59899419277710664 -0.44127135323546385;0.48438662030521146 -1.222342671059091 0.018181117711084445 0.0068559189596874449 -0.79083898759690507 0.64132146330830997 -0.15621321180514888 -0.39934159739296854 0.033994158232376046 -0.31964409380950703;1.0027826351049174 -0.65913360870315507 -0.72478211767124257 0.5057071938589387 -0.82080686816756754 -2.8518970694637038 -0.50040125930092971 0.068873368630366222 -0.21751792090447422 -0.026517798592357696;-1.9935730797677365 -0.16412427511238542 0.1048590703820296 0.68655157935679345 -1.4284957076303211 -1.170199979220945 -0.55728869352590105 0.50108536580580743 -0.091385080859625295 0.72766050029823914;0.040489369191972262 2.6222768045799696 -0.14861299030435324 0.655001822952062 -0.63791141037152088 -0.13346402266730129 -0.28230374766734373 -0.0453001477440753 -0.41655617412342993 -0.023251919905949707;0.0651195348296469 -1.1711805280972634 0.082920907033430052 0.18238032116737454 -0.83809703231343902 0.88825030167278696 0.26219755538440892 -0.34969462966041531 -0.21938576666392301 -0.20835961060590691;0.13478557809348043 3.8967976866016873 -0.42858628401291649 0.15143284339733135 -0.60547245914397796 -1.6891908278602086 0.38183782679449974 -0.029269976992160922 -0.40332006457914638 0.71635059585559502;0.06847567029898112 2.9944430255296188 -0.3190180503286712 0.59372349143446679 0.37319323147145472 0.63956897263165258 -0.2131669102043128 0.52349964236335 -0.05372846491279535 0.049541721883417579;0.45163050845790775 2.2046359024108351 0.56869921561614989 0.49203639645342834 -3.0727040064212305 1.9446069217038131 -0.53396645231459683 -1.7168029576388344 0.58506991638100569 -0.1567209925657165;0.16734741100919748 -0.60260919693963777 -0.30099880535240742 0.2900481322151886 0.089216595810915705 -0.46616638245578185 -0.55557290677473548 0.19891709932995166 -0.15183440728855713 0.17827608179582838;1.2775384221157293 0.048729117171447733 -1.0762334912276665 -0.87307356767392208 2.1381553775254711 1.5189777972400138 2.6600694026295182 1.5295716042538654 -0.16757478572371748 -0.6429082838695962;1.0830000218816833 0.070639060313325855 -0.77123753250950877 1.3929527702511693 -0.68952172034999049 -2.4258097731513919 -0.58586158059091309 0.31106199021494396 -0.17668115209237129 0.20190667225422512;-0.1839089277098756 1.2913468627874372 -0.12855297978363617 -0.24450514972853671 -0.6983109436741235 -1.3125214707389774 0.88780089945821616 -0.56448687089867056 0.22266751421552572 -0.51001833751826631];

% Layer 2
b2 = [-0.38561335379258566;-0.52468836756576098;-0.40408517806397876;0.03005798992287495;-0.67990404408887972;0.5929689947006539;0.04814429919079749;1.1746853047337946;-0.61864878647534827;-2.2025375589847083;3.1314944500744275;-3.5910008783308744;-2.1128522309924174];
LW2_1 = [1.0811551993765867 -0.10895888040534167 -0.50717485385430505 0.37227037696987808 0.12658406627230842 -0.14028777839691112 0.02936674090521816 -0.42858714022041616 0.61929313332941716 -0.88667225014449169 0.4844144762041922 1.4912824734443397 -0.50610942478919896;0.96137868170312724 -1.1639557744306805 -0.48524651912261979 -0.70509544278968772 0.20360273225419834 0.73888609317397835 -1.7713606151398227 2.106993348884179 -0.80674722097807827 1.7728525454261639 -1.363996131333826 -1.063687956108661 -0.85071238472532529;-0.78654224047518184 -0.50909458688019626 -0.23261364314042932 0.36889488171565948 -0.481638873188943 1.0963959212434686 0.67783597824490338 -0.84093113417375809 -0.53919744454083651 -0.89843434258385946 0.011191473645563901 0.37096074920245337 1.0513922771776172;0.69373842139520703 -0.23433491672993706 -0.15559411119974895 -0.33167198793710534 0.4049403087093022 -0.76473744605220551 -0.67395175146496167 0.98311577552311291 0.73598826023527852 2.2376447288637511 -0.10344328029131715 -0.35540306354537393 -0.21859469376612586;0.38331675767775486 1.4445345812848225 1.1841516604636033 -0.12316119941884235 -0.0028652680213133545 -0.65589123153081341 0.37346850224971595 -0.48058409663974322 -0.88907297444954592 -2.2008580849545067 -0.36556895695017227 -0.527762383188488 -0.30994428476489999;-0.045047285791538411 0.74651591000318207 0.094617106342750501 0.086470170732959886 -0.37190295911088728 -0.32272021907874504 0.79186439688005483 1.1915060407907982 -0.50600608671259995 0.99590817140919397 0.020675227088801512 -0.70079080610309719 0.87281874886990518;1.3458737910711269 -0.012846713945498724 -0.18381712216169077 -0.71893543169308549 1.9936345447884565 -1.6541735058988645 -0.24497984234129794 -0.12720111793559138 0.16810375394659954 -1.9420499018949331 -0.062228676946793737 0.26473856385394823 -0.62650374593999936;0.76974187275579831 0.78125576279934694 0.903222582573046 0.1186774794259072 -0.31656732209522309 -0.60633946491041824 0.30239432721397025 1.5415106970339676 -0.86481696738142122 -1.1690146709173646 -0.50335066807485385 -0.34543007800768871 -0.12615220277217248;0.71697281007011293 0.33927823588579414 0.51147949290796479 0.78403457005053423 -1.4438525681200218 1.3254944389518488 0.5239711327607165 0.88227364796383378 -0.33328602638905103 1.2483684047012706 -0.017546203863266458 -0.57608322365027576 0.38928765235274926;0.54576909012481933 1.996213165185146 -0.3818964978664588 -0.74871567685766915 -0.49315058940915096 0.59998950894983905 1.0389282161716233 -1.1326089819351612 -0.48712029922253003 -0.21376323077119336 -0.51890377569311574 1.4729508113841827 0.46728279874009881;1.0108093109461382 -1.963854845044033 -0.67191723879761245 0.89015720804609966 -0.63880817709098692 -1.6035249424046691 -1.1575180504655567 3.2521302526030089 0.94390315570612571 -0.63244201424560587 0.38535441460180786 -0.34594273592604602 -0.68256411016890906;0.36641116441034483 -2.4677796783556323 -0.025620624585539917 -1.8772846622178541 -1.5642595560082126 2.9271210509501082 1.7862732572828519 -0.26659425192337011 0.17018445632664209 2.4001524811358559 -1.0477333945541498 0.45844705299081445 0.96948568650272704;-0.33745946634025614 0.80287304617066602 -1.6049873432220259 0.48012160608013854 0.70152231528864883 -0.65092471010979991 0.92506841469997325 -0.96488284178677974 -0.26716560601978873 0.094697475316961197 -0.27297777561596009 0.25961377503395611 -0.66544960323611602];

% Layer 3
b3 = 2.1284024450797538;
LW3_2 = [-0.50423126722350775 -0.23452725738145036 -0.83724738672614285 -0.7962371895627941 -0.71865807882568666 -0.50333936455144224 2.1450275567250254 0.46273039638389879 2.2425766989964968 1.44507275253087 1.2535175523138902 1.9908258212559082 1.2718806741795623];

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