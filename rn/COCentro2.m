function [Y,Xf,Af] = COCentro2(X,~,~)
%COCENTRO2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:29.
% 
% [Y] = COCentro2(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828;0.448430493273543;0.241545893719807];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.7863673208171742;0.071433224379956167;-0.95275094437617847;-1.1049113940054949;-2.1489394497472061;0.59569307770355773;-0.03265519524971093;-0.21469176976649357;0.5124449873547936;0.086713519995760019;1.0106430807409887;1.9322643563855124;0.12081883864039242;-2.1354404157854034;-2.1783020996109559];
IW1_1 = [-0.0070336566941796358 -0.04249631898915824 0.19961755218989868 -0.2175221723525447 0.2327034367998711 0.20095869818939527 0.085202019992742767 -0.028172070870627661 1.295851807489415 0.69245405917276093;0.0072418104845065126 -2.4344808821003356 -0.11217164074684316 0.18137174445289181 -0.29716424616297465 -0.029880888056685224 0.060739535516897578 0.20021763286107538 -0.73011773044358674 -0.41026716805322605;0.0952634354523966 0.60129648499564892 0.10739665745054028 -0.15405758886411119 -0.13765923662180582 -0.022509840751734581 -0.44309703987383187 0.40464000004979767 1.0802339981395193 -0.46729350624922539;0.97940494313586357 0.58321441449042055 -1.1888760485076475 -0.079064305250364703 -0.052019906559784695 0.0023610660053158365 0.079730495900942069 0.94636704687294193 1.3843694113416678 0.5125608800785878;2.7881976369422055 0.45399563734573056 -0.21732086377865115 0.56625091525908888 0.54931519226967784 0.048802859254302777 -0.09920219389574958 0.4022722411862536 0.94179004921897402 -0.13868672407929589;0.055719338599903155 0.092901416467932887 -0.70623356180225849 -0.52856969930845366 1.3218675559230393 -0.80600428420729209 -0.12315445630245506 -0.085170758239736105 -1.1938904117793265 -0.03820270619426884;-0.14134523122753651 1.7189912364275941 0.14082823024994445 -0.37715074013496774 0.31341274791986529 0.13722622748475585 0.057426019153788664 0.15737147442525384 -1.0840549622339375 0.70001526723864516;-0.26639626682105016 -1.1433990911932468 -1.1404942801399744 0.12965406695678666 -0.15673475301274406 -0.44168612754849984 0.53568136739692485 0.49711506549462647 1.8589832002854028 -0.13046340517376639;0.77892011238533787 0.004963843819393781 -1.1167507722837522 -0.24131185948816275 -0.67039485008706323 0.043934609562835 -0.35903577118191576 0.052582825549589082 0.059270209169848223 0.055846389234869023;0.018803277612591048 -1.1714761626833543 0.0023912600915055315 0.25088587946356206 0.0048460593885494979 0.22263642106512241 0.94272224483563349 -0.041477347145983577 0.17271435885224537 0.48162932813377418;-0.34186546552774821 -0.38443140763478689 0.2622856778235001 0.20764815977371875 0.73967327063582222 0.48714113118947283 -0.77055542158507639 -0.40925528467693034 1.735809338287843 0.20549966740155401;-0.056866711774609432 3.5974105744722626 -0.09116230153772456 0.53223364414169105 -0.48663939975516318 0.17700491510154778 -0.64860874979889516 0.14756105288808852 0.13305253625107899 0.083636167522760985;-1.0772897226022151 -1.1540797283311974 0.7433162880587505 0.68239973039282453 -1.1896103202811705 -0.36497701050056397 0.36478190985552233 0.72233895723578523 -1.2753932696361219 -2.1644412136257634;-2.4643247118967451 -0.30590428451772278 0.32914192625226435 0.019616423512596515 0.095874968876109593 -0.1588309786479648 -0.24350031769017838 -0.35305286398063396 0.30038655352809729 0.5773112977419762;0.10109728870890963 -3.3633013041352782 0.26733028973705242 -0.2140891690276181 -0.37590760205846946 0.080773666800045635 -0.10995302805359528 -0.086559148054833793 -0.535116502360243 -0.20094736152845841];

