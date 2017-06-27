function [Y,Xf,Af] = PM10Vallarta18(X,~,~)
%PM10VALLARTA18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:48.
% 
% [Y] = PM10Vallarta18(X,~,~) takes these arguments:
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
x1_step1_xoffset = [1;1;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.12820512820513;0.00782778864970646;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.4186482692351903;1.398281049780574;-0.72425522147040788;0.12888154852826716;2.0034711383068204;-3.3102957298427009;-1.2608318184892386;0.60070279270690463;1.62690541737359;1.4991547805181495;-1.6917927218438347;-2.3789467401725273;-4.9785020345756017];
IW1_1 = [-3.2697369071848343 -1.3579075392892384 -0.44864203044248679 2.7177829542647784 0.45798816263506953 -3.2940907032336608 -0.30990594257545379 -0.12935371656341055;-0.071326699052358333 2.4452982614232628 -0.19356584501739713 -0.02847239298513194 1.0651166943669903 -2.0051394588223519 -0.047104481631577128 -0.41993051658335168;2.0364052212546131 -1.0712729568735777 -0.72005279979040548 0.30788920801772812 1.2247022538710697 -0.49025143266319526 0.049255748271354538 0.44538108949994987;2.4966742024566231 0.42983302268079537 -0.81061425715396207 -0.58227577154870003 0.98667556559725667 1.1036055036465353 -0.31571149626312628 0.018360188402438749;-1.7979675569378788 0.35867495402134419 0.1220466533751717 0.079127871423687463 1.4936929242255961 -0.37757388396488639 -0.6980895657728784 0.34705403020265407;3.6985336158593789 0.029676103596219201 0.55955524843801019 -1.0072192657708581 2.2100221161232323 -3.1859015242078894 0.582882639537189 0.47103161322188908;0.50625092820455142 -0.80510434692856114 -0.24517739759379681 0.56981168561442497 -0.3689309366456015 -0.85270693912462747 -0.23590934857693882 0.72085630273832513;-0.29437972757680386 -0.87614286920666107 -0.41664740887058649 0.42575888851160554 0.86146617130853165 1.9919495779660064 -0.055573461143911339 -0.43082507953661686;1.3644554940891858 0.96222481442747676 0.39076020114831117 0.32303565443035875 0.59167720446801864 2.6801521848075205 1.1396267600186991 0.30039641934203126;2.7132992967357832 0.080468686080297905 -0.022245130391255932 -0.47224523884763947 -0.40041713009854812 0.90772329636924576 -0.26114056578358619 0.0051717848654257905;-0.38764028907880416 3.3008947763554781 -0.16059273336073424 -0.39544831758925131 0.14243142637268266 0.038903761597143455 -0.079045663555592255 0.075725609035985075;-0.23246231739771517 -0.7760710336092479 -0.54062456898210898 0.68676243775327628 0.4619013322479551 -0.49974232950527481 -0.40599132462092485 -0.8098145117649298;0.63209132094331266 -1.0766345002101636 0.30550987266715229 0.8031573373682116 0.44054607009966607 0.35694752186799283 -5.4642246482278853 -0.1896995998453169];

