function [Y,Xf,Af] = COOblatos19(X,~,~)
%COOBLATOS19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:56.
% 
% [Y] = COOblatos19(X,~,~) takes these arguments:
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
b1 = [4.2002048563601191;1.6626264601508409;2.5522036146354394;2.713838976669344;-0.80450645561673373;1.6413787027916453;-1.9258918379434495;-0.91507322295918847;1.060427933387174;2.6136107194293499;-0.78758192479983924;-0.27384500707783538;-0.097080378116663202;-4.1017943306314697;-1.5056459025362405];
IW1_1 = [-2.8471813783833957 1.4576982921440029 0.82552732159257802 -3.3958838864547589 0.85486395702088069 3.4996979836266582 -1.0226978038762282 1.1552637449442986 0.84945695710061564 -0.92361545343620022;-0.38231798196253042 0.75089430929206569 0.4656241133437195 -0.10674210128578207 1.5661025366306889 -0.73805738698141898 -0.69634878580586868 -0.68151924625683546 0.17555897453446398 -0.2247307964672377;-0.00185728625748721 -3.9061988937439671 1.3763073543104234 0.25487982317102809 -0.048016448247949824 -0.24438231046389672 0.084585615223304184 -0.67164704976598366 0.026699280023221989 0.14451467621759911;-4.4746016143002585 1.2411858485387 -0.81208902750958989 -0.88186918765763689 -0.34516512833235014 -0.49980281374578561 -0.065223291678424528 -2.5343376185668327 -0.37427197421569303 -0.074890589750629982;1.2339615119884257 0.97984150161816075 1.1586129580563749 -0.61871525849327491 -0.0066423314914066181 -1.5921195464191502 0.51200995905240743 -0.42284376655606698 -0.53418903670351314 0.56434283566296317;-2.2917793051266306 0.26549437537738663 0.59416735728245573 -0.011341315614195218 -0.71083693380264101 1.1852780940093837 -0.18189287081911976 0.45489541172442788 0.10698005303961261 -0.37483206501759025;-2.2011555154576867 0.23836933293624038 -2.5554193680513615 -0.78103113055394113 2.3994274850853237 -1.4564387466238473 0.030317140778579194 -0.94330474960175281 0.085113672701290999 -0.52590751162792582;0.074879639972087367 4.6973133741986484 -0.86483546462189242 0.11231218366476142 0.07414848758112258 0.042183359949319238 0.11687311094524981 0.33970335752999392 -0.074738504757323909 -0.078565938300146937;-0.3059520056437402 -1.3265426705062131 0.10501297042383222 2.268037422237108 0.4651380104599489 0.83999571936598749 -1.7075875740652873 -0.49244093092848601 -0.27128801500931254 -0.54242646978391262;3.0755106889687043 0.16360671211823399 0.86122548283677058 0.41748889312089954 0.62510859106252181 -0.37641204796830857 0.11968435831975012 -0.2087208638855334 0.14596805165035659 -0.201883906940963;-0.5712435373984609 -0.17602538551263364 -0.31206577518934586 -1.6630871737662847 0.30124649502030348 0.29361038692633368 -0.42090572096118772 2.5082354260867583 0.1746974213319436 -0.33765305191405848;0.47895153821498626 1.6545293468493105 0.18680018846142896 -1.6502449766189584 -0.59912994666995223 -0.55000240859882199 0.39561765393863524 2.3337380880002927 0.18496368154957837 -0.096548715052326095;0.14281047863145618 -0.15359213171729336 -1.0495687494516246 -1.8768164236069298 3.1785333705319982 -1.7109529255380547 -1.810109707325902 -0.26365351144265448 0.032822504249736803 -0.69857263863179198;1.1908842707076288 0.11582989658127064 -2.7901948132599328 1.1595951703051872 0.30618635297641589 -0.17276333103636615 -1.0254899545786178 0.017224389176995564 0.58081889903514872 -0.35043841798961822;-0.14373829815811343 2.466407483350721 -0.20679254685924953 -0.14266278384001257 1.1624966478458196 0.60589124712351794 2.0393191461138409 1.1997673573224779 -0.031651313537820663 0.019092033272093564];

