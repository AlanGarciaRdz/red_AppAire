function [Y,Xf,Af] = SOXLomaDorada18(X,~,~)
%SOXLOMADORADA18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:33.
% 
% [Y] = SOXLomaDorada18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;11.9760479041916;17.6991150442478;0.00572573718866304;0.0175284837861525;62.5;0.0546448087431694;0.125;90.9090909090909;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.0721546017671089;2.2940965928213353;1.1928502692809451;-0.55962910582428738;-2.8725880153030969;-1.0354061802963566;-0.84322858802189693;0.18919194817239793;-0.64805327041975946;-0.77746812653051067;-3.0528307940980999;-2.7945607557458043;-1.7339007603971996];
IW1_1 = [-0.72655125559169054 -0.31187405463249857 0.53993273331463232 -0.33908888825292643 0.34320394151141775 -0.83230706427062251 -0.69747433438878348 0.31512216466827242 -0.62086177526532838 1.0564948348981078 -0.31955656270404592;-1.1558704758070251 0.0062454023159489724 0.31572630490608156 -0.21269267542027903 0.32267211516098948 -0.39899174590704112 0.4009157572710027 -0.0095780254775124918 -0.27269560494359557 0.70393054041353598 -0.071978691934287423;-0.61828169185968074 -0.13563563897242956 0.20736988617600302 0.15323117761457844 -0.06459401699862688 0.94670153260490497 -0.21153765117840229 0.066656294148892015 0.019340805393869238 0.30739578272120821 0.003370999528783461;-1.1118432821364885 0.049170306515320249 0.82216899594671755 -0.70821006422168298 -1.1524347898908331 1.2077931995625304 0.40979965481960962 3.6042619213714078 0.85654531300441361 0.6920121044630031 -0.39418958160886997;5.3812667773614669 0.54794677779309608 -0.52172396560205225 0.48847758402684816 1.3740515340903952 -1.3674931873831153 -2.4644466118507062 -3.269266376018328 -0.31112940234137176 -0.28317120008234442 0.064351325794948455;2.5183982819173751 -0.2575408778944327 0.11810198375176192 -0.023347767876560205 -0.091213058959098259 -1.7947081560275842 -1.2569226571937131 -2.018616922203591 0.11839225208817319 -0.49176305650979873 0.20348011790649573;1.2632243602107023 0.77966543371433161 -0.73378566898142106 -0.69736290800229839 0.26690919621561854 -0.57952827931652529 0.25152486510628091 0.16390392295182732 -0.51110757453105415 -1.0093564731243088 -0.71074925760932417;-0.28025538627742486 -0.40168067794263485 0.19629135199345041 -0.11206586672270316 0.23798897063826313 -2.1967743078539153 -1.2778700963473466 -1.5389145312243002 -0.84750205996733063 0.5417664808720305 -0.076766148004069543;1.1059769543757147 -0.46344335013671772 -0.17084380475555333 0.044939286571870282 -0.33469066192464009 -0.0556105583894081 0.22610769991193963 2.5992763073798737 0.15068878816552794 0.9381277748967114 0.11773521029259462;-0.46037717498348618 1.5465606525340032 0.08928288721882785 0.34712648468114732 0.021906272178995642 -0.35111629379860554 0.69462465252022831 -1.293572886119067 0.68716042373108754 -0.084845696882484778 0.16503671224291286;-0.88596576919583903 0.2078675449073917 0.04198475911118605 0.0032562905559948008 -0.15638919586440855 0.53423778299474567 -2.187874219715447 1.2164152481399806 0.40577372413699608 -0.11187605681569754 -0.58366035714991993;-2.724731097310737 0.44235483145948323 -0.03701465905997095 0.34994677517154471 -0.39090717476975767 -1.4017351818525254 -0.48099607442223802 0.18087535116953346 -0.090861908218694054 -2.3181970952306896 0.94215974977501504;0.28606684272288213 0.54392100472262284 0.33437724608629965 -1.0671615891417749 0.35296996891853955 0.5553605620061326 0.77516052543704672 0.55980044969260978 -0.46412558867304526 0.40955118248256878 0.49452553447801884];

