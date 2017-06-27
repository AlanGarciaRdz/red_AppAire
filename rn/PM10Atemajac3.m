function [Y,Xf,Af] = PM10Atemajac3(X,~,~)
%PM10ATEMAJAC3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:55.
% 
% [Y] = PM10Atemajac3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00968992248062015;166.666666666667;0.0561797752808989;0.00614628149969269];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2552827412544367;-2.5375169492552465;1.6676181322277357;0.76598799990480437;1.4537645799631191;-1.0736750953716157;-0.58941336507558795;0.2535171558880876;0.91288301065702093;-0.72628337219020545;0.55206827088608901;-2.3057600971464534;-0.99878449925669088;-2.5396697108557804;-1.407616942550854];
IW1_1 = [0.02392985598848384 -1.5316402881916154 -2.0682512138230837 0.34240663911429298 0.59095429709924208 0.12800684903581652;2.1885051887559448 -2.4044708057975952 0.84902137265967281 -0.16296213472940452 -0.45088235867037868 0.02911111626349298;-2.7781666366934363 -0.018564674398276439 -0.13552925610492927 -0.38230194890000502 -0.088677541080959238 -0.20237274099533686;-1.5219067279508856 1.2499101775179806 -0.59545522189956057 -0.97093522237945229 -1.5501717458187483 -0.10949373264608975;-0.56323135916643352 -2.7675121011493973 0.74304777451844339 -0.12828475271891426 -0.12041002006450321 -0.065485941087692345;1.6050650192220837 -3.0469252072641231 -1.2639664486345099 -0.087336116096698668 0.037865917170908127 0.24359643270186232;0.59407382286477106 0.29513202900842411 -1.2249811681310738 -0.24808296139821184 -1.7877018310710413 -0.17557178647497809;0.41622571467997049 -2.3592465357338237 1.3360448583270355 0.67019548055090827 -0.049180449748123398 0.6688118210395152;1.5863657314617989 1.2519544723440796 -0.65954864700451021 -0.47524586729471191 -2.5158157878077554 0.16293379995841867;-1.3757256968954814 -1.1695067247875865 -0.043853423259647931 -0.18644495298931293 -1.9256977693888038 -0.52732328483944391;1.2379022146390519 -1.9420791797544155 0.76841389461842879 -0.20683814968399961 -0.20567130368436518 0.11890760983800963;-2.6919340882805427 -1.3738474177808335 1.6339701776509397 0.47808943686102623 2.3512316657774255 -0.10761310858370327;-1.7376312048501354 1.393186795173065 0.17800088132822126 1.8364035208465201 -1.1247852686235675 0.086786123366294321;-1.8408008208743187 2.9766418991929702 1.2725570699653264 0.089048183890897942 0.43251881268988579 0.18177562834407798;-0.53990599341199208 -2.5051820907091931 -1.9130101738663341 -0.14185477380599062 -0.20763082943007566 -0.085054466241610963];

