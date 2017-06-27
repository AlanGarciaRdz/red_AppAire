function [Y,Xf,Af] = O3miravalle21(X,~,~)
%O3MIRAVALLE21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:43.
% 
% [Y] = O3miravalle21(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.304971027752364;2.48447204968944;0.056980056980057;0.0063552589768033;15.3846153846154];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-1.1545826176250076;1.5115446837481434;1.8827481059878213;1.7705753006892797;-1.1104436556590549;0.51400420857722395;0.36633457528838964;-0.71800262943403659;1.742187475993042;-1.2538855544969087;3.0943742220671817;-1.8071444693364673;-1.4506678358782372;-2.63648214871872];
  IW1_1 = [1.6964519565011849 -0.3969533536510893 -0.57915166870625068 0.73629017468446223 -0.85987830520419173 -0.0206475133909488 1.2675038641728127;-0.98821065041821599 -0.75087463426458045 -0.60455110437724291 -0.37928620286902492 0.66582721078340446 0.80665793207547243 -0.24728914687557985;-0.63381243517492103 1.1754889076060164 -0.16247551476716671 0.25089849839551048 -1.1728604562703118 -0.058130849745628203 0.34436073999176497;-0.1966894939766167 0.83804531995861897 -1.22314864422738 -0.74453994510822474 -0.92335260153808596 1.7734158510749756 0.17469849114875136;2.115884626327722 -0.56216590270902422 -0.037764333566466801 0.78818910952343824 0.049788246462685024 0.067292139173596693 -0.052252022488795291;-0.78431221308265975 -1.1448925561618988 0.063424567944293422 -0.3302412750654764 1.5538823544896216 0.073061253594674469 0.24236852350564783;-0.44821433768673463 -0.036930817709646041 0.58507671529424554 -0.68788311969274141 -0.76295725928299329 -0.3675734764099805 -0.13846776077959741;-0.76351712332240373 -0.65837962855073051 0.0036424201658766999 -0.34724278680693366 0.36719568758856486 0.12645653564093701 0.0049323623392666001;0.73587106167292982 2.6726548964100818 -0.39151083845832862 -0.28814314849020878 1.206551939950355 -0.065381008330303803 -0.45690512232402053;-0.044161568900553561 -0.10562778157775417 -1.1175948501587953 0.70424601270091169 -1.0171421235817828 -0.1075031609893262 1.9949999182419325;-0.072802109647563659 -0.50322991859850075 0.67427706563060097 1.912576891824447 -1.6861564226351926 -0.62283478259380354 -0.030036937193844298;-1.0030456329001254 2.2099866012230733 0.557088847930438 -0.64353342676514647 -1.1343495275773525 -0.32565811415107349 0.22734614932470196;0.036178062108930313 -0.88687979355556323 0.54088572134750923 -0.40128872716367731 1.1329415306800059 0.0018436026118815816 0.73319336437925886;0.2949039818726566 0.3814603191046122 -2.2009462379875329 0.99170353492440677 1.8715581520488582 -0.051199240018924411 -0.19571551845602481];
  
  % Layer 2
  b2 = [1.6425487143439701;-1.2483721368343688;-1.5438173287772303;1.1929110283147326;-0.89219981576600593;0.26213819165323976;-0.98784020915585802;0.57641323484684737;0.8512485272679573;-0.80373571026055568;1.5372738754750188;1.1177598957437851;-1.6317822125929315;1.242771875590102];
  LW2_1 = [-0.45015939215336426 -0.64923189636488965 -0.059648154006844006 0.50136750880784064 -0.50475757834730606 0.26168617786490217 0.37104035223302795 -0.34526367935455576 0.6043307314562455 -0.64055637695159851 0.19973796199958935 0.24850105611975998 -0.55710040256241977 -0.42994748348394823;0.28647357078638158 0.54861396552144648 1.567191990241785 -0.50336107348770764 0.71220472531469281 0.73858497519863442 -0.8025900876734311 -0.12579252751759365 -0.47316667715481553 0.91272945211378298 -0.24738765379849828 -0.051605473808449626 0.37243473530240517 0.94115802368639689;-0.79268713528249379 -0.12569815996615863 1.8748179856398668 -0.1539192251252551 -0.63853042944344196 -0.4602791162497748 -0.88811614188283061 1.0908224379508575 0.35990633042620546 -0.2765276833118922 0.9316296601992855 -0.72283366639779789 1.2705009990112668 0.03516074160240594;-0.66628047914582977 -0.0035603881893984499 -0.58231912226219851 0.34684264577199159 0.41932068019103436 0.36959202429579879 -0.53556014808219365 -1.2567632697388966 -0.5330669169855573 -0.53034225525028977 1.0802293073247182 0.15506392672378716 -0.61049306489963573 0.11520794467651863;0.14228033415278363 0.2899710887616645 -1.1765249196539305 0.46714946180345668 -1.0811676183961392 0.73023504102750181 -0.97469370373312447 -0.48127581247988227 0.63658332331842382 0.61666175702286208 0.61854581093658012 0.41179924085649022 -0.20164423453040414 -0.0069900035923428248;-1.3153673971830679 -0.14540610660170755 -0.30577932667928237 -0.24703170951256606 -0.40730326726641725 0.14952721453172999 -0.8425481379222316 -1.3714690282298003 -0.75121083624576124 0.23306317650543085 0.078881757675873382 -0.20827105349029626 0.7095196675427462 0.21265662527303539;-0.7749962634642662 -1.2036652891356072 0.52524221386265668 0.16947806595788539 1.8514088473877139 2.2043037962435261 -0.16841134220756038 0.94926122703056715 0.75834353774392116 0.43368822171698751 0.16930876898286795 0.0054402123335892645 0.19458013955338777 0.87591607097964908;0.74961871134649705 1.4438184456895162 0.35490034703505058 -0.13947734894001745 -0.69680868454051137 -0.10933821549767775 0.10413077054951701 1.4760240361380987 0.82708213044544954 -0.61270056415199825 0.60679051021400821 0.19558339144272219 0.36333252906670188 0.15347234870788373;0.91211667896545379 -0.21592957492037751 -0.27673535948704886 0.63451834329669277 1.0250329944420631 -0.52283180821137709 1.1214556204320125 0.6305585054832491 -0.16232415036876877 -0.50233812177704174 -0.46868083182039794 -0.20897866128192266 -0.49252340018573371 0.5666805651618243;0.10696629623251636 -0.37117987115254464 -1.1243101605845465 0.61235995909343266 -1.0396937855137605 0.18767124370885102 0.40665665214984476 0.23225520118027473 -0.34597567033593146 0.35307490235028288 -0.12734981237272153 0.4927990073677303 -0.73618079587269381 -0.10558376758533999;1.1806948323565873 -1.5453408544954761 -0.33934396662132821 1.1378742351003432 0.63596200892938293 0.23730887205383885 -0.84254323030532408 -0.76680134614981632 -0.071455676463764661 -1.0352557245864742 0.4521500627180125 -0.42074231291274011 0.48770416470880668 0.73154134919763558;0.28031173260512926 -0.60182758599979469 0.36453790969542776 -0.1830093179188127 0.39221018497664634 -0.10868821491172909 0.97096729608214849 -0.97033932296530445 0.76273135323765773 0.18576488434305405 -0.13670779319784893 -0.11954933166186239 0.67132477878959695 0.20520642304653319;-0.068314601976070075 0.83904869622609635 0.062565714097570557 0.39595216492779373 -0.96367030781395657 -1.1538832399403436 0.35853556377092299 -0.59608441861151529 -1.280834675775206 0.31344046304396611 -0.17634866033574956 -0.51432214719232272 0.27487336317843114 0.91763148991326493;-0.45611379401288377 0.43914561755620768 0.40727036704972047 0.20015746365248974 -0.69044588144343544 -0.26988687643881537 -1.0136723435036084 0.32301427034356939 -0.38110033422178902 0.50108312174770187 0.70653369234756824 -0.78547868508476193 1.0718146781180942 0.67767000777658304];
  
  % Layer 3
  b3 = 0.15692970509615045;
  LW3_2 = [0.54450129018485838 -1.5807283728331794 -1.0435229262477537 -0.60935866175532549 -1.6806808892091529 -1.6997836371780741 1.6517329373310892 -1.1974982957174347 -2.8700502557824001 1.2398063264383752 1.406243070947631 0.39546786464283307 1.0177632292112817 1.4992648395105574];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.3846153846154;
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