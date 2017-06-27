function [Y,Xf,Af] = PM10Centro48(X,~,~)
%PM10CENTRO48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:08.
% 
% [Y] = PM10Centro48(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.8056406102338678;-3.5896812613294515;0.4578812490760974;10.262260222971957;-0.36676619859426374;1.2321282769819637;-1.5681432946602929;0.94828573618305034;1.0145432764198039;-6.8137306294057831;2.2152188604691969;-1.74328244943508;2.4045530704239764;-0.21185696801403248];
IW1_1 = [14.861940353445732 -4.1023902814096509 8.0460961973577696 -4.2197955875093269 -3.1737186991082047 -4.4496494946124514 -1.4493905393887421;6.1922840759914362 -11.060717631273169 3.853402189360998 -4.4598575182610958 -15.949190728516774 -2.2367919686635864 -22.920736600375704;-0.31942259273053464 0.23786903245653923 1.0856989283258702 -0.048284094201262583 -0.49813054538265206 0.41856520210033449 -0.21303402186456691;1.2395144985286777 0.62587732100901483 4.5266044623280282 -3.7622663843106223 -1.6785659040277647 9.9421306226550268 0.65320156226192605;1.1721538761659136 0.15733057805476086 -0.53172583526507933 -0.33825738183040982 0.19512593575515094 -0.84950574706919424 0.20907741763785362;-0.14573364204440159 -0.042915548405224824 1.8353393305539005 0.3465563264790173 -0.80537671966844093 1.1799856822327706 -0.75192569700337564;-0.61264273982535089 0.23796571806522207 1.549454318527681 -0.21680353499520269 -1.4077443111422143 -2.9743443050924059 0.815732467669955;-0.30175169551348591 0.49134782249430936 0.17586475594736228 -0.033202755270091644 -0.00077528869299876152 0.16769873101554256 -0.13031649751999422;1.3447236119041091 1.0917971603064676 -0.051394012313610654 0.4295068571451221 -0.065417196796248731 2.5278864815083462 0.83202691244613225;-0.48084166414603929 1.825259982122952 -1.7972502549161709 -1.1677783404580504 0.10140101890093803 -4.4704016129612061 0.40021058675716686;1.9836334873743711 0.42466730814536202 -0.052982885523642387 -0.84139498540316537 0.76854296910824627 0.92344282871367123 -0.15715754363536069;1.4188129570176338 -1.1427825680004864 -0.76514531720939383 -0.07037013051440251 -0.085802342857121836 -1.0407257812698254 -0.45626685196417838;1.4594043489499766 2.7250011459716785 -0.56277837677337361 -0.99859637862919715 0.08286172228763003 1.03332732581911 0.36037554391877996;1.4663075921500552 -0.73041348664731098 -0.90943702828564832 0.94008986627509172 -1.0661739057254396 -2.3645894127214708 -0.065913442265057881];

