function [Y,Xf,Af] = SOXMiravalle6(X,~,~)
%SOXMIRAVALLE6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:35.
% 
% [Y] = SOXMiravalle6(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.0208986415882968;90.9090909090909;0.056980056980057;0.0063552589768033;166.666666666667;45.4545454545455;117.647058823529;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.7259053129033641;-1.4548537028895305;2.0075756296560048;1.6708305556498602;0.16930428284312352;-0.87419648789268933;0.54827712502388326;1.8690767395308427;-0.72584719127495823;-2.4845655416952446;-1.6336695859732231;3.0810418120455472];
IW1_1 = [-2.1139157478973796 1.3601363843716758 -1.9863136050282892 1.2545281895092621 -1.2815499439294489 0.39406721404026784 0.12250378123743094 -0.058195328435452783 -0.058395473997778488 -0.060080630852714381;3.3700393694612107 2.2109682034160749 0.64131977474989355 -3.0459317632012417 0.78089536757344613 -0.16119522290741434 -1.1691257585285231 2.5920034758645372 0.65843818509182261 0.73937553689645985;-4.3002301096173028 -0.072207600407695222 1.14682271352611 -1.5220283197255977 0.46997028045980582 -1.0987123351147181 0.15133624471341806 0.16708440005396005 -0.03246547358755375 -0.35687143666030152;-5.0348189675077055 -1.2249107671838404 -0.33512906709398221 1.7749750069402273 0.3484149295415862 -0.082899731356847417 -0.047161481343021637 1.5008391606617342 -2.3009181450972704 -0.82857571454690537;3.4764403430736581 0.44721378832167541 -0.23001812978431124 0.42439754535246299 1.3115982746669812 -0.31046066629058938 1.8922728408550586 2.7102770323305765 -2.4227562795694766 -0.07393785892527252;-1.5291208425130467 -0.12069853194675995 0.87648710966068033 0.3778544951968747 0.24081386016659995 -0.68239699061119563 0.011589530974135067 -0.3584412171061771 0.060496793452621114 1.5474210909289272;-1.4470800218715105 -0.59557756788406335 -0.95671054799869992 1.7716336752167505 -0.20830295097127477 -0.54725692784490754 -0.73170559925728385 1.3324825337801529 0.56880068921526805 -0.2046659595488815;-2.765423213772654 2.763191759644323 0.78986908570102909 0.62590175268581361 2.171883731428605 0.99776122932974987 -0.28751755452535555 -0.06342280557900272 -0.24071616260874529 -0.35840029632364534;-3.8315813565575487 0.057987334880081204 -0.74377606144143638 -1.9669921125665564 -1.1379738415002265 -0.080567345498298276 0.31266020314850906 1.0715782339916675 0.26229168958507593 0.375169434364791;-4.265875971702954 0.035946349776019432 -2.1681801290989648 0.82373398497706507 -1.5984287964254531 -0.96371212126188255 -1.8949870098964894 2.3916787252661158 0.41999877617321485 -0.48696516074927698;-7.4581224260482486 0.7352601232811059 0.17645973504784729 2.0542101479072636 -0.31707843807181829 -0.092959975827046709 -1.8097030815046267 -1.6414757232547033 0.07397288402206656 -0.39866094907170208;2.3021114550495487 0.024555724953509286 -0.096661569851815801 0.56220649495251651 -0.34827875127931324 0.48854505791279168 -2.3420926318040594 1.4927000813410407 0.64146855401104264 0.082115580057394055];

% Layer 2
b2 = [-2.174135454092577;-1.7012662623059065;1.1649000876719777;0.17143715574044122;-1.5786662663328039;-0.51497200722383241;0.76166239383026246;-0.30449290507056331;-1.3757082296669279;-0.7019578932466437;0.94231660060448552;0.96573203676878461];
LW2_1 = [-0.059751096128582884 1.8249836865407607 -0.3189518406262058 1.9505109335538988 -1.8660134147648835 2.1486685947777593 -1.6082958831825525 0.07784582036562146 -0.28106339662215268 2.1032643715740265 -2.5681371846936734 -0.63285483842695778;0.13346529570352378 0.39172143524067249 -0.95049920090897622 -0.11974370295944578 0.20806006851078496 0.6002067185148755 -0.15105878326766406 0.8512033431041649 -0.43591973491387948 -0.17476270263734447 0.066920707899865678 -0.34808451256937278;-0.13579357698302821 -0.19375479102764054 0.52106866235950489 0.85978224563816197 -0.54007076186492031 -0.85098656467746414 0.14135513115242512 -0.76131699976349976 0.087578564572648551 -0.75498968707440461 -0.81345838144665461 0.85312804648509399;0.63827964536075654 0.32433923993467845 -0.85127362963360376 -0.86394531492485271 -0.39875636616140731 -0.97800203025616994 0.094680820994864384 -0.78916309078795366 0.25131457911091226 -0.66578972238861933 2.1807719325819614 0.65299847521691423;-0.31846449534039573 2.0816754080743758 0.029732401521157116 2.3464240068041695 -2.0995513602368319 1.4785456671970052 -1.0402355331454853 0.2333203047097907 -0.62634917494580866 2.909878723831798 -3.1637774804899941 -1.2175996938135187;-0.70185563163243447 -0.36336975200849653 0.94891299295373865 0.88354352973063466 0.53575527684117752 0.88725933052618988 0.015642188241085923 0.87943131104482886 -0.14008339122659816 0.39544254986450655 -2.2666138631310244 -0.54002283868803957;0.35367151138919783 -0.095879629984413642 -0.93831028211191314 -0.33017439326045861 0.12149340213069475 -0.70067675078822178 -0.20901603144699393 0.022394928345542776 0.60551453931982946 -0.99664945370361357 1.0706441116696663 0.60099477951239344;-0.24098395437518808 -0.5799337107817184 -1.3645007239465523 -0.0019031850561847391 0.33542563080347504 -0.098584769556491536 -0.10539725359611297 0.56292504320753134 -1.3615428296695218 1.1007968803727828 0.086414912323302784 0.54469638804471787;-0.44809316408009092 1.7729981750670896 0.17743152526587208 2.1696897858238944 -1.8317914523482257 0.98251582253734671 -0.50831061492157148 0.29802939075622153 -0.94711898714309739 3.0025709302504082 -3.0786032565295902 -1.5098167488011247;0.4862149949305794 0.79407666797047005 0.80849166490238322 1.0974703726725319 -0.90031529516781916 0.57062513647165281 -0.44792850329908285 0.27593217264083469 1.5602575133068459 0.085198566267525921 -1.3833273941923976 -0.072255351118772265;0.1312554962308484 0.31098970198652198 1.5552133718170493 -0.082255392831939084 -0.057418192255807313 0.29519529095380281 0.11240940377615423 -0.17504657341830648 1.3300456606665436 -1.1454696175769428 0.0077669254886908075 -0.91152705299388204;0.10534664799564913 0.08300590713823626 1.7429201312975122 -0.13651423808919072 0.22586250527747148 0.85020797938055559 0.022268356335961328 0.058165026974976206 1.2828043748563058 -0.63650342259747017 -0.020754253246942529 -0.12243051289363861];

% Layer 3
b3 = 0.58881734757241722;
LW3_2 = [4.2373415368386773 0.15227133535966925 1.7064826002781142 -1.5555520141919497 -2.6046521474227657 -1.4293364347471806 0.43111733668533098 -0.50533023417777478 1.829882733809205 -0.14108428135209292 -1.4749941763242356 1.1253795848352597];

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
