function [Y,Xf,Af] = NOXVallarta4(X,~,~)
%NOXVALLARTA4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:26.
% 
% [Y] = NOXVallarta4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;16.1290322580645;0.00782778864970646;0.0208333333333333;0.02710027100271;0.00632111251580278];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.5390992895529301;3.2499768691305255;-2.8807378719414216;1.9759503125287181;1.8002731181425133;3.2293963752179495;-2.7944158357832363;-0.97460384076712558;-1.1288589383045218;0.35113262101212322;0.42328462028330366;-3.304481507232512;4.4063745232119791;0.75630904122460219];
IW1_1 = [-1.0311151696889524 -3.3315534450514672 -0.040078260077092746 0.23446370904718097 -0.31694477075972699 0.13202622140979228 0.12817262971102775 0.20603160183249286 -0.022928954317343972;-1.8366443656979503 1.1855320773490381 0.81851674891351689 -1.435535660477461 0.097878749019022618 0.97195281396595457 -0.89437480882890741 -1.65719131916925 -1.3593898875338075;0.5728148900831741 1.1918044622234936 0.69689210507857247 0.37764527935943254 -0.97831810566638766 -0.18944728890077206 -0.36617237836360356 -0.92824492017905114 -0.0017183111355531765;-1.8287778218852995 0.19509422493130121 -0.17897790080283341 0.39672969838036204 -1.446072401865782 0.62499226323474377 -1.0452652088419481 0.27062726538748016 0.48258248981458007;-2.7463116685641098 0.8425016107378307 -1.7576978719817857 0.70561697971538029 0.77670037498874922 1.0121079202529977 -0.51684524709734725 7.2090636426876825e-05 -0.28088133055378367;0.3018458885801627 -1.811673685840645 -0.0070193751070331822 1.9597199899048712 0.35572866279315707 -0.70630421706255653 2.3767406196608927 1.0601195516310338 0.17547283957558463;0.82505442766848291 -1.9945726876170062 -0.046589482807450643 -0.16822430647368805 -0.68409204978048888 0.13380683404894844 0.21217842917159249 -0.57032798015048347 0.12271361793340482;0.026664050109992302 0.13677053684475055 0.81576687851801666 -0.97068281139480339 -1.3530390203342333 -1.3025731300249304 0.010435330969000459 -0.75964017089134772 0.44098067892071091;-0.034674416275751227 2.2279579288135505 -0.1027368474203514 -0.64271069944950499 -2.0030830630127356 -0.41684853228850371 -1.1781015416538307 -1.1800889979352998 0.25318020781949108;0.16959505574140901 -0.76050303468068059 0.070494129389271895 0.048652454256825198 0.69421333033902755 -0.14913868373434622 0.8366902074006215 0.52955823857473328 -0.078023903600719632;-1.5696469297134628 0.081808265593468266 0.14132720054715747 -1.1561757546029836 -0.20640040791117004 1.026490440115692 1.0332788270311288 -1.1235470201555109 -0.39907171941968111;-0.79854557117104497 -5.3087002513332582 0.74388002066410563 -0.13366540780042802 -0.16685032437676539 -0.049382295356699329 -0.61720304029368211 0.2417470656344296 0.058676034517079617;2.9656152363715069 0.82454577082829006 0.27953068618219784 -0.46364612146646417 0.33207627371189252 0.9255268964629344 -4.2496729585981861 -1.5051475538822017 0.031618429802975433;0.7631754461409237 -1.9529037164007295 0.006864430963459958 -0.60309853270440394 0.065755759967326854 -0.068895737283164907 0.42468128435789793 0.028120241198789229 0.030330479495407913];