% Layer 2
b2 = [-6.4525909307483778;4.4439229041459605;3.839206770039715;-34.888351788621307;-18.294059420143018;26.392056888968522;4.6150684118894629;7.2520769135980681;-1.7383264963424998;20.240512589292035;-29.998697034100264;10.641368548409231;-8.8519413912130656;9.4401120384684276];
LW2_1 = [-0.49905366144373858 -6.6979324430172378 -4.2175759333638876 0.83144351520900805 -5.3505693553092168 1.0822435945580544 1.1835948195341079 11.500599963954777 0.73324403208631928 0.17660221690045655 5.5838992407235075 1.1541310734614292 0.29634715759568797 2.1311004071060382;-6.7943116890353901 -2.550881788803478 -3.4086898556188983 1.5953829147512328 -28.040408159950495 -3.7589449574701255 2.7208403049583754 1.7302828501893908 7.6045048497991887 -0.35344422113436574 15.752851506327511 11.517837516057993 -0.85178999986981396 4.8634593480943948;0.38467829272109888 15.772825610932337 -20.229416023874833 0.88498666763442257 9.1584553072772827 12.344596367761035 -1.2681842397127325 13.7164879334508 26.349642196253122 1.3749742911621714 -7.8032464208559746 8.4192141051286615 -6.289880132778662 -6.3285341648964346;-2.0743652053972834 0.4666830770030283 -44.029078816677874 -1.4810429090760375 0.2637609055275788 20.61630591951684 4.9277122639873721 22.654363724995221 -2.6605069914184543 -2.7934926828843243 -4.519190812130681 -2.6584353004301771 19.335694433504514 -2.1632246937315269;6.1317424904112539 -24.572920508754773 -38.867796286624895 -5.0828389258621174 6.5697191258344283 25.064061183661767 -0.69811431285987846 12.566394657587033 -16.379404452235654 -4.4360741220235758 2.5515002303018779 -8.1325393421570702 14.814267243727691 -6.9107690556587809;6.8529598234940368 1.3921059853978497 -19.133949942787861 -27.964673702657038 -17.36021989843282 7.4127508503996893 17.723242657733667 11.972107897843312 6.9341184132190286 27.639188845914724 -48.628354543357851 15.601258587460535 6.0284411369346795 16.99085250197248;-17.560619991427131 39.097338212144329 -18.702829382627904 -2.0472953549667885 21.798971295730947 -9.6432001456719245 14.186843660945977 26.384681954101318 20.087502038844761 21.696319483617621 -5.9288494259621736 10.631792592175113 -0.46199066780957038 -50.404402086556395;0.19242614251740098 29.143731813077206 19.407868359370219 -8.2968984658034728 -40.608566481758515 28.676865307651134 -7.5568365340895571 11.272656408904217 36.415152423005821 17.234669024215556 27.040948505710769 33.614415225140874 3.6111620657622843 13.848495376845356;-8.1879983091865238 -8.919199381177803 -18.611088134694398 12.369380586534239 -0.036059422595557937 12.340360916089693 -3.8270267775314828 7.2205397423497066 24.036359334696371 -24.384465983511213 -0.98865249386471266 -0.70825661363335179 16.774043734182438 -15.208183358970295;-2.4192766544229718 -1.4996555235189417 26.302007664151095 -1.2580153283086459 27.036553203848182 -5.5732112581007858 -2.1113497212508112 4.6389947287873587 -3.8642454766211434 -3.2733964335221266 -11.859176216785361 2.2402073526481012 -2.4495115960130844 -22.817270848194692;-1.0549742768020252 45.820975284408696 12.537799981028234 4.5443852704597028 -5.8013207740684924 -10.078434714350697 -1.1755068949451555 -16.91219514830706 5.4253863764947141 -0.54549144814132577 -1.7520360425101467 0.79241299471386539 0.22886739087692223 -0.55902505603143049;1.0131686550532293 1.5422613956926914 6.4165136903643969 -1.3589780381039944 -1.6339597998073387 -3.5472081497144683 -0.1513546249014775 -12.154612807836754 1.990986841918625 -0.58104120527656866 -3.1388132656181842 0.28824800762979708 1.591865070223708 -0.078891878162271306;11.067770287028996 -20.441950488019955 6.3966684660123789 -8.113868385830413 -8.2818340476857486 2.0462592751772326 -11.760092655627199 20.085312212827152 0.52147191240445567 6.6541668064775088 9.960296134319389 7.0304655960926228 9.3825750863341284 -10.321011915159358;-12.141773669112633 7.0960512989723039 2.1640778536562659 2.6985431349216942 10.771602350741516 4.1879171475189816 10.871582546033943 -19.247437773963089 2.8092706325722729 4.1016073559270669 26.020206755477609 -4.6252773690281526 -14.184809020383801 -0.074333076988600241];

% Layer 3
b3 = -0.7045291906646286;
LW3_2 = [0.21121259021439701 -0.060156380333246967 0.032754334175172935 0.087598618395074684 -0.048672345383451311 -0.028299088085134597 0.014707000466262776 -0.020248851186094079 0.02360324205562879 -0.07175465675862859 -0.061508298524645053 0.12534384238039339 -0.059909444876390112 0.031463198398593711];

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