% Layer 2
b2 = [1.1072190655766503;1.1987796917803533;0.65325066182099667;0.6873892300937442;-0.62941403005773378;-0.25552324295281609;-0.75266750306646191;-0.41193935158432637;-0.38051008780731044;0.39129453345921805;0.49892796041168486;-2.8322308214085026;1.7230969269023348;1.3312227407848816;-1.967594664593721];
LW2_1 = [0.13069306064121586 -0.10243669621916114 0.25480110997430744 0.92779308858538601 1.3689663927452949 -0.95408784524698276 -0.75279816951946898 0.75698846386326557 1.6544686704720251 0.016458052402000808 1.4298180771253097 0.73845025677823717 -0.041227558680610232 0.13137581421172162 -0.70680582577200501;-1.098775337944782 -0.14714540107183549 0.59705092818641581 -0.53868711525963642 0.67945176955598119 -1.0076452960752742 -0.51500816136013372 -0.11268701562833895 0.14161405996949544 0.19636165978882528 0.48442090911918528 0.70158661577212755 -0.48251634316236708 -0.85133103114546271 -0.9640273910705166;-0.59139463140934945 0.52068180114448603 -0.31087971836003636 0.37855921755640776 -0.32205968900339094 0.77833617523603493 -0.57978789387655827 -0.12773998181238774 0.56840126913356415 0.36318867134496335 0.45320054578585256 0.57241878346232444 -0.22451366159711839 -1.103163374298689 -0.229612750861869;-0.51084633410177738 -0.56900031942643714 0.23004820850708052 -0.13487393144842963 -0.080197917955305786 0.66834448911634858 -0.48822254300361845 0.38457782898399179 0.53802862929562234 0.28678451484089457 0.49793845637904766 0.23581378242490336 0.22643785484536538 -0.60376166646201279 -0.96750695868269321;1.3225104512691939 1.1856247952841621 0.013566463911770228 1.0465306615691607 0.033677071201403466 -0.19332975510872577 0.20115555255736797 0.1712904991996291 0.24363313261858777 0.37476761823785848 0.79089423946820769 0.87098872493348223 -0.61876242172371398 -1.1177338415452678 -0.60650399433442492;0.45948708269104838 0.96804865310413923 0.35378197035611292 0.3648570545499194 -1.0794431113872358 0.43699018056087591 0.35625935491926713 -0.020490348872367559 -0.70552577269519845 -0.52779369834725554 -0.357259297999587 -0.50190375864368164 -0.4120523350699431 -0.17402491874633783 0.850354262479037;-0.41607099071535619 -0.47409977670804793 -0.30774566729024255 -0.66858392270173084 -0.30093210111134061 0.33470355267314122 0.69954732554798027 0.42997110321232701 -1.4014446080580667 -0.25607189653581813 -1.063273940381231 -1.5307303563601262 -0.23359086602917994 1.2166453430246751 -0.046618567699781677;-0.30167297379094532 -1.5887664029513449 -0.53118500536698832 -0.4699860040779803 -0.054149582675847019 -0.64668779726301984 0.00092024962678163673 -0.70897832099799796 0.22961109322126233 -0.74894338777043901 -0.83928304915699492 -1.6260456411874138 0.95758902623911524 0.14144794150294851 -0.53114939954588125;-0.2988851924453429 1.3243219655613303 0.47869381432817087 0.35362417474857288 0.30954326525510523 -0.97658337694825348 -0.30263202436885606 -0.071367944943142289 1.1040915628073971 0.64003558476312328 -1.0717125507064416 -0.18892525429546206 -0.17686144428596084 -0.28155872001959886 -0.22831783887109297;0.75749881923340379 -0.68479999075204501 -0.908638636947804 1.453350739343199 -1.5571082099917093 -1.2522551642012252 0.022466502125308541 -0.066739349359395905 0.49152264909463877 0.040659111707422695 0.37857215856238513 0.8335414468184249 -0.13962374927277338 1.7468566918969022 1.8391384704830056;-0.90602507051169456 -0.9946994086914307 -0.10847130585695622 -0.36909118895239462 -1.2961988183687523 0.38085929108422512 -0.096521328846188165 0.63089692792687091 -0.4755717955349677 -0.14880806007818531 -0.42445575560075255 0.63427593354380385 -0.52345966632566709 0.73240626159752054 0.90648849438892543;-0.70165861685006059 0.76680160497894445 0.59863651000227369 -1.378940669725464 -0.66680629761883159 -1.5004177641338361 0.70977539707930748 -0.34129775799492235 -0.43924619534822562 1.4732903824739532 1.8250035717990567 -0.67655775490089631 -1.3303767780209692 0.44062277192711435 -0.42983753491276383;0.49239262347105733 0.15616306870731331 -0.36035292638291344 0.51933334322889313 -1.5357650859962626 -0.26807268709012655 0.35664054789269883 0.25039740261108073 -0.39861955339280192 -0.14891610905957856 -0.031512970838971588 0.039040455642662973 -0.11187006138312403 1.1934257298205306 1.1219716607451748;0.74157854390174494 0.53628086249215745 0.05144442914758407 0.64186507595758502 0.0077848598763566798 -0.62446991508402494 -0.060027888156630113 0.13709645485332431 0.22361509594163673 -0.27977878180767846 0.17173289616379794 1.0507088105476097 0.17767772302117418 -0.19732991836281455 0.082630815518872677;0.073906940186630382 0.43004679558093423 -0.038606326380791339 -0.31736214747629621 -0.27454427446614599 -0.27340769365572376 0.17054795284886906 -0.18202649499414811 0.65076039187223811 0.70353657898442179 0.04370365701685186 0.58416602649120775 0.82201064490407383 0.42596295230337056 0.8986267286747055];

% Layer 3
b3 = -0.82693826833951378;
LW3_2 = [1.4195877253682241 0.99894904589170841 1.0513987093578663 -0.67414432627595411 -0.81645631304609056 -0.70603564320572587 1.2818161342321903 -0.47955125246986896 -0.28856025520192546 -0.77709137202037759 -0.62084489527298192 2.0320731130108949 1.0432344958106761 0.75585570148666681 0.34767799880823502];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00968992248062015;
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