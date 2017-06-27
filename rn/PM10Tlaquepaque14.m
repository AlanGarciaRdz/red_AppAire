function [Y,Xf,Af] = PM10Tlaquepaque14(X,~,~)
%PM10TLAQUEPAQUE14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:40.
% 
% [Y] = PM10Tlaquepaque14(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.00773694390715667;0.00572573718866304;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.3602843032248946;0.54134606682147957;-2.3746091331454733;-0.95200349312402333;-0.82052613181281275;0.90668995512117767;-0.18143578401943206;1.0578794144086454;-1.4478142921797184;-1.7684451693091863;-2.458861696864123;0.96233526165642835;1.5873330223838071];
IW1_1 = [0.47284510938783586 -3.6012307874456182 0.5034932107459853 1.1256100753321716 -0.58973673770611712 -0.18268701379100227 -0.32067892938358822 0.23797307134858742 -1.3951044628575335 -0.16872600110144606 0.70386343175603117;0.2796002700849255 0.35616117868097624 0.33695792000417263 0.44616545596295332 -0.3935047825992708 0.20461306264527429 0.53180854559415658 -0.029905094486496801 1.3557382257784201 -0.27742095314252424 -1.432280973868356;3.7732177435080976 0.047788013498548554 -0.81969008922206454 -0.31308066324363587 1.2438135683044198 -0.44424659553670387 -0.035796476602772312 -0.097317493630634161 -0.98294929802726638 0.34180458216073228 1.2843788441649258;1.6139296516810429 -0.19451937938370811 -1.422815125179006 0.041251757413827542 1.7344560261700845 -0.79655864684982292 -0.16435039323667044 -0.05827123307081053 0.24270972831628884 0.12296552993273421 0.78039840567803709;1.0078379391552084 1.7079148288810222 0.11147089631092881 -0.44278284000631118 2.4405677171150595 -2.3116441310542895 0.43839490920188751 -0.89379668692345771 -0.019487071168865187 0.88407206937746974 -0.13424785091942831;-0.91966640094051211 -0.15762369340287519 0.79224617383963214 -0.68326722672523377 -0.36374292601857988 -0.86735992003507523 0.089624166032195182 0.13308742694514067 -0.27996496101392698 -0.014247834005107096 0.62391842380750706;-0.80095688998704262 -1.49804232257745 0.44633496572498738 0.78239599430462903 0.4010623272060182 -0.1711679075864414 0.81685527166108762 -0.30015393090301939 -0.32783028251609264 -0.12088697584389355 -0.73629484207857843;-0.61377334461802857 -0.52072719444905669 0.15828199727937259 -0.24742717911796122 0.64179234233129201 -0.32567024190280142 -0.42379888266217053 0.28769159560073693 0.20008811365226167 -0.013870457299730181 1.0832292239134851;1.1237959563344155 -0.10155490838555006 -0.45793753752750671 1.0429611190686738 -0.9742620488775966 0.47059086282620266 -0.49435642133208701 -0.30478039138430651 -2.818582801802604 0.66180663212368007 1.7609746815465956;-1.7021854025779537 0.40334289539421692 0.6232779132567019 -0.91122938646233198 -0.65940086808200149 -3.4626402549582855 0.23070360589939085 -0.048948832726853082 -0.19267863568102556 -0.59061733324628229 0.26367321244430858;0.67840391953039014 -0.18366714783426588 0.41827653958724542 0.36583488399557917 -1.5611952337468784 1.9870228234619409 -0.16560407035694652 0.1404923828101054 -2.7047244666556147 -0.057472568044076008 0.43098914940348571;3.9293027443293522 0.36776679974579229 0.011619662015355928 1.3339085444924561 -0.96864484064850509 0.11119963398327205 -0.010711168643705919 0.061861285932287235 -0.24744702473491897 -0.33571496809819018 0.10791878507225532;0.15657340704960035 2.8985207850725865 -0.44711511595845166 0.57190230781009499 1.2220215904400067 -0.65216894768917333 0.21428761905466773 -0.065258682360277626 -0.14981884793252567 0.052350852691613117 0.51410921553668898];