% Layer 2
b2 = [0.056178656725248424;2.2534538881343908;1.6446292671557134;-0.6756888492535752;-0.50281096874060915;0.6211900183877499;0.58471578036612781;-1.7537776638192337;1.650822953803837;2.4897685228438649;1.1104470927918904;1.4287292064297468;1.6316335790614487];
LW2_1 = [0.75781296379025509 1.0583582584098095 0.51266240171625466 0.17788383503224789 -0.017997944171361659 1.1982191536179472 0.149789341318292 0.5568634036218465 0.15021966029186648 0.86491457263558591 1.5708762447840172 2.2716015002415064 -1.2147641418526209;-0.066247037455580027 -1.7095304695760234 2.4918374426517471 2.1227003715861317 0.81115177877605682 0.42897822027969973 -0.90311385892535467 -2.7630540372668113 0.64576453579204995 -1.2078055088741417 -1.7105577362136435 -0.33317542417625218 -1.4406100065813219;-0.99904850017010194 0.71828414719068578 -0.62645709921600234 0.082794268754666736 -0.38370322743450619 -0.23878102035555016 0.93456886268843542 1.1313539139908706 0.57548171375851342 0.51122630491750432 -0.11767304863356461 -1.9196838547553274 0.91670799554974014;0.36563819189570995 -0.0774577667272109 0.25960798221993797 0.33831642099543147 -0.092971354030184819 0.44297637673972257 0.20038207902497693 0.78257374882774189 0.48261355881896389 -0.021690571109343748 -0.37333576813230923 0.42912219289773129 -0.52487295626157326;0.55486348809057839 -0.56922629392853863 -0.49604606451502242 0.95091998732390037 -0.14327160328949878 0.73348017671277288 0.66549922178380116 -0.23440912890211715 0.2034717461699958 0.39405603237192238 0.76786286466302545 0.12089305335375185 -1.2734787361323208;-0.77872538982216644 0.9264278486931341 -0.20618940439721944 -0.38734642921180984 0.27156188684212518 -0.96795172215964198 0.01394211059676098 0.078912045301380532 0.03037644450534123 -1.279665900500641 -1.0481130931858667 0.40028322811054784 -0.030335793572350524;0.52909862069370472 0.50613523517083148 -0.49922444018253465 0.43886029186334186 -0.34738969328256819 0.44747886811393578 0.51680873397393334 0.2392414910828029 -0.087073252651463165 -0.74932516743923172 0.70451014685426128 -0.74226710361426962 -0.43358556334187975;-0.094459549033592285 1.6445024634119323 1.7814622489556842 0.76711799721383311 0.70505147612949104 -0.38680821776452801 0.23735911950034619 0.91640797995276524 0.72355478606526102 0.066349188853404406 0.087262102122273616 -0.88303578918709136 -2.2475540641356178;1.0722737763785726 -0.43664130100747717 -1.0057031053614396 0.63909320564545602 -0.7526765533878772 2.0663095496663235 1.5031233227715473 -0.17471296988270058 -0.044054522020061798 0.82583906781241812 -0.18414035179758351 -0.39689998383443059 -2.1026815075099923;0.18329121873373347 0.1726151316346439 -1.0495669573387976 0.31765805465689856 -0.71200117197745694 0.28599790773232675 0.31976287416511961 0.083301339917777578 -0.68197788806773196 0.037202788639165485 0.20964665650832687 -1.0612048829881469 2.2953344082724043;-0.59664301345368376 0.81984932925793741 0.89522026608200156 0.14836534500315995 -0.37652926555364064 0.45002798189555376 0.15618966603190401 0.95756582421666914 0.012168957643410696 -0.15501307171019291 -0.069182577949335203 -1.4295975300950261 0.16401916936946412;0.30716760472520566 -0.77011728529725754 -0.64621544080827897 -0.69696234235418919 -0.034010998504261016 -0.23534024979518892 -0.61602969690347142 -0.7014251361845153 -0.36702788158412697 -1.6354796803733589 0.0062138210723571181 -0.25733276651013176 1.4471981723717129;0.5636583243786305 0.29407994484951305 -0.018043876187487214 0.52633832688451532 1.9279875775982203 0.031923702604053639 -0.72414836659068604 1.462874613305182 1.215886282786065 0.54693998194993876 -0.83923565653040766 -0.84019198541574014 -0.14540733784873389];

% Layer 3
b3 = -0.52396853571220114;
LW3_2 = [-0.50447835687095444 -0.38169763873833956 1.1702524920435105 -0.70296527726945246 -0.86697299709599418 -0.89829801000960963 0.97828090878148766 -0.45826736452009337 -0.93088941290103744 -1.7301818770625566 -0.88351272312115403 -1.1296111847978965 0.85587253621885095];

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
