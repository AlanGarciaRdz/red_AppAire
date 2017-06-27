function [Y,Xf,Af] = NOXVallarta16(X,~,~)
%NOXVALLARTA16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:28.
% 
% [Y] = NOXVallarta16(X,~,~) takes these arguments:
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
b1 = [-6.0452878015820932;2.7054676692701207;0.65694372388756506;-7.4871843196078967;-3.1452422587708679;1.20738080716559;1.4922748204270617;-1.184911999448671;1.7742629379533552;1.4233471392384369;-1.778624940177298;0.27316338309093197;3.642898972917473;-1.0409020073335022];
IW1_1 = [1.4049511793418357 -0.6532845328287824 -3.5237854964378155 0.75403823009320536 1.1937243863514806 -2.4905757700526325 -0.74534422107455645 0.89435114466137688 0.066864383219700965;0.2973911114235408 1.9428596553314943 1.936082045481256 -0.99379367846791744 -0.29415673462627617 2.4464753590015014 2.9947636724701496 -2.0920384977979856 -0.48502971262404959;1.0584207933912975 2.3679557279641958 -0.3723144672344022 0.26736126038045754 0.47699273486704985 0.086302817400471535 -0.071304036864985404 0.058501733788698322 0.029314703768825751;7.2081748768546996 -2.1403131160220457 -0.12054883138269773 -1.0937231242534335 0.53070815518905934 -0.11547500609716885 0.92004367004990339 -1.1026971854697594 -0.12830997188132953;0.27817424269147401 -4.2238502743789361 0.78764486518680688 -0.31305784479470894 -0.30706047616955523 -0.21972512068725289 0.12783531170764367 0.29869675035771548 -0.041165679758634402;0.28049638904697782 -4.8302232465744783 0.40973993152975036 -1.1716987469658589 0.85841578500183369 0.31628606074186949 0.22836431880649885 1.3411830788825825 -0.05344458316324957;1.2723357967635456 0.40651914932364769 -0.49667058286890498 0.47743329591836903 -0.46672064661859625 0.54122485802691267 0.17968513354650856 1.8757567949188334 -0.10589151056562873;1.4353684898568335 1.5327612914236242 -0.52152303489961638 0.54761916533120958 1.8854672412890376 -0.36049481551970608 0.13167397955279714 -3.8099399484389043 -0.19207428815200239;0.92684853790906463 -2.0465519585643608 -0.34956851344873102 -0.51746966373924841 1.4578288157980364 -0.712429366603342 0.23881305649212842 0.6131874140549638 0.0067578066985028579;0.3884658239610646 5.1438496661778421 -0.83069011927381031 2.7689159826496565 0.59149622453653428 1.8501725111829723 0.46615027031272621 1.6244758982200438 -0.3568229787544685;-1.5884857235564835 0.96616557198262742 0.085118803023628314 0.22212983625839203 1.1977245816294837 -0.067155511038536841 -1.0073808826929793 -1.7210698528076824 0.082327425577080504;0.46336961819824957 -1.5303626084615303 0.15323968724114603 0.43986903734879534 -0.52452868426661903 0.42933645329063796 -0.060043775801721468 -0.67320382345838214 -0.11150278114859537;-1.6388294845285878 0.57422250542933395 0.40117632904298561 0.93485716234028338 -0.51289219625537685 -0.89811123245222169 1.4697366050570595 2.1351873147794911 -0.67969714029835404;0.11198454286038725 0.68745887485221302 -0.78239036349946556 1.1451754322512713 1.6470820085121911 0.50797284486876315 -0.69408510097039355 -1.461699421389415 -0.075522283266051399];

