function [Y,Xf,Af] = O3vallarta48(X,~,~)
%O3VALLARTA48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:55.
% 
% [Y] = O3vallarta48(X,~,~) takes these arguments:
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
  b1 = [2.2600941232582032;0.022552164645232561;0.51946175991039301;1.7565125404699491;-1.4429616584287053;-0.038834218436881701;2.7507883986575661;0.33130807076815838;-1.8711185797257559;-5.3246080326311969;2.591689528852946;-0.8938298872823518;-5.5193382307484278;1.1522299763805788];
  IW1_1 = [-0.22950153961342207 3.3105912840425491 -1.6154050355130627 1.0949727315965774 -0.25109099155104658 1.9031596558215254 0.35039177967584884;0.073720622769843536 0.14012405736509478 0.4651272932729611 2.4029913966651488 -2.9219648528835123 -0.26810061734432034 0.43399438326328604;0.47882539265146062 0.14484859375665368 -0.053914636640889579 2.7025773593148004 -2.4240193030880302 -0.0026763930730056636 -0.38149091241805749;-0.14232342451955993 -4.7417004128159697 -0.43807501816010436 5.4150082086989464 0.71739518555354187 -0.72346691917028028 0.19214867143253389;-0.46103511053485685 0.11391359724441798 -1.2664028489280312 -1.7833836564364351 -5.4352635897347659 -1.3059302339605996 2.0597119719931554;-2.01522851701854 0.067027149984200632 0.083570764417664062 -0.47467267389048545 0.41154940834316334 -0.41491528747384104 1.6583465334712808;-1.4429117466095425 1.4159469849724182 1.3585615938214926 -0.55008791820766556 0.58557186272236061 -0.41671635109555388 2.9725219951937083;-0.63291932505918425 0.34754690967533797 -0.52476907557139807 0.95875397634074244 -0.1640600960013433 0.017383825880641718 -0.66332288509937087;1.4502173690141658 -0.20264999027971123 0.0082832297200637808 -1.9732838660627388 1.6668587036524563 0.10712740399919446 -0.29231474163471938;0.61856936654227535 0.64286624579619078 0.59144789946084653 -5.0487181758571067 2.1154364471949392 -0.37632885120498311 -2.6002126231771263;-0.092706387201259802 -1.4043206716980707 -1.0146012890231049 -0.67178534724599037 -0.17479671316618658 0.16066740545593533 0.55022709398198133;0.052223685221140757 -4.6040539870974007 0.32378202779663495 1.7774341365841944 0.33480466383740881 -0.80657555894852362 0.55733882184483297;0.093866730016346323 -3.5448408627392753 -3.7509324236135462 -0.74000346425171593 0.73025661186248603 2.7022291759389598 0.15666514923024411;2.2355565227607244 -0.60888656336779179 0.84922902229126773 -0.075095502403830117 -0.54768802227851432 0.1236776101427336 -1.3631066063536934];
  
  % Layer 2
  b2 = [3.4090947344424141;1.4610432200838424;1.8144360819877328;-1.0645895922679123;1.93208729762596;-0.94799573401722781;-2.5418008680806174;-3.3574352866458179;-0.17622434799083112;-1.3448295100903227;-0.87663932706000125;1.8344387095713908;1.663054863206455;3.6462421405679755];
  LW2_1 = [-2.1850884951649534 -0.31381545646807479 4.0638291747049697 -2.6925122185926269 1.2445475396634915 1.4760281442922769 -0.15349237117986769 -1.3058349051126541 -1.3755940245145983 0.74127955802737222 0.51478545881389604 -1.6463654959990577 0.75631104999611443 0.33759835133009825;-1.9911857413170089 -3.0143451351304287 3.5664866417589498 -1.006907516412145 1.035055450160258 0.51767388520137303 0.42953406847431569 -0.43363514014917681 -1.2652599508676148 0.66708130955346101 -0.029014210649196744 -3.1640098856234036 0.51572918082889863 0.21842031549920476;0.57731141111302053 -0.023328353901630083 -2.6012410894448026 -0.64690786645677234 -1.043029484054028 0.55927826573345696 -0.49836222945540543 -1.7247206768237746 -2.9158727001534701 0.24001495501284437 -1.8501121393691393 0.79125599853557405 -0.040879502993159247 1.1823682138975797;0.56488576177956462 0.78236477624561351 -0.41121902837147506 -0.43630981590780366 -0.8897193488199302 -0.93871714624100633 0.069358118125132068 -0.43536625782034322 -0.52876264181762611 0.095921117048811358 1.474636788961905 0.6068802219563546 0.24421995100784633 -0.90512430307441449;-0.17864291059945825 -2.9264066789082501 0.061158160394315639 0.44971211900902219 0.33949545903405148 2.2132289052680769 1.2191967678801627 -0.43570993570417554 1.6811643542172339 -2.4795840742394404 0.14834943624517499 -0.95880816536764679 -2.2723168070620203 1.4461081077717561;0.7648481805123265 1.4617218409412662 1.5989442683439878 -1.0506525361694274 0.096096852698197843 0.42305318641592832 -0.031117813711979272 0.41766895562327111 -2.4722981765125467 0.37649528789001097 -0.87976395385788841 -1.1290666756689536 -1.0106824576145068 -0.66383453086296174;0.2005109822506628 0.15198672272367092 -1.4743277242187609 -0.70728310867891619 0.97575279434873252 -1.0412303276212105 0.98437023818564606 -1.1116644151936974 0.84533811773092715 0.47054790241169336 0.022904306434771267 -0.20502321156394479 0.39447257683826475 -1.0110792763777667;0.14376281611841185 -1.7466881165604966 -0.6986508224169441 -0.40639477289900727 0.80471171071163394 -1.002862583786992 1.0849081740689086 -1.6521863601330959 0.52617900414355889 0.56857322996454462 -0.65568586354610592 -1.3047129545457754 0.52494092788941171 -1.1691330493022323;1.8520144150924938 1.3758694501230804 -1.4498262304542568 -0.34656529545677478 -1.7037163535907394 -0.21551875676362153 -0.20796816456118636 0.2165701511313792 0.078874324654187922 -0.051473005683238038 0.77805982534663687 2.5306821563741475 -0.46623384823508368 -0.23727053460950118;-0.089166303395976712 -0.68486305946174963 5.9389976428359201 1.9365679623749867 -0.97821823570427746 0.072182985892645657 0.50142037985198573 1.5850296793262837 -1.4541812846596396 0.73705295648705138 -0.35220322870013521 -0.91502989885893182 0.22623508066402842 -1.8262653151107593;-1.8142947612257141 0.97774635778151997 -1.6180288666713498 -2.6891316198480997 -2.3798139923968216 -0.29185486303565378 -1.6784681615643824 -1.7016817919196465 0.42527156801605098 -1.1817844728906555 0.48907700496070455 1.9636862610849124 0.60635995972951717 -0.27584487323500578;0.66454683743623777 -1.1418988269779879 2.0278816201821446 3.5255317579788232 -1.1651077941316537 0.35711160962867777 -0.36531942560683339 -3.9523116459889223 -1.8388675618361567 0.69102187185602248 2.0365136274895561 -2.5022292771833268 -0.56087180613252474 -0.71468031278009625;-0.16457592247140926 -1.2027683183295192 2.2902777077968346 1.4429331796807865 0.91747204304700192 -0.6934025866326029 0.18637086332267744 -3.8092665465215987 -0.16728479271495186 -0.20158534360373354 -1.1165488933814554 -2.855763315159201 0.071746683235336589 -1.5072059639253288;1.3082979826219852 -1.2680858815930014 1.4040981478702448 1.9683696075552404 -1.0744422100017239 0.80048246620014096 -0.09608746731856993 -0.062272995480308901 1.2309003417135034 0.96659879808076243 1.8204571980941535 2.314680840850583 0.0011598857186108751 -0.080297509256940527];
  
  % Layer 3
  b3 = 0.11735599168838121;
  LW3_2 = [-1.9347839580301083 2.3839646174867344 0.4326648248101691 -1.6424111697260486 -0.88161551543259253 0.11754477175553169 -1.6548584159066817 1.560241198620689 0.978920952120932 0.36439544005555352 0.23158449112043406 -1.0229240355948206 0.46401686475746828 0.29677925959314816];
  
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