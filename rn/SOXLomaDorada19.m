function [Y,Xf,Af] = SOXLomaDorada19(X,~,~)
%SOXLOMADORADA19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:33.
% 
% [Y] = SOXLomaDorada19(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 11xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;11.9760479041916;17.6991150442478;0.00572573718866304;0.0175284837861525;62.5;0.0546448087431694;0.125;90.9090909090909;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [-19.960076205991893;-3.5206184516347379;8.2346764750763999;0.014542797454837223;2.2918769279218236;-1.9437560951772908;3.3523908852512299;2.9015425873188332;1.8808854651049298;-6.0732313799446356];
IW1_1 = [7.5963543239491305 -0.49077084000988258 -4.194506625746504 -3.6676839393359488 1.7120164478428752 0.3451229354865169 -8.3321418576336619 3.4663994004726741 -2.6216944609985182 -15.371604850408612 12.152598220768667;-3.7874168562699739 -0.030560214950692461 -0.024198173534298331 0.13639838522644518 0.9528597191209307 0.19465978810063581 -2.7958801046233028 -1.0146015216646069 -0.31147587629020096 -2.0445879311283717 0.32018033993427514;-6.3371449757490872 0.940220163680902 1.8864632931264476 -0.073657750446684711 -0.091908693243948181 4.7453070008727529 0.83299478968598439 -2.3212017309322257 -1.3430022721299548 -0.94220848013859337 1.6593591686912912;0.54786071910495715 0.88204940110353136 1.3942918897391701 0.37672101357301574 1.1879478230827714 2.1960318932608582 -2.8369411092059087 -1.3032887217649685 -0.58177259557878647 -0.21052764772803698 -0.053029992320452052;-0.3811436656009935 -0.39469383779504563 0.056042627891676022 1.1535663656464361 0.22882722855494755 -0.35941567146157338 -0.066855597351682811 -2.4572251977276918 -0.32612521493423102 -1.2240516570120215 0.34349130494299962;5.2366196522112869 -1.2958042856580831 -0.52594328317506789 -1.4980040178840521 0.22813644534515437 -0.52841083495654761 0.80741470870573162 2.6385972652329497 0.28048424735000771 2.4440461206486952 1.5887610739001894;4.9962550940184878 0.10148004062586045 2.5961775860594591 4.7801224493717527 2.6404060541621566 -2.451683866959006 -4.6648558871510444 -13.716009214414374 -0.025257421722134039 -2.9398690995055246 -1.2562498800312776;0.3512613019091515 0.0025170830352977853 -0.51193630632169407 0.27423256245726069 0.27886783339089249 -0.97406271231860952 0.17386834398232451 -1.6699187119605488 -0.067488111748116336 -0.50791525062209208 0.68721413309605806;4.485845999071195 -0.16475853942861288 -0.43227373820185483 -0.13018922720719123 0.26020032585512959 0.59923035384232715 0.40774459518773382 -0.1213847217137837 -0.12243059260862049 -0.11777554121712072 -2.4153110015574257;-4.7405519071152318 -0.081061855819024503 -0.76034568425386317 -0.50758233234773631 0.70394670891938471 2.2707412669904068 -1.734881572069324 2.3816501618970407 -0.5448474804659178 -1.1529186272858882 0.17780983654487026];

% Layer 2
b2 = [0.70808823553990552;0.37063494734868102;3.0139337915153201;-1.2480526852243561;0.99605023226394085;-2.7420813631826366;-0.75353764551467495;1.3182679004176741;1.093353289642135;-0.37633014881785276];
LW2_1 = [0.6131994706070335 1.3080681988903771 -0.51342485598728793 -0.33218192991641637 -1.0770335279677659 -0.73838808560094504 -0.42044305124198944 0.83853494747595547 -0.74984677597677973 0.16368898084797537;-1.8795581147639278 -0.45864972302952839 0.30448696632249345 -0.44927488721701753 -0.98128242758264661 -0.18441915556878793 -1.1910460049319647 -0.45696775248261706 -0.14614084959432669 -0.41777142222491553;-0.42788281814600804 3.7178157210464393 -3.5818855581287998 4.5965096236297924 0.057288375247924093 -2.4313934816810741 -2.2565280635883971 1.5427351947627725 -0.71480208655828781 -6.154269707666618;-2.5358093324862323 1.0493194641777059 1.2946550209387651 -0.37327099113885953 -0.5372349468688149 -0.95869677205237336 -0.98531190340688979 -1.906844535063327 -0.26145943984814962 -0.35668990380955745;-0.17852884451045697 2.5151415894550206 0.048809728622767418 -0.12972050563098964 -0.084916291194507609 -1.092870939011364 -2.1224674485807751 0.37146214813449613 3.6934724161952546 0.92237670316686737;1.7743732524550548 -1.0801300480803682 -0.53846292798072071 0.57142690738565449 1.2572843305171566 -0.050141181896809169 -0.19013674125107236 -0.73326014890564262 -0.51665557095175996 -3.2098822012554429;-0.13717618859820821 0.23185720136371107 0.320784138409407 -0.20924061310829492 -0.6386323036301973 -0.4847469859899593 -0.522336313032424 1.2875823938612994 -0.20338604294879817 -0.17278489956561141;0.0068910106775291226 0.15828860079049722 -0.42757558517303712 0.28241942896362626 1.0232450248397618 0.79828736977519366 0.76141486954100257 -2.0656750822889984 0.15106967903980367 0.29087693612451238;-2.2984783081533529 1.2142082905462011 0.61242415743523049 -0.31547407867361504 -0.69548398247815735 0.33834862542792177 0.89098067285781357 0.98947878378287968 -0.3179661520199828 2.5109020908160455;-0.36068393438033969 2.7751377908820682 -0.064712002573854371 0.024165913654530552 0.28856325111147385 -0.95315905733381723 -2.3153252706628198 0.36032497745023884 3.7110809182561102 -0.43733540668704018];

% Layer 3
b3 = -0.65401240081389567;
LW3_2 = [-0.35257951183523145 0.65998866335073114 -0.3509314873060263 -0.70135406500245689 2.1873912198694114 1.0521917984423443 3.4241469083055582 2.4123215413423513 0.32638853705012877 -2.0007731475056838];

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
