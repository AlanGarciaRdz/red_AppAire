function [Y,Xf,Af] = NOXOblatos6(X,~,~)
%NOXOBLATOS6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:31.
% 
% [Y] = NOXOblatos6(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_xoffset = [1;1;0;0;-10;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;4.05679513184584;0.195790504160548;0.00618238021638331;117.647058823529;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.965262067473216;1.235365848000155;-2.3113813112354338;-3.4613476592588119;-1.8825725937670921;0.4635888088456051;-1.823324844207284;-1.3260078088135867;0.93356247146025761;0.95875434919270175;2.6120707846170421;1.6108478742603538;2.2114080023658285;-1.2797428980478691];
IW1_1 = [0.88849976431157784 2.2130592361009662 1.0352458876003539 0.50865344938154167 -1.4556597758550389 -0.11837215997135792 1.7786527748150502 1.1280131766612262;-0.74426286282212639 -1.2562541776531484 1.3905817467203951 0.87466536486038227 -0.44690866088050157 -0.96558213423174211 -3.7194358434163242 -0.070344006339483789;-0.31302833397541946 -1.8813119825032347 0.35193071258773906 0.084343409113579473 0.87753412575202572 0.099981880943314699 -0.90434491270537221 -0.0099614305632735288;0.84060230486896681 -0.025650914462850422 -0.80269629281802812 -1.4613112843085785 0.79240500533383351 0.13532339510536781 0.28479831853355048 -0.15846264352858336;-0.44967520424562435 1.8052683240960539 1.475835166982324 -0.4129949274678848 -0.77553126320039178 -0.13004086349119254 -1.8157155453494576 -2.188337122341701;0.23876913651020912 -0.8979362686408654 0.68937482636222214 -0.73269527999654516 1.4464605107159882 -0.55573813813847384 0.97234508215881388 1.844274634948621;1.4039925433504261 -0.48333174624904351 -3.2202523471114555 1.9600280914527677 -0.56061198435757087 -0.18187111510017676 -0.25621325009973533 -0.051303537203076982;0.22624275525989501 0.35646886076286327 -1.2049367245234612 -1.9443045228672204 -0.46348470426507404 0.2429899893095675 0.80838403721416718 -0.47144206319457915;-2.3290913875780843 -1.8584594812973041 3.3713953404066652 -0.59180264296860674 1.0135130115149393 0.22702342762974084 -0.20936243453037898 -0.055485038960300027;0.6358412115850377 -0.33884018959226325 -0.69560664943020034 0.23498332892508655 1.4100713930920701 -0.6203745234147644 -1.3111601016914387 1.8437349416005187;0.81175357855351593 3.2148002697827329 -0.39646240485672718 0.2567262000302758 0.24191268202373148 -0.03567508774606324 0.26056428232032031 0.1032298374050034;0.83992004218785776 -1.2870163243710158 0.63570188704459096 1.0004763062536945 0.27348708327205073 0.30141483679145692 -0.23330888562559104 -0.11728321731937713;0.20427073176250207 -2.4706122483770079 2.6630610221052082 -1.6720626110557979 -1.7964836642004296 0.11615761622194019 -0.32414075567887057 -0.833836295293369;-2.7352399796228517 0.69815630862036682 -1.0543836325295954 -0.39372889677310402 -0.083948048057698024 -0.77277522464803361 -0.31168447636890295 -0.56714912776975746];

% Layer 2
b2 = [0.31888116643486436;2.2723247730895668;1.5413594422920383;-0.88467444336289291;-0.46452891362438065;-0.59321860464249265;-0.064427984364059929;0.66284707551297573;0.432981821890221;0.62371936278846318;-1.1709460490047898;-0.67275238262984216;-1.7249607399503895;0.88622972842605718];
LW2_1 = [0.3371399671040064 -0.22515899141319029 -0.60547643417570407 -1.270082672795835 -0.36105467202626185 1.7947239503197472 1.4450852783486812 -0.44379365354942601 -1.1196372582986662 1.5049495351212934 1.4374676303083511 0.89438285015868157 -0.0095110737835873704 1.6396519618649925;-0.2950654349125838 -0.17423459741412445 0.5795896358453525 0.68705717318631698 0.46035769855784964 0.025492535029507477 -0.66998192654011746 -1.0673719380372593 0.77643040281518083 -0.0045349352638945828 -0.74638147922217279 -0.66747286827731178 -0.8777377451500108 -0.92721467676663361;-0.4802819509389209 0.808434901437038 -0.41978847308768302 -0.5377910588471011 0.3393132005642035 0.34036739812325278 -0.13733127618331228 0.29923994629990247 0.099934778640121069 0.983421735050372 -0.17647710084352472 -0.17322419141692086 0.20457091053552079 0.19759800980067643;-0.36575762015236879 0.11984715113924399 0.84514264943997519 -0.27827713528376558 -1.2569385957739794 -0.28368854352892003 -0.33616157243065486 -0.90980645555836548 -0.4323706568120424 1.7063479703006807 1.5565584338293237 0.3047924304956986 0.90384523769105252 1.4208787532031308;0.073912822427285196 -0.93999973135979009 -0.90525109129343007 2.0720579812762661 1.0159775018418413 0.11342487983403704 0.34825140566421159 -0.46081722659214303 -0.44025694297216106 0.086755052263168 0.51063585818048618 -0.41303364888883848 -1.1376435726261145 1.2475847856165707;-0.83934466939757846 0.15646535611676682 1.7370652622987788 2.1047661215248836 0.85007538543986449 1.0978963708889324 -1.8391488638592677 0.50500500383956615 0.52085607363456654 -0.5069482929850897 0.27580490639213728 0.34726380388448913 -1.2210804538774167 -0.063634631647849854;-0.1705380599053456 -0.1135037964357154 0.037934125410692222 -0.4541002819933439 0.094120523607253592 -0.4314645081481811 -0.90674117728773707 -1.4167506904776084 0.53675461429516858 0.72415689284439189 -0.77293977640570377 -1.185157583076309 -0.045396865482789067 -1.0962802208639393;-0.79820759914280426 0.74904214471502795 -0.21449111899431483 1.8738437726124524 -0.39218106782229567 -0.66040107009337146 0.72382030658372076 -0.14661946350982413 1.4380110901798417 -0.3209954165555941 -2.2124488754764888 1.5433839598336858 -1.5962466527507562 -0.9894533163724939;0.094045278652431896 0.62664640712717046 1.3377784207252974 -1.8734739073509505 -1.1246300407464682 -0.53732379644693118 -0.88136066448564199 0.32062334741699977 -0.22293442018704648 -0.24110382056801946 -0.64579690063743711 0.49224859330035031 1.3942805296520024 -0.53052194898902105;0.45822028703304013 -0.72951892598845347 -0.95263614057444101 -0.71397522069005459 0.63952657327109352 0.82877017688333732 -1.1991674144770514 -0.92704564852805471 -1.7740695827744299 0.54493246713042598 0.71067642935739261 -0.93558629391624959 1.4512250398739877 1.8785606123284653;-2.7418722948487653 -0.5173682764408033 0.82736012328000064 -0.33755525360155358 0.20904217097047922 -0.28350426053556854 1.3092589131955656 1.2294166508840523 2.3593919414739455 -0.49690323261634861 -0.84932874180665885 0.70902520025939197 -2.1959402717058176 -2.4253685088611432;-1.01261576370467 0.074629174329291059 -1.003666807836515 2.3600597068181526 0.50630363099772557 -0.22834653303102223 1.3551188225855211 -0.42022928019077532 1.9280581948104556 1.2544016951058792 -2.5689082974558164 2.3424740355360214 -1.2524878059098556 -0.53997539387761451;-0.97497988610672504 -0.14392530444738982 0.59915675760001297 0.6899746154442431 1.5755618931078308 0.9283021613596486 1.8388886929259727 0.70913997823086716 1.7841081713754146 -0.18756940530678129 -0.2799543440626866 0.44929897266948959 0.55571504587286691 -1.2471706733935446;0.97446139276283628 -1.7602901202092216 -0.98021594090149167 -0.095095657006068729 -0.45744331217465217 -0.89512040630420908 -0.47018451921331161 -0.75356684678643515 -0.87952250527418385 0.4345211865752146 1.478354804042695 1.7708290136353546 0.9130299867818733 2.1888038993208574];

% Layer 3
b3 = -1.2662844202928238;
LW3_2 = [1.4632291113073754 -0.50007636811954082 0.11070866690501119 -0.27566689898186375 -0.31624321415613199 0.47235607353518133 0.48387167469267495 1.9607156899101053 -0.43674126536951718 1.5831788422648081 1.7550209024036187 -1.8184081057587624 1.4163665274988602 1.3418726456808661];

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