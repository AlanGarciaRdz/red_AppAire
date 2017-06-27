function [Y,Xf,Af] = COTlaquepaque17(X,~,~)
%COTLAQUEPAQUE17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:15.
% 
% [Y] = COTlaquepaque17(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;14.7058823529412;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.448430493273543];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.2753696450947798;4.4192039570814483;-4.2341598483571827;-1.5995189755326262;4.1120610154622419;2.7634060885596061;-2.4111712006713613;2.2313685345968328;1.3777623140299482;4.1250730101022723;-1.5464174640170527;2.1055136689025042;-1.6478307334622455;-6.3607476322650491];
IW1_1 = [-0.11728552334510474 -2.9796348231450995 0.44101188999303043 0.16712476046591931 0.021781524384102399 -0.1062745804388822 -0.10549016441922589 -0.15583971329629256 0.11538829513365667 -0.16366128794750318;-3.4486754627804972 -2.325693490873403 1.827855175179999 -0.20525784312576148 -0.43092878990367106 0.21076210137168513 -0.53619817679751924 -1.2798209093320179 -1.5134115383219982 0.59183678323712141;3.226997289948931 0.13629988450764319 -0.79438624975087102 -1.4761048788867759 0.17400509900930355 1.3268753150775376 -0.089889905197332129 -0.15395851780132505 -0.7722233631158173 0.2339869109149848;-0.12758546543079891 -2.5533041491343917 0.16702317646991974 -0.079130286715809198 0.013014527424182468 -0.083926552561858353 0.29874530436664398 -0.021565740912598216 0.14684562866701298 0.0042493837634791894;-1.2260600117165608 -0.12971946301657664 0.23558125775105224 2.7765373946599938 -0.27346791195127673 -1.2070847049009139 -0.16541775058302291 0.24325568368606021 0.86432630426807144 -0.53600292486600976;0.13646244178409545 0.041417655181744013 0.092727370061942122 -0.31189013110827551 -0.24273795877764448 -1.2078595995548633 -0.98132172582394006 -0.086494937204522851 0.048151155827457097 2.9789573681768911;2.0884926760148868 2.8090278273182423 0.28949131351562279 0.2145327536142389 -1.9050272441868743 0.98850650839385856 -0.1083472086492253 0.45656533035331481 -0.0030209426894107043 0.23462639021320023;1.5947688224350911 0.30237018196701387 -0.011891170738823065 0.58415053656068527 0.13913208035693284 0.58973052778518698 0.70499956013471587 0.017362958629357349 -0.32112920802617662 0.096229163674005608;3.7537203253826319 0.17077097025269569 0.89730382055154512 -0.36189622327511578 -0.029734879610608712 -1.2382516748106092 1.3759289038801905 0.091541543704916545 -0.38233876433711733 0.0065778128878451886;-3.7315939691192672 0.13157884680667906 0.90905409103790347 0.99150789329782862 0.19498343593277898 -1.4100774448577995 0.32710344633886007 -0.010712388094313258 0.75736558897540074 -0.10613879468810945;-1.8519730161421772 1.3270908702443696 1.3691198513403433 0.14252033987642637 -2.3842298088029135 1.7604630834109822 1.3057701219423301 0.61781766255924864 0.34772545084215545 -0.79239860155338038;0.39221380255143251 -3.1458000054475641 -0.20631791786333631 -0.11676620678808664 -0.21198235805767143 -0.096058899669320102 0.56520830998331317 0.014144942037627103 -0.19602821486437824 1.1108844462334975;-0.32137447819000803 4.8256224485401704 1.1370709759340065 0.22107091304588625 -0.030667935350589738 -0.66628150968951605 -0.18550866980986536 0.025172932655445457 0.26840631067905957 -0.14121443539387701;-0.20440132701692482 -0.26945370912536215 -0.85890037583452217 0.17562905528501527 -0.1014820514228596 -1.4354677153293571 -0.22359348437532844 -0.018939401931607102 0.12594127332396451 -3.6058139993104596];

