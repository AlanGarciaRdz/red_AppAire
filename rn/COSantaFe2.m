function [Y,Xf,Af] = COSantaFe2(X,~,~)
%COSANTAFE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:05.
% 
% [Y] = COSantaFe2(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;10.752688172043;0.00341273633199099;27.7777777777778;0.00632111251580278;0.294117647058824;0.448430493273543;166.666666666667;95.2380952380952];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.1604913278842577;-2.7013515798596659;0.7180404388588193;0.98926995838867748;0.43126020306748464;-0.45195119987956195;-0.7964486760949927;-1.990772436981473;0.65333739929632018;0.9335566539605179;-1.4871415573781026;-1.0590724222988244;1.8099655301541473;1.906961976980069;1.5689421159084052];
IW1_1 = [-0.16993853489385935 0.67227025376927341 -0.62097967198856219 0.34973713072739393 -0.5120342521920308 -0.27352676419680311 0.94067516527984119 0.015484614354234261 -0.1949545749069192 0.10450276065954636 0.49699793333091236 0.47793432612969511;1.0328066352555865 1.0305429465943952 -0.22971151764327902 0.34290180867882841 -0.47551964494108745 -0.56128406288133825 -0.020978191581743265 -0.30302650521914504 -0.10459506009058073 -1.8026177995582251 0.16938510150856451 0.1510155221819193;-1.3435279137506912 -0.61464611350886611 0.27913599624724572 0.070900106048868067 0.26120995039522088 0.55509503796361914 0.19872120343103161 0.34912167789759924 0.065268638576749222 -0.60311729259381341 0.078001969620489817 0.12579596163084256;0.072387374745789615 0.44358365451865167 -0.22058381360448426 -0.32232806918082924 0.071430079728693613 -0.90381171238101921 -0.96135997262330386 -0.60629127587628395 0.30457604234293811 -1.0710585586411159 -0.70220416674645059 -0.0253947463104666;-0.97112317241018442 0.098678736343592741 -0.51342474632566037 1.5426456938701836 0.022203956271565482 -1.6924611803644252 0.73060528104485067 -1.0755858094431081 0.27845740446949413 0.57072845065994882 -0.33757797528413552 -0.50726392881360338;0.67514084287072285 0.2839381029978581 0.64242710538042225 0.97690133728183259 -0.17562380536426533 -0.087642899450194947 -0.48669070586537511 -0.50138308833775924 -0.5003882378559652 1.2666392901575854 0.044028702849486984 0.10771323489465499;-0.26823232203318115 -6.0159981296918668 0.41445772559823224 -0.23926240990306955 -0.1269438445721178 -0.19480254038382488 0.68971454744827831 0.12107042116060034 0.20456621664638597 0.78673457623341669 0.18668753614252265 0.28753704243534173;-0.14665159692657631 -0.28901798191680128 -0.066809750727934603 0.0028747693854725004 0.022946093026986678 -0.42026031828786925 0.77547274951395107 -0.17381241918182627 -0.1806826719964571 -1.9878054757863675 0.13487017003283383 0.16367068316337469;0.88218458831575197 -1.1547554177217489 -0.84304226983458619 -0.039080087223791998 0.79131659541635369 0.055136440862107429 -0.22947670405122356 0.30478250734425655 -0.077981199647518623 0.93477824001284249 0.37554748907699259 0.59493862756884242;-0.11347385945431603 -1.5617622728287257 0.87893017359829395 -0.709367481122685 -0.43861206135480418 -0.66554879291809854 -0.17731177835818457 -0.60309648150895578 0.67252247145982691 -0.32811267238301095 -0.61074909863212312 -0.75681491959307889;-0.97869675015088486 -0.92742108851840832 0.45438480808610238 -0.2879676671241197 -1.4780098649323468 -0.45231909423485123 1.1995695655481307 0.47696103674773888 -0.11587483977405683 0.65006199519691343 0.39925605149264137 0.16975718484258703;-1.9347708450357608 -0.5672568182431541 1.2582357072166914 0.91006448965024989 -0.6518434790402915 0.145786493638668 -0.26590015853692889 -0.22111426589036604 -0.36288949529842129 0.79294947060453125 0.60799426152575886 0.48594345280321344;0.15814063355198865 -4.5993650904066721 0.24234190576685374 -0.79178927136510791 0.17813897864755385 -0.19574333532408222 0.39841853685351464 0.050470382511758942 0.0014203678408013995 -0.32341468668227813 -0.19904388853505917 -0.25685620140073412;1.5141544801855189 0.35822072401601013 -0.088418460995726533 -0.12336783257046649 0.056100479184977015 1.9948199034093941 0.64642388960412012 0.65091832808124628 -0.52715101728616476 0.4021307992552744 0.97163047058045915 0.53063005434285282;0.090184619328979698 5.4649049013350766 -0.57225706078271921 0.46122262211437126 0.27746309797891799 0.10759043280306009 -0.59001351465807139 -0.066908895356061662 -0.17524240490244983 -0.34419879217110727 -0.053408417411047293 -0.098966009370572011];