% Layer 2
b2 = [-2.0683649509108304;2.4251380235488922;-0.40542816471469889;0.92477458799244927;-2.3126919848655194;0.89076631311162258;0.43514643076423165;-0.21545765867583969;1.4736065314509765;1.4164996049762135;1.1833591607038403;2.5639134926565079;1.8890848787221315];
LW2_1 = [-0.58493323352813498 2.054717464256548 0.14877257418082318 1.5542686766650777 0.66800054673692932 0.49288763312570844 -0.19373750384858129 -1.1766557859400231 0.87762283859177115 -0.64167950476638025 0.3552252383952631 -0.51947894306171549 0.17175500302662317;0.2350880038367727 0.082508226949912777 -1.5329663077362703 0.88270903188802241 0.10034191730144576 1.0082024864598373 0.7396000774034508 3.2357272274702855 -0.43253006851042708 0.73897091232926626 0.42424344621208887 0.70612559443165079 -0.53634250061146882;-0.62322659390282364 0.56987077194168245 1.8655445726400062 -1.5350483646983655 -0.23846325327337609 0.31778970750962865 0.57472609678758235 0.96749432964412885 -0.32818075114224604 -0.56383937966118969 -1.1532070433219543 0.59251096437221284 0.45925165295501968;0.33167096083374342 0.90729201464780451 1.0174988111653658 0.45670929533097526 0.54098077463960326 -0.50838609867591322 0.73652273676949309 1.0008413602871593 0.50888244379890812 -0.016130655365380397 -0.52260925578394613 0.79516423155390514 -1.7830493046464944;1.6592187278760755 0.42576757339578819 -2.8368829416264578 0.2330974672026625 0.097030239132279414 -0.58108879542000647 0.38119237204100143 0.16678089135578847 0.89853673493865205 2.0725862790681098 0.80761761125779707 -0.48218123875585328 -0.073640393636149978;0.28889426878154406 0.45052663659400771 -0.39305433436953491 -0.25234376192457875 0.33470110220750643 0.016365901171629879 0.80598301519839777 -0.53487796515524733 0.30344030516266957 -0.37180309683908963 -0.06931696837156312 -1.0152434273022117 0.30400696471343835;0.57674080000592298 -0.15332965351722033 -0.94750401086904179 -1.4154456887857298 -1.3552479579658028 0.82618572924177758 1.4609517466125135 -0.90658948950052665 0.41318805925344992 0.7141157936523308 -1.0158635607552207 1.1086714374014708 -2.1290758723778569;-0.0046880644622665363 0.19685584621658059 -0.50179374941628729 -0.30409583689998071 -0.28999106758338467 -0.15979101041099819 0.01868971353079309 -0.16718196526264428 0.34806134835738395 -0.73885161069161565 0.024252494592008362 0.53951407452315225 0.018652954648310134;0.50809213324433855 1.5869006556016301 -0.35214143901474071 -0.26756202179455368 1.7139885391816341 -0.54340245429163481 -0.48128047635384852 0.72956172819028187 0.61924341028027041 0.48981394891748942 0.73694496040456492 -0.42690338430867708 -1.1482853383280227;0.50995860921541802 1.6824320838156817 0.1555693955822772 -0.71912098060286822 1.784562008160975 -0.33193563585319402 -0.41151820492312258 0.72715151352828999 0.68611709029514301 0.44176425335397002 0.67052651394416407 -0.28924875167573477 -1.2632535814549299;0.51776503157381149 0.21987633162816425 -0.093665557317890405 0.30331230089165367 0.62195526374388976 0.64073098354623503 -0.38282979823313829 0.078121526535966268 0.19397462920761377 -1.1838024733280434 -0.7154173200513182 0.34198505476845259 0.52670138006932099;0.77937841787667539 1.0005161189962171 0.54345680789248152 -1.2162390783250361 -0.805200347595877 0.59411942166311038 1.0750916703227897 0.25089760575568709 2.2161513407548323 0.40214523392499479 -1.2654158826224942 -1.4617137685546346 1.462388274453198;0.14425757234353978 -0.032833798599474051 -0.092803796689579054 -0.082817102363388947 0.30980974115335863 -0.55640194132544052 0.95952685265040771 -0.66441337026676217 0.042149455630726571 -0.07096515657984484 0.17569389757094422 -1.0438769704462021 0.41416169392400937];

% Layer 3
b3 = 0.38360084337253664;
LW3_2 = [-0.59748502687605987 -0.19483388101951771 -0.24465222478559714 0.13814668465833221 -0.11199119953413328 1.9487578334447975 -0.37932505840909347 -0.4694532371198526 -1.6277614023717129 1.4325743449895545 0.47000083760725425 -1.5395648770773054 -1.6193695199933453];

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