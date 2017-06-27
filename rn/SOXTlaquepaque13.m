function [Y,Xf,Af] = SOXTlaquepaque13(X,~,~)
%SOXTLAQUEPAQUE13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:00.
% 
% [Y] = SOXTlaquepaque13(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.7154270218862018;-0.64479961663052565;0.039392697179863032;-2.0224585639785908;1.2706461869377663;1.1377934965413365;0.85121156514246654;-1.627791044615666;-0.77912444867616859;-1.3038013742281631;-0.60132870948936612];
IW1_1 = [-0.47740193866245739 -0.30520736761297224 -0.43535847446139808 1.1499740787687374 -0.034575220074286747 0.077581224987584269 -0.10829731750919316 -0.63701001251215672 -0.18751184208660082 -0.06368206698784272 0.0047755105251188548 3.6018889741399471 -0.37667017102923606 -0.57481270304962417 -0.14374528331082598;-0.36126604271737683 -0.5225984177755858 -0.92361088730585961 -0.16941771186488713 0.028121670292633592 -0.58298300259507363 0.14714094355076418 0.1272918269176459 -0.95772494573093092 -0.11839830610119026 -0.35734874735721123 -0.51887251463554562 -0.44221072124102861 -0.22603243882955609 0.080475635005541835;-6.3202848037228367 -2.4243405837679322 1.8350224842428291 -1.0855426515167355 0.39749332588437675 -3.1055809117554825 -0.15932624471054802 0.23037159955321646 1.0702807512390597 -0.44059696793538633 -0.56293348671404786 0.73183279767350784 0.63600872235190953 -1.1340205262879366 -1.8630957478989316;2.9512379065922771 -0.21886814296411378 0.15481928759697211 1.5123800972839769 -0.63144345756989906 -0.11199585071438702 -0.94402194904214731 0.87429286077667201 0.12540154933294137 0.3892755463816594 -0.022953128132249222 -0.44110099927566437 -0.27008260034185283 0.30144325158022878 -0.93885071731220449;-0.79607171251550368 0.18085298299975089 -0.49139251635883979 0.62243915237794556 0.26289834815411894 0.22555220001917353 -0.11892128450555225 -0.43035688035373465 0.7125608537367818 0.026328984771247788 -0.09625282375744558 -0.96582344877390169 -0.47091090117646955 0.13749658426646255 -0.11162643685098059;-0.055278217005846966 -0.3691360992962115 -0.43738343893837506 2.1555266988963795 -0.59257694807443251 -0.032190496443669898 -0.85433073154350425 -0.43451558629461567 -0.39117787905378915 -0.032464652656490386 -0.01342815822878287 -1.0074969113636734 -1.1775870527495715 1.3823915580861363 -0.22303616020641553;-0.29511443713805102 -0.36156077948547738 0.82314239313996984 0.99894699463126113 -0.92143903500900792 0.3435386692259304 -0.60366853572180612 0.68515908786570412 0.92667767387345645 0.36953777304395263 0.055600316562166185 -0.31058934466898164 -0.29286642678985197 0.54713757997420132 -0.83064165471439111;0.14876215823351516 -1.2318827368745318 0.13245197144120646 1.0511790494003725 -0.74955378330506994 0.39471268669929388 -0.034613710301183466 -0.57136301971536019 -0.53386786392401375 -0.12044069235498675 0.38210976434047206 -0.29194839065500017 0.13562729413370989 -1.0934449055128321 -0.036414675697253429;-0.72201355000772416 0.089513930335129749 0.50170870073222096 -0.19677622972498734 -0.0061581254466838362 0.18280010182857406 -0.064632461583430764 -0.57928785725956389 -0.23375037767910459 -0.03957939174194236 -0.0086115222759027103 -0.12199428609615837 -0.19780718158779748 -0.4188510887009545 -0.22558306950743812;-0.17496171570601748 -1.2592681088994959 -1.3906005965124477 1.4787478652411392 0.35515637101792319 -0.73403096426599224 0.48776565195692401 -0.48756999017015917 -0.58969688015554944 0.02226185658346657 -0.15741056587504881 0.12154049064471963 -0.052431803462857071 -2.3123449262399127 0.083556763383903165;0.35596072706757337 -1.5706632843117534 0.20409190965294274 1.3094195044294508 -1.2275008761452089 0.46216365339126253 -0.083783926669189518 -0.2745285561494899 -0.31969026401743383 -0.049717126613524475 0.56056091081264225 0.60282392844408661 0.25917724443331325 -1.4034580098663834 -0.081253703611318562];

