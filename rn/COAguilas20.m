function [Y,Xf,Af] = COAguilas20(X,~,~)
%COAGUILAS20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:20.
% 
% [Y] = COAguilas20(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;0.281968137600451;0.304971027752364];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.6375875019994113;-1.5015633674902802;4.3832977244089379;2.0190311736295015;4.0230036172284782;-0.70587674462930361;-0.95417135080720938;-0.062478244876298543;-1.2093888384591132;-0.98654844327591418;0.56424486915437277;-1.6934860672847956;3.9471270426418936;2.9159255905024981];
IW1_1 = [-2.6227109787167544 0.21631007077811207 0.65414484812643148 -0.54059295729583345 -0.4750983235844064 0.12164246769901786 -0.32674449577906117 1.1964201077167325 0.025072876363358677 0.4002866522501547 0.74160189514393549 0.36403995015851404;-0.38616147916805671 -0.096250454662411042 -1.2950476174042067 0.2484270328518538 -0.2941233337829593 -0.42591688877240647 0.72488286563616278 0.92179580103959913 0.0050002901303311167 -0.35822060833039387 -0.1952257572346284 -0.2009775145803461;-3.799421145730788 0.21633461130537063 0.015726143700759358 -0.028928498108755259 -0.86991192142471818 0.072333079079847346 0.69270136295332285 -0.22620149722457777 -0.25591388016860944 0.069249954104970313 0.66240042515406916 0.71219464360031204;-0.010208269782071205 0.68787899572748756 1.1281340088435867 0.62611735943948998 0.82913850002588141 0.18646936299893818 -1.2888687150236078 -0.21048752027111653 -0.38447607095792219 0.28818424799438258 -0.28958745667831992 -0.43665486199915532;-0.84067449445398268 0.36992350542583952 1.1978916868987446 -0.48764554271712457 0.14079882659793971 -0.75762581076757352 0.091085752277339463 -0.94988712849353696 2.3002529579997759 -0.81838598843671484 0.71958902068671637 0.70330968110519421;0.8072522371986891 -0.55038738743697513 0.75241736656329261 -0.96818078819543152 0.012734104193929313 1.3308747622009216 -1.860327715892188 1.3372369539118205 -0.11481044389059268 0.76809095079137013 -0.39843761027580604 0.58500721156491264;-0.73887115516527047 -2.6938807770102269 0.68497664428328686 0.30835929747330204 -0.67409845395011947 0.10540249123096589 -1.674831753513351 -0.48514185109253766 -0.037875679216496899 0.21060175208084503 0.053412445761986622 -0.095681325877627024;1.3252275149752599 0.94935873104615309 2.9186578035559165 -0.18680171554850139 0.21904424158095651 -0.34217880472229295 -1.6856193996906301 -1.2528339894447371 0.34881404801317883 0.7597948809132582 -0.57305310826040812 -0.90476207229421401;1.1273117337649536 0.021928498514346223 -1.6925356953515371 2.6352018054164188 -0.20469210403718124 0.92673201551674433 1.2317417237409087 -1.1228869153214094 -0.03895307133440673 -2.5770336808872258 1.2022040273826899 0.76913873479434858;-0.43147969436600508 -1.9378999957010128 1.6465830253310549 -0.33833144307815721 -0.32935477057426016 -0.37173059337951309 -0.69592743491240605 0.16085993502714516 0.14573194196062017 0.05693066776884477 -0.30459412974720024 -0.47224098242325629;-0.15686222030871816 -3.4147953444908432 -0.44687238772161175 0.40145953732471296 -0.23555514765903271 0.0089425815218917692 0.33716022445492672 -0.39911829746051086 -0.044130693372912352 -0.035857650791945646 0.21993474669919863 -0.059131163293107768;-1.7736219462211142 -0.3967556576657949 -0.33311543155354839 0.50330423327905416 0.15965048012405533 0.39544572706696002 0.55612159154354279 0.10907171384180925 -0.16072171679624403 0.53206040900320595 -0.86721950792562419 -0.32855157580569605;0.81427140241236362 -0.098966110640615376 -0.10883201012893658 1.2631990246929907 0.21066669816924119 0.72735088917700619 0.83929066463927204 -1.5510752756289958 0.5213334623677125 -0.061142996273193063 0.81401926648927392 0.32446600612911097;-1.8043638140056335 -1.251372732764958 0.60326970538321645 -0.75490655313140242 -0.61989811013811991 -0.014803557521630059 0.42181437665382243 1.7422400760516525 -0.027356308642499771 0.26074539998468005 0.37379059302991291 0.32871039833188315];