% Layer 2
b2 = [1.4659415562162639;-1.5861655805322252;-1.1079663293027737;-0.29123490174970745;-4.0617661311257276;0.37607789332465102;-0.91687311492305146;-1.9380320975826049;-1.2978742093398095;-1.2037536265256854;-0.96507923606806501;0.47154721340990857;-1.3008813123373053;-0.53463561486575406];
LW2_1 = [-1.4236169256914029 -0.024396141251792479 0.15209845933861832 -0.98380388085142534 0.66670084412879127 0.12766150216288769 1.3656124059144619 -0.29649747117201863 -0.73893616049503064 -0.68911470584257717 -0.42404151759714825 -0.7878381251438954 -0.65526158945835589 -0.36881843197695968;-1.2370741040972693 -1.773483982160607 -0.90997971517252119 0.57525748888517159 -0.47098555410408993 0.46011824164325038 -0.59143881480178206 -1.7349304459219224 -0.98382997514232229 -0.82241761739358932 4.5115486404650227 0.37480705613717213 0.2189098913890285 -0.19116167076682145;0.38179660630086837 -0.43379201970136716 0.98537752208390117 0.38138222442552183 0.59294808965259049 1.2118604192932936 1.5439793489667415 -0.37230007179980645 -1.4818038244266813 0.16446610125073832 -0.22493186832982418 0.19645503050768826 -0.83680064629072359 0.19185607410983357;1.8970141244996099 0.59481208015225318 2.7283229690586315 0.6559818721109032 -1.2106751918177989 0.69407122935444587 -1.2699915236924215 -0.28359812338030138 0.59605193380213639 -0.59762356752276358 1.2260930508363928 2.1719270139700066 -1.5263514132364111 -1.6091452302841456;-0.60603305253379114 -0.089926350714990111 2.831501782508933 1.9100514361188103 -2.7512819462266771 -1.4026868906588608 -4.3438377526690219 -3.15943791083075 0.84099523596485914 0.1128313119561842 -1.9498600109350777 2.132794910902688 0.22311865163461522 4.0001484002539591;-2.2265460269130841 -0.82293162751876037 -1.3543508874053365 0.041862869231735406 0.95182736505461718 -0.32466788518697942 1.3845913542242694 0.019198051809520032 -0.7572851919530792 0.10076313841794915 -0.64307988993449727 -1.1988819761950051 0.94352341171249976 0.53406951963665972;-2.12249463289539 -0.15343341662289442 -2.8029736898117252 -0.70829285553691723 1.0571520520632336 -0.65866862962398365 0.90629693581043291 0.24609533515164128 -0.49752926323287539 0.62700647239141472 -1.2090620572474715 -2.18976546418908 1.9017363234776468 1.4706361334935398;1.3071728431433467 -0.8349154935008688 1.0483413443978156 -4.3627393920613367 -0.029336187966571413 0.16471555862937504 -0.78838999531556819 -0.36282506216339239 -0.55947227949119449 -0.28471631248537616 0.033988360716180915 0.24227062280698397 -2.0546328430984659 0.50872596929229208;-1.2530467469182993 -0.16388077312586583 -2.863860603118344 -4.1043165936890258 -0.069695061203825723 1.3186683833270991 -0.49546430214347592 -0.22649415213611734 1.0142153249604444 -0.41058122462109137 -0.87820668678638047 1.2158543250382292 0.72195858755873465 1.4285974308078946;-1.2885512752470301 -0.19338686126480015 -2.0780836156115639 -3.6036913186611841 0.69442239915725135 1.1600949236101894 -0.95376601218532531 -0.27399126423440212 1.0470372345903856 -0.36863186864311814 -1.1686145045373362 1.2241694373218326 1.151310475801911 1.53755267745105;0.11383828471592068 -0.49638292727467964 -0.23154526579538093 0.43686383568488651 0.28945612557267764 0.3336852811051515 1.9024927397070441 -0.36941539675648816 -1.5929030134068394 -0.074060631294896484 -0.27142458198157526 0.06468635615668536 -0.82044579514037996 0.51947225343566461;-4.1008885534515009 -0.9457801289697817 0.9540458488153255 -0.005126323323361489 1.0511525154247943 -1.3161049413450985 -0.85120617029799839 -0.45582380244621068 -0.66482023780020838 -0.68457239338955311 -2.1166720269046095 -3.0864084644261278 0.8483866625439942 0.084838030737162118;-0.20991240735443284 1.2065247921132396 0.70092740276262777 -0.44616363661362446 -0.46735082971493147 -0.99349562255143686 0.96357270876839629 0.59058171027642992 2.9766651022336497 0.41065178818120823 1.0507792372860392 -2.8800619130982397 -1.738089219607637 1.0479077697453263;0.10296385035353861 -1.194684103719633 -3.0070244009651073 1.9948004929829377 -1.1517233466551517 -2.4259341898636673 6.2672727505611965 -0.15432406133816981 -1.3553239422181005 -2.7579875414212451 4.4589046894177438 -1.1275692888486795 -1.1540189550017885 2.4941617711649986];

% Layer 3
b3 = -1.2035911258745309;
LW3_2 = [2.2171569980870554 0.09516079701097678 -3.4302295403374865 -0.8504652300645531 1.4841894493266425 -0.61839568895955932 -0.71886686521977183 -0.3346458621001801 2.2310392182809062 -2.2901936117337751 1.8360744663274857 -0.90771129488851532 -0.040582772015850657 0.9022119285954856];

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
