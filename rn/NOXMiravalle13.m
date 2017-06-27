function [Y,Xf,Af] = NOXMiravalle13(X,~,~)
%NOXMIRAVALLE13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:28.
% 
% [Y] = NOXMiravalle13(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;2.48447204968944;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206;5.12820512820513;4.16666666666667];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.16392709757136;-1.7361313442620574;-1.6452970482464864;-0.47802013898396051;0.16518974176030993;1.2446935648789261;-0.77434982809002817;0.47444682964632462;-1.1489462379604485;4.140420863205251;3.1886810069195493;-0.33623599546715555;-1.8168967120102768;-2.2628845357832801];
IW1_1 = [-0.041724428387596532 1.7718399832734153 1.0781045061817096 1.0883444429842088 0.57508001815390808 2.1446542992951017 -0.0051335548089032727 0.10493898515537951 -2.6958858964782277 0.47459371953750756;0.0066273541925377221 -1.0465796191945171 -0.62444178162653285 -0.73352155145233666 0.32557023743408087 -0.31891220783668417 -0.032040982401876132 -0.21350212066556432 -0.55259157100563072 -0.23031562239367431;-0.15077066859618468 0.14636399813503184 0.132636990223167 0.84905248107875886 -0.843823923560439 0.50334406808342014 0.030300823653129472 0.70269266816290366 0.8819157007373386 1.0851507821157824;-0.30158804911410519 -2.8053471182163281 -0.22128021409501306 0.29946810270217328 -0.017768666469712192 -0.53994572637922078 -0.2200547663771599 -0.18091993699221942 0.10395805703004549 -0.27580544704795118;-1.6857044245215482 0.93150892845109501 -0.50857079610544076 0.75443474482883011 0.092417199610824438 0.76983017958874345 0.15555545504855781 -0.2516511121772087 0.65962593421533378 -0.51222659970217388;-0.36510379635000201 -2.3042456362945636 -0.75153251256119602 -0.41640087619564708 -0.15694153797821458 -0.99188083088169465 0.6874078031684645 0.2357447136255926 -0.03725284465615708 0.20674300553657335;-3.5763834196970232 -0.15994288325878492 -0.8969828023197417 -2.0419538990288633 1.0338807239337051 1.4909009648978175 -1.6283109812028635 -0.25912661425481792 -0.028970009986203415 0.3417071419377134;0.25940604101789028 0.28415002378135601 -0.46588004214940848 0.095106452214302917 -0.24741704689592864 0.32819095171866031 0.26021071289380843 -0.5974938487277911 -0.40592038804540514 -0.34927640763829149;0.23719778503790748 1.8584321378494593 -0.44813921396777129 0.16008533694020086 -0.34360287620638863 -2.2516263061301367 -0.30516865166267743 -0.59529329420738553 -0.9073602340451199 -0.15416513754613453;-0.17512297788288972 -5.6219093583127542 -0.4796961387555278 0.19744047373332477 0.066379758088006072 -0.2448154170258629 0.13348631449402723 -0.079005291084376317 -0.38615282495102865 -0.11203088597668806;0.96256654239247064 -2.1588551422803 -0.6373231001149694 -0.27204920486291073 1.139131169485893 -0.77643180451854632 -0.14478101610757729 -0.90481541205273863 0.31298612670081943 1.3316400511882225;-0.45159849165892796 0.49674161581814241 0.74263942847405495 -0.44016348657271098 -2.2322754087522085 1.6633118473588759 -1.0679717766187664 0.5127790640290617 0.85884791556525364 0.23806097319851141;-0.49265834979391598 1.3433225013035559 -0.23127721464824999 -0.50472645554878814 0.28219320214531157 0.38934481664435816 0.96063474222713974 0.052634515684654784 -0.23267978123566915 0.041495717514086206;-1.335017581148271 0.20335165624745188 -0.12772375427352925 -0.44029500829260076 0.34298652030171178 0.023799703693338389 0.62052382846194931 0.19070916053521897 0.23490527643787146 0.043219139865160787];

