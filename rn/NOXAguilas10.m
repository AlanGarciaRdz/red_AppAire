function [Y,Xf,Af] = NOXAguilas10(X,~,~)
%NOXAGUILAS10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:12.
% 
% [Y] = NOXAguilas10(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;17.8571428571429;0.00666000666000666;0.02;0.0561797752808989;0.00588581518540318;0.125;4.5045045045045;2.48447204968944];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.0110358589714954;-2.4690075911611453;1.5718932834772081;-0.61126791890271315;0.82520486803132509;0.046614331325045721;-3.0077637132174;1.4329037462923147;1.6116339297134785;1.0617882165992951;0.11536982445674716;-1.3323918647385984;-5.4599837072480328;-2.5700854268830713;-2.2050417059933678];
IW1_1 = [-0.47570448721715197 0.042090638010883599 -2.5576734573881708 2.7753434274199331 2.3889335671315095 0.2789356488483985 -0.17207658389674363 -0.80434827800770359 0.37268034739959277 -0.38090547060321106 -1.1573755481461627 -2.720143813199293;1.0620666683341122 1.1045126795146465 -0.3823637979513374 -2.1550982876770499 -0.52324887782597962 1.6749184203583503 -1.5400904675640505 -0.92720424082676955 -0.69968069223134732 0.38363432120362251 -0.16896589414649271 0.25411579625744063;-0.98443797046871817 -1.3482925548271376 -0.11239793772387494 0.059842869829879533 -0.36573684767194176 0.12593520772768321 0.0018392609999925156 1.1768745541552417 0.27001718941295444 -0.094095676084263224 -0.2208445772938108 0.29151536634064057;-1.9391373808668835 0.74511158220140339 1.3334689176441807 -2.0460537618979306 0.49096676550421708 1.5570900874710492 0.27657576538313228 -1.2797101031474651 -1.5829618384488042 0.004314836564217106 0.39321409206594948 -0.059116714348898564;-0.93448820139576327 0.82681444826779338 0.041198315524350451 0.40465069054321562 -0.60081441843803307 -0.043023012109068212 -0.57656554456659515 0.77134136356900762 -0.11569054602617961 -0.019580121424139129 0.0029769835362792219 0.052678597682327716;0.23300484779832165 0.38418391662422346 -1.0259544800406755 0.096637676920515531 0.66976799252253283 0.70159653392599441 1.0800285500407734 -1.5539486873121058 1.2701925631581192 -0.49986968792543368 -0.73244740432532029 -0.58492364307790534;-3.2210219225100829 -0.92451216491693333 0.7532796328928596 -0.98039547024726659 -1.3564118040626927 1.3012028625038039 -0.67274028029367428 0.37827458802680702 -1.3107041543554039 0.66973370024849277 0.41439325258741683 0.3451296157999339;-1.0498516355433556 0.77499491005196619 -1.0026472347875239 1.1340277408263628 1.3900692568945088 -0.45970708860727683 0.1343796203465259 1.2664718816043978 0.070058649798181785 0.37123998605812225 -0.2936077349344588 0.10349631326945426;-0.27919526777199588 0.044961357770798099 0.36218728794522848 2.0994119474767916 -0.81693134401569067 0.31276618395948474 -0.55470904288841472 -0.34623975233707854 0.12788230032083711 -0.17176724835973739 0.079076983188733227 -0.055318938635908532;-0.082542726527802923 -0.35734680797667628 -0.39196216145920565 0.43298582890865411 1.3453722026469468 -1.0136513448101614 0.54167492617685742 0.17156576333115586 -0.45125957107549658 0.84275024581059654 -0.17304867508679025 -0.34146776437351439;1.4265416748553985 0.031125373550804622 -0.45637132273311254 -1.3256414384680801 0.53315817676277755 0.19880400958114799 0.6298787750941458 0.17357108831112111 0.1950477368930055 0.015135817408352906 -0.41474964539987758 0.47476381361114489;-0.12283245295822169 -1.1630771946257084 -0.22186826418656461 -0.10786858094810682 -0.25649547959891816 0.32414996259515533 -0.35031564765798195 -0.048268158230695135 0.10972471773556916 -0.22641211302724323 0.003100487170085567 0.083604374269073342;-1.8379482983269844 0.18343881857179273 0.36000672645059384 -3.8653115460568386 0.59468935518193933 0.12364277734640582 -0.34704374768185453 1.4991651327654401 0.24834688416243014 -0.080217914919884586 -0.22790439586247332 -0.044053694987595038;0.14638532242025923 5.7357377977622299 -1.0218711442226522 0.92119233861694383 -0.27299457402419031 0.48829381766307001 0.51556650435069495 -0.092889109340893228 -0.85129455016253752 0.45440126068200892 0.36458252302216376 0.4319527233714513;-0.96944561169613741 0.37006900403699355 0.70191023569740452 -0.64938050480623155 -0.1997617932702811 0.54509040157466626 0.17043320905542977 0.2686272242032744 -1.3087205869566938 0.029817095380625946 -0.36544971513767111 -0.11715768789783984];