% Layer 2
b2 = [1.7426318660200808;-1.5901910437864715;-0.89619850736183937;0.86735119272518924;-2.0832757563550035;-0.043290659363257156;0.51724084820681959;-0.052885934031706071;-0.39559399389682048;-0.98648105667422281;0.7735513667056213;-1.0501041254383927;0.69400591213498586;-1.6206963092848292;1.031506826105955];
LW2_1 = [-0.61309095501138222 -1.0921746608314744 1.1360273263035057 0.21976612706662521 -0.99136383335148348 -0.18233547342138506 -0.39297752488051568 0.17134204727139407 0.13572134063288055 -0.22133953882894644 0.38561285564412806 1.0295104239223321 -0.68706970703379511 -0.4874683715046042 0.74723749655972826;0.59917283390149556 0.91692232794098893 0.63828136284524462 -0.41219844468269889 0.033286332014165948 0.088788678216042222 -0.87169522252364962 -0.15648562032333044 -0.89505513626203403 0.21650633186297955 0.18533629813443953 0.94052827283196172 -0.58187942377030444 -0.31114914386695303 -0.14049006691286042;-0.9053661211463544 -0.028513166005548794 -0.545849423421913 -0.45852186922825505 0.52140506665306863 0.48443850313476661 0.084583769245709234 -1.1671928298166834 1.1040556789913629 0.56987102531989509 1.0333906995296402 0.50185864621544551 0.25947586133277706 -0.28617759776922647 0.60476832405769565;-0.48040413093303214 0.46934402998639752 0.54361287617520215 -0.6741742998069189 0.11442416752972509 0.49214343962345813 0.16105047207444192 0.6307317607181836 0.18356675008028681 0.67740346948019803 0.81764310820939179 -0.55709271995885123 0.49938917009644967 1.0967639192592378 -0.70293006294080806;-0.36339019822981067 0.12896385100778937 -0.29591479993595127 0.36535577343092301 -0.67679249545821341 0.094997051378921948 -0.50686266502883115 -0.27635732995993328 -0.17706794027759282 0.61646491382951007 0.2405025171008312 1.2462753748154873 -0.36311850536149226 -0.67945822940826017 0.37134452759472891;0.9049869226070153 0.1519684880960567 -0.57671934894395915 -0.73466173135994972 0.37307041135168151 0.36109794888752994 -0.14128542624912405 0.57528867638255154 -0.34729885390380055 -0.35757070711646233 0.30444361759844696 -0.78671798555866856 -0.52165026506505174 1.01489745324988 2.1352654401152455;0.52982283183886925 -0.14354041401121753 -0.92763851401946418 -0.67816765032073401 1.1569384820148145 0.2832835472610189 0.40359425684910921 0.81458923914244818 -0.59318108807417791 -0.13155702349890153 0.59325286034988911 -0.50733374962111677 -0.34552772199369969 0.31128071376979188 2.5525529360458434;-0.94146431982887901 -0.96474673173405801 -0.03121712735706763 0.75830766054403742 0.20067319679045303 0.25548603530832159 0.34453383095868012 0.11577670467072203 0.23031619256223532 0.32769036804263385 -0.84726583296026148 -0.68206953503435808 -0.24275647717201998 0.89269839126385386 -0.35116597992526194;-0.70297680555559028 -0.090634368286382425 1.3818832171156679 -0.015669845016999119 -0.35747846653873716 0.93782234383690177 -0.50612864373373923 -0.35751098757571553 0.37120903458525617 1.2059182509548549 0.089602233189474079 1.4132293565529739 -0.093821053224537307 0.66374498365461498 0.4133134473790494;-0.59894785528398087 -0.41485604553290667 0.90009400322759958 0.53415353482674532 -0.49689738926116572 -0.50521061379854204 -0.79735484590753536 0.32875547967813445 -0.67433698492074001 -0.66984519373446638 -0.71979090566248116 -0.27813627251603285 0.73103863353115883 -0.53048276698587737 -0.1889332101299005;-0.55944166665305795 0.33355864408576541 -0.0057259319972904968 -0.34477814999667167 -0.15493898027523167 0.14058643982781019 1.1352622825891385 0.19650164967054384 0.80889554809858377 0.9318265387587823 -0.24604554759823005 0.75626386596500006 0.40189001751198644 0.40840462260057292 0.60542675331257712;-0.22501461737049205 0.017295960189209432 -0.62576495853924152 1.0474505335278346 0.36998722731850037 0.11907313199554327 1.0371006716429247 -0.041542344742540843 -0.73624324262172203 -0.019238674323061117 0.12449739716622184 0.89807963499190024 -0.67261264993477887 0.087450523849659414 0.024493710732611647;0.73727860069428197 1.0403972992100339 0.18284402763881658 -0.786499536683678 -0.37820462566893931 -0.27238079171499163 -1.7210113340765316 0.046151127848438833 -0.32490164743295358 0.064249099756458455 1.4121242389817739 -0.18905499980653054 0.10248231044606596 -0.78335435836168954 -2.2486546081635272;-0.1957002467076755 0.91176318546886215 0.35398502131403897 -0.83845484105516777 0.35813332000110715 -0.20051430765637204 -0.069370170840366424 0.67111213522835034 0.0077826990430994725 0.43282155642918757 0.38605643721259492 -0.071938346840197537 0.13830944306539392 0.095796667631975932 -0.44882787371031457;0.78920755240206375 -0.18037808987245649 1.0459261365540591 0.039539176436888548 0.29487580187923357 0.37121371586327406 -0.12392521576784743 -0.40918363661418394 0.012492644034639275 0.023182573705915449 -0.73143500227001346 0.029835302708633563 0.038257337818983717 0.58533299421303309 0.12180046305493801];

% Layer 3
b3 = 0.14579398127523469;
LW3_2 = [0.45441187456874116 -1.0253615446147957 0.27918724074421813 0.63131398336361844 1.8721271074704344 1.5391179158264108 -1.6182903266745894 1.5662874747586442 -1.1222605808284585 0.36359275227446147 -0.74458356919967095 -0.42176238348890038 1.158645788948816 0.89635387763007435 1.1189751634024543];

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