% Layer 2
b2 = [-1.4428621454260229;1.3751971624283659;-0.8020155664599069;-1.5997254814650781;0.66520829093703282;0.27798970091204195;-0.69452308848168798;-0.24772686427734203;0.29552962149260181;-0.3489760563615707;0.66246894203463169;0.58256041697917749;-1.4901701009240227;-1.6898620025057276;-2.1076003336380533];
LW2_1 = [0.21263486449553692 -0.58436984052115615 -0.10287403274226632 -0.22386311237014819 1.2054292020114235 -0.024566859859571452 0.14147924246884624 0.45862425351188957 0.84408721828691147 0.26462713600546461 0.070332009768805201 -0.70174047902063341 -0.65186005103428335 0.14486817100134686 -0.127202353593282;-0.19306903976621742 0.91002198710059556 -0.078100970320322427 -0.038795109999869987 -1.0977461052768864 -0.74272436293698341 0.78313904893573616 -0.050352405775751549 -0.780350487071923 -0.89475967772731768 -0.18960588610263879 0.065765821113285522 0.70426304990219724 -0.16924694792926848 1.1805142589676834;-0.28739736986225928 0.55794503346681512 0.77829595397246443 -0.079783407056260955 -0.35515710683877061 0.35380114250853195 0.68444061141895574 -0.95497400410013156 -0.17699236172335908 0.77053853842606135 0.61296358518732175 -0.45246663570946344 0.0069567439522563446 0.083560724320782279 -0.80736595597711769;0.21994396293374346 -0.028368912815874024 0.44167395154111694 -0.64921915009709741 1.085729806532441 -0.33134030950508886 -0.91895686649537112 0.17035672037365021 0.47200875030347283 -0.92800633684128364 -1.1128904203310968 0.41920092984205887 -0.73191999298990795 0.10310314595112771 0.21934194373842245;-0.27528379203196107 -0.54513711949319943 -0.62718479472709321 0.21071070350931762 0.6188590014131462 0.37835421245637801 0.84390571756783817 -0.59657307646139024 0.50875125439876367 0.027758745497616949 -0.10148735451167792 -0.87043043169633438 0.22654962678787319 -0.44274714075068067 0.12607396784625691;-0.51901934541262418 0.099409114020181169 -0.19879124749751442 -0.824337712759867 -0.38171474331375893 -0.6134172693722062 -0.32164307921527802 0.30245818451351436 0.16162984754188481 0.33961329249083227 -0.067470787691186376 -0.17863328250893004 0.52045524925462772 -0.14273942129670328 -0.0047183376046532818;0.82714778452501225 -0.39693769183267347 -0.32032593030014395 0.048055312308900061 0.50530256975552479 -0.12869767669316645 -1.5741032197383844 -1.689350515156226 0.28602160154679834 -0.22437784413775905 1.1263882383212671 -0.81133926634859843 0.82644761143614387 0.154065072727369 -1.2058817704314775;-0.29291653230224202 -0.0052788735060141454 0.68483691042033368 0.52619152118010903 0.50245318466719247 -0.44225766672796785 -2.1813007286773938 0.1637948626553781 0.55163804209829725 0.15571894900344913 0.73034893143951041 -0.088231509602721789 0.035603884713575118 0.41200348873910092 0.059938642719906961;-0.16443129402449277 -0.73461442216764095 -0.69434994451431997 0.04181408035670077 -0.28150118468130814 0.4955047630513289 1.1853375778289801 0.63831662314789472 0.30395048872895042 -0.27278518032572441 -0.56763130370167836 0.45325560941939075 -0.37310476828181099 -0.49297929793585193 -1.1269189097041705;0.11548670316750789 0.11821660582728796 0.1043959668597399 1.0745554527197019 -0.051192298932222061 0.19586122667546793 0.90771748285317777 0.34601930277475146 0.26872389863459478 -0.16155671906316105 -0.40595937171270713 -0.38296780103677397 -1.069113592630399 -0.34986944602146069 0.88516068350190713;0.70106414385253712 -0.073864963017343993 0.53588674672174175 -1.0552202071916474 0.36598620917610869 0.66690342630484833 -0.34301729302722889 -0.55330034411853757 -0.97263733626125681 -0.67554513442697361 -0.18544193590971164 0.45413782150171028 -1.3480637914386244 -0.1270889462806834 0.15504765509186924;0.65176682393764129 -0.23176846268406459 -0.17762651019770984 -0.42173409533821349 0.26305617896640249 0.36156589005312262 0.12208954093092408 -0.88869054635694578 0.16673979872666486 0.10952492988683499 0.55075003049303006 -0.42546719800955457 0.56997973740916419 0.18572266421335165 0.29469338907439097;0.13421584034867079 -0.53150089268315792 0.58671550078600432 -0.59353980047186161 -0.83452422486571021 -0.1757640061947533 -0.65030953090308419 -1.3439711815899904 0.49592997452502779 -0.14278092879162685 0.41176200036824401 0.16569660581685866 -0.45985790692629969 -0.33677200527300427 -0.3181886873134267;-0.26053846547013076 -0.59477927899640681 -0.16702729550119599 -0.35570406369549407 -0.11503186795789357 -0.92090460901488247 0.4977568649974109 0.057254226723686699 -0.99900122142564451 0.69755014578572883 0.58982166420925808 0.84540073010130612 1.1165516042479202 0.48498063533945762 0.054692114455935074;-0.78566471437230478 -0.29752208967757082 0.48136232972020832 -0.7526309757501296 0.70769763509723804 -0.4269703543164714 0.90637398634050748 0.58486806157962723 0.51367956877123122 0.30299802800214848 0.18259341011636529 0.63351468631832042 0.43814482520076325 0.22987016210874631 0.014727411087440537];

% Layer 3
b3 = -0.021774722164810495;
LW3_2 = [-1.3009122620760165 -1.0984739749385164 -0.73432939290290988 0.99076685396509079 -0.26251936154389777 1.6640911711894868 -0.7894605639158363 -1.8689984363724261 -1.3634815080446769 1.1103730627200286 0.45758606926641998 2.2999824955008745 0.24971693076308055 0.59572576566460056 0.92620012205074198];

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