% Layer 2
b2 = [1.4499972642830095;-2.13879074078246;-1.3830510136654821;-0.94482399105364601;-0.83795861116270465;0.79356712925608608;0.50252539898155602;-0.31940299885741213;-1.0570081263671305;-2.0675002081372851;-1.7681747220913431;-1.4903369448464716;-1.629989174629191];
LW2_1 = [-0.65476981698271097 -0.45259071256951067 0.52660035719106857 -1.8665391116493169 0.58573892004499417 0.21225114849699217 0.44742469326934808 -0.34789812340900739 -1.4317986218484768 -0.070941010786258224 1.6813663414465503 -1.3655680952090881 0.42219541931151605;-0.39490729946933201 -1.1952025613210242 -1.0166889938410639 0.40420615725371128 -1.0664118968766814 2.3007368343351793 0.65674634721039782 0.5477472554752707 0.035758005128742179 -0.18343701623823616 0.17147123946128529 -1.2536061228613191 0.319272803651453;0.58073246348795082 0.2372628567236918 0.32600411270706547 0.76468910447692751 0.83891432316010262 -0.73370600866920288 -0.50886106983658164 0.30117959605688172 -0.76198149984033425 0.10682285366712921 0.18627585669213562 0.69059300679894708 -0.036454722920469175;1.0295767095755906 -0.4310478081903148 -0.39683147975526772 0.10347480181954899 1.4153248786652353 0.25530144294935508 0.49540319710504871 -0.11047747368472222 0.65934202264945541 0.10461466940234522 0.67738349385058094 0.60557836443571644 0.58202209510507152;0.37134521054044262 -0.56865387682360136 -0.57695776347410221 0.88916298196437049 1.5639938383208911 2.6005693869078934 -1.4605882285089322 0.79133133788178889 0.19539329967357238 0.060687064008047964 0.99453868331514772 -0.052684418589843948 1.0194332873097209;-0.96675820972672066 0.8876584866536259 1.0107884199128243 -1.3248429240996569 -3.2672719968173345 0.10900716013274084 2.0149561636551487 -0.30724842510414352 0.096248180033295161 -0.21179675387647473 0.12382645369097854 -0.3063060029476547 0.56428272115793843;0.96526359314926358 0.43622405473696763 0.13305407081987641 -0.22889530930965202 0.46794382353766695 0.23606347022289043 -0.26242626926616358 0.85438039928703002 -0.62552967777316781 0.0094457690527253932 -0.91904817131906547 -0.4620439608151804 0.41567127737220394;-0.30069888913440718 -0.99825777235195534 -0.47184379524389641 0.85161428182532461 -0.28690207397876949 0.30816946286467661 0.22679672052478222 0.51379251551387717 0.36739483189173444 0.002673809955744455 -0.6052359638068141 -0.56799291957946674 -0.078894331997612116;0.28391662047363397 -0.42976135689716477 0.80862870048845326 0.72316931671872142 0.055101570180382753 -0.69298222663372522 -0.53808514298595456 0.5344215782852193 -1.2895543416450714 -0.10125395497262384 0.61157578315298644 0.73279515768320325 1.2193177113263569;-1.6272704810715481 -1.5790820947979778 0.11245011497616655 -1.7942774941842832 0.33714759345905748 -2.4876689895227271 -3.0388358363880661 0.70623910183557304 -0.52549207764225481 2.5101086317434338 0.12200805914311118 3.3461550923826948 0.48966084698688916;-0.081178267379950556 -0.11129594719190269 -0.26052575818694113 0.22905714830241566 0.2052168217557144 3.0580097957034957 -0.29333661193985716 0.90723679850869454 0.54295532555844273 0.012113983552331294 1.7064968771775537 -1.3012338503915408 1.7187342418998521;-0.46087739684484424 0.62399448759002696 0.3346875643630331 1.6404143979071066 -0.052047283861088117 1.0122861504567182 0.073021166552995481 0.22522359651239227 0.012896442458318738 0.33830755127282025 -0.28067291868001715 -1.1796995771075305 0.19892921722816048;0.064564359391731135 0.73996414047529835 -0.8711138980412434 0.18828812393459154 -0.72207283335653094 -0.75666947136248097 -0.45660982177168619 0.060363701592706764 0.16032513805922574 0.36784627968080696 -0.28552794420601962 0.12363503324415553 -0.069975390451295777];

% Layer 3
b3 = 0.7167302942215521;
LW3_2 = [0.079998739972147737 -0.29483002650364715 0.62388270115732247 -1.117374536878919 -2.7320532243202695 -1.5510550267122154 -0.053445836525411017 0.30664355079163652 -0.45845235070781809 1.876927894113912 2.3629238051837631 -0.11275711440749348 -0.26757080554055052];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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