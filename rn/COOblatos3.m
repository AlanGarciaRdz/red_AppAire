function [Y,Xf,Af] = COOblatos3(X,~,~)
%COOBLATOS3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:51.
% 
% [Y] = COOblatos3(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.7914686204776373;-0.77182566286733445;-0.95609387254294176;2.0074094899303945;0.6311947855044816;-0.8817770051861572;0.00024223431783609081;1.5160171406861185;-0.44019747244551816;-0.32358139553256293;-0.68880552921047256;-1.5159405885467891;1.052624657746984;0.52193762374370034;2.8417636651607601];
IW1_1 = [-0.27593895225166248 -1.2012417036325567 0.31815203251415614 0.70107082088158557 -0.43324769060357154 1.7333891150640297 0.097415468391760782 -0.83341385304091364 -0.017262225899199225 0.277396377872271;0.60112131408539093 -1.7074438827073155 0.27493403719222143 0.2624611401974597 -0.76896700293498887 -0.40902390147437367 -0.21960251380055884 -0.91394104561765988 -0.092359886751960704 -0.17385388445914318;1.0966106125412234 0.62155343067580804 0.03548755442833737 -0.27144932593880094 1.3380627894783559 0.93527041129393462 -0.14601016564446537 -0.92249699390796169 -0.1195929147344518 0.095677699181352022;-1.0654024464205865 -2.5962923093987298 1.0894089772622 -0.16747807635820022 -0.7045342981822329 -0.3277327687221383 -0.22110732568501856 -0.76739889300826436 -0.10951233561596584 -0.38830225725653628;-1.161242500333501 0.33278328744555996 0.90700502822324325 0.754883920831802 0.57041882814433409 1.2774401464880412 -0.52571214493478169 0.31922545612155928 -0.37912763600881105 -0.22383197787772263;-0.04363463831278877 -3.9947148635549272 1.026293997211948 -0.88023162898591267 0.89484305422673627 -0.22996314362091291 0.31890329868360645 -0.36317821665101069 0.17023000739007318 0.28306884937069327;-0.47403254319401839 1.9700236182535233 0.5247700109481136 0.11942749543026934 -1.2184029357956498 0.073199808138975614 0.61371495533120823 -0.75941018358387991 0.075599567104113585 -0.10560947328659175;0.89350886067547963 0.71373139443276146 1.4646770389337895 0.20706948144550782 -0.27355148358342685 0.44282315194334149 -0.013535535879584396 1.1309508775812713 -0.053115591213651545 0.14142348264507351;-1.5600216084238983 -1.3454707525979555 -1.0643337463973723 1.0474280739062596 -1.1734650102327606 -0.28722191678589964 0.22432635166601017 1.9019556739094425 -0.23216763535783735 0.93035934589950608;1.5839510623064812 0.83461771933156359 -0.61647162168894076 0.52261100028869367 1.137415345036028 0.35849538196069519 0.89753000986992615 -0.65670581539183726 0.87700611744793844 0.551379704034207;0.83460060454315721 -1.2274627714255639 0.34877073458170449 0.38390886819957576 -2.5832356457867305 0.30570343002361317 0.91817952180679197 -0.21355459268779658 -0.37960947802326261 0.10041106204591679;0.34761197974726321 -0.93141104886051251 -1.3247913609759241 -0.36509823572129319 0.55208261446828466 0.025878580705058982 -0.35287470381385788 0.68133896278989603 0.2445877753913587 0.041453502200392511;0.70289741858371646 -0.25626127495189155 0.75946488463166284 -0.59933775249389487 0.48808352593163828 -0.90960021175658368 0.54757770080726209 -0.25643701940687424 -0.96741988848417926 0.32370598092689928;0.23183931381274536 3.1921718641166783 -2.7911971405571898 -0.66878803284132282 1.4165484494967642 0.039250760538327323 -0.5063253348647585 1.8701870097059534 -0.043815008112981696 0.085471460820031667;2.5842037450018709 0.60570657004743833 0.31169659992330417 -0.55615071094478674 -0.89815960448303866 0.56504061760425106 0.99712617762685851 1.9058934088385073 0.61927425856332097 0.15741967880369861];

