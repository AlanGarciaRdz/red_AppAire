function [Y,Xf,Af] = PM10Aguilas19(X,~,~)
%PM10AGUILAS19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:52.
% 
% [Y] = PM10Aguilas19(X,~,~) takes these arguments:
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
b1 = [1.7177716908181959;-0.84234141082040948;4.0168862829197245;5.9193838189133468;-0.69536756264158983;0.060483148907342556;1.2467578459202937;1.2630059201143617;-1.4058245462685843;0.26726134688750858;1.8992398947736726;-0.83860661415464377;-3.5985123505695578;-3.0347435424507965;-3.1116648625033503];
IW1_1 = [0.89590828952801893 -1.4108052807079396 -2.4398400275623064 -2.9201166702316668 2.3312296501578773 0.51022179653237187 -3.0754313952329957 0.78307936684364354 0.14625390938932917;0.055737526981325884 -0.24930278522769098 -0.22024013249665647 -1.0395080883291801 -0.8407541209310756 -0.17955170154101105 -0.91928296986348967 0.077689934069646055 -0.083751170841457417;0.53108802936572708 0.60183037489907487 0.7121979341532233 2.5668694120728839 1.4824820287655467 0.11333430215338376 0.40497194945618709 -0.90207695653845521 0.040387586343593254;-1.1868694766158263 4.6366326854201745 -0.9467221046204779 1.0402379642512052 -0.12854377633736455 0.62568889060020494 -1.2082296886747907 -0.2142073914077674 -0.76005558715293831;3.603544917089724 2.0310100147371877 -0.72321959625808474 3.1096874846391116 -1.4276311362168246 0.37058569935322427 -4.8016644778809692 0.22043069186875278 1.2502186424837571;-1.3329273803634338 -1.5017314245642388 -0.72443867840409815 -0.41783802459111063 0.9008964363235612 0.27362749466329594 0.16519899459113274 -0.60446088649987617 0.74486783547336077;-0.73119251631034854 -1.8035194269917236 0.39925550288070422 0.016379905962736627 0.66320290507171764 1.1805482343040687 -1.5551305388457073 -0.065598717851145613 0.38308644841381617;0.038720172407719682 0.46332482364693245 -0.85024787935043378 2.766426906950751 -0.18658126329629038 -0.53924175679152753 1.5003932252830583 0.010985455198567072 0.31202520236258546;-1.9760977942120952 0.4941236329317189 1.0872452340108718 0.40349339963860237 -0.13950748325864187 -1.454192369325968 4.0273911581065081 1.8014653775885474 -0.26239937831724769;-0.51711777897275857 -3.6949464500132572 0.58639102395030229 -0.69014645354094872 -0.71651078680068525 0.41802461699206572 -0.45319755327202138 0.25288067003140102 -0.13533640147767573;0.61723279488750726 2.6807863680253501 0.86226590909176903 -0.1076051740777571 0.048273397303432969 0.98503512003168436 -0.93757252571895522 0.80386021133861929 -0.20784576482476944;0.035619847627458366 -1.2370068543531585 0.10957546587070896 -0.27844482969380741 0.085136637837145687 -0.71577265336440687 -0.0088209422475739006 -0.053925497305712736 -0.17584111425701915;-0.38144552184361058 0.64755852331548414 0.4818412512776804 1.1726265109611314 2.0836952942362017 -5.8401127392274583 -0.45029258359403418 -1.1886072640243643 0.18036678547684254;-1.7236497092836971 1.6232899558066227 0.26850997736067261 -1.502435532291287 -1.4485853498636951 -2.0918024082171116 -1.245040065821073 0.86139662719743293 0.28274652508110071;0.053370463269856394 1.2362636680768249 0.12578010551920232 -3.9345001671806772 -0.042528201672451998 0.89073647647907506 0.079058211498208866 -0.0032624442066852763 0.014393977868586982];

