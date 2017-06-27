function [Y,Xf,Af] = COTlaquepaque2(X,~,~)
%COTLAQUEPAQUE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:11.
% 
% [Y] = COTlaquepaque2(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;14.7058823529412;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;0.448430493273543];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.6939203769644116;-4.2352394568402572;1.7518249458074464;-2.1831317424799916;1.3178316327959914;1.3572483198128873;-0.33878116080775089;2.3762818975668534;-1.0970956734788035;-2.3021310146146878;-0.9288555990586147];
IW1_1 = [0.09175724511095415 0.64476092830902498 -0.0043865668861910135 -0.15130440430756592 -0.10865434708449559 -0.098362441577813528 -0.16563170963427129 0.019868292950242332 -0.017489465580456543 -2.0232202519036555;3.7713943730083153 -0.96713124266549433 -2.9752634412929271 0.41412700268564323 -1.7687217555750319 1.7561062303307788 -0.10805833034988724 -1.0886903222978599 -1.6359925186192898 1.2002266329503428;-0.24332425536455832 -0.59343129396314465 0.18759444573604214 0.64566573695420226 0.54667385974902971 0.1213294478220594 1.9711803548651465 0.12303490405206671 0.52813243872336346 0.34226078269356042;1.5311782856201184 -0.20280447114683819 0.51767492584490904 1.0078319050500606 -0.98399221296642503 1.6717546572852722 -2.3407764801696596 0.68623012567921216 0.61250012617643057 -0.044808362929247628;1.1306216155436752 1.8646977513615335 0.71548841304849542 1.1290522026224077 -0.43378556875589752 -1.5960637157678381 -0.90119186344327618 0.27203648104379141 0.45489137172307237 -1.8452191878510245;2.0294136650151602 2.3478426423604577 0.14454436296484494 0.23776139502659774 0.56244842055785982 0.80264100072627853 -0.20089656581645499 0.03495995978479214 0.34233975555934276 -0.23771072958631034;-0.51829401467667924 0.59002965403137941 0.40497608318893624 -0.52502164493945636 -0.51545762199833878 0.39940380038542844 0.4029135421401418 0.00024146491158681628 -0.34374254046214059 -1.6521664930162951;0.10620894348888399 4.5389417034680619 0.14162748540002043 0.20792233087030174 -0.072036662239006802 0.9897649482162727 -0.12343041078574858 -0.029164877163604871 -0.073121404718277494 -0.35992364975399038;-0.054776324003494664 3.3012993023338173 1.2505837865681584 -0.34997965159780303 -0.34048261742275987 -0.38386295614052407 0.048079662325091338 0.030465498690816301 -0.029582565687667626 0.33539511344316819;1.5941244648604251 -0.41402258937239089 0.56062521417865729 -0.46623411399439146 0.7850278050730386 0.16949257496921319 -0.49375207316441844 0.49207688686689505 -0.86538858871052593 1.5755127506846105;-0.34227853764443256 4.1805192787846241 -2.9540390351854677 -1.4135430367565038 0.34535561664466702 1.0570407703031965 -0.21686662463430514 0.67957868402946842 0.20354804842869625 1.2279937204382234];

% Layer 2
b2 = [2.4705972967579219;-1.0118371985017887;0.74145278627837286;0.47912958434697323;1.0592345712031674;0.9454745081127347;-2.2862202575073742;-1.0732401948192734;-5.5690688482641599;2.2050406432770253;3.4694776314951241];
LW2_1 = [-0.98197335866241553 0.65867702712467513 0.58505679196838933 1.7399457149468196 -0.5411152313859604 -0.60278501509783278 -0.38419191860158985 1.8728958407121212 -1.7010653488883551 0.65743701289921408 0.29731396083303735;-0.92067435548947696 -0.62849774329691332 1.208047957690529 1.7494052717476372 -0.12919020903776285 -1.8698383448827667 -1.5229916213301962 1.1970128540032725 -0.043366468813455163 -0.87968642048681722 0.58731364424691568;-1.0474396427902681 0.074114364588558607 -0.22658967466481517 0.22414718586426913 -0.19169637759939887 0.058660836655341338 -0.22087979917957187 0.53131715104174682 1.1090375254408131 -0.042327411580187796 -0.86596885407290836;-0.23309264192065146 0.74610807917141442 -1.0065300823443002 0.50738957036738264 1.2086912441865776 0.69132673502848185 -1.6816064837599882 0.033945386960509222 -1.2626463395887966 -0.22764113235261457 0.62336828261309118;-0.35048661311913593 -0.92921670894537545 0.32104414154439159 -0.16142995635544366 -0.78042343453605456 0.43525494587686253 1.0672532585921817 -1.5326278539908293 -0.091923026039457914 1.345742835680847 1.7107888264802953;1.0635847473694044 0.82027811230988479 -1.3623701016621101 -2.1438192672059739 0.36702804428805147 2.0084657077583357 1.7210590554087277 -1.4329632763248918 -0.1790391279636 1.2509759953809254 -0.50529664225367943;-3.1323279604086331 0.21426818297750902 -0.16283745403855859 0.75981791642112417 -0.53417129314737766 0.49899605914991346 0.97849092999597442 -1.9889626104685245 0.26959559876151673 0.50370764111267308 -0.40146227523483097;2.2751898346435753 -1.5780069768362881 1.0683772419366704 -3.8605823752227404 2.1322826404571278 1.5725925085075942 -1.8112302166854057 0.1062695656195943 -1.3605123900973133 -0.79203075009573143 -0.739527408809739;-2.818736870345393 0.24880125508556553 -0.10119774873064791 0.88637272181766091 -0.56444645579862984 0.45790350890183912 0.90412081993149507 -2.0912078954694162 -3.3517431195774412 0.60720973954454971 -0.44157202550218133;-0.43788225161881394 -1.3187891549519009 4.6975895906676275 -1.2754652961242801 2.1395253689104639 2.0671368153575704 0.58338130074614569 -0.35133224547132136 -2.2356812364317067 1.2074146307973608 0.13143570799318549;0.0048638616750175563 -0.43379083509854466 0.051547653720516992 -0.33560779709698074 -0.0074881488293638207 -0.061735564544141003 -0.2933409642413819 1.5011357357273478 -0.62053854187292734 -0.050862047843594771 -4.3735154757999997];

% Layer 3
b3 = 1.4051917671190191;
LW3_2 = [0.32659251997687799 1.0592060476458587 0.4254640058040865 0.16502398943878485 0.16732466223052853 0.92367983627830919 5.0952966173140233 -2.2916572709327996 -4.9895067674131868 0.60550485547064703 -0.82813335565783108];

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
