function [Y,Xf,Af] = O3vallarta14(X,~,~)
%O3VALLARTA14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:54.
% 
% [Y] = O3vallarta14(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.12820512820513;24.390243902439;0.02710027100271;0.141843971631206;10.4712041884817];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.2515849327738853;-1.9030150239712111;1.844581258399403;-2.1325167915395569;-0.087112564512075552;0.41808177405003277;-0.58087780860993254;0.58842704666789647;1.9231568046090639;0.03441891834563978;1.2774823153144339;2.7659229365577653;-1.1281865724235429;-2.2627529951726286];
  IW1_1 = [0.20610628833464278 3.3610520390197549 0.37919462085377609 0.50526044393219827 -0.96750688873963142 -0.31289765903018901 -0.33177617422209482;1.1566414613689486 -0.65230842125420785 -0.18215164572255255 -0.55806107262432991 0.80684085596674637 0.15116591324901982 0.72061073288711797;-0.97344162605041884 -2.1188948655377127 3.0037377527069586 -0.41267371074169035 1.558884463988119 0.17489251026554534 -1.5823316414362665;2.3039385643411356 0.14796917518745073 -0.27619703847148985 -0.38410493394489442 -0.052654081146224156 0.20027810477481542 0.034478337394270177;-1.5035645180929831 -0.5550217276543804 0.60790862154991865 -0.17000797151779287 1.7999180649944453 0.032557928581528402 0.98264565190888198;-1.6925062684920389 -2.7121028161078558 0.079632903299434524 -0.60051892243617044 0.42549261517925524 0.40956861825430613 0.54914936201671705;0.39918173313801375 1.8034282410473395 0.25252200029472416 0.61150323192293909 0.0064016312227227253 -0.038587632485586457 -1.8941687887033982;-1.9030232366832509 0.45739069043115127 -1.662860599176186 0.47458730370866969 0.19226193697306637 0.12058819754123128 1.5649321475992046;0.89612653103000572 -0.18655433653192449 -1.1923730451984618 0.69599838248910184 0.055402282766573448 0.24407005346762758 2.0623226564895507;2.392175505415596 0.14465603813610053 1.1874044447058683 1.0073534728153677 0.63159272561730728 -0.19656156979072395 0.84559113564505994;-0.4828202754605273 -1.0247885007308193 0.80666528793837322 1.2884531356344897 0.12240050642217309 -0.39587119622514294 -1.1073020835370209;2.0741483435049286 -0.10766425029009738 1.1500656168633487 -0.42676089163081821 -0.22922561316556231 -0.04422286101655086 1.3365296545423662;-2.3597696248547795 0.78847502356693289 -0.24203845709789928 1.3698058506361621 -0.59570123751304505 -0.049436111926831935 0.3798097018625512;-0.49941082803818099 -0.1608609791779366 0.42986336972194256 -0.36185901569955942 0.25981749035132556 1.1202183659270653 1.4234639356286509];
  
  % Layer 2
  b2 = [1.7672037507799099;-1.5429087599714892;-0.86454220300887308;-1.112630566951798;0.57685725759107997;-0.069457974843731368;0.046601450968444411;-0.17681251077018378;0.68623337225499148;-0.77410338459603778;-0.83651517133447573;-1.0219673388301234;-1.7881158473089247;-1.223512206597611];
  LW2_1 = [1.0137315236801878 0.24614392207732216 0.4277394732603137 -1.486683927877346 -0.095024452622330433 -0.42370991802298358 -1.4424496090973253 1.3783508276924112 0.95634564177771408 0.47680424046944014 -0.9675779104522837 2.1716437883648418 1.0760628906776146 -0.051986166332049957;0.81463482247805674 0.71962195930463402 -0.12013965186053469 0.59612879022584897 0.059029381333978136 0.42401787868948093 -0.55110480296502851 0.66450234629538418 -1.1578296093015104 0.090997533040492434 -1.2109479181624569 -1.0047485758319288 -0.7662713026225344 -0.26028554946585664;1.1302231666641589 -0.74226325160158113 -0.48753748919958051 0.86427182022570126 0.24379686081606761 0.71898794834714452 -0.84354851450203416 -0.83099770156633845 -0.0051765676553152638 -0.69483174741938269 0.16095420286453102 0.75845062839674859 0.31411554850839829 -0.8093767915216028;-0.38465904905403236 -0.13148316692420103 0.44310887174906199 -0.7031553598027559 -0.96413531519359807 -1.0948419255876516 -0.53531590055092559 0.17158440647567411 0.52304551265686017 -0.1763214529596718 -0.79710941498194743 -1.2287023540777089 0.31930850046482273 -0.09573804271549094;0.43342281321127463 -0.58190664415389493 -0.42440369083093649 -1.0640758703014199 -0.092491685756503905 -0.2061743082231921 -0.16770326983665065 -1.1102754996896487 1.4269957828404918 -0.022758910026063325 0.51437959715643589 -0.04442217858586129 1.1954624767464279 -0.58283286108627663;-0.94186761783710726 -0.3435863858214307 -0.13095271305928191 0.88869710865539964 0.17360788256888141 -1.2704987178659182 -0.2913907760844599 -0.43939473551589336 0.24217334435421844 0.19454196756961334 0.062657509543247489 -0.57171678213059152 0.42233226834112775 0.070118266950177727;-0.14597760693078113 0.39373196957192802 -0.1998110565259808 -0.75823016414775091 -0.84934177599952698 -0.48846253587891791 -0.43698859495410142 -1.0548614070630384 0.65165497901447234 -0.62777527418312518 -0.58888446798556604 -1.3762347993368456 0.29368544886141917 0.27867365536390842;-0.70683343454776748 0.42741429023564748 -0.10492655269185228 0.70738128178027049 0.76704926658308659 -1.118330160607107 -0.8759660803764282 -0.87315412373683765 0.40922338523294316 -1.5981573429461031 0.037916979621950751 0.051095954711654387 0.014969553072326459 -0.24916510197220956;-0.25376364943851659 0.10068527391122768 0.48886600672434388 0.14617084273704703 0.24032564286319366 -0.79612726070401973 -1.4852730621042691 0.38703292516518584 -1.1624883153813201 0.7358913931831722 -0.73532535912146546 1.1573426559893443 0.71808270401068419 -0.98236103524154372;-0.051304277687219714 0.51717945704725843 0.30905607058441564 0.92349891345741097 1.0433265351624874 0.43795559904466075 0.50134656317099524 0.0025400399496286253 1.036572558097087 -0.86267603234395063 0.87864180139695902 1.203243806711928 0.67514336613859216 -0.36199090169459097;0.1582469247766759 -0.26709212037910601 -0.17872046723876694 -0.48520244233197019 0.95853228515597744 -0.52015641799385115 0.58990028257725358 0.14422970759453832 -0.20113967905537861 0.55918078994197939 0.038405323436330713 -0.62360607249610889 -0.80762376366239885 0.089893111590111804;-0.41295949834480655 0.075066229271036289 0.5422152200653777 -0.26861038332596332 -0.41921825451957639 -0.8067629183156243 -1.0424973615938997 0.33947688102760848 -0.48511412496085815 0.2670342038087628 -0.69279747570854244 1.4810632037564471 0.18096542003154115 -0.67574690400156634;-0.31143680501413901 -0.3398386149777527 0.10452874804794332 -0.024739965491586694 -0.65690020870264898 -0.56681227592244832 -0.17736704768729844 0.51712717445612066 -0.56646814033242754 0.071854413795961969 -0.33640638520108118 0.076379567947577789 -1.5023712332712909 0.080491023751451729;-0.56750812315282162 0.13988577001716171 0.09511818143250346 0.09570121335694598 -0.4380008136971289 -1.3395014444705295 -0.043086963565132946 0.11856980937157252 0.69435238465472282 0.30588078319971529 -0.046908420877271352 0.15278990333327147 0.45284770819350517 -0.26731056277376741];
  
  % Layer 3
  b3 = -1.1587962376629599;
  LW3_2 = [2.4057760741508525 -1.274835990717053 1.0671046783857998 1.3657343010325513 -2.4764112187785838 1.1538463718982885 -1.116223130731693 0.52318258317867317 -0.51855582685051582 -0.52421703487988003 1.1852082737398124 0.61699143963172332 -1.0625077091461359 -0.88996225762410808];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.4712041884817;
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