% Layer 2
b2 = [-2.6052104699183936;-3.3735197672830388;4.3350173918999788;2.7591356686668069;-3.5582880591404509;0.082730436398854287;-0.72307785173152539;-0.30213384994743225;-1.2720448701719507;-1.5682019536317753;4.2346105055484138;-0.13792451202323738;4.3741749266195757;-3.1758386444001716;-2.3300333025484408];
LW2_1 = [-2.2505297368507038 0.34861433064759795 -0.69651977462589854 1.4596354695669855 -3.365316087418015 1.474576639264408 -0.85351778510682808 2.1294458556251725 0.80558455293928144 2.2360201957215793 1.5828809958215253 1.004668568896842 0.45615777426560622 -0.49036908423851738 0.3265449621608123;1.9352756032777207 0.41417199880075373 0.93240158454209254 1.4110943412138695 1.8641007386881374 -0.019521502716054601 0.69354563271194147 0.71608161775753243 2.3439668326201324 3.5390344710820822 -0.34164341613755228 -2.5242415323075336 2.2615921177896041 -4.3412267849827906 4.8924397919251792;-1.0897706373597158 -3.107855697587838 1.8004048032914934 -1.3073857472068167 -0.58482413969065183 2.1356056060676383 -1.7623469734904842 -1.6194459752226831 -0.85624047409312909 -0.17587400025397221 0.85908020121077144 0.22182027024578532 -1.5038537346724932 1.5151242213169633 1.1133876805941709;-0.67647335701980649 -1.3465483886291776 -2.9442493210893668 -2.9749854770796511 -2.7301074139785473 0.26684877894561104 -1.0678175248693558 -2.6259339395540597 -0.15355994524582972 -1.8236045114006227 1.9252891018023819 -0.10300709502193373 2.3079908899460695 -0.27184853565203615 0.44066455213080302;-1.1810210747645622 -0.40032986122646069 0.34809265678603896 1.0255069776747194 0.46009679725408015 0.57196981448565676 0.33310434100936492 2.0325934446341209 -1.6185076553536368 -1.7760897905775235 0.48495171777412338 -2.257711909189358 -0.92092492773821144 1.8912864341912743 -1.0833750534199209;0.29466339672364572 1.2666797524127584 0.10074845345428599 1.2383244221035374 1.82172488603379 -1.5536417328847598 -0.6068951432783023 -3.5324429416162575 0.59854079610584809 -3.965337676802041 -1.7652675902973807 -0.13453180490581329 0.087155648008778328 1.2032106509260756 -1.1047584752457411;-1.9564887297986622 -0.085283912757801505 -1.8758486370467107 1.678794060092617 0.41560807074772366 2.3554716605566952 -0.16954471047909558 -3.8378829996585981 -1.6451398206419556 -2.0293862684542949 -1.4036867179541932 -3.0138951407611261 2.6945045958935676 -0.8230219993750838 -0.20020090106079555;-1.8846147731817398 -0.53852365007055369 2.0013816302997802 0.40031015648689244 -0.13570770760893217 -0.44327550201722732 1.2665603812475166 0.29046568735014411 -0.74696568500811056 -3.4914209390623867 -0.46545055484488757 2.5731156447854739 -0.80128843198264732 -0.37699486785912995 -0.10390738570169653;-0.10236332602375658 0.7026564242350597 0.68568785187532022 1.8967808213082835 0.94494624053886378 1.3091483629414027 -1.9967743917595266 1.1617103075884052 0.93287667101499672 1.9462693688479509 -0.2132359081119535 0.10938895352071576 -0.36307057222286521 -0.59783664521713942 0.62778216522478059;0.68706451477416219 -2.9306781267067423 -1.5161560430184791 -0.26632149180362114 1.188899656455142 -2.1971118532310605 1.5424989074361202 -2.1795515019351774 -2.0288552325880911 0.99732809574538883 -0.7984511341894075 1.3953188107492513 1.2024162814612258 0.56509002352534199 -2.9490560194502691;2.7237286865402068 -5.1268604704248713 0.79875680969532992 -2.7062561615359146 1.2053228456198402 -1.8593699799384773 -0.49554389932272769 -1.5096373048990557 0.62265102119754545 2.3930059554613861 -0.7294463857953567 -1.1877229200988193 0.93779255833847197 2.13573444577704 0.59739824005022735;-0.70735950173478646 0.85053422242779697 0.32376229059430117 -1.6105872376937083 0.61850364991752205 -0.16373730870338543 0.015078428894776799 2.0718962288483831 -1.1675259151237953 -2.3669884020478693 0.47621582435901361 -0.57244332077788718 0.13517328750645591 -1.2703074310448379 -0.94582897349350514;1.0482350404357772 -0.29035691504161742 4.1708085621440105 0.57407460497319618 0.59611185503147479 1.0917613860397035 -0.62127967003346307 -3.6656443905097826 -2.7073963972235546 3.3826882919865411 0.97647317989089233 -4.3852681597058032 -2.2724039434783374 -0.17802646188200438 2.3076855425285472;4.1780794070394318 0.59510550117602967 1.91001406647667 -4.3025386951504005 -1.3390155071281917 -0.79593716034544337 -3.8584292478161388 0.033909322769339147 -0.76315561658300513 -1.8383217141006161 -1.2681223338689926 5.6039443182212167 -0.8810730578005137 2.0437929311411764 -1.5926976184537653;1.310979533508364 0.48081081241444112 -0.75827234073382832 0.47611962535525842 0.30955844916753328 0.40232688586333193 0.90031980926384314 1.1564771583211289 0.10456407793950211 -0.82680919816306331 -0.10488385270466266 4.4533743628222933 0.20394446019282039 -0.16706683801947964 4.0409131858949223];

% Layer 3
b3 = -1.0057407804225695;
LW3_2 = [0.10572014798215999 0.042236344668680412 -0.22128399129555706 -0.059200161393900247 0.062610050880684359 0.061731294486495135 -0.020866016012907256 0.079967518751202143 -0.11030055296875217 -0.014562376473696254 -0.08560341132291871 -0.075141378450109528 -0.15450551317184694 0.043987188138209669 -0.67870610505259432];

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
