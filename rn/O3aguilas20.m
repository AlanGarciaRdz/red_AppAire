function [Y,Xf,Af] = O3aguilas20(X,~,~)
%O3AGUILAS20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:34.
% 
% [Y] = O3aguilas20(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.42005420054201;35.0877192982456;0.0561797752808989;0.00588581518540318;11.7647058823529];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.1250046134340153;0.71799829195705933;-1.2604692445411272;1.887928690801046;2.5822518003089043;-1.5822634162016869;-0.4926863826102631;-0.25908420825212958;4.5464215467169042;-7.0380192873093517;1.0133075107027743;4.6454658882918327];
  IW1_1 = [-0.28902179652298104 4.545556981558855 -1.077734481074659 0.62841692361525703 0.54230403768096525 0.12592976237919917 -1.956495918442307;-0.88728814225932351 -0.12217353341390084 -0.61850083442447812 0.34028711772552589 -0.54858784027403995 -0.15294596054213738 -0.65607476126045339;0.053491404140518929 -1.7341907652111124 -0.37293401916582009 -0.73172404574661265 1.231251327469149 -1.0527757798590218 0.51688770534051176;0.37179617126816683 1.2967121441525553 0.44768894753598687 -0.38491424792495266 0.83953210220752661 -0.36182570987053991 1.2197824608850498;0.63820622086553858 4.5761753320153957 0.79148737996196239 -0.69400231112922461 -2.0448110344119557 -0.099728148623924068 3.2437183173849222;1.5168108882548386 0.0060085026397003497 -0.32198784687323551 0.059703703231591555 -0.41294957471298299 -0.16909017048771605 -0.52545306950608528;-1.0157473230395291 0.049353902052784192 -0.088272120202271723 -0.11669025920378603 -0.15030853147441656 0.0071655370947769168 -0.01010552653956978;-0.98074299035394041 -1.1619963228914878 0.34288968572560879 -0.11316903894487158 1.5817888363037804 -0.37034437819956695 0.81468569448891293;0.98009916426427768 2.5650221472858767 -0.31956376739746284 1.7470416459226288 2.0769645652045696 -0.035943562375780724 -0.067299091750767093;-0.10310257251809284 -0.13524175909795821 -8.6172572490443766 -0.12007869989853115 0.99802217765975143 0.43293434773568584 1.9627069001570081;0.61900632077771345 0.12165814892715122 -0.14740243505819853 0.21871219587662424 -0.026349532173276631 -0.10157141318091026 -0.31414446456469031;-2.7378370603154072 0.79897774206340411 -1.001455757102713 -0.79127065747184133 1.6788813019650675 -3.5718958902332552 -0.48869606593315995];
  
  % Layer 2
  b2 = [-5.4058389980144828;-0.37290333389251418;-3.3436037082314938;-0.77602899373504353;1.5544747948687629;0.988253710927949;-0.47366087884789082;3.4993546301514669;-1.9830961274720318;0.4616438514951427;6.7674254020048705;3.8453905414758989];
  LW2_1 = [8.0033948132272172 -6.4048655932500589 4.7294928873941844 3.7858490541931098 -4.1543716269921198 -3.6833252006586368 -4.4881713301039596 -3.6115301585249111 -2.6487979136771833 -0.60363004979331436 -2.8335920178553629 -1.5142483273346194;-0.095944678606792955 -0.55902238177152386 0.043847751695382089 -0.0041124581218014346 0.02996508868292462 -0.3724041240815637 -0.048640832744000585 -0.081238992306899294 0.022310924471561487 -0.02124133798192171 -0.51408334697905567 0.71431732267434844;-3.7860406542180542 -2.4686989336286156 -0.1671177421275386 -0.77289437143630901 -1.7278059763042819 -0.14488733398045492 -4.0592499073064028 -0.35482210641513201 0.58134273481057797 -0.11935038963609908 -1.1403587567047921 -1.8476373162921838;0.55303655872787494 -0.96840722444274707 -0.048583985908510263 -0.38459680257412765 -0.49561084869157768 0.64277967186050944 1.4962098426065251 0.63004861810653501 0.46510707357941483 0.11366428220100901 -0.65033129506925991 3.6941005864739456;-0.41349592425846876 -1.3606638236062367 0.31614180635331346 0.58891483198966188 0.62703407978509984 -0.52845080978829018 -0.4622048997302482 -0.77933798470222992 -0.80365441219489164 -0.21309956766634663 0.38630734079663337 -1.9135821574400445;0.6538091496584606 1.0758693552447913 0.48701871946173897 -1.2307976127500717 0.52187691738900233 -1.0295380631249487 0.7550555052080683 0.47316026896372471 0.63276336302561631 -0.24541556492922662 0.56700763351903483 -1.5132707156364509;0.14721690150575939 -0.73912886819595092 0.20965483873390992 0.032102500472941199 0.22524970034192468 0.41162837205510727 0.61201161635822432 -0.058054283018021513 -0.21119270826082887 -0.024141225020728789 1.7500487578001624 -0.86332849496902786;0.90863910032252571 -1.3406604995403197 0.2002055717899901 1.6621472703823401 -1.2222848483935866 1.5573413573362056 1.2481339651729262 -1.3741786671340732 -1.6164087892081258 0.1296261025628298 -4.0159826846364943 2.0064956718570173;-0.13516583186595388 -1.1739643475899353 0.63652156888698685 1.6084218794210445 0.92476186414660633 -0.64837446825829981 -1.870701594933136 -0.80471288158798771 -0.71081592967162122 -0.20550202582015356 1.8886172541298303 -3.453854426414888;0.38073690544957373 2.841212186202553 2.2547644643463158 1.4308081082643573 5.9990611112364247 4.4597114036272956 6.1462622331345429 4.2898649948337884 -3.9327736808264926 1.2088404318759771 2.734080989319347 0.83067903810195476;0.19338881425505433 -1.1143621337261775 0.36020835346100027 0.0050880175621164179 1.0726654939418274 -0.8269374262238931 -0.037913995037531373 -0.25098653350257311 -0.75079684373195654 -0.10566645698664619 -0.8237500193860765 -4.0029754487691864;0.63259255558210048 -2.7388325612236959 0.090255059405429522 -0.6220337921880853 0.78558617514989737 0.45861719138422702 0.53142818592193031 0.4589480019183122 -0.45771169270293899 0.13467149409417872 3.1027643623522176 -0.10204636645700413];
  
  % Layer 3
  b3 = 1.6881612927657081;
  LW3_2 = [3.939227237720385 -4.4431492998152571 0.32151378226609179 1.8162477772772592 1.6691644750270058 -0.51649864958945801 -5.3334765542719138 -0.28810755505818614 1.7413632494355304 0.064546902035636913 0.86826972107906664 -2.1746450299461717];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 11.7647058823529;
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