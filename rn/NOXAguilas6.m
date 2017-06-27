function [Y,Xf,Af] = NOXAguilas6(X,~,~)
%NOXAGUILAS6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:11.
% 
% [Y] = NOXAguilas6(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;17.8571428571429;0.00666000666000666;0.02;0.0561797752808989;0.00588581518540318;0.125;4.5045045045045;2.48447204968944];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2646370279392363;-2.0812851991134371;-1.2644795244599145;0.92260745057029414;-1.1301845972045748;1.4924732638292266;-1.687565902483215;-2.9414471790684926;-1.1972224802775944;-1.4099533218006308;-1.548766056044093;3.3084355466511073;-2.8517846240553064;-0.84833587276178501;1.1060241807125217];
IW1_1 = [0.58060642129987283 0.12273255857714815 -1.1306488816312068 0.46941516983770654 -0.15710860819489803 -0.57781996379723111 -1.4175455063352977 -1.1232785529454496 0.9142340958319074 -0.9252852097388492 0.62534222262955019 -0.17365202968671309;0.48518983804379384 -0.60325648802368526 -1.1402380802493046 0.73370572163094194 -0.85942342535179495 0.30144411378966074 0.023371460481775498 -0.21521456368327407 -0.34274077487224108 -0.13662021431668206 0.24821522195305612 -0.12184217628777802;0.84692195079486277 1.3888024313699316 0.53782352680561285 0.85287872019924016 0.063951482943442245 -0.22991361856188916 -0.23551823967908275 0.33768437376718929 0.14202407824137769 0.20113227114861745 0.17079013995801995 -0.24778048805913874;-1.2617086827229378 -0.96311126836977123 0.032050572652678445 -0.66809533159296164 0.058949890134676476 0.32702610875444493 0.17946840583134635 0.21767980881270474 -0.042273166280671765 -0.331598688425984 -0.34710771086507841 0.22735200749399359;1.0721611973874026 1.2647127263345481 0.72060415257595967 -3.0218787786465904 -1.1274891354754089 0.14695013244136382 1.4580787803389945 1.0476684712839062 0.099165309387433204 0.072521474452185763 -0.11083147881155153 0.41033823713904721;-1.718707275487084 0.58382204778906832 -0.044348018302952645 -0.60786441921997025 -0.067425206841252902 0.63972215430863277 -0.15865557109919418 -0.55208674627725973 -0.24015335137615607 0.098853864672183517 -0.58174267472042029 -0.10981703353608639;0.25620564982813654 -3.1544547113061059 0.32148294102958808 -0.68754416140871055 0.65932653718980405 -0.53727557083440358 0.62202493888316024 1.0564953201912426 -0.051798611623925073 -0.28404437884472766 -0.049897084361438422 0.53334667042674133;-0.46417013259737294 -2.7069332858121014 0.1513272911032085 -0.75404763727724855 -1.4625249334163839 0.43999203180540264 -0.95408982814555898 -0.31049727119189618 -0.2547910703925037 -0.1929610723047927 0.90641434101430518 -0.026094893135995809;-1.6731507115319988 0.92574157654031897 -0.37828241453202199 0.0194646076245178 -0.44196491830222356 0.0094115220950579878 -0.57328868933597088 -0.41575259138501114 -0.59804719396085793 -0.031492570210975901 0.48747546678741727 -0.11015617069405949;1.2536694316576857 -2.0767413800591417 -0.01073797814500535 -0.0062030665362614121 -0.24864077599180717 -0.23892079851024958 -0.15619674978053169 0.62501380210431656 -0.11384829471634671 0.096869848634983088 -0.17066331756228414 -0.17271904803711532;0.59960463868886149 -0.90904486005260787 0.28090569605955529 -1.5111547929378615 -0.010396578432072116 0.40496321541175567 -1.3165893865004574 0.0002519663061148758 -0.35608432907923332 0.26972371820048596 0.58648583466468007 -0.073706469381333184;0.67050534321509503 1.7967907706475872 0.32600516275257624 0.38679644808696745 0.38587647697546279 -0.11428929600414944 -0.5258967663848958 0.52502397802018463 -0.089452537962568385 -0.52308596091873383 1.0216577925067674 0.30078578408125634;-0.25597790499894862 0.44174601290543541 -0.17947700054614776 -2.7105598624321789 0.19465539463202755 -0.11833857755658422 -0.070707578183288447 0.55663487125625577 0.12093600567793589 -0.097631820790227072 -0.10323344914964735 -0.035635599329208061;0.24842025883277996 0.54768132831368854 -1.4063618028820482 2.3644699556958524 0.084270776292579633 -1.2085110471348113 -0.59374690703713251 -0.23704485384536039 0.7670900839752649 -0.40324005010229591 0.36827284939913252 -0.054493049298611193;0.16905117223347216 0.80405798774504256 1.2281398029970807 -1.3181194022130875 0.12199902824387483 -0.74807993098582948 -0.14387066148772124 0.83451467077282215 0.44271494476686329 0.48178567995488014 -0.66171094393988283 -0.28625072909563948];

