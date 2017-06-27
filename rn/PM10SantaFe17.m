function [Y,Xf,Af] = PM10SantaFe17(X,~,~)
%PM10SANTAFE17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:35.
% 
% [Y] = PM10SantaFe17(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;0.00341273633199099;0.00632111251580278];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.3645212233593857;1.0177581982398434;-0.25285821371194206;4.7050399677358579;0.068711600495847236;0.94183626618035576;0.057482458495173326;0.50069203700913367;1.2480757588555316;-3.0915100228864847;-0.79590046296203232;0.43265579841790458;-5.291866191498638;1.9411188856205792;-2.9243915921542958];
IW1_1 = [-2.8699016567069098 -0.093671966254088856 2.8228433749512991 1.6428029104606328 -1.5381240521792363 0.56498783645481909;-3.1164062416525482 -0.00328064505566019 3.5886922781017763 0.58399971449920451 -1.7232952720410499 0.54940757595465894;1.4290665560109619 1.8130849244012639 -0.87951894339573178 0.78889135581770919 -0.08493412605705683 -0.11331493585493795;-3.0234580392219534 -0.30527484454694881 0.26232688208110599 -2.3134938407130297 5.0927005410682362 1.5133531258218926;2.1361662390379528 -0.38183788143868236 5.1624437575849793 -3.6852221858749141 -0.8357702580796158 0.40184232011030374;-2.7101820685945222 0.84783495809240694 5.1427768406096623 -4.7188879196952884 3.4607180756642988 -0.15528238199192318;-9.2053261262588606 -0.28833725052622944 -2.1300774923384074 1.5625735736440052 2.2809100144492325 0.67263099268056736;-3.0769019521169017 0.52312310916102345 -0.13669863628703777 -0.25405734282648784 0.22626852084692395 -0.25113529640690568;-0.90002872476698381 0.33401625356253845 2.898877691190489 2.6482137067807541 -0.52213496897273337 0.25016797311065819;-6.01703493505567 0.28597540521570153 2.2690914510284279 1.2057282675127223 0.21227590738305444 -0.56379150786099841;0.73717129105731904 -4.2114624215121985 -0.29502166494793003 0.08161782555852258 0.97077948306399164 -0.28626463108992284;-0.65858737421687219 -1.832379125610387 0.047198213063522954 -0.76901653316214991 0.71907881421849207 0.29994825772743366;6.4776677874595325 -0.62236003764182013 0.59672694781292102 -0.14998187424335158 -0.35935066469372157 0.034315002148768203;0.095511034560593094 -3.3014083232600844 -3.6593600500845955 3.6463233039294445 -0.61721229109852704 -0.33511271229501077;0.31078637476832705 1.1930162431454876 -1.7275302056751434 -1.7140720067463444 0.77913323440636018 -0.14549625745174874];