% Layer 2
b2 = [-1.633965016660669;2.5992357015890426;-1.201695494157677;-0.73364826480700995;0.96134007321723947;0.29324470033037264;-0.89612117977954719;-1.1859092057990446;-2.7418876994714694;-2.2643460543891782;-0.57054641776811321;-0.52733369200443514;-2.5592946902927989;4.1151838473224167;-0.28408248730367158];
LW2_1 = [-1.4662635506522033 0.25450519596026938 -0.24397742721958074 0.63609794079216775 0.29126551514569599 0.70961594821251694 -0.6927324488326132 0.71490121453157518 0.90100438974777641 -0.27240887575793282 0.2597832981483274 -0.72855481836744584 0.15256177073556065 -1.5059673290657312 0.060182489108393328;-1.5466502390699897 -1.9645671527931472 0.74465995346768765 -0.51826442186742472 0.31175816457167954 -0.59962192722545093 1.1829206893678221 0.7535833961139955 -0.27219202553399791 -0.96428392753667846 -0.70099177081714958 -0.0024558526349191881 0.33350407199342824 -0.3428798560102308 -0.37954585488971626;2.057943495732498 0.10441980656939434 -0.78651540705575718 0.46058651874614581 0.89320970327862637 1.0827616281585175 -1.6983134565347771 -0.59708915393008544 -0.0068302605835401497 -1.4391572433547584 -0.46234772060808127 0.54383221220250155 0.018792010545900947 0.62388147064179067 0.75816342779241963;-1.3254312836889055 -0.85713963976277141 -0.22047453081733989 -3.7575517142493466 0.080514586925275106 0.79598284461710067 2.3296290046395014 1.2012303839304992 2.4628575271716149 -1.5017008702319627 -0.58600990927123664 -0.024927579388395828 1.8164548842107502 0.28552258709923173 0.6663103150816958;0.51245119912455739 -0.49707805012625139 -0.18431007946194061 -0.36173862290213993 0.98998976997655841 1.1417901903587468 0.12725862518274575 -0.0086728772509953519 0.23254566020191092 0.71085517059474157 -1.4043452877719782 -0.18143686222753885 -0.16293948261077423 -0.14022546106013545 -0.73885004221330486;0.066539393663147692 -1.6784788510519988 -1.7084651284218351 -0.7982527794508768 1.1821179837746503 1.4944161422118529 0.28890839256097045 0.35132711011343609 0.21882731210054099 -0.64095898377135985 -2.2582732897712767 2.0962681562777892 0.22289961912351058 -0.10142399195383255 -0.77706973727648931;2.1321935802471783 -0.79790127485482831 0.19326582853691116 -3.3716833884531701 -0.42160437913099086 -0.55294229268520767 -1.2224821698243762 0.46384760948216613 0.72665689161227665 -1.8146880207153617 1.6743143411080299 0.95576223373554203 -0.44580160595744484 -1.821447347648973 -0.92889774898065247;0.028083771257187778 -1.0389594216055635 -2.4550999648094338 0.55663247856751785 -0.76003147198662657 -0.25357148124163648 -2.4973247797813478 -0.19396501689413367 1.074815058953382 -0.21015087466786442 -1.1654970683222887 -1.5249145743728307 0.1951128853491062 0.617998254688777 0.50523194385630121;-1.2254584296210871 -2.9774070240199562 1.335375745151085 0.41735783981750363 -0.77694325043017209 -1.3874812812806572 1.3345099598593881 2.0714249991674079 0.58117532385126813 -0.47088022854026529 1.5619581623719518 0.98302444282749579 0.44295612780424681 1.3185708153318922 -1.671714812871836;-0.57663270840932501 -0.64933053574037425 0.347578264055247 3.5691962354209807 2.1984048107519323 -0.076629473268855192 0.96438362292231461 0.1735978301037279 -0.48607646198499527 -0.1307523849426655 0.50530881344081557 -1.0486721340405512 -1.203418325962325 0.11919750007471384 -0.50801206697485046;0.65906406976767751 -0.20917288032335851 1.5234636147065244 -0.49413957189224988 1.7182670414645369 1.0140114739503967 0.56147667330643214 -0.86235885938237311 0.45614064850154412 0.10186930262957214 1.1175201760629461 0.99554533101418563 0.013243696729553774 1.0892094209844212 -0.66058283433851794;-1.7964744107943242 -0.13030205710707052 0.78261509387617922 2.617491756175204 0.86450942244068518 1.1145603645633431 -1.342629228375821 1.1714074675210975 0.24482922417363043 -1.8897306767413717 -0.48511671900347431 0.1900576043980427 0.64216714421314869 0.071046012183433344 0.6433153854338356;-0.89156325781201007 -0.24532006874876455 -0.029419300581580959 -1.0373913236264127 0.75013087428516356 -1.2351980180075302 3.4938030248807292 1.4567302023838145 1.4337716203496789 -1.8589066056938714 0.060166785733003172 -0.72877039051479475 -0.89118460570208902 -1.553363819092739 0.06820114378419348;0.046625671176369468 -2.716117030879234 0.90737417748734983 -0.80694798991022065 -0.90688976878894689 0.68548683618527295 2.3510624181767064 0.66045022429673483 0.1150003210306047 -0.75217829628001165 -0.3180255263140071 3.1364744953151433 1.833571339010647 0.81845566454656893 0.26810838371456053;-0.69386682631640206 -0.64297586810315155 0.86219644871585777 0.56307483033070582 -0.76681543087507276 -2.0131952911824991 0.55935799289235755 0.33819962623929378 -0.80192974349893187 -1.1661897082599146 1.3240634293850855 -0.087378789924772673 0.36583401958972239 0.20287976638942543 0.59629665923024944];

% Layer 3
b3 = 1.0564980768922831;
LW3_2 = [-0.35439563501694621 -0.59139544298259517 -0.38057106103204463 -0.67904115411635391 0.61984519787220238 -0.51306839353384881 0.16858570663667802 0.17795516078104065 1.8538398493106183 0.45295949171105271 -0.58437347027063669 0.4315326912515326 0.93921989925493565 0.42771448645008303 0.5896147289767214];

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