% Layer 2
b2 = [-2.1935162721893424;0.40366315823835885;0.39670823810253802;1.5514996396105953;2.0227164625523808;0.17177338951261603;-0.65094272136730624;0.29548674012919041;0.87632263260043475;0.78628706624446409;0.059674396015718542;0.53285278890859267;1.3295330410567419;-1.8695288955941647];
LW2_1 = [0.7867057723253974 -0.77285804975771843 1.0916094897709039 0.023454806093075386 -0.25998206011607566 -0.74046153569160666 -0.34704580345169711 0.63629112016318801 -1.8335788726406097 0.26593384133598708 3.465597622557274 2.0467784497197741 1.4655733055129092 -1.502462571057428;-0.9015997117148854 -0.42960573677858072 0.029559806619604681 0.69326031576431246 0.42838336537051175 -0.017604223603424375 0.63927736564744875 0.16036971544787551 -0.30630452517860324 0.1013859975249741 -0.025602299624048759 0.63188017667983465 0.1367913226688621 -1.7213999078746511;-0.16754432164555072 0.40148944043210077 1.8907073191140291 1.0050619731164345 1.3185746815445187 1.1243631352909702 -0.46817695882769889 0.11091219292096166 -0.1735512983746757 1.1071349920361704 0.17041335732787241 -0.33670650775985206 0.38347479152812292 0.72067404605929752;1.4369202827101988 -1.1247115326118915 0.32411158126656486 -0.23337289744932052 1.006733504691 -0.57206710845745379 0.061095607313699923 1.3360008396437022 0.020907684157029524 -1.2230841235859113 -0.074492118246351186 -0.081443690091871968 1.0479433752659719 0.70990765404582357;-0.83860792967983744 -0.11975912242156327 -0.13841098706475888 1.282515695810309 -0.31474386010290556 -0.93319619125814224 0.11351195778717692 0.33899641639557465 -0.17678999841321191 -0.10099195565163611 0.026912560526773446 -0.28052819880183 -1.4659792573689183 0.079673339397108606;0.32749689005991017 -0.13545313433389633 0.4432331337730544 0.95466157980409005 0.869394691266139 -0.67390498741381966 1.028609951619893 -0.11791433804884599 0.48654518431079508 0.65875862500466476 -0.36091601424972147 1.0442905665622113 0.11403427424901776 0.25942523246692251;1.2795405268939894 -0.47160759577477607 -0.6731691738907527 1.5467790428796147 0.36338068689651903 2.8414910028523503 -0.58843301067514209 2.1735125468053478 -0.59041044876457671 -1.4441304680783413 0.76044475228780151 1.7747122013613719 1.5736244960957517 2.0333284947124284;-0.49584347380785088 0.20530778460943072 -0.85864718110871241 -1.6149206474569919 -0.86720752883644503 -1.064953658820192 -0.51252965088793179 -0.47032689443674602 -0.074039014860246027 -0.81942135026711782 -0.27413753760349108 -1.5143200387343849 -0.91832236558356606 -0.80597132726999787;-1.0135801416120536 -0.46451116460062597 -0.49439067760809013 -1.1576111007804477 0.038087857906194011 0.0045646297552899562 1.5726034772170507 0.34409965277235255 -0.40891923789961454 -0.030653813148768 0.053650118128631241 0.027462906036572296 0.16902374976102949 -0.99996872623469824;-0.4214641856621637 0.09975358810192704 0.49584083057981787 0.31620694775034858 0.095029321501668151 0.23792915136286638 0.30626674264776343 0.36109505953023147 0.085307313523607015 0.68739625032284712 0.00097158602542164307 -0.28952423113755688 0.40503116288404173 1.2889917166007023;-1.1477510416092545 1.019878907765247 1.3689596693919552 0.44984517223419623 1.6323078096723824 0.77307784508239585 0.9809638000871459 0.98371688030573734 -0.69199228418473613 1.733748090588846 -0.040300629476856593 0.094856507029362755 -1.5987297229926276 3.0135755009084204;-0.62399773600052211 0.28266568263057168 1.4406734088328923 -0.22303436294575196 0.9955665050434015 0.50481386511804738 0.10279439376702969 0.41174191920854042 -0.0065647164277574249 1.0382296646101494 0.0012323007590688585 -0.3668166310616659 0.025409426595163976 2.1634460116525003;-0.59928668411135488 -0.6872592727594018 -0.10508266303648607 -0.55339403119068087 1.194119399551522 -0.54022517984596774 0.87947436838702231 0.55472375404002017 -0.5476461885684194 -0.96917043441251682 -0.14384362722261079 0.57718230206180099 -0.59083491651147702 -0.58729062931790177;-0.12008074421517215 -0.71186412360095652 0.31027369410171446 0.93813104248569101 -0.65367005158847802 -0.52803810761722247 0.619716235092443 -0.61102732385654579 -0.91547877734569205 0.09658596595650086 -0.74482427530582462 0.41445569052929682 0.35396946630650966 -0.90033792204467156];

% Layer 3
b3 = -0.54504734804126909;
LW3_2 = [0.32806783720837057 3.2323791108383855 -2.7977347999201188 0.63409803509947038 -1.4384921750533921 -2.1658595957040712 -0.64338876720747928 -1.6408801749854078 -2.3702396559831098 -2.8805921641868588 0.7207062439538936 3.0629878985329495 -1.263679175282127 -0.88528869583041503];

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
