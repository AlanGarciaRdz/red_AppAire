function [Y,Xf,Af] = PM10LasPintas6(X,~,~)
%PM10LASPINTAS6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:27.
% 
% [Y] = PM10LasPintas6(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [-10.157803728965394;-0.26188033692615598;0.56957312236729785;0.69639295787114619;0.87380894056845759;-1.2253423670074666;0.56083173883235315;0.10894784026898656;-0.18577348136291605;-0.30660821037636993;1.0318656409897482;-0.21811107791606063;4.5180383141158913;-1.5595851127208344;-3.9024609691167607];
IW1_1 = [10.769736113814398 -0.64417797917546782 -0.37385457119831128 -0.03133679801652945 -0.4801912173188857 0.44597963667938839 -0.81902892645821523 0.0065267826406632977 0.19483404410499813;-0.065465105391679101 -1.1568981024276725 0.075703730232777169 0.85517788445984988 0.16141251245701968 -0.26036808275277279 0.24476679400517093 -0.0099936705108716033 -0.28931202029874226;-0.52899711096536473 1.972414323167998 0.84236990729962946 0.48076581792677736 0.25342407376865889 -0.71887087370951497 -1.1014252312665327 -0.030186743642848221 0.32588220805520035;0.43354864132232429 -0.27754779107145722 -0.23000696418563471 1.6426555943059866 -0.45446605429601483 0.38151851717816115 0.37350293248572475 -0.16627702046819909 0.90107978420644685;3.0958161868804357 1.5261606621203172 -0.85301860912594263 -1.6176182345244556 -0.3556990912888694 -1.0488327983470882 -0.32518191537091329 -0.075961933881175073 -0.42179566895371862;2.1032982680357439 -1.5215512621908382 -2.1079264979971652 0.53489369812962562 0.52252651096617553 1.7655298875864078 -1.7943258665337967 0.090146272844940256 0.25779519100857534;-0.63467730070020267 0.27550624187563949 -0.069370801028449974 0.63066031400804556 -0.12470977516494382 0.40734270608963219 0.50714309629182308 -0.0031230698491655981 0.26775632704451729;-0.043311139310721947 -1.1737444157046741 -1.3268873264514607 1.6406463334847095 0.062424222846764549 1.5675924417712561 -1.0365278335792856 -0.05632737053686216 0.07496384626444548;-0.33094007775907497 2.0427022940856401 -0.22141300648893097 0.62610364658985129 0.27242820723692823 -0.57239901504204971 -0.59439318025592813 -0.051232829532190487 -0.02654558031248716;0.58963130411563647 -0.78038614580926002 -0.25936565565178643 0.49990059552592492 0.27499985971004998 -0.62473252027403237 1.4625141614937776 -0.054385321649012996 0.96842034827059842;3.6480393846451795 0.17241188067511765 1.7433453309963012 -2.2719181116786631 1.1652656824003926 -0.65638632923729767 1.508144358059518 -0.035568883416354877 -0.49569627646604814;-0.54440142014489368 -1.6540127523117458 0.98996551325922877 -0.26869346207584571 -0.071334769135285025 -0.14195531465801772 -0.04901001837626081 -0.064833817637633642 0.52368341968221277;3.7157621385446142 0.1217367374488485 1.5290276926217587 1.3606996329162122 1.1259071793391879 -0.57621084819417412 1.4953638487026626 -0.039499652029968108 -0.45382696949240886;-0.1656775366322964 0.1138496695839501 -2.4199916756041797 -1.8485609154233009 -5.225882225926612 0.25589587141566733 1.3330709386906869 -2.2100026174337879 5.2544359660226636;-3.2537478044915917 1.1635412237570584 -0.55684058418940152 2.4382635845569971 -1.4735176439425655 -1.0907209647214733 -2.3631929241690286 -1.7138739444898976 1.4994833634231872];

% Layer 2
b2 = [1.6227544171862844;2.3132681180225521;-3.3716745722264325;1.8338567613221712;-4.3986452053473855;-0.92683283195225075;4.0852334886360699;-1.7047555178090277;-0.17330581267997927;0.94761775316406771;-2.7254876910802461;0.10611373450684863;0.64429523679610023;2.573906341478152;1.9361311739484635];
LW2_1 = [0.38143818571154281 -2.0798406027641918 0.82462117746615426 0.35740255015521427 0.0019569250782839574 -0.12756682492049104 2.0635514999615783 0.25701675586566947 -1.0692254804001662 0.17630447308151362 0.1176645176052703 -0.8965799218044217 0.18371895292692028 0.020113688879771951 -0.3041802943421047;2.0968440914161084 -0.74744911706528105 1.507620426783332 0.94938674777437793 0.063619089761411896 1.763280220251652 0.65832946054336394 -0.98378849071577801 -0.054972240391414726 0.67447796055667097 -0.4836554972294197 0.94287190741639182 -1.436191523419232 -0.69894525876816216 -2.00898602751188;1.0816858910918246 2.7426360494561131 2.0675097601681598 0.27959501478587617 -1.7521791082098424 -3.0032304762495907 1.081624377344929 0.98833599621313939 -3.0797762729121896 -3.5066370418770787 1.0063186890910909 -2.699261541054419 0.19268362217935706 0.64530646464480812 -1.5990125883028505;-0.51648725147885199 2.4951441178240059 2.0352074819107022 -1.1688395938680469 -0.83649226529950138 1.8207021432960102 0.84700208326479776 -1.0433890338922984 -2.2609042420320322 0.16552762896134654 -5.8489854925106863 -2.5181828562753701 6.1849031213713479 0.12915703768728382 -0.13003264509601484;5.8612787407008549 3.3810353789599912 0.22887245725635499 -0.83820569113511267 -0.85921902144199869 -1.6245062753657327 -0.16335919154440465 -1.8688345454471555 2.1031986632759576 -1.6821088176762358 -0.68340968045198869 -1.3147110802243887 2.9981796797313138 1.2934663475433696 -0.16427096203995178;1.2105528599721715 2.6470914486320667 2.9722621440831545 0.64768591772118089 -1.0095476524798341 -4.7947805632995166 1.2203533990521764 -0.52573362293820058 -2.9681713630694095 -0.83048639685343584 0.70904603508986286 -1.8095818014140932 -0.18663439998880277 0.20327599754152367 2.0602438462285506;-2.9210867023191942 0.10323718435366222 3.3489729608307082 -0.96962615849515199 -2.5920405627958085 2.1793203222362272 3.7883802766327141 -0.33563557556123141 -2.4178240229842727 1.3579187247946609 1.7231803970221864 0.91691056052032616 -0.4736647637398767 -0.67348157039397805 0.57199841324950074;0.89146988637011548 -2.6295066779791276 -2.4733453285240397 1.4190623601422752 1.2138092934643858 -0.9651891272964972 -2.3559956386890555 1.6558430035084897 2.7826056713364511 -2.5677769259209553 -1.3755586322856357 1.4948473569153637 -0.91398126158608239 0.46272643313495743 -1.1746518756260294;-1.0928553223809263 0.012152149439683849 -0.81447662414876809 2.0502124705374194 -2.4084377078917494 0.86192398439584661 0.10467459335068985 -0.18945675776765267 0.11893286095930847 2.3652457942847831 2.9126390243871656 -3.1642141386844513 -2.119559893548741 -0.29923509131886489 -2.4179910267575786;-1.6699635239480182 0.92073367166583187 -0.91638356846334601 0.044680640718377393 -2.6274419888749962 1.4296225117167713 -1.4905139744235587 -1.7159449478112634 -1.1236456532356756 0.71337954317811314 1.3656766284950554 -3.4598699221717459 0.17230930981736048 0.71744269615428291 -1.5282460645223184;-1.6308673181442512 -1.0356845197920437 -0.97292012187006804 1.9535594654835728 0.23979552202684756 -0.65217222143350773 -0.45249704925450041 0.53000843409525999 1.1010311389150977 -2.3852085167346577 0.024596841934098522 -2.4399749126163917 -0.44593883961527497 0.23205419107708894 1.8908361500825071;-0.41548905634714517 0.39966353866104509 -0.85473514248637072 -0.93839023830008517 0.4423758995944061 0.44128304944481267 0.28354334536166748 0.95977178940420182 1.04647647159815 0.58710166795631979 -0.48632865047688173 1.4446144668391563 0.66037711315254877 0.094593357686873186 0.051094645157784349;0.56373540411281231 -1.5817813033984305 -2.2884697866193631 0.33990403024177557 -0.062998686227173195 0.38709671043071259 -0.93613380030529303 0.17156475674390118 0.75297822536322634 2.166746302969754 -0.96281319230929863 1.5956706386559474 -1.5581526004077506 0.24229748520446495 0.059814878299821489;1.2900974988228084 1.2189110176223812 0.21508452549524837 0.54482766737434551 0.44066425402077269 -0.90243139070751344 0.47526728151762287 -1.8250608288395382 -0.98638356883936495 -1.1531609156031255 1.141442688062787 1.844255812718177 -0.19656862633003111 0.27649770581230421 0.57929954507419279;-0.036797891095857363 0.8667670249617041 1.3164449118324211 -1.0436101621103251 -0.068199135052458906 0.58199367262893154 1.5332105925379935 0.49353634899661847 -1.0945446043256495 0.48569179883720465 0.53003793427740142 -0.97628657975474076 -0.31161133813164782 -0.092680582576348647 -0.15150423205294453];

% Layer 3
b3 = 0.7391956236631867;
LW3_2 = [0.34644987265428845 0.14060457076618627 0.18002891355994971 0.64298792274041794 0.65926282543651982 -0.17011412712111559 0.18384794294185039 -0.11281629899466269 0.1118675001513839 -0.22180482206559421 0.15242599896385417 0.43855807074954367 -0.16364854879410143 0.27777969353416676 -2.0597162657666743];

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