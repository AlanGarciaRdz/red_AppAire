function [Y,Xf,Af] = PM10Vallarta3(X,~,~)
%PM10VALLARTA3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:44.
% 
% [Y] = PM10Vallarta3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.12820512820513;0.00782778864970646;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.1540915565106837;-1.6353485391891547;1.3705247945635257;0.19115887268433479;0.84645752724494361;0.577627050896247;-0.78523735423676111;0.68043460205739004;-1.2442835337334694;1.2568093337816939;-0.25523426542297123;1.5168400600954448;1.7120180855330425;-2.171923016520255;0.67943561890646431];
IW1_1 = [-1.4363091647653918 -2.4148037455709668 -0.3711289462131323 0.40885303552098684 0.0036167451961117911 -3.3211478445754179 -0.21713166392770475 0.68024543518639868;0.31866449748669323 -0.062298721124169912 0.33314867177963881 0.33662241987656394 0.069378902616954591 0.062733621060002326 1.2685180394094671 1.6503472345556796;-0.26769727058957493 -2.3159931821249273 -0.48795426607687775 -1.7193371020623285 -0.22883624401715175 -0.33855432078656278 -0.26988871765300304 0.7259711457339344;1.9936510510531977 0.50638382594374121 -0.16423006423930017 -1.2763182279120329 0.48908781749770497 -0.021430415592375403 -0.19839595748982911 0.38003575312645027;0.96814077434264234 -1.8527624237456577 0.46563786907389693 1.7426385720317648 0.41067150063408553 1.0413178378820434 -0.28427213218149355 -1.0648067573096589;0.15290934111686547 0.5377315892275053 0.29297159581676513 0.78884144778129817 -0.076595303518461028 1.4417189044537608 0.32765633983082099 -0.13160837556678601;0.31129453560130593 0.51139661613757315 0.26277990532218637 -0.89113293510124281 -1.4611257122317158 -1.8218582560460437 1.6763302135854121 -0.40043320303080915;0.22723549169577553 -0.074444187554699864 -0.045365992817428577 0.21282263613849542 0.85197844813670276 0.14500738199262586 -0.11778041406443754 -0.10323009167965974;-0.76176626419341031 0.34764982482709061 -0.22911301271223208 -0.91744226531561879 0.7702308289027533 1.2812200110053589 -3.1315661246703641 1.1126672744921051;-0.61594263190817478 0.17474501139990939 -0.74197862257605918 -1.1277991959330922 -1.4539177766199483 3.4117140493516311 -0.091792818019939618 -0.096064925322620953;0.044064916063958362 -3.8747937554931444 -0.28000444505461869 -0.32754074340620931 1.2234454761233291 1.3131230461856132 0.15418337867089263 0.10757893249540455;0.17737750532493685 -1.5669163367746239 1.2485798698785959 -0.11100090082974572 0.63334387249123514 1.9314912970992215 -0.0074508751976882035 -0.77182075807787187;0.63548867473383153 -0.91055722327077393 -0.53533539283881992 1.0350262213139572 -0.03255716429227646 -1.6541910188495508 -0.4360649984227063 -0.52212320495149589;0.94526739850123853 0.83561017172752516 -0.72101201235006807 0.23596005271699544 0.2471864049443733 -1.1782622010271258 -1.0366752230360916 -0.76785508841710026;-0.056302618642450328 -0.13739752885104697 -0.37115306925070679 -0.41985920287432654 1.072642616039871 -0.84015602629879693 -0.11701710141048545 0.040325106992507534];