% Layer 2
b2 = [1.2836791545566417;2.411371051124052;1.1935449961899538;-0.69321023563439854;0.49493330713198602;1.6505789689318122;0.21877536799625888;0.033298418064921204;0.77133595871781468;0.54837330062247736;1.3608224136459031;-1.1511231629078291;1.4702218738481454;-1.4103736349517642;-1.3728073293723033];
LW2_1 = [0.046140960222795693 -0.43863972206463253 0.82614344112468607 0.29924850310786749 -0.6667070654910443 -0.093182591898060746 0.73937161586030908 0.8239339591801671 0.4237051223210952 0.26831797232722765 0.28551972494777772 0.33207555399188815 -0.047863931660300965 0.76551262924086783 -0.044890492006426683;-0.71126144689949145 -0.8778167082781988 0.2312811292372921 -1.2682244911200815 0.3985541922878087 0.49587252184354069 1.2491152681193647 -1.2625823501026532 -0.11051879854385609 -0.3578858085898739 0.13140681587751846 0.46870331386216901 -0.16191128023874146 -0.47568687960085287 -1.033698862053011;0.41668418166027432 0.78183603552410796 -0.70807374899027753 0.43140636916548653 0.074577873539788647 2.1703604592525219 -0.19524540147351477 0.22568329425438888 -0.10999366103564776 -0.52626103358554532 -0.4799408159448843 -0.0073348009840706885 -0.2113587588303289 0.56838454443137465 1.121865192454309;0.13521354371041097 0.14864076666589848 -0.32540929498791693 0.023692040516647112 -0.61497937478288311 -1.5822375217387699 1.1854469655404272 -0.59923546452588416 -0.53312247054173567 -0.49743537319296588 -0.21013905392693533 -1.339114348647475 0.14110066514651659 0.82078600439859006 0.19587256211668999;0.24389967794620207 -0.40716003070587953 -0.089727924269372469 -0.18009856895614246 -0.001966047106905313 -0.20108876437035225 -0.75866310021090433 1.0483632993287577 0.73255032773004325 0.97496692352804848 0.73566094695339179 1.0274549056608639 0.049268430706052656 -0.54623076197244669 0.059567648299097997;-1.089594482884374 -0.060157872515749042 0.86441140967995633 0.46624086192192976 0.015971901794388399 -0.9470070957324328 0.57485229009776628 -0.72683427338634898 0.17497041889359757 -0.75526951717907409 1.6470612702060925 0.94473578711184247 -0.57947869089438075 -0.26447579282942035 0.88678603713967019;-0.10647400893806969 -1.062492863249529 -0.087094791309190692 0.07230190430503057 -0.5171744527215838 -2.202061949733527 0.35875864275322789 -0.92131311797610549 -0.34189382320650591 0.090445304584415992 0.25813013588600048 0.14877155121519359 0.50305407890421006 -0.76167839405885718 0.013303364287183286;-0.58279953960793252 -0.79119348061763184 0.94766444218473689 0.13498753070003536 0.49523382552946738 0.031736852847702758 -0.66041676457363463 0.63180192518123446 0.55573461421658787 -0.71641039760202996 -0.2854541091936067 -0.06594731316740314 0.91736256724405885 -0.47555349192391083 -0.28835185239645178;1.2326148594013384 0.39147983512294848 0.54415698320641182 0.52093333898036032 0.70679028502244801 -1.7384027622760756 -0.39418617785862609 -0.21099545772082093 -0.087548114398147303 0.27824443463127391 0.16103767282276696 0.62329448412544086 -0.34144936327003977 0.29636804664249961 0.56986046554851599;0.56111184398682845 -0.61698531019836633 1.4516068315696331 0.021069003174024596 -0.43495657612062966 0.51260408540323021 0.83407684848810515 1.3363939252727812 1.1154263665260431 -0.87028277775390506 -0.94238855172336589 0.86629014650380154 0.035492745230209746 1.0607232834417257 0.25058257084869706;0.82481965860693218 -0.31177131688767168 0.96762450163825076 0.25909491332116735 0.53190967657497767 -0.8086956083789395 -0.71198194788907698 -0.15498265047090298 -0.038002797777820924 0.35366460340376327 0.68992368944119775 0.12553622550919277 -0.36756319890527156 0.33807637107762961 0.63538740031828611;-0.69153349479283899 -0.11377769417041622 -0.61417119935625486 0.64320964962885452 0.38751131677057449 0.41087473802437663 -0.30080603087974056 0.26728469567732305 0.30663991505662452 -0.1966720225669247 -0.22787037100805307 -0.35949448556320124 0.20044718245147128 -0.36696905506908706 0.10928188693937224;-0.4884854023249211 -0.26760954756266447 -0.57520354336834956 -0.83600935104703278 0.60382713760072293 0.21500395382091447 1.6170015958076047 -1.4007551049271831 -0.17517804526025008 -0.67042012630141989 -0.081193750283297256 1.0346662206072272 -0.014666073607257919 -0.30445489995029096 -1.2122837266421702;-0.69223407226936673 0.73796450676299152 -0.53799424374054294 0.84466629861600817 0.62317820963411308 -0.36428061809277684 0.66784983608195403 -0.34932194695987695 0.12079077589758966 0.71514568979031656 -0.30827719945006649 0.30609796175838383 0.39605911991743886 0.020362399985706391 -0.33718446760591203;-0.48571876386498125 0.62424525531772401 -0.064738234804837105 0.32012803238351661 0.25306420492788351 0.32005937746950347 1.1698544171720535 -0.2071380716985374 -0.01373789540962787 0.78809371998097999 -1.4777810001902727 1.1351506415079491 -0.34660488813565771 -0.38099243719684761 0.19477688412144178];

% Layer 3
b3 = 0.51793213355206635;
LW3_2 = [-0.6729194350078479 0.56807680143013273 0.7451719843729433 0.78301747955790779 -0.21941838737624786 0.33628983238373877 -0.85217343801555334 0.21516260490868974 -0.79036673878333374 0.26142215057128826 0.83987224680095574 -0.50718149674642621 -0.82598831401642636 1.21605346372078 1.0289547064356186];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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