% Layer 2
b2 = [2.6409220965279152;1.0126000686302243;-0.1780892675400696;-0.074759172547682842;-0.77862683320533999;1.1273650427683024;-1.4390599903629251;0.092048145586171082;2.5479123889508717;2.2953689591146818;-2.2733053216726873;-1.6610305836930201;-2.5313709496203805;-1.7881108619799271];
LW2_1 = [0.31362090707905432 0.13706272318912455 -1.186446264895419 -1.2114355061588467 0.96295412338736519 0.68887012849508522 -0.33018688734939655 0.2363321564425219 0.3436479947790671 -1.6479424544634975 2.0858963275305014 0.60993190809523568 0.14297028418689942 0.039082694408157329;0.41687017641539198 -0.13026459564759363 -0.93011978888193547 -1.1954575412723512 0.29099820283220135 -0.53778141903532417 1.4507928122351417 0.39576258330579456 0.1497684089177887 -1.6313403557898289 -1.0628946644086203 0.41790886773113528 -1.0393422768242 -0.72915455517952754;1.7443597472774481 0.66312058422237108 -0.8803889379219435 0.830816644913419 -0.19581390064011195 -0.64902387768632974 -0.23833445087945593 0.85527463558530548 -0.31836870622887486 0.15954240134395362 0.30725055267974538 0.33885293240164549 0.71506749395550129 -0.82808106176212648;0.88829171479197222 0.053792127955730837 0.31444289188296248 1.0388418556169574 -1.1597590535859406 0.23052934352878696 -0.36277091888021873 0.41423936614819412 -0.57207332918066145 -0.18909569613269969 0.48657237914625073 1.3091003909900572 0.81990440625549987 0.070840153657656446;-0.72037776157600319 -0.57646591123003132 -0.68166587788636146 0.0059598912719392438 -0.013121211962545381 0.47497806557237365 -0.10160421598731448 -0.12912819858129382 0.019226786318333473 0.74180518579169141 1.5320739878315639 0.022526157659509622 -0.3599770279275411 1.6624792613033743;-0.03164872174264495 -0.77654161295632418 0.030685558511688586 -0.41807359405632921 0.36851271369719302 -0.47011353839888909 -0.11454525847590502 -0.1880124132253041 -0.011107159374435085 -0.10406117363710204 -0.28330806243592727 0.89198816535827685 -1.0660343918165025 0.32985366441186492;1.6551948305187947 1.0415526975285712 -1.7904724916288572 -1.2075391443594177 -0.27870838951224525 0.38310428755276643 -0.85940948203656298 0.46175955685347692 0.19813082127787801 1.0761019484816199 0.97875301658337288 -2.1111576980353006 -0.29608317772579451 0.049349749669011074;-1.2082647342249224 1.5679467354069379 -0.45895740215396019 1.1612237813690625 0.8024433645243314 0.96351838685327529 -0.78441866671107419 0.28259958790113909 -0.81832133485258096 -0.81676085360582718 1.4621494983387309 -1.3371377832804918 0.71036610219307872 -1.1939310333595092;-1.2258380343969599 -0.68433653559781582 -0.84689678600779772 -0.13918499313019522 0.11308660084980157 -1.1646207315303845 -0.60139287650674833 0.44436112004232997 -0.35807082661088985 0.30285948544748403 1.4634885266476236 -0.14471163359799366 -0.71750343600085298 0.17635449543244786;0.33671988506964468 0.26547051667307031 0.38232630813156399 0.95112712427152935 0.046144557787340626 -1.8147211839563506 0.80837949621271088 1.5320412010110949 -0.74493349980802526 -0.45287139497433337 -0.058838656378571857 0.45131706054071236 -1.3810175175146298 -1.8130632536405809;-1.5001138757997654 0.48156796878275765 0.063366829949858441 0.74241117880364171 0.19763543742651496 -0.47540768198277267 0.76668587947006039 -0.021909943037546311 -1.3618079032804762 0.94414488632544513 -1.6376238478536929 -0.7883381771041601 -0.29058623997800775 0.14327458753397465;1.3380270129265943 -0.18474478104807543 0.19512928477387104 -1.4476963981455138 -0.71423427995490041 -0.55286740829737502 0.36814744831926882 0.31005719756030392 0.13275316968106987 -1.4654404458976613 -1.1999943262534061 -0.36858086147142788 -0.67105237397579465 -1.0479492008730449;-1.3074769055910618 -1.3673953041039284 -0.051770208712000727 -1.3295884511858238 2.4700556648610701 0.27318822468337423 -0.086501568225744452 -0.042069607286964419 0.44560999962079234 -0.25839106407179313 0.063174152923141658 -0.57724986380610321 -1.050829471287406 -0.15637814874330108;-1.0718027613068142 -0.50391140428149428 -1.3704341747670454 0.83564519456849951 -0.25362826898035096 -0.44957188897036793 1.0759897879494822 -0.4526044260504839 -0.1490027574202733 0.96869411490238011 -1.0549385555612221 -1.4047321559446386 -1.8560970959511141 -0.8088910544362401];

% Layer 3
b3 = 0.03349363565142395;
LW3_2 = [1.3656752470218547 -0.97129397287071029 -0.74869726252795277 0.83409940923757842 -0.76121758411083962 -0.67655512681955743 0.36989724500959947 -0.60893619821662648 0.54786152387202292 0.20628555920610742 2.0093243937268181 1.0721109359696883 1.7916463366225175 -1.9346503141628879];

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