% Layer 2
b2 = [0.73353883824650878;-0.28972711081018515;-1.2089549448483183;-0.22123582982826356;-2.8577554552224322;-0.14725282940715462;-0.64625506419911594;-0.13779568619226867;1.0007160811354017;0.82130895124804237;-1.7720404873229882;-2.349205050266939;2.1620542107406666;-3.4581947573566145];
LW2_1 = [-0.31002392943856943 0.24821989504298594 1.0382442069384863 -0.51878816609292211 -0.3258882428410298 -0.17570711672897016 -0.50607735638587881 -0.33770971990960802 -0.037135948658243476 -1.1618510025334086 -0.17333599386812112 -1.6320160406093551 0.18573833357920863 0.92067892889493286;-1.1017032199104451 -0.94923643528805202 3.0767275136089705 -0.89624712796653561 0.3581098047931936 -0.33292714558558506 -3.5734198442450418 -0.54534865834744761 2.0014482963928968 -0.72355435000796331 0.49187717308298817 1.0211936358449898 -0.19169030793693753 0.34478962920857675;1.0955838154548074 0.36344409393063049 -1.1197625787891894 -0.46155171724369898 0.17483459511595223 -0.53955048667124827 -0.034225286217223969 0.22241817091658611 0.30331652826812044 0.13229782669806853 -0.51302025639896032 -1.6824709051074553 0.41499930428932469 -1.3572807448216992;-0.38353515715154718 -0.41300479729808587 0.30315018527494525 0.95322560203471307 -0.21110728608057561 0.0059497555619579933 0.69104682961763808 0.84288320661703597 -1.182199935213619 -0.44760899022266037 1.719547541353744 0.67125603616034402 -0.84786536820951985 0.0191831169253531;2.150209495696465 1.3749558375916868 1.0449983153431455 0.49759128753907556 2.0322301629373851 -0.19606341635895663 4.0168298245068614 0.77798676734278016 1.2879521241023573 3.5674323921171123 -2.4186048231597166 -1.6617940003960725 1.2220963067830053 -3.654423603205402;1.619724425263287 1.3152659105271554 0.27031949640849179 1.3998101705119799 -0.48025696327999151 0.49978051842822713 0.6499237772770089 0.17871624552602805 -0.91292359090806563 0.73431449733677456 2.4826673811017721 -2.1513898465981565 2.0922014398499766 -0.74407673819251974;0.38036085848224194 -0.041858154083868782 -0.88493417714568889 -0.55608805872911027 0.21951043223639111 0.8091299951396278 -0.50025676833192412 -0.56187572652281981 0.043799615978741449 -1.1029185249698412 -0.87644575011688675 -1.1908484277579094 0.054214042784633487 0.33811308721210548;-1.2433269582827668 0.82371337674331424 0.0066917689834460718 -0.25611999147288278 0.044931406524035288 -1.990811960685233 2.3817611397461569 -0.64883372128010219 -0.78116614265489293 0.40590616991318307 -1.2009493231438868 -0.43622368751952417 0.45957982066669628 0.020993874087033945;2.1036713020310192 -1.3177243203254441 0.20369578789255594 -0.35393500911926162 0.62776223887344218 0.93560697015305927 -4.2454144925118866 0.71681340038001429 -1.1936186338291865 -2.9496702357577682 2.3459623612817575 1.726024304242527 1.1746346984882894 0.43271456076751735;-0.2050849318469129 0.22096580054181528 -0.093570052703180404 -0.056167566743326368 0.20465251597376327 0.70958867488256105 -0.083353263222180618 0.64856277856119371 0.8983020657497508 -0.9924636892036014 -0.58256715610758392 0.054386661910471826 0.44667695303309296 2.5054101452550062;-0.84348928992498395 -0.59937191279997015 0.19420484439447289 0.40668812557031886 -0.20408409925370299 0.49587121691017522 0.16191421874808082 -0.13245816366812277 -0.58645338298846716 0.055022632709903374 0.57851935914063846 -2.0538863487077967 -0.87604985896267429 0.55637101747485684;-0.45038538349163471 -0.52338233289050906 -0.38502153816671031 0.34342034101119068 -0.12835715054025226 0.58477666110396764 0.27090047995980349 -0.14468613913296169 -0.41227766228444196 0.44123896926533568 0.40490783708864536 -2.0983158499641621 -0.78580054786972986 0.0014884505438690805;2.3376105567511125 0.27013093222952644 0.79441424589945453 3.2249874202873174 0.37270635698644394 3.3865204003537279 -0.24526208080642697 1.3481455867397967 -1.4463363387023807 0.71402844129517973 -0.44227748063240985 -0.11930132602174162 1.0571367384488006 -1.6670348487696978;-0.71374747584588472 -1.2121919183462608 0.18269657079623186 1.7624624350066842 1.5390439013658088 -0.75165835054749197 -0.46184859083561447 0.043394471909531052 -0.54071043919260531 -0.047278402104539111 -1.4023613862585098 0.89233172821499451 0.55703722169549907 0.0078613464637518823];

% Layer 3
b3 = 0.26572374917667879;
LW3_2 = [1.3082882288253395 0.1979033132548107 -1.3910826664259852 0.44475983716189921 4.9006288728358305 -3.8342777457869577 0.52206226034128644 0.98298813970510956 4.8918835096163784 -0.58263634449452639 -2.818151548236425 2.4814708378934136 1.1741228406891302 -2.8493438939188582];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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