% Layer 2
b2 = [0.014436035790900872;-0.73735149478495021;-1.039564215435488;-5.3543279303952049;-0.72337933937716625;0.74880951647732985;-1.2023958229927603;5.0248553534857967;2.83699511105559;0.014343552709644592;-3.1333952329439132;1.4751302214840938;0.89849551614891554;3.2506141357095122;-1.0130836416470552];
LW2_1 = [2.473390150083866 -1.313626692434795 -2.2797124683683614 -2.2140370709827346 4.7570701607960633 -1.2796543884766454 0.84857005993147128 7.7798245427197097 4.9842640707371402 -4.8410636426655707 2.7292093856370854 0.8364357521560718 1.8570000917102805 2.2008217678460555 8.951698589109089;-0.67856724108284749 1.6862144019034433 4.3174865436279815 -0.15157085195786626 -0.12869156609702556 0.19955549658410099 0.66930226942543691 2.1155355188887848 1.1151765188967504 0.34142512604762865 -0.2971311058471986 1.2477463371476907 0.78049936644200235 0.5305641845593333 0.51499253979732229;-6.070878965490583 4.1220112236425432 -3.7238539786952094 -0.37987571750101784 0.083138168027162299 -2.0112726317915572 -0.49178264828568363 1.2316002611748371 -1.836231481210991 0.52198214658688658 -0.40322756987789105 -1.8181961725541183 0.53947185367332406 -1.1988817338931748 -1.3585506738893847;-0.049034607924442961 -3.0673138102236619 -1.7073764346401066 1.1339101863924557 0.13969799221742366 -4.1223225468365445 1.3831497374469011 0.15290038696683883 1.5179976428507758 1.2274444710231811 2.1976493978898053 -3.7761361236526918 1.4058112447047779 4.3644241400008941 2.2417354514946379;-2.0287821752534625 1.541695178672795 -0.6926462710709913 -0.18701768570986096 -0.42792298645811566 -0.34673391720777119 0.14507161860301238 0.37669845186373568 0.31716464890753282 0.10435726076358753 -0.24359626147910296 -0.055494156035032979 0.98602833628268471 0.7373065015872744 0.54230965122344288;2.5180303088065288 -1.9496474853026231 -1.7646458787514947 -0.45681724226277903 4.209704032450885 -1.8994597943551603 -1.8456793208142077 0.68496573984971132 5.5333660273045906 -7.8723392848802094 1.2660284309267875 -0.069868351312624727 4.1941473439211947 0.62448465722641411 -1.3526555515553709;3.6578399129051995 -3.4228600741395128 -2.9836268018940948 -0.49259130735354578 0.0083902477496421018 0.59662395866484208 -1.9654748838804674 -0.51231115658965687 1.8731111941210226 -2.5719168799366794 1.6590246422111452 0.38144606695600081 -4.7117893934416957 -0.26805831547787462 -0.48231059870597565;1.2278767113291409 -0.95996932524152689 -0.27918510298410087 -3.5835405296248894 2.7042686322907801 -3.6286281588893421 -0.49793239190405258 -1.8827113867296921 0.25152187613499172 -0.93988996549606929 1.4363181033379846 4.0410505607857985 0.2099639885960598 -1.1379760036478779 3.4874496997191398;-3.8199186651181254 0.96895502500253983 2.0742946674000278 -1.0097056614056572 0.0018901078246868208 2.3538703758103496 8.2990917670030466 -6.0475419100280998 5.2745603677436961 -0.8721837097726326 1.2220789791366202 2.980197835708414 -1.9701196323237458 0.67701669323995151 0.57866912049469432;2.1252568023208847 -2.6274525586819282 3.3717585536960186 -0.76148653072904893 0.74939651878819868 1.1533956375304006 -0.51491085987122698 0.92492353592516841 -1.7274256907438308 1.5675262670483725 -2.6595230810012684 4.2128839052487335 -1.6430978259152131 -0.13409648515895284 -1.9109972888249263;3.2175392182450051 -1.2926194018664021 1.5270209304341154 0.52347192619109906 -0.64917070155068191 0.6302646685708978 2.5216753177578739 -4.6413313926046484 0.52306725223532047 -1.7878967772758836 -0.087992407804945383 -0.27743235242068903 -1.5554199345160304 1.4215591283213125 0.92048152163113017;-2.4402948693569035 1.7338976971683859 0.16518148347747191 0.31273758931271789 -0.92294092192451582 -0.26395839171509983 0.93475362828614728 0.43519886914732081 -1.5711100314610689 0.85950166967584818 -1.0675254993044596 -1.2862888757912958 5.3595487124935213 0.2476602841574955 0.13822322188802358;-2.6606263856052736 0.096189817839177516 -2.67632765293411 -0.002247621247352739 -5.151879764751909 -0.44143617773810229 -0.65055267119481497 2.2629922434066376 -0.80996919059665462 1.9166246267838534 0.821430548326335 -3.5728228226503713 4.4918104917199093 0.23806855264706442 -0.78540367180488668;2.6235735713293851 -3.243079045324389 -2.5624780465927501 0.47194980786925966 1.6490250691658361 0.11164690500441889 0.15802574111933992 -0.18569518533360899 1.0918094688182471 -0.74334818328149643 -0.32130689729911627 -0.32169728184454399 1.0488231305040063 0.016597545735714876 -0.17138465961112209;-1.594236808337651 1.4364400458534461 2.8149714115346383 -3.1950285128113141 1.357917571661978 -1.628892276962723 -0.47898195777901403 -3.6017037805899816 -4.5612496987819187 2.5358124114747542 -0.020303566591090116 -2.5164870386815759 -3.1081175003635733 3.8594146366960747 5.5407368968225823];

% Layer 3
b3 = -0.9993346410584738;
LW3_2 = [0.1828031053165286 0.19141176062462587 0.14203040413466894 0.13136292505277963 -0.37563910598585076 -0.075856733875036567 0.14576377340808486 0.080791194992112583 0.060592082580907182 0.25965006633151083 0.16617443449006347 0.20710958294231024 0.042698261243922141 0.24039861510113891 -0.032147618763996147];

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