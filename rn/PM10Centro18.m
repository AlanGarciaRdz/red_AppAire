function [Y,Xf,Af] = PM10Centro18(X,~,~)
%PM10CENTRO18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:06.
% 
% [Y] = PM10Centro18(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.0814201674519404;2.309115511495059;4.4125346003661532;2.8289009082098171;2.8632344243375543;1.3287260887868408;-1.3594959181794224;-3.0071561624981142;-2.2015705284782388;0.11249450781021841;1.7172778013731167;-6.5266484164299312;1.6367583790294968];
IW1_1 = [0.62670897677434556 0.19441203263402357 -0.086903845349696085 -1.436705314156516 -0.56952086068148333 1.8567827215162367 0.11683141543590336;-4.3113534420957622 -0.54810939134737835 -2.0377354336132916 -0.52434591730405555 0.77824317972964974 -0.4264974343443162 0.75088367360545605;-1.4427360871117461 -0.26874069515918481 -0.31486851224554741 -0.36447182268050332 4.8478835429876046 1.1280065902580094 0.34112010245849905;-0.80706293940984219 0.46581811570332643 1.9008767409526326 -0.43201775680847843 0.18523094196041834 -1.3834367880009779 0.92045603063394532;-0.77211671271369198 3.248072212539411 0.46304712225459255 -0.51660209717462935 0.28217425454116724 1.3558070654794632 -0.85869940952661727;-0.039739867082714819 1.8623103198698272 -0.12274597424424098 0.023658681192811563 0.023835057747443347 -0.061023441747380877 -0.034526175151043427;-1.8723662265657177 1.3338042849061651 -0.44776324561576675 -1.8669866765764247 0.18307312159332309 -0.60240234938536741 0.58538097359661012;4.1814401609274814 0.66036426736506426 1.4973180920231031 0.37676784802926627 0.13099411291758345 -1.1040619341452143 -0.62301133316811252;-0.00098922386930782886 3.3328237891540788 0.37875772450478684 -0.72925726003279412 -0.18373856251968396 0.10263961150965273 -0.53751330236596973;-1.012085313084615 0.32177289498015016 1.9862841725541467 -0.00562049609500856 -2.6122694287920023 -3.2784041154367141 2.7471522858883857;0.90554208906860323 -0.44246787985269276 -0.70361049059401282 0.7957998013032459 -0.79228723192088535 -0.25198814567349015 0.088183876125576419;-5.4667006875998965 0.028711321370371842 -0.7892715743749138 1.1409038998673373 -2.2582508249190001 -2.6304559374829264 0.50167141655644987;2.625346030802354 2.0241098402548316 0.32121322460093127 -0.055628493361774577 0.33722870522238679 1.3383117279743753 -0.15156599649054428];

% Layer 2
b2 = [-1.8769419980475932;-2.5653815714629884;-0.034315502656873643;0.13785154628092541;1.4100383745984848;-1.1389369934843476;-0.24486235499584946;-1.9082229906758565;0.40332971985273763;0.50502820121911651;0.65054220269044605;-1.4475536101109747;-1.7971762332495789];
LW2_1 = [0.24639331574404982 -0.87465290153811626 -1.9634307790721237 -2.0733013828571658 -0.70399183739914528 0.55748761547261405 0.71536581649858155 0.25591381411281916 -0.76016391583605603 0.60728084963913809 -0.66069772449951358 2.8007297430080347 -0.43902258572780373;-1.0635933958007695 0.76329942421542007 0.26322996147425354 1.6183599195448768 -1.2846338530105426 1.3053382774213684 -0.15352920004675086 0.38875775781697347 -1.1568418050550251 1.4270878270068079 -1.3379269121551627 0.30760162504799499 0.58139443179640449;-0.58023491807638117 -0.40687192348780804 0.92796877915900244 0.27340998933188099 0.82747496331477588 -0.86306010215166462 -0.54729050221750664 -1.9792319348622534 -0.28764103249492751 0.4560388571880204 -1.2226736903198601 -1.3640130631442917 0.67782666131855118;-0.50308212514428052 0.89139848299489233 0.0080361486408986084 -1.2424557144919983 0.10923234739741856 1.6308482272969116 0.38610106917769776 1.1610004823271913 -0.58482241276586877 0.35464804723561338 -1.1211122071340753 -0.57758909889908983 -0.74098407748862294;-0.1479383352209247 -1.0011601630449505 -0.90268744734921069 -1.1995593399630851 0.65276949354140057 -1.8571250418132752 -0.0028648101953154467 -0.15592262326004311 -1.2636895990350729 0.0076855792454594103 1.7767165573691122 -0.36109069767541424 1.1215926108586356;0.80880666096909382 0.36971463097095303 0.026813397323521355 0.4612248828886194 -0.23573482411828936 -0.010137580734888518 0.25542343481141511 0.039057147915392693 0.68315222969859279 -0.10299374142331368 0.22463144790096792 1.0884224717587323 0.45437057752110582;-0.24291347637798158 -1.2587664932076177 0.73531960125918527 -1.2519026274531626 0.4157273593776708 0.36183579793526083 0.31181865221271526 -2.293763173100102 -0.80630295115550965 0.31388532193679092 0.6271010063263821 -1.3667656593264597 0.068576539070660372;-0.084692715268023161 0.010495959426691669 -0.42736215961209373 1.1300579440851153 -0.49214040111624546 -0.70009691752421244 -0.31277548507180836 -0.28502913160608284 -0.15782271014102753 1.1092148319430695 -0.8351036611069127 0.65438196255736081 0.66292546865753754;-0.091197247017204594 -1.2710401905502602 -0.061186203070024182 0.056543900264155025 0.45565030231176534 -1.8829596036641911 -0.19189663938102186 -2.0014208809875882 -0.81626303634648145 -0.03664128886956837 -0.10154401565906719 -0.0027594957612266362 0.65694227566064878;-0.039429943593888551 1.2499539575667946 1.3863375485333631 1.2605563869329726 -0.13395784518569956 0.63037778404689404 -1.0844463451798922 0.469553441295951 1.1567123881172536 -1.1421787074625138 0.067206900103154846 0.2726172369847627 0.015946035270278949;0.031439474359093326 -0.8052179139320369 -0.14423133441242825 -0.17967892690958964 0.5300696409564194 -1.2262894301360685 -0.21145505857781866 -1.2392140143989065 -0.72941158421294605 -0.090811722499840472 -0.2394858044225695 0.027802826731307538 0.07318629973275835;-0.042285071424745364 0.25528399498093313 0.94341238833586849 -0.1741726858363089 0.72510169923305301 0.42807095411995189 -0.66129551682638488 -0.19213854083587872 0.028788793166717626 0.051599693130279789 -0.089158104917855446 0.69251848598156851 0.54259119602510053;-0.35466753682423752 0.27964975901591821 0.94530725874825627 0.17025409445499376 1.06312588898569 0.81421813827612988 -0.21226175854677384 -0.10343741108194496 -0.11344319924140985 0.10100260989922882 -0.43051113426952681 0.27681702369751915 0.40774571158830447];

% Layer 3
b3 = 0.1206884114092691;
LW3_2 = [0.57665878076700094 -0.34292234703847913 -0.526788763277379 0.51541515533403748 -0.30180758758146953 -0.47368840628755976 0.68474056554120888 0.58892903761397608 1.4087722682069739 0.20718399969319731 -1.7902163875514883 0.47978661181501242 -0.57478404903657332];

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