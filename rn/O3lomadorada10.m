function [Y,Xf,Af] = O3lomadorada10(X,~,~)
%O3LOMADORADA10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:40.
% 
% [Y] = O3lomadorada10(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;17.6991150442478];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [2.3726335781223451;-1.0724073859970817;-2.2386378179366733;-2.7160198778578244;0.9897366395944831;-0.13558117409966103;-0.45352034186776091;-1.6180354049693249;0.86762992143443851;0.29026507531564488;-1.8098340653702603;-0.84076612711197252;2.3885619896286236;4.7723738031663299];
  IW1_1 = [-0.74250639960880216 0.27427587506332091 -0.6004356355507281 -1.2110132306997012 1.0892732690104574 -1.4561411725316589 1.3730737266914859;1.5766798944551996 -1.0282030218688505 -0.4354676675246395 0.23452701844469281 0.30316506704260099 0.013460882722697923 0.20601753547511484;1.2668812678191359 -1.3360224532847347 -0.32008869651409894 -0.40331933878980702 -1.5988417435897215 -0.46665991694662612 -1.7919366125275356;0.19661937743523958 0.41591807978644152 -0.31157907943943869 0.4389441259038383 -1.411565679913684 1.0602895538315154 -2.0884212964905768;-0.21588576625783948 -0.54439951442493217 -0.67695657144228139 2.1922603361786437 -1.0085277284954886 0.3385059816359457 1.4945724849252546;-0.41757941119614767 2.466314322499513 -0.40823963418517639 -0.78269840590308815 0.34648099899634743 -0.35820770932617235 -1.1837436412695856;1.2433610577655783 1.4869519259197492 0.084026694311933242 -0.64282449852991852 -0.15266898905536364 -0.40445440608666383 -1.6446654474446936;2.4141619516252497 1.7719380977559547 0.15954475634629026 -0.84529890843648559 -1.1758573212251286 -0.49522044365399015 -0.81913698839020144;-0.20837851465453738 0.53832502103807978 0.71636041878261547 -1.1297775271785029 -1.4220608637761905 -0.65306363029947434 -0.20861953166431799;3.131160574147708 -0.047237850813183394 0.076466348824332037 -0.30655536955993767 -0.22075532614797286 -0.14873703243798789 -0.16237131463880661;-2.7479665512518787 -2.923067269052706 1.6068587976644408 -1.3174666480414212 -1.9771845093311238 -0.073838547744099828 -1.7426362420355104;-1.8277166392445212 0.30286577860537262 0.42233421908289115 -1.0505108048898208 -1.1271486079241053 0.53740084448864089 1.5562686411079938;2.058106061860316 0.33707479738682294 -0.16893704592436343 0.73392797577523161 0.54317932484588038 0.083703426826310948 0.03169769956093399;1.4461040102749376 0.73272889097639315 0.22298264025082956 -0.71159861530059521 -0.5853911930339678 -0.093289678201707901 5.1655125959378019];
  
  % Layer 2
  b2 = [-1.5307237654100334;1.7426572692235858;1.4252595648880408;0.27322529199575052;-0.35022402336206027;0.16480015123832936;-0.080132804453532491;-0.20550668409379419;-1.3885355944039146;-2.7865523757451807;1.2207069002822803;-0.93996943557080026;2.3174898124335832;-1.9848306283196016];
  LW2_1 = [1.2523211265359191 -0.55316140001574587 -0.31536305865445285 0.5743112118489565 0.14268294361519412 -0.34971242036289285 0.32905689951399447 0.043045568672641532 0.20446969638027238 1.2640365600346841 -0.18934634272159892 -0.36625554823390238 0.13548769058199925 -0.75629825312339627;0.10114641554019781 -1.503830262026252 0.25025387466121507 -0.41709341255853771 -0.67829207560117399 0.10034287882367274 -1.1040389185007415 -0.12162954554671263 0.76418449895772789 -0.29964980758788884 0.92194163235652205 -0.71347581777967828 0.40435988099695142 -0.20748373357242766;-0.2844594683398608 1.1417904879392733 -0.020711368148534807 -0.31191265188743533 0.10072875428600236 0.65772313823153061 0.40131826792233766 0.83194654328021711 0.86972197914117433 -0.99595706671689821 -0.7768072237131044 0.90458579728217603 1.9581054419163102 0.050832563298345929;-0.069263003124642522 0.43808113442982599 0.3060320524766601 1.4503504094409838 0.18218948437515878 0.57206036466607502 -0.34139140627253234 -0.38059795496790672 -1.1517542847884377 0.89128945004348048 -0.73973741965693829 0.49273568004149509 -1.1456110806664148 1.2159157633037601;-0.3424248521823357 -0.42774663506089999 0.57249024216346467 -0.30125601208428682 0.1258576190440801 0.053346496352692799 -2.2566761089086969 0.34453932530770748 -0.16950290908097707 0.1521925268177437 0.043385743609255178 -0.96586200698772706 1.0551865542071439 0.58849871172260715;0.56389738457070682 -0.71394847395845429 1.5333864161697204 0.53533410537861215 -1.2162739854935603 -0.042845858501056246 -1.8544313486286423 -0.40317005614171914 -0.48708445607751255 0.89123043859526996 0.97976426779348436 0.59924203153203948 0.60666859256946082 0.22836654908260667;0.49403389852205104 0.73426125311817314 -0.22609772592617827 0.61911097156120876 0.62504242057033921 0.51738615639372998 1.3400054047786456 -0.10895481404125565 0.74185981924773803 -0.67302519091108515 -0.3050884669765232 0.16844018709422712 -1.0589148262830426 -0.14266587528674585;-1.1460841312770542 -1.0763078496058232 0.058745467072596744 0.29409260772986073 -0.44029988618610166 -1.2598519978561193 -0.4406407625131063 -1.0929046871908785 -0.69820103817502266 0.83015706140124401 0.74284665173151532 -0.6354510209273363 -1.9437587709485384 -0.1937041957032907;-1.1800577063837825 -0.22665179924097628 1.1027518119604334 -0.3107690068760412 -0.33164536058544569 0.33712504363362211 -0.59051196467799727 -0.48854562738985824 -0.76161406322980196 -2.3988921783666592 -1.5728101339981531 0.018536603706067131 0.91291179637813302 0.22580469518521429;-0.68827358316370923 0.44386783848701605 0.80102466798454652 2.6393819070230209 -2.0738978218962263 -0.48769490401126797 2.1564061723130545 2.9665723237554653 -0.94414011383095997 0.42861259732475177 0.049212275474597736 -2.3702291130106414 -0.94640165047094427 -7.3804996122633799;-0.04233333556804951 0.79083115291047434 0.49284370181801479 -0.55985589663095703 0.76405876201956169 -0.22901894735671166 -0.80420983719276085 0.88904040993234157 -0.35254233824159237 -0.96943713446114654 0.39626724160032761 -0.36293504150513689 1.0230146861773561 -0.071217418311912112;-0.12551594452971535 0.0088643652778142255 0.41106967899240726 0.87622186696796789 0.16526493201080192 0.35625891683595751 0.095730594025547233 0.080278021018755599 1.1152852432154214 0.75369128147562603 -0.44992274609159727 -0.44957596599512806 -0.78255193555716673 -0.41663855318367932;1.3578906345007791 0.5726994297471244 0.48382308195824913 0.78236124904924309 -1.2997216569257186 0.90721305990819434 -0.4863356170500579 0.63493582286483097 -0.10138345756229095 1.2244121397449703 0.12720078973776089 0.73801415369727741 -0.49996011153200182 -1.2158020417250059;1.2864774857466421 -0.2889503989936682 -0.73793904549164491 -0.10467649499749482 0.71455974095290253 -0.23802373342718147 0.81830218597526505 -0.33169819391744487 1.0906877050739507 -0.12931468139832761 -0.038619389278709962 -0.49945433810151307 -0.40104378442051963 0.1217883692844543];
  
  % Layer 3
  b3 = -0.14578022857530126;
  LW3_2 = [-1.0059795808485312 -1.4182581618796219 2.7201464237987705 0.7263673790929176 -1.0600758138250956 0.14524444154309502 -1.3999902977403775 1.8795936259575183 2.4317545544157468 -2.0397567156436369 0.60112657762578181 1.1793340519194628 0.94780347975443036 1.4063834639954842];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 17.6991150442478;
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