% Layer 2
b2 = [1.6407205000814857;1.2328995872995374;-0.82546666297800941;-1.1888835139620393;0.56233706590925003;-1.8883545792654108;-0.010453005407096483;0.15244094458970084;0.0669418428394295;-1.3114059683632884;1.0105991296541159;-1.5040059507981391;2.1169601937542657;-2.5706823310520726];
LW2_1 = [-0.41660316744963866 -0.83989005469519817 -0.66460586106039665 -0.41523372244511236 -0.095314153492406378 -0.41338636176213261 0.62739266027481666 1.0241489309746488 0.25442909546164383 0.26629182257508727 -0.41835727749000007 0.15473147206948315 1.1621982216035731 -0.044062202885054205;0.002771171251048192 -0.90723734099191389 -0.3763870724488485 -0.31022844737708205 1.2401144345949486 -0.074378923879543327 0.29807467800652621 -0.058633361371774051 0.15415806148528396 -0.96795014897956189 0.3103432293598648 -0.63279006602505905 -0.86636554600217264 0.15168714099257302;0.93958523126362437 -0.34601485005648169 -1.0434996513003063 1.4523812589419896 -0.43775204581402288 -0.6098660344517095 0.039917873623938907 1.1461017188142966 -0.047005911074478379 0.57727443394512923 -0.10958432462836366 -0.2423632824064384 0.13387655120636879 0.74386696719207357;1.1940624491068117 -0.44116511636565542 0.3670659466528593 0.6978270526920608 -2.2116731647515695 1.4351264802585579 0.74411736069763801 -0.52598020478491458 2.379433609027847 0.49587212136106384 -1.3208524627913056 2.0119483073764606 -0.099458264029817722 0.84434403779899647;-0.11976300691164235 -0.023760930523834038 -0.56843597020698722 -0.93685626261464894 0.12821088376865086 -0.10460304497468743 -0.012453832145174742 -0.27038341040904462 -0.97496279186692725 -1.4308621043272745 1.2845551628578682 -0.074993092328882904 -0.36225592737487222 -0.64695411776932032;1.907591438641504 -0.094691143469199296 0.83377208031298966 -0.26732284687221308 -1.6766822816737286 1.5999809900841739 1.9963943799762927 -1.5726831115929283 1.8569535632663901 1.195175686793416 -1.5578397766939451 1.5723093219453208 0.89116336519926787 0.30609038201379873;-0.038268540530939969 -0.16672503097314079 0.071303182344068058 -1.5485622333466083 -0.39179884340526688 -1.7076356591581465 1.0820871226769946 -0.71042472824297787 -1.0676657643459033 -0.3735494174666677 1.4028570137439593 -0.29211490399679568 0.55203211123304263 -0.99010002802740438;-0.77298199832353498 0.13915623205863975 -0.52583739670530705 -1.44384977199839 -0.18320092132300558 0.29821042759642014 -0.015423806437527429 0.12218196032694691 -0.30622536385515814 -0.62977831724430144 -0.0017576422759662713 0.1103791976981941 -0.14014746905457931 0.63459258109000427;0.69583751559742402 -0.044855265275293307 -0.30888937149075341 0.64753263395271798 -0.077825234656423797 -0.77343320805305071 -0.12313013170720759 -0.90364691564058242 0.58715714738872327 0.070596216359229969 -1.0887801373235113 -0.58925263979112574 -0.10508344200863527 0.66848529511788179;-1.1734484476061511 0.058828904519909936 1.2154257828049742 0.83516883176417622 0.21027338091363135 -1.6240970306517888 -0.80752959800092916 -0.80707538262553769 -0.062017909395460986 1.7032282193900845 0.62577008325325034 -0.54871677472896352 -0.36698284299908362 0.78000409082722688;0.71342320442951201 0.58261145491579147 0.59841395362338712 -1.3253415777150668 -0.34162394816946795 0.89832980528053907 0.52417417001408173 1.1106390206295731 -0.96009017466467961 -1.5465021147272786 1.0239469732518047 0.23082908870716298 -0.14672101966336512 -0.35752281294525989;0.45305127415227586 1.2123389271189418 0.97832181615662395 -0.26966866123746852 -1.9704042399366373 1.2328953400038158 -0.51993351140493238 -0.11773283744168994 1.6023221733803885 1.5172856823481398 -2.215861176922481 1.4505960185480633 1.4273626564106048 0.7525267079114496;1.9009279308300207 1.2929798282382579 -0.68007622354507702 -1.941595154313807 1.6617559127453254 1.8253755557675246 -1.6427521235591036 0.60988292486267748 -0.27414667323255254 -2.3733767033440696 0.31735231062372149 -0.18628092784591554 -2.6759333288710279 -0.76816648527424169;-0.48027905339173965 -1.4256071889930404 0.91624450613069153 1.172398306358112 -2.1202162253031349 0.74264420362368 0.8755346212686409 -0.59378734481772422 1.8684756077173232 0.94010345173863497 0.9346060739512112 1.1191679580878089 1.4702496490286641 0.56149297343100857];

% Layer 3
b3 = 0.34992776602140813;
LW3_2 = [-1.4441365737608574 0.30232107302949512 0.4885375240191891 -2.6438489097182836 1.4561450213729321 2.7448152706994096 -0.34211593857707018 0.91485261284225849 -0.33575143447059486 -1.3201187492229542 -2.243793849627389 -2.8962407793144198 -1.2472445471874161 2.6364758233499161];

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