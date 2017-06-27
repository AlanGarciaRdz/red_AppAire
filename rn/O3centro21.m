function [Y,Xf,Af] = O3centro21(X,~,~)
%O3CENTRO21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:39.
% 
% [Y] = O3centro21(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.281968137600451;3.74531835205992;45.4545454545455;15.748031496063];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [2.4190419648005963;-3.405507617551836;-1.8748933323412322;-2.3765617805359227;-0.72681762192504917;0.32220355252470823;-1.189867578472799;-0.9940002097859747;2.2940320677851989;-0.94321213504086976;0.60051924445896554;1.1820946651391977;-1.843267316716803;-2.0840144181167402;2.7634469124181118];
  IW1_1 = [-1.4769836866822996 2.2195170464725953 -0.98917798057920403 -0.57332004489730548 2.2798024813586459 0.41554357834675321;2.1865591132671414 0.13545319182600296 -0.095332130370613138 -0.77344098758490099 -0.14459196347467693 -1.2110269333258807;1.804249356614805 -0.41725348194708856 1.3887864305087738 0.91279589691141083 -2.0118548347665066 3.0502191923938957;1.014267509024442 -1.2238221929823236 0.93303495678237114 0.28298844795078587 0.91839821790594067 -2.532115080462543;1.8845736303247267 -0.025432159418556623 -0.067659861539456842 0.20623225083154498 0.10701890849162897 -0.56118659126166248;-1.4195297968099092 -0.0064846343660058016 -2.0681434480137852 1.3353953797789091 1.3777788719795243 -0.52530447513097089;2.4471957273035683 0.68840771286742264 0.18609163658295028 0.24321481098473877 -0.44517382579103015 1.0665670896311343;-0.81522681518196771 1.1777731428149056 -0.017020300952583431 -1.018268031052151 0.56260928717786574 -0.32886824169084633;1.6579564310193515 0.28843130939495565 -0.99513073526592355 0.28862200886689249 2.587388858118016 0.92864964935017125;-0.054426641929114464 2.4340986491691439 -2.3345145222049615 0.25489270508527362 -0.27542794743694488 0.051943445244445309;-0.53113761172657625 1.0125516195554494 -0.43087077895977993 1.1835040665956313 0.17850112092472514 0.31076902254547167;0.4615042719894385 -0.43628814837884439 -0.010996412710876383 1.9943768411044613 0.3654705721452628 0.34652973185537767;-1.140495916375744 -3.0819249524791861 0.79589766145469432 -0.070030779452781064 -0.084732827869863567 0.008878856769300239;0.24067993101364396 -0.28471727505156402 -0.73900408114861649 -2.1577574395822352 0.090658332424584959 1.6907237482006505;1.6154684062190825 0.25836091254802673 1.5211867908281966 0.061944869887880324 -0.43535955013666011 1.4700910166024264];
  
  % Layer 2
  b2 = [-2.0587288368698822;1.7677229557719769;0.43065782433460709;-0.97380941253128461;-0.6860052870381661;-1.3880017772748279;-0.4466132649231741;0.70274019787271558;0.11131736608935849;0.85358975643992852;-0.91870693513035617;0.94903031316254882;1.4273672354207769;0.27855510681709539;-2.1034370441017423];
  LW2_1 = [0.098117035262050248 0.22371081526637646 0.53251658381624389 -0.43671133055270944 0.086641686591789516 0.38434784181533965 -0.082234930200856954 0.99994097709139296 -0.99276774918919053 -0.95804242221662372 0.64317675907288485 0.64172554904154633 -0.99574970042047228 0.61462620642513111 0.45361735240496537;0.43625240600945808 -1.1120988035523509 -0.70851931444883232 0.02108450110495854 -0.45530337992758269 -0.24628286782591144 -0.47263686049311332 -0.29966388184882564 0.62157005557181433 0.85411878243333716 0.38049982265903254 0.170537691754092 -0.57648138009551853 1.0753917066900047 -0.36659771375912342;0.033803843278116058 -0.18232055311518913 -0.70934569136398329 0.73024041088735425 -1.9385392198315334 0.02352133161358571 1.6057271876917443 -0.82721183454498037 0.60184064315951369 0.10861798687764876 0.56705985888119348 -0.41840582253573444 0.33324078632497189 -0.37759251270046346 0.09252020635403968;-0.34486991195295519 -0.69136187664206039 -0.35586284523091827 -1.6291542765058427 0.15603327587726673 1.2121024904558089 2.1215499881193454 0.17891859254049391 0.1060164680498783 1.1069895984120157 0.7835885589977285 -0.71518810981360526 0.24147686961806911 -0.81749207288579362 1.5178032994561725;1.7751978188130753 1.3970556507483205 -0.75607446732876793 -0.047914945069396309 0.85050551213562664 -1.0564368193786082 -0.60738412793850083 0.87962399203833452 -0.27918779452547049 -0.48152851267293761 0.18014711935245101 0.9927752255294946 -1.471426533974032 0.84209427819997174 -1.3866713315951835;-0.72571025575959047 -0.42324149562026181 0.8211237316543093 0.39635341847619582 0.7260839825325256 -0.2075143887212425 0.5144587042394978 0.15047805428340086 0.093330355270409726 0.59509312103238676 0.016916035333196092 -0.15930221433445152 -1.8091078388460367 0.38794139567865055 -0.38914259926889827;-0.0055015110292684615 -0.3369268585137038 -0.96767685944486814 0.76764182222586674 -2.0287711769115724 0.29829692400562607 1.1496312436838874 -0.092803026112929066 0.11769876846646832 0.73314454059972711 -0.60419235350881451 0.16243614395994879 0.84528374222459102 -0.7423504162183947 0.53780119069672028;0.98543671012692191 -0.64505844376089316 -0.59250495360493993 0.37057130388524451 -0.52476700229091411 0.78324241139985895 0.23305723620754609 -1.1737424528254146 -0.76003888633728622 -0.45185125633976408 0.47977503055321535 -0.65296685850168934 -0.51899120552952183 0.74163628431589357 -0.24020537958834229;0.69961740385829074 -2.0603324480268177 -0.84925873968299981 -0.36730263635401661 0.37387447311030114 0.38081803207677789 1.2827364553851353 -0.53821357408466874 -0.027248642143285852 1.0225161068214932 -1.3038877950162158 0.6952457224633023 2.0816281496179783 0.22363794047470739 -0.40713224428414657;0.048071042298461333 0.59074495547562433 0.014648715391317617 -0.72611444941568093 -0.44826333730630985 -0.081118129190489385 -1.1448824867964447 0.58142562339551407 0.51228814113613963 0.23960862388061308 -0.67264121671979737 1.1274081735633541 0.074159836533905704 -0.49079765632120143 -0.1415380912074897;0.4961163104289118 -0.3817258822058231 -1.9796897179122228 0.50325365133012745 -0.52632272894186771 -0.65684788063293165 -0.14460310186071923 1.3168237567838916 -0.29392577034786826 0.25899021503106329 -0.87706272999537993 0.97556910917663198 1.2963582169286709 -0.22403788436654609 -0.49097495023794169;0.47197160957778528 -1.1892816216646003 -0.47014661679420233 0.23097297169679254 -1.1426659930655347 1.3106592321733272 -0.34060129001119449 -0.51625520108772505 0.025129951623872968 0.64073744130599297 0.53706360474732961 -0.83337950222127022 -0.29498321779969489 0.37038553834304816 -0.31861606803352294;0.14843995184305156 -0.094050867327454643 0.13368767596569853 0.20726676731048513 -1.3352693973142364 -0.36748149352245252 0.62857483312336759 -1.0085735980183941 0.8870495027229589 0.50257844513715144 0.57381999318692156 -0.50354173280112646 0.87381610537503451 -0.37142788627931983 -0.3390678678093762;0.85829373696018252 -1.3357810842258682 0.66804615792162581 0.69259280890716701 -0.56344924521251938 -0.61732719821618887 -1.7176394696935109 -1.7172617509958168 -0.31022599265649675 1.3466313056307273 -1.2334834511480748 0.31615436815575815 -1.2329474198799606 -0.08306683021998236 -0.97447594840869634;-1.1721132268444252 0.62983070826451115 -0.52446187375748421 0.1122592595471375 1.6943284163425212 0.37987894251849325 0.043454772337997591 1.3861630461481289 -0.57044859995973973 -1.5684423802943828 0.62901103787977108 0.88820838449823303 -0.25143276663916769 0.25138880683230247 -0.044845234609447393];
  
  % Layer 3
  b3 = -1.0219917448031857;
  LW3_2 = [-0.28759391138404211 0.26670342596896812 1.1867211203686954 0.55133372381046286 -0.46242890878877879 -1.3632644860216794 -1.3928822410113753 -1.1441776860358999 0.37299471234564019 -1.4031852427043769 0.66390602881510186 0.50133388370398413 -1.7887913442282986 0.45489315180822548 -0.75310337609231259];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.748031496063;
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