% Layer 2
b2 = [-2.0069792018438535;-1.0149659415436985;-2.361047058558595;-0.71852909353834826;0.4820945965044432;0.095593934956552468;0.11676009555825151;-0.024393879346620038;-0.40680491107797956;0.068836484343582818;-0.79483583224570842;1.259376461536948;0.97659768479772868;-1.9963491155830562;-0.8681707633587068];
LW2_1 = [0.41050007705893216 -0.95312321572995495 -0.50319142934613104 1.1481972188367666 0.56182026009632002 -1.1252414529480423 0.33306884666500874 -0.042536447738432945 -0.40725514145968056 -0.40549713485094568 0.44739508492233998 -1.2710688370237908 -0.012477549619760241 -0.85892159942487956 0.99729780412245672;-0.11977778679583352 0.17601224246171979 -0.061611094953381858 0.77233948491678039 0.19241816667363754 -0.22082735105620477 -0.72628704294154467 -0.3258864427978409 0.51424184801970807 0.035661188121561084 -0.27085508257960256 0.15385644063997805 0.47949911793803179 0.15808322096814928 0.18311489867900332;1.3156572932591704 -0.47225648428668882 0.43033988703051607 -0.20606286979729127 -0.63792038666367934 0.88912983757601272 1.106479754466354 1.2396790700200802 -0.61597881873909299 -0.56094287164009005 -0.44760068537188746 0.34762200877899385 0.89476564365324607 0.38496274743271669 0.1380363120856675;-0.20087686310310526 -0.17579055160209656 -0.28166968994890262 0.59642477148020312 0.12122448710491801 0.050261472504939987 -0.76120495066475957 -0.04573897629920004 0.65188351521780141 0.2275708603993081 -0.43578963610379257 -0.25964521339413549 0.51940395936051753 0.29803997960243195 0.042628760884615188;-0.20963385601570805 1.0740556565558332 -0.73688619502764763 -1.1129392478402422 -0.4107590071577048 -0.37553067079416724 0.92762354315840911 -0.23299322626365054 -0.52038333948938231 0.028996739713563105 0.035142192744483283 0.86359905037343321 0.59444298964115894 -0.50944964727542486 0.44388265714618946;-0.51955553318428016 0.60058723977962625 -0.17966186579933008 -0.80656396612908166 -0.14245152237218936 0.60711171126488817 1.1355504896232604 -0.17475739012755948 -0.33937172266708648 -0.95058346797790338 0.18195720140039892 -0.20136102218143198 0.11023583398422079 0.14084428467689802 0.033272140186832513;-0.28503327689034336 -0.89292549027564727 0.27130130822473186 0.30413794159203056 0.65852549248771841 -0.18560032598403337 -1.3672918350321959 -0.59371565917881231 0.51888600165347476 -0.31720675596048598 0.68415252427898199 0.2292752746826725 -0.22799074177754175 -0.10622250920396339 0.12708094138480483;-0.92753073595704549 -0.081206250403441996 0.19551884331956254 -1.0089949043145654 -0.69427007263608387 0.30135870389326708 1.3757206700273716 0.050806414674486107 -0.87406239317142531 -1.0632421895277833 0.47897870652874758 0.62677673549445245 -0.00036168730329454515 0.55442499687740199 -0.45471472702264593;-0.63185943235904285 0.004964997068761922 1.0248459264073979 0.18183106107962793 -0.48681948155214966 -0.20994181071668189 0.29435801454826455 0.94245350112918369 0.72810060623328599 -0.76285813719616291 -1.1288916488599834 -0.6811376599098784 0.96399048158019573 0.35352308055557397 0.46967259249400373;-1.1705160621720239 -0.084382549857096631 1.2789728386069088 -1.9224039320547266 -0.016515655323999359 0.92709614678161612 -0.1746485196902797 2.052394376360231 0.30927544202491475 -0.50843535607105628 -1.4144146889672409 1.1491283313576452 0.91838774907696907 0.36847705172934675 -0.68872761814306571;-0.56477061533592765 0.6559012310832022 -0.30126086061630281 -1.0403966533457996 0.21704487762223679 0.82530975529580208 0.92580529141919421 -0.10937500411952764 -0.44794492055065066 -1.1345403141121151 0.38124752009194418 -0.37384221296729814 0.026675943478107079 0.12579431569026822 0.66186486758713114;-0.19288650969866963 -0.22976867710844368 -0.79100825688353826 -0.54982300855909605 0.11489147074619757 0.8701865667198494 0.13516355770592506 -0.033845386813488504 0.1605985242931022 -0.42717118612383992 0.1678468833722917 0.79448601817125653 -0.16402788275293886 -0.52351348727265024 0.62357001916741672;0.50019841041335844 -0.14244680656388345 0.68424776952557698 0.6680004443748031 -0.35474497627778684 -1.3476116886804781 0.48186245134543237 0.44968092477311622 0.22554032534770266 -0.53121127284261616 -0.25842950985444935 -0.68210064563807793 -0.35597907132602141 -0.083544676365225196 -0.67692460710042879;0.57745160034726395 0.69145814981582698 -0.24839048304001821 -0.14959931021793066 0.16426010794386911 0.15063974167429225 1.2072854250698208 0.20896956786816995 0.66654908218619591 -0.43073924002635877 -0.51680400555960049 -0.57786399567696534 1.491738439023645 -0.6262841043409888 1.1632231462860145;-0.42960317206861404 -0.28274633085736678 -0.78617846885192844 -0.97361173807900447 -0.42084624357517053 0.69433361351653455 -0.42242024078900797 0.99235089876769067 -0.08871125727331057 0.90808011043913872 -0.4169691570773002 -0.33545014070782436 0.32185715093007983 0.33349323258999003 0.75253596304757508];

% Layer 3
b3 = -1.4919386048782854;
LW3_2 = [-0.36796716170619309 -2.8665674145977627 0.64925719050311592 2.7218967952826141 0.51710753237607698 -2.2669693764006356 -0.94841655496220489 0.48713544486433086 0.92430466074203921 -0.36258833253514844 1.6233698561278462 -0.39055592592928556 -1.0251349121699864 -1.5935948352086495 -0.91618387833471016];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 5.42005420054201;
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
