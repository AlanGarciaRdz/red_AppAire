function [Y,Xf,Af] = PM10SantaFe5(X,~,~)
%PM10SANTAFE5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:33.
% 
% [Y] = PM10SantaFe5(X,~,~) takes these arguments:
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
b1 = [7.0061929828210108;1.4457579671092613;-1.9180576649720926;0.3112714832497222;1.2392284191668828;-1.2597740728101487;1.9767530895829974;-1.1467404750626555;0.08919594894730877;0.57639112856468933;1.8546059449750343;1.698904038951319;0.11096338865924858];
IW1_1 = [-7.6141424268717595 -0.24331734356742835 0.11518914771895226 0.70642073093622693 -1.2586636429361719 0.2933985843333583;0.035429539190714787 -0.53086343485419429 -1.3842432999977594 0.91631853438122146 -0.55578346496679976 -0.55077699853801321;6.6204509087397136 0.36221238359388147 0.83581173617928128 1.5052989614780767 -7.3386980906442734 -0.58562412490960492;0.010016977002804975 1.1994054555170641 0.48172817857508926 -0.60077504985182573 -0.046296391750385094 -0.14035955246183984;-3.1822155695331755 -2.6653623717401431 0.97908332886717031 -2.3714746803490749 -1.3789510877895095 -1.4728475755898289;0.21100773845106713 1.6366367009821197 -1.0613117178584242 1.1288250178558437 -1.0961827386853957 0.93048908010829756;-2.0460321241555506 0.3566845756100695 -4.6008627788867127 0.59456718562786981 -3.2199794568615552 1.5889016968253717;1.4708535215601748 0.91932219627578826 -0.87425328444677819 0.36271866955479037 0.9567775227134373 -0.31413697483998754;0.19593886754624226 -0.060447798186969937 -6.7352262410912669 2.8941064935916416 2.1585403965098728 1.793862364364941;2.3468537873689512 -4.7127177708492001 -0.3700387065411771 0.54450403022884553 2.2799086302870841 0.20181911401490366;2.3368119191880834 -0.66991066737906979 -0.27715146358669246 0.53225882788832413 0.16313941755787043 0.35046618392866108;-1.6883016755295415 -1.3155495503551058 1.0663689665128055 -0.024841740380220363 -0.90081282438939247 0.21458160546740618;-0.25447258941879186 -2.1240257916682874 1.1973530845999507 -0.9321172498578213 -0.81780467182784577 -0.35625349143674806];

% Layer 2
b2 = [0.55400436653067386;2.3705744450374757;0.56785029756397332;0.028526376553757643;0.45147704899574853;-0.29020850256395553;1.1844089832639297;-0.41078844430199712;-1.3484622867573197;0.20673749975299061;0.34652215432196642;2.9843547637259618;-2.6764093630501433];
LW2_1 = [0.83078083143330128 1.0606868596517258 2.0220726602574421 -2.5618694140700558 -1.1559157176667507 1.3704833754165122 -0.52220038906112698 -2.9491683191259579 -1.6143973336531678 0.19335778144018881 -2.615692551490433 -0.041420691175859614 0.13380923023916669;-2.6273752508506338 2.3924844727617658 -2.6279114213524721 -2.9954864337157159 -0.75749856334867849 1.4064326651947592 2.8319461045294472 2.910219150402126 1.8073339731810627 -0.67975136323716046 -4.767066874926507 -1.0784367268966291 1.4371386753516444;-2.3043847459103719 -0.59828959439571894 -0.059851254851138486 1.4381723465859815 0.11165368246406397 -0.75700715425597276 0.65886253373397485 0.18926748794398399 1.0394421353594336 1.2218337843215641 0.11155333715608991 0.63958570064944387 -1.6633022106585313;1.6211529542974661 1.1014693334204839 -1.2382785881452931 -0.1281077356131598 -0.29648389628322236 -0.83329093734839466 -0.65361279468347877 -0.4571705743410317 0.11321153929970451 0.93436726370276224 1.0987875146401782 -0.19003558685898733 0.69492118431464722;-1.0735966977651954 2.0101065499029129 -3.1194342442382372 -0.40016535196515535 0.94429549236533517 -0.57856010037924266 -0.31686803663032859 -1.9621575023549207 1.1231137450849249 1.7401773074466864 0.75774630377554697 -0.12478292636256916 -3.6125702250235237;2.3987949893761411 -2.1254557537898577 0.87155343178265765 0.39126680457441154 -0.3128280036871145 0.3118931604815926 -2.1387149665827696 0.017922072039747612 -0.6645485011596709 -1.0023132901887346 0.95792395189966284 1.2087118933286256 0.096151988192234222;-0.88444435042056657 0.22736063840673945 -0.58290562595665074 1.1762868109883036 -0.0011139338822653798 0.55941022641190385 1.4014726731557436 -1.1625112210606996 -0.13183730296357044 -0.04745902521693908 -0.54625765899961165 -0.041147762804801147 1.4245780521219924;-0.24923556662665419 -1.1901104932588045 0.61078819271225704 -0.7660416121772553 0.28728182887313247 -0.39884853255112507 1.6699570140166426 2.2795841042335403 0.037193011825903011 -0.014386018910287908 0.96339333110855119 1.7919404937918157 -1.2446519003655918;-1.9638791530497886 -1.3932806138041498 1.1249151248339258 0.47285296635235652 0.44357421906718536 0.74970233022552291 1.8121711264666027 -0.69723022177468541 0.007137444017695331 -0.91089634245374784 -1.0830076302642908 -0.63261957301011229 -0.85081773740830446;0.48353008265451874 0.55479966604974795 0.68892384422527819 2.5091469302122813 0.31670502970528325 2.1038319182397816 1.7334374928945184 -0.99048891359335955 -1.9904507807571243 1.0706220612751762 -1.5338214700595021 1.2614246404000122 1.7509402799369491;0.8689960375134731 -1.3615678076328892 0.77126659812181786 -1.1808519394843409 0.25049496940246579 -0.19356051966435528 -1.070373547397645 0.12242330266411514 -0.49015050731772319 -0.47693979226758737 1.3533563122610981 0.72354655833833359 -1.1493961833617077;-0.05273442249850728 1.9767106542159658 0.25878811734271734 2.6728941200270455 0.53195349257501934 0.17663202063720201 1.2950842496900923 0.83263579736785098 -0.17890198829351067 -0.57415913507678162 0.7231592102399601 0.57889286853168009 -5.3207265585135479;0.29210963306845411 0.067429345240024641 0.57563693462092169 2.041378537961859 0.56086861261754961 0.58937418854420631 1.2035221092034398 -0.19229399467057828 -0.49612548131486156 -0.68986748027983047 0.58038571805696382 2.6651565958858874 -0.66105586974153951];

% Layer 3
b3 = -1.6845303667552216;
LW3_2 = [-0.10811098587178479 -0.15719969558160601 0.24665130132307778 -1.2690195286918149 -0.094500837017489847 -0.34613077203349052 1.2616673778216698 -0.89254951059645815 -1.2094035440919102 -0.26665129046623998 0.86559253894402421 0.39493661329193092 -0.42305224995896995];

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