% Layer 2
b2 = [-1.9278775457825201;-1.2369046711428882;-0.74307230509185052;0.48640001941297384;1.163549640885496;1.3127702842668802;-0.36119047907320367;2.1354632291184412;1.1670336011057856;0.99923125709139871;1.8860602666120263];
LW2_1 = [0.44432052642323905 0.4541297285817002 1.7426746710927976 0.30939972572857027 -1.0037762966227639 0.89618663545709576 0.57242589113528763 1.0424519334284441 -1.2515062166626689 -0.72089213906881866 -0.87686441492210099;-1.3046366172516135 1.0634186648663209 0.35263362762405176 -0.33946647192681206 -0.62341103537687725 1.2874029438415162 0.58093883719326378 0.17366077364436777 0.29562520067036119 -0.16583255596280591 -0.094193327915742933;1.2251343047714305 0.77106877387141559 -0.38374872701877144 -0.80014821311058071 -0.19131646716700312 -1.209068823817611 9.2984440214730069e-05 -0.43345981149986851 0.97796249112657008 -0.77529198438954749 -0.215342554671066;-0.56403941968849636 -0.32854830842670635 0.96320280409108316 -0.37865707377588587 0.71974492128984191 0.49959987473365874 -0.54750108845861234 -0.38005833270804096 -1.6230648789439275 -0.57844512239137447 -0.12220327326906703;0.9943830395172164 0.61199663074544219 -0.67044530810621039 -1.116188859221886 1.1733595663980967 -1.2240936679339716 0.61829703929150526 1.8119602176559988 -2.0431192493218417 -0.56203869139241702 -1.7629304617435519;0.64011994399554117 0.038885913535739877 0.071207026257118125 0.68909699329893936 0.68735940349864044 -0.52391703827086789 -0.59842162661797482 -0.053723863660762733 -0.86019451609460917 -1.088827888244664 0.23660739114462231;-0.49317439521885481 -0.44930613004771636 1.2173201727178222 1.0100278294178842 -0.51955101048461017 -1.0645421733647789 -0.01159178097623062 -0.61293994652211581 0.72624772550115646 -0.59867474033234069 1.6970200503448412;0.86855995231810568 0.48694310078753633 -2.0140894885577301 -1.8154731073822505 2.0417186679637322 -2.0192772738578704 1.9053363015416285 3.8480525030084745 2.5143045271651041 0.67998941053049333 -2.8888759564323419;-0.26990258095231362 0.26484826478950441 -2.7988427601708032 -1.3896534149570521 -0.18280900012189755 0.17724416556178674 -0.33199232213102708 -0.84108338243421088 0.48143851083838662 1.4355044398544068 -0.14778947261346839;2.3617484223449017 -0.72309342788791309 -0.55190768675575519 -0.17974363440030555 0.097007280327201073 -1.5422290116755921 -0.30728952945766175 0.19223182533179098 -1.049068665718504 -0.059728077470600383 -0.38461509724801796;0.30440360679418199 -0.24719743771176522 -0.05067663158449677 0.65960994557325403 0.24016669745880886 -0.5867782855211735 0.17654874195508147 0.83381031096147218 -0.74579250885389314 1.0347229678624077 -0.35776720099477555];

% Layer 3
b3 = 0.90974486982021985;
LW3_2 = [-0.91781590077787856 1.6321689302384299 0.12721887267076204 -0.034445081853523449 -2.0125063944600714 0.34126445745753148 -1.6034922187182175 -2.2689884328114629 -0.56685508891817948 1.3775175871857508 0.39486614393773856];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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