% Layer 2
b2 = [-1.294239799331854;-1.2876541486198267;2.1246106285077899;1.4844076669135666;0.049103331477847872;-0.60654638936046867;-0.83853352922336877;0.22541024569989249;0.16652897632018202;0.77528996068946887;0.32069447268815976;-0.63552980827628158;1.0510477660839896;1.9834671630132179;2.1169750615741383];
LW2_1 = [0.91592869312066061 0.23600080246336785 0.14319750141408846 0.61072367457204046 0.69114963813237507 1.2102668616477077 -0.44326907834467411 0.24625725423161066 -0.03073211117996149 1.5673961773285439 0.19630721584799973 -0.10558078215549666 0.48463260671939196 -0.045152355443435467 0.61571241198034898;-1.7211146743812415 -0.07488364194454937 0.12153553645163762 -0.73112802452431258 -0.55600181797380022 0.29767722423111226 -0.78206215829897496 0.42837203448154088 -0.22924061538568452 0.013242244450236288 -1.2547150083612888 1.2931660619084995 0.73742930655686734 -0.73069719976834602 1.5289894178696546;-0.24035809531798585 -1.0130038329774196 -2.1898918681345192 0.38534018483679255 0.9723598025267558 -1.2813818665690542 -0.47348587960510069 -2.0961870981914035 1.2771881838257277 0.069716873274190239 -0.34955742200141343 -0.24649377624325708 -0.22490856505734405 0.031813496434105505 -0.38174312786647041;0.040232133434816061 0.32902045699643007 -0.054487782325867047 0.027802709209384116 0.4362597410860124 0.47981972045755783 0.13955504469172875 1.6505611309621229 0.43239197399154145 -0.38043852367823272 0.40624411250021708 -1.0017568861381734 0.39158645608624537 -0.28079974716633194 -0.33009325949693508;0.88754344991948519 -0.3917176478859094 0.43841636051315158 0.8141784031880348 -0.86277056953566744 1.2421889859349546 0.69483970820783414 0.028970820146577744 0.82060051558618952 0.48128016125879258 -0.26393927495575709 0.91634616004532954 -0.77088828386963326 0.10372698941282366 -0.94637064133252047;0.7946561918107512 0.87703254736548708 -1.6031235482861166 1.9429822082382979 -0.25325666373863281 -0.87652232149751264 1.355902354834964 0.33243241559909559 0.080352263773440735 -0.54960054749158327 0.86447273850724038 -0.97127283863836889 0.37955730083138728 -1.1735237007961017 1.1943350619997866;-0.26860149019049478 -0.50281251295587093 -0.40008853377016146 1.2985073034467904 -1.1410056626984308 -0.14245606744471698 0.10258544375813178 0.83390494946370874 -1.6641533454778901 0.64072810459237806 -0.75071203422107868 -0.2704482572362587 0.18872364290188887 0.061592759441125654 -0.099900564320606219;-0.3895746174658547 0.16323129237890308 0.26655369773762128 -0.51259547182177478 -0.55949671273037815 -0.66312471461163303 0.060135544581580498 -0.59124011619452932 -0.59254128202438539 -1.4235126020822866 -0.12691093189087971 0.17417823027744048 -0.2439597193780032 0.34200756864312165 -0.030413878227947919;-0.85110247975015096 -0.678146691500636 -0.68317571940873234 -0.28637591059724421 0.092418988399606952 0.46171175655363683 0.69194053277348067 0.51707993719427137 -0.010780585804154832 0.40668971532370835 -0.65671405099563918 0.54559602843072974 0.49917118153425843 -0.51905457483495188 0.68741181319621536;1.2051556539826422 -0.26486251702661157 -0.48279730101410573 1.2419744766415852 -0.43606622976232962 2.0297209694236367 0.0901334148883223 0.5991023733180767 0.47127296575906336 0.82914091044636329 -1.0715002099725988 -0.011222150717967878 0.19936672415002776 -0.67042374421537021 -0.77954998462511482;2.5864734618924068 -0.21138682920268853 0.59083231403416736 1.728819316036857 -0.28477312368095331 2.0463144201295833 -0.36509976777035213 0.94873792718226235 -0.027332265902217989 0.63219833418604787 -0.68701467596434851 -0.57874380452110175 -1.0935211847667934 -0.25450737970802995 -0.82333887220280333;-0.3902418750707225 0.25641094709415635 0.13156513066965153 -0.84102258777799677 -0.30234749463992761 -0.83087132597545621 -1.3139260720591444 0.42123494400615402 -0.76262780072442937 0.48685787906325467 0.3430377425825627 -0.36868931187793169 0.031465957451303719 -0.28722460247340276 0.49495712043832063;0.69701208998381892 -0.03053878623332695 1.3173293372595658 0.44132035073774323 0.69827664970964787 0.47136627974094258 -0.54415729038453753 -0.42382296547945991 -1.0630381713232071 -0.94251172271961103 0.041436520961824277 -0.21722309892565994 0.48996672751874748 -0.0026881882290687191 -0.92571731921636202;-0.020408160502443491 -0.82181094115829778 -0.036475240900452482 -0.21099177889757897 0.24048376800748006 0.28664215024884676 1.0670271677035441 0.12305211984395056 -0.18912947327803886 0.07366033519687154 -0.9655951712967743 -0.17946149379884668 0.99861769941214418 -0.65364266664546067 0.51515131358952226;0.37345301105629913 0.78532214443583426 -0.30200954433005184 0.00071792790322454739 0.85039615829645743 1.2397555686927619 -0.82692736086024354 2.2237839841660554 0.34822826674981433 -0.46898699955286111 0.33660642736790597 -1.1215317856766911 0.94651265872357737 -0.43088183796839968 0.74371474280841765];

% Layer 3
b3 = -0.70254563192358899;
LW3_2 = [-1.8927531896820291 -0.43769949739078162 -0.48849569643408913 -1.3814855651052023 -0.54337485477541936 -0.13810277194217457 0.091179560670238149 -2.1098065715880838 -0.81434327951665442 0.62169996900647784 -0.46247264569751112 -0.54847841347682968 0.92068611804785938 -0.98653054245055705 0.90649997848392927];

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