% Layer 2
b2 = [-1.6684856530336807;1.2963366495514648;-0.71536904680576585;-0.33680667635163786;-0.19568082455129418;-1.3243921823358229;0.12608198621081368;-1.1824629068167583;-0.50448291428300573;0.8520544626169323;-1.8225235074009629;-0.90580759408755851;-2.0364285129809137;0.49919140244051541;-1.1817208926922782];
LW2_1 = [-0.17101142161925198 0.40541813292199236 -1.0765205194318768 -0.22551937640737507 -0.12391305665857398 0.52204093280849539 0.79669483582630729 -0.83004627240202922 0.63250884449607236 -0.35661370830110295 -0.45259191318052694 0.2652754582474981 0.47393366855239744 0.11231606694239116 -0.14773077420341099;0.10452310364918269 -0.14837825222734036 0.034703333862730015 0.64323942555404501 -0.5524328432120309 -0.13625603820212123 -0.2075112115387269 0.55759538192448799 -0.15989344599064759 -0.36868788461147378 -0.5117667695900312 -0.15715787237746126 0.33748033930747418 0.64001325819840305 -1.2330108713251366;1.2124367345446403 -0.29324517523626692 1.2414953152566117 -0.23609827645730763 1.5064388533530049 0.11844099455524371 0.71158144216448682 -1.5151377257822181 -0.20075040001052949 -1.2155533358452206 -0.86522865309390151 -0.6863921147986014 -1.2801312027937046 -0.046545068617681248 0.33163943652713868;-1.2884613698737768 1.1053748518304713 -0.29880734855799618 0.24050382881666646 1.1153567542415714 -0.51132687500478524 0.7074462498714158 1.5955271133085518 -0.63287254133277027 -0.42679004452722025 0.8608873975973611 0.70251113024682788 0.81622456179100633 -0.32999983384033726 0.7425308143770335;-0.29983207075753543 1.2086277953530653 1.8315859045222513 -1.1065687268009907 0.26048813565336104 0.050209601760177608 -0.054792446834482866 -0.26946147120910496 0.77385272792254411 0.71261746999889364 0.14774225969928872 -0.14717870353315829 0.46100436478039664 0.13385823534863603 1.8510060945449045;1.3301481959460129 1.0831428815583597 0.79515355836702262 -0.79237486666286139 1.6237689591851736 0.89536566477260038 0.0050876158889298501 -0.3641574193502487 -0.68287167781185998 -0.091827989916629993 -0.63276955486778075 -0.40333482700876566 -0.68579048950267663 -0.7591362124480393 0.74390041199624557;0.6566696906272167 1.6116419344796995 0.43471767205486245 -1.2404490035267663 0.54343835091083881 0.58950593635457693 0.28580098307970869 -0.39645261482883409 0.18257239965361757 0.87545312132469788 0.29981444059692625 -1.448119217578252 0.029167720479922866 -0.55926387150553691 0.38693187560062114;-0.46314562147149141 -1.7444416729308592 -0.084765815412428586 -1.1770638472497563 -1.5590773959856825 -0.3049316131630711 -0.57224852335298981 0.52114052440701109 0.3626188044105228 0.6601415643072337 -0.76027940991546239 1.6716616487364222 1.4205349236679981 1.0744103017765916 0.97830735570391514;0.11170858400951424 -0.47987948260068342 -0.99590503536737629 -0.016922787338353822 0.13573937443022582 0.38796172846134214 0.54986190027707937 -0.24158633915020039 -0.16754387914100574 0.1738119618664174 0.56895403068643891 -0.16266098112546523 -0.28676108122241617 -0.910214562379831 0.31763733051923387;0.18854200004288663 -0.93426650668736577 -1.0019032820014639 0.36493617257315514 0.55230987791872455 0.12340091748770568 -0.26724508839113903 -0.52618939906382056 -0.19669561256009008 -0.27276105346427482 -0.24795918129471495 0.87816669006363379 -0.7443916426644096 -0.10236871997692962 0.024679138037310592;-0.11309831328789795 -0.46138089898597479 -0.89074582797327195 -0.37462667005803546 0.41114502484104543 0.80995539252572746 1.3506891314459151 -0.11971832308787929 -0.63454248209691344 0.66313961016837197 0.045382988739499502 -0.78076645895107566 -0.65359968099057075 -1.2606333020012812 0.19294980717569343;-0.8405889332811548 0.31885594633794179 0.069149587904868318 -0.067946786210067389 -0.66021311535157312 -0.17124932303586141 -0.38524396201686184 0.55849876887044381 -0.049267188189009027 0.9514235930621957 0.42246976290602656 -0.063307065634330542 0.90107737226577145 0.15486780124503199 -0.60895108757931671;-0.6547958447018648 1.9644630021765415 -0.95324755358837154 -0.16100186134947389 -0.34231553397920944 0.19963361040869443 -0.88977029058262835 0.030424499052465723 -1.3671125064929075 -0.24840164771169027 -1.0598061561413581 0.047167559034576062 0.51478439456691361 0.29051937079274787 0.93003201995931983;0.78146077187187946 -0.59534444348976967 0.63585134863869108 0.62656960225421632 0.72613378102315218 -0.75584183599181476 -0.53664564626277178 -0.84557850517609079 0.14437902147234849 -0.17631962017142722 1.2441961765880631 0.047664444340606307 -1.8956934659310822 -1.4396148907763553 -0.16992352082491546;-1.3904798334104211 0.38447310213985103 0.36270036334184769 -0.30793318771190814 -0.31680017320894993 0.5560560212370157 0.4095705827993687 -0.059739947631735985 -2.8005254965835462 -0.40787745503183609 -1.7519681774000617 1.0876404230645222 1.9414025227024689 1.0383968628193945 -0.87627349664903254];

% Layer 3
b3 = -0.7539413422056821;
LW3_2 = [-0.24946519810458651 -1.4459784023389621 -0.55894895695272329 -0.23499554281390875 -0.5515470367620906 -0.21309971745938394 0.30393405718767202 2.3302654105379768 -0.9478334022970446 -0.84147257900184769 0.41064274910562104 -1.0728799468828165 -1.1508973283312129 -1.2055198413261261 -2.7623376977732277];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 5.42005420054201;
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
