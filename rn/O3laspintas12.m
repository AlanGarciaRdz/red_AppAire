function [Y,Xf,Af] = O3laspintas12(X,~,~)
%O3LASPINTAS12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:47.
% 
% [Y] = O3laspintas12(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.241545893719807;4.5045045045045;0.00280033604032484;95.2380952380952;0.212765957446809;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.1661639435316822;-0.51008134341177269;1.5719412834350834;-1.8240814516976556;-0.0065721686993406928;1.81564469731917;-1.7019316844819461;0.26473382400313283;3.2160818421629784;1.1278400261637052;4.9362005477477275;-2.8459900645316862;-3.1635982065199313;3.563759549343906];
  IW1_1 = [3.180261489529046 0.31483392037052366 0.15251708089308938 0.36588277414731096 0.076236779499516377 0.070162517448549497 0.05121433455589415 0.48350410193814525;-3.4425546791172041 -0.015791861452391951 -0.10874942689278175 -0.20348952057625366 0.43866575180093298 -0.14666174520905245 0.036695193817102588 1.1571746725951852;-1.4226294905857306 1.2822238172644134 -0.39136431873954775 0.52867524231002894 0.93077200870113486 1.3898607878969977 -1.4666458655173054 2.2094671355242457;-0.45387333993807227 0.36678367885171309 -2.0899837487611128 1.6418297426458917 0.21129238576919096 0.80042400792509549 -1.2895672685731736 -0.084707650518942773;0.97096837806813308 -0.96428406412643652 0.38087546569609049 -0.11581785009779262 0.041757959182560783 0.063262053279292671 0.012902085669443779 -0.86825568492229421;0.57554885987553439 -0.36852256766348662 -0.251357783866344 -0.33076093213614011 0.23998432816570414 0.018275559372069067 0.20922771005011495 1.1648375129287463;0.024982171427521495 -2.2387939903239507 -0.052450186508622459 0.79384447012722548 -0.075090237661145406 -0.53772553012407753 -0.38468818341647359 0.28371532022114948;-2.0708796850084781 -2.857841591515859 -0.4878057073769525 0.40991076725269437 0.40690791480727195 -0.15017065387813708 -0.45159755430256382 -0.17042052534520169;0.4877192052218946 -1.1858468623356728 -0.69826053516436726 -0.058396726142804598 0.48866832765115048 -0.40453607078980353 1.4602225889575555 0.62748451578893139;0.92546111349162796 -0.10313347297764294 1.5470023827835955 -2.2540090227245928 0.94390103113285095 -1.2526299180772105 1.1829790712011272 1.1316866833459571;3.8706463016303054 -0.45212806331261274 0.48234669634406391 -0.52307429222163238 0.070428161385759455 0.93682701326201401 0.6401813534905213 1.4736574750647089;-0.69281646618674286 5.9180084390010146 -1.4722605978471861 -1.7232364004657124 0.63049569567689767 -1.3604277308669046 0.20384457938311334 -1.990700936558331;-1.2041287164739756 1.7577425238408777 -0.45693468363712264 2.436359322991875 -0.88681560197315235 -2.8626731807731023 -0.7724572206005349 -1.3522981380542374;1.0965237766855183 0.21837304906778546 1.1906612263164602 0.23934660629018267 3.2138275135304792 -2.9446217119609055 0.82895294465497393 0.74660002386064317];
  
  % Layer 2
  b2 = [-2.9541221239744608;-2.7926146755608605;2.0450314359016848;0.39562790882096122;0.53296431117024978;1.3203337515144897;0.59989770555397481;1.0274257450507092;0.90903627098184636;0.28560203274839541;-0.71116957586499974;-1.0691473983374256;1.7459916887539197;2.4502757301027889];
  LW2_1 = [0.075839935160397748 0.10489287821178903 -0.31076824460988173 0.095124127414678378 -1.199697461659996 -1.8709638098601156 -0.034579049521605718 1.7001972104594432 0.76314872544771817 0.14502588540854325 1.4193516865290225 -0.88713372172853555 -0.69645403340724077 -0.36042436750328366;-0.17083218811291234 -0.4684714947731996 0.56134834235932307 0.11976327992270835 -0.5243146287650351 1.1902748096854561 -1.9929547446827285 1.7092751325808762 0.33162557837047657 -0.36100265674296622 -0.56629484066150604 0.13121716746476134 -0.62445385419125887 0.66402700793391967;0.16093108093620609 3.1549962844990849 1.6931858363957615 -1.3367829499652077 -0.47801784569941691 -0.038773356822256112 -0.49429684262964557 -0.42400447895504478 1.818436847334989 -1.3721534304173852 2.3276986375127136 -0.79391845550329521 -1.8991073530885521 3.34548871378913;-0.13315614008670729 -0.038740737220459398 0.6507851512730809 0.021087529153680701 1.1883600335835847 -1.7031471726048077 -0.0033963947003117362 -5.1042618323192492 -0.43298820917455627 -0.99070476519526574 -2.9945866138934898 -0.14933200668882585 -0.51819123791460475 0.55384998098171756;-0.21063670663146342 -0.35720421109373968 -0.30011744001696455 0.88188154701845534 0.053530567305732656 0.25624968492446226 1.4101368514588832 0.63409893155113839 0.73910818781720944 0.043176711402701434 -0.47932545919797992 -0.042610989203359477 -0.11426327450821813 0.10748534084894278;-0.32034987735887072 -1.3093405303576429 0.3700450948151956 -0.44360759121593041 -0.25666087762287809 0.017905474011971442 -1.0304881187192816 0.095636729286231278 0.013501105270046054 -0.85896855273867723 -1.3056563077505086 -0.22561601395809447 -1.5240616583387814 1.5376962015749938;-0.43943071985818405 1.0309604113666579 -0.55297905935478198 0.4443348543413711 -0.45848031706424064 -0.80885659836942081 0.13724624959650236 1.3411878837801288 -0.032239929413523424 -0.1219109809587086 -0.6814440206689828 0.80719265142598007 -0.22738882214699901 0.1330651566309165;-1.5067174844589581 0.96881227371012824 0.24996218228664208 -0.85778551814319104 -0.58075028312799681 -0.057008244221903495 0.010214968421400022 -0.19647019280369535 0.36137134459925935 -0.26936724364238462 -0.12833802348628087 0.26034832165881855 0.49068515148878827 0.15468714966574565;0.36936287402795931 -0.77633439172262708 -0.15112248870757361 -0.69044514891791953 -0.84467854418619293 -1.1840346327903177 1.8130511521405228 0.64922788558774847 -0.28670277201215733 -0.076351940697605106 -0.49160219878552475 0.66735992979444103 -0.39025219755124613 -0.076282144632683624;1.5307742567061853 0.63910773196844961 -0.1870328058665563 0.51972676119997585 0.45443957592063888 -0.038057066823746863 -0.57760421548155838 0.59741564068529773 -0.82457563530158651 0.16598110725760282 0.86124832705588339 -0.33193208798011692 -0.6788697961481045 -0.30774693560598215;-0.12971195732188348 -0.36771641244321235 0.058609973883879424 1.0935982474618067 0.22331197449315388 0.069278281834004585 -2.5480336146499187 0.71189452279947163 0.84389694575768204 0.1574338554287652 -0.30852396582212843 -0.059107185382480207 0.21259213394016654 0.25109928725022462;-0.015147723613207455 1.0445588410953464 0.68994009657854283 0.26204442754547136 -0.55738830139445761 0.73911944939880392 -0.59361267702478815 -0.73664263664497864 -0.039198544430984215 0.9974186445988279 -0.027000146118179181 -0.37044315985088289 -0.017702374372213697 -0.5531098803435488;-0.57641242351713762 -1.5837543744716223 -0.01270774498948779 0.29775548894576881 0.18752838352470932 0.64018321077806561 -0.90298022640868658 0.4597027229021613 -0.5186205584173339 0.095373725995198222 -1.5284480633345467 0.3606196841010979 -1.4309337742536177 1.0337206189191588;-0.38059751276295067 0.59879450250872468 -0.83564178239438658 -0.34289053457744495 -0.58008662001350331 -0.38923360107454025 2.0317776418059528 1.0958055331052756 -1.4432636867487958 -0.63631846671937353 -0.08195061920135592 -0.35619579753793146 -1.0894936023874859 0.17244750341892096];
  
  % Layer 3
  b3 = 1.3540175001328518;
  LW3_2 = [0.79035795196845005 0.31213827026288526 -2.2593558545066195 -0.14768111747490278 -0.84266188265092545 2.9163969170024737 0.36058656386126475 -1.5972318673858508 -1.3774008059626051 -1.2027227019533284 -1.0555130461235864 -0.27123233204596869 -1.8009119334747825 0.53398061641753813];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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
