function [Y,Xf,Af] = O3lomadorada3(X,~,~)
%O3LOMADORADA3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:39.
% 
% [Y] = O3lomadorada3(X,~,~) takes these arguments:
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
  b1 = [-1.8702659107195905;-1.6528270238622553;0.62180999147887028;0.57072040312612016;0.011909258977712681;0.03134911415886299;-0.23476627927541485;0.20120311351432713;-0.63156526153657655;-0.93708328180425948;0.34620568240916794;-0.57282076159987572;0.96253210181265814;1.9860097630884028;-1.3972253237782746];
  IW1_1 = [0.33881789768242565 0.68791966353701395 1.4310774955861194 -0.9307000443428759 -2.0592821553327298 -0.60104726326490487 2.4071008907038505;1.3643517550672177 0.89572305258698848 -0.37422258781767426 0.45277189910096283 0.79056336879420419 0.79799343490538632 0.1177313530264003;-0.51884777187445819 -1.4670452957847497 -0.083943208963463523 1.2963249538591728 -0.32414854226296463 -0.23670388667869843 -0.045774482941985384;-4.6086602801908993 -0.022521629729635523 1.6804002669913207 -0.1859591568816206 0.86227255268160952 -0.58652691335436447 1.869583666520084;-2.3218422205678944 -0.11709251776888255 0.93723374357594791 0.39319758801798577 -0.13322485918901711 0.084171648101095273 -0.80232204708822252;0.88532740282835087 0.69647503051405957 0.76169579456058945 0.93078460286891918 0.29622184930839462 0.01891205692370234 -1.0507169143269801;2.6510819732111628 -0.0085076857283852766 0.1346323219566718 1.1229643187036253 -0.033380866775783204 0.29722873309997233 0.65776055236840347;0.40059719457461629 -1.5378426422246307 -1.2705283691391625 -0.13586419607744032 0.33773183858468891 -0.47147123023633286 -1.0045652648251957;-1.4896933820985199 0.20528214544210288 0.30333632320158616 -0.2683489392777082 -1.6990066736822482 -0.041482506623413046 1.841154404995569;1.1933992060005667 1.9946605156081945 1.2223061071248542 -0.54627132509296761 0.8522966580737551 -0.020986828004172869 -0.011817872167668947;2.3232472412999323 -0.99940005234672669 0.25024627606064093 1.559066166118404 -0.20640065221811349 0.20091817181260579 -1.1854722408420268;-0.84320465570297698 0.81508763810158491 -0.53089156207912347 -0.57711383631288726 0.060137917239538374 -0.0252913980748018 -1.30406439980406;0.96405815632708869 0.2364104740083213 0.53139624088013726 0.17806858628734987 0.13662904795804423 0.0023710211395220372 0.19998600808606329;-0.29042515269227359 -0.4192988100366033 0.13430187236144486 1.619599720328802 0.026768331723507552 -0.17437033545004627 1.3536484015844401;-2.0491758798232862 0.65159943491196071 0.9124640952685833 -1.036817277437782 -0.87967195196576475 -0.84963844478027761 2.0163119461173684];
  
  % Layer 2
  b2 = [-2.0035169184026391;1.5654558052701839;0.66555786278647411;-1.7692382774552089;-0.73311896944451815;-0.66145518587076146;1.3407623248934846;0.010599424886992852;0.79539713616691576;0.42504071722652026;1.5140463809192946;0.9448343807351296;0.94181470008746715;1.3454647920558263;1.6712472073405913];
  LW2_1 = [-0.30332543695750636 -0.16609611977571428 1.1095547867356828 -0.092791727792276749 -0.69771277267190035 0.93973068017151762 -1.2024137322156685 -0.30156106789107029 -0.28957643539672107 -0.19184047404846288 0.16421216050593651 -0.79428251661373395 -0.65060708405250245 1.2285088306348884 -0.58308701457205203;-0.7037518886562365 0.49772306084312301 0.881567842477048 -1.2589364549280295 0.50043961199190501 -0.018648524990216842 0.63809603980865903 0.24670518576915068 -0.99693833110532426 -0.45843573239641627 -0.089377054142546 1.4757309891283505 0.88205671082743731 -0.58139275731091 0.014532783403368221;0.77592252695253883 0.49468883785703904 -0.55090624375079189 -0.22615364973599747 0.34205362645714105 -0.066033766284912171 -0.4383698303857147 -0.64251671909910857 -0.55732305438927821 -0.14526398146184236 1.3290678722719935 -0.87231465650969842 -1.2881039918779131 0.56979919086941533 0.90988177952661919;0.094652149756139226 0.71932622270604352 -0.049594390695652399 -0.31321862776164155 -0.91483691352733332 0.76165119074553134 -0.43549962767756989 -0.015138834561643409 -1.4112803222074592 0.027000488963175823 -0.81105482976008969 -0.047703004338603999 1.7321630041468616 -0.18263965158307791 0.80236429076406701;0.47739411209813615 0.31002042529533025 0.16335046041957335 -0.046187818814462975 0.29290622486199591 1.2495824991831528 0.85843879545841584 0.42748296758299409 0.3857758115699037 -0.520781872962506 0.60755203569678551 -0.16107633513155506 -1.1284761277300817 -0.96346609112415782 -0.076369893244216031;0.34658792508653541 0.46713999640509368 0.4797965408584971 1.2565397119536685 -0.81498559974176821 0.095171344521118251 0.8680072984978271 -0.72087789202470487 0.47418256579842488 0.002924444336822582 -0.70512779364038836 -0.36597214788915294 0.42549780369689272 -0.026625581683307982 -0.25285611239999506;-0.18128847761258873 -1.0017596136441329 -0.8990121482347041 -0.4350317675239786 0.54319415494180479 0.5731757605713752 1.2551338950867807 -0.44586152654903072 -0.65669181514389929 1.3299044081052187 0.53424347999029487 0.64065400584277121 0.70762628359926449 1.6519253683975104 0.72357567139429002;-0.59859140007151723 0.40047583952653665 0.12373911190773232 -0.81605079993964413 -0.59292070272133124 -0.67959706285704247 -0.56513914295046463 0.51863761685213139 -0.54817018378913696 0.90288611980748923 -0.32049195955428389 -1.1731834715171214 1.3756520333672999 0.89934319484669312 0.31948505435440877;-0.66525088421447121 0.29852133312669288 -0.5586764412812667 -0.067333489780057737 0.66620799197021374 -0.72217508371468664 0.27580098116986707 0.81541138127942747 0.49616816516680545 0.67528086153665901 -0.44117338180605475 0.36547490664647847 1.1025875481445784 -1.1468084098953251 0.46279912047806432;0.36865212325759394 0.12372132663000084 -0.92053756505293016 -0.19170468584387987 0.44644670083915672 -0.10999908471913783 1.0572205176039173 0.14392317972833521 0.13252486421686605 -0.79234164929706052 0.3836664056473863 -0.063381884258369423 -1.6859905141419744 -0.04771925394146085 -0.12097251878896825;1.5837975400110456 -0.75970343797130613 -0.7818264435119987 -0.21914915605868365 -0.75223711166827456 1.0922947674704278 0.97948598058731084 0.0096747264347149323 0.42471236667671364 -0.42504236344877272 0.78653974395095094 1.0175940032797615 -2.3927718504053814 -0.46805275978337946 -0.34522746218601058;-0.025180812300017737 -0.45314956474711449 0.19313596287245705 0.44325309096190524 -0.95172460444775875 -0.45885719454185436 -0.60213023303880964 0.52394750470440343 -0.54433518666188929 -0.36877992077095084 0.38169547087085592 0.77520093645540933 0.19837324261954178 -0.86674553337825333 -0.38261044195215566;-0.16385269088825691 0.33172520963881535 0.5456376361292774 0.55783698892632261 0.48295360835456785 -0.31200248953320786 -0.52859909717384135 -1.0106999504754026 0.69534470244230351 -1.0840809728612368 -0.11328446442772183 0.55050054149377836 -0.34441882810608115 -0.12398179561470002 -0.17019407266172129;0.92996285008581958 -0.516882535164638 0.24233433192733977 -0.35362130284347365 -0.15728954861903816 0.63144461424797083 0.27122583649681153 0.032984660589233251 0.74991231737118835 -0.60707513801588131 1.0921143872963817 -1.0120522373439125 -0.093687620977256872 -0.25856742457911275 0.42612650646076045;0.41780033368556646 -0.61125311762720325 -0.52882311992253417 -0.25619453191552444 0.47952377412791325 -0.30928022489350648 -0.87167544731929347 -0.22770061254773499 -0.87365152726784423 -0.60605484748368976 -0.43954992015047512 -0.094186370373792933 -0.033179565406609872 0.112125743742381 0.36079156700512199];
  
  % Layer 3
  b3 = -1.5797603222201664;
  LW3_2 = [-0.99088370131900994 -1.3327645511896 -2.1136673001695088 1.0672366346699831 -0.40893363153696116 -1.4429256639440871 0.34006994281434599 0.91915102425031536 -1.2041547343401908 0.91818920335656573 -0.68061213879850335 -1.0947622036864479 1.344594177082298 0.31305600473907524 0.28386941000945726];
  
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
