function [Y,Xf,Af] = PM10LasPintas13(X,~,~)
%PM10LASPINTAS13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:29.
% 
% [Y] = PM10LasPintas13(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.8623846170042886;1.173152550603527;1.6807529871577886;2.2052843572077609;0.83764787029606791;-1.6779604217894035;0.20090079510687425;0.42962213985885367;-0.50163927895931137;-2.0685029396305059;1.3871719548479826;-0.66256739710373214;1.2678209244131431;0.3249449269177761;4.9263515092748893];
IW1_1 = [1.1836753680759975 -0.1587538094902185 -0.49448529210114811 0.38071681676918112 -0.3594918464980546 -0.070257040684018709 1.1779155833534085 0.30235417108902718 0.25289110482969474;-0.34861920284117182 0.10011795538415147 -0.0031631695201500831 0.1037786789102271 0.59794834910516115 0.74942748004417425 -0.045585816589187242 -0.17296290894822131 -0.44978169024853676;-0.32599977191427881 -0.026433643125868211 1.5557052262037971 -0.084489161800851836 0.16562017283059713 -0.67525510463005123 0.341419310701434 0.13168268919088855 0.50825471363344665;-1.531112400699153 0.081766618195698804 0.20970412027863586 0.84571265001952589 1.2459449418259627 0.48569388319105783 0.066287040241998899 0.15630444780112016 -0.68431225359029479;-0.08604714237520239 0.80882197143024659 -0.38142224159694893 0.64766667176623516 0.16665457249505072 0.46890638237171112 1.8564213033454831 -0.87118886124650319 1.4209976714056787;2.8215936483998543 0.54092977808573106 0.69960401626382451 0.94393963401310721 0.068905376445561689 0.29856880962658561 0.12735842898277111 0.073527590536946782 0.082008962701506816;-0.063054577957962057 1.9393969573301508 -0.071968797625988123 -0.76137716688780022 -0.77451310029707898 -0.60307017439507726 -0.39667973124651301 0.09500607713379422 -0.020258899626003787;0.25955338532156219 -0.89706043935085544 0.75020551617789155 -0.072093227447854832 0.64738596382545222 0.64397722425864845 0.68394945782279792 -0.21964983952961842 -0.091261598906243746;-0.52165721417532096 1.8043230792792775 -0.067631187101742124 -0.70398707232756397 0.36898988494385804 -0.59840270283740105 0.95462946695287643 -0.19314961296700076 -0.25311673506610222;-1.9582329217985988 -0.32446547829720807 -0.26304123218095765 -1.0008440207025664 -0.81243391831796197 -0.66563833380757109 -0.39902520761836469 0.47056379241653723 0.68671613690919864;1.204326418285476 -3.1818421625557174 -2.4488456146193367 0.30743298958224835 0.26824664640809498 -0.089515436230567624 -1.0553601759470743 -0.37903079738454504 -0.47572047333173684;-0.21638022710079288 1.5254093313971493 -0.037481771748720895 0.079550715681066086 0.33473605183221616 0.56877775833633915 0.96666402832343545 -0.38602888832833121 -0.23056324005530937;1.1472209943268625 0.12626744493794126 -0.71794382876668328 -0.31324180932500589 1.3833457572476495 -0.356411930293625 -0.54155676139679321 -0.40947758337089457 0.48316529369759692;1.0783428570461973 -0.12256749230163001 -0.20614618347508287 -0.87805559749470841 -0.22874740146384456 -1.0556505513153267 0.85019167682999497 0.67565007518373732 -0.31500404044389874;0.50988461373257521 0.38586688028601629 0.12922542788051117 3.6689711598192662 0.60896658478836718 -0.66812077207245191 0.95962530235523091 0.0021427475937946319 0.16852663608272694];

% Layer 2
b2 = [1.8706146343987191;-0.5735269439535372;1.411720975212609;-2.2745433005715796;0.73380708962102059;0.9315408765328258;-0.21608963178362217;0.14978567396176587;0.19473072562013849;1.4806320580693884;-0.17993926827690748;0.83996628621233116;-1.9690362637061161;-1.1369474778134134;1.8395482174206175];
LW2_1 = [0.79293403906475934 -0.53228758831462875 1.3502212408721173 -0.98311726385569287 -1.2218829175845927 -1.5665429433414571 -1.5371074135703748 -1.480930352757972 -0.35874855350347717 0.82406165435764911 0.2037847026141214 1.7234585537994405 -0.27368872319435678 -0.31519848448250687 1.0174774690447832;-0.80839041128069067 -1.0119192541163646 -0.85194132553150326 0.37231663063253906 -0.26422141007141781 0.53022821895542926 -0.46054317048431026 -0.1512961646345202 -0.14158087437396566 0.13421080364907681 0.32854263404356687 0.41880354975476614 0.16427924113268524 -0.402091703982977 1.0253102456687959;0.013393913557982551 0.19476468515793482 0.73091733567568884 0.13184632190032131 -0.20997994608220741 -0.89349788747696368 1.8199436329380758 1.1614451447866823 -0.48102946669882146 0.440214759820659 0.60523079477366482 0.48180769555698205 -0.60138491011433792 -1.1554481083664887 0.53439609700257684;-0.66331681936424003 -0.99679816893458906 -1.4127716458378672 -0.42466497866105524 0.56690505159479887 0.61565490826244773 0.87928685446598387 1.1156290594272511 0.49930020886023307 -1.6448680197894843 1.5526714603471234 -1.2656251507400698 1.3438253309132182 -0.35839864679313388 -1.9387753699518517;0.41149075278758279 -0.23746120811804064 -0.070472025726245904 -0.49849108824851551 -0.50523762723625298 -0.56923443444440469 -0.13172706886389066 0.013289832155352746 -0.087570922786541341 -0.12670988480344417 -0.068585430756654589 0.58459312847704326 -0.15957567091865724 -0.4856099185493763 0.91024931523230801;0.46397957910915072 -1.5074338048602505 0.72139907054627783 -0.9340473450587613 -0.65237030116158068 0.22951289277393028 0.50749134265940121 1.4605156231130152 -0.25495503918812285 1.1142183864496227 -0.43479514846292971 1.3428594192717396 0.073837904954908051 0.54560463039580753 0.31573741371012537;0.66069780461308758 -1.1674460731342526 0.51192322786617395 -0.9252132142787588 -1.2380867235745261 -0.67071582492955895 0.61018250414702613 1.3598407763008489 0.35967326891678336 -1.1534065774010465 0.85344272014883471 -1.2884301133045433 2.3219257306101322 -0.91900673909614661 -0.88392461530838684;-0.4211907925645178 -0.13774465364161678 0.64481399954011553 -1.4379046857971194 -0.18569259595719692 -1.3153908560309544 -0.34719143683070858 0.25068965264005133 0.46548330208468314 -0.79817602708964641 -0.59421871425445327 -0.034532912685792921 0.66628657434308336 -0.6008328334430999 -0.99730767941056153;-0.70257851862723231 0.82434604290662561 0.10678928128754896 -0.045744829443725488 0.051990950239312564 1.8968904778324684 -0.25559595386864226 -0.9826028798549068 0.96530036628639848 0.055553840778603536 1.0716571619173187 0.76503085854659825 -0.2555907668574911 1.4436802596982852 -1.5476035951132272;-0.29098682931646891 -0.14658275081613428 0.39193547935531714 -2.1702186476797607 0.86217628164483096 -0.72097340850852987 -0.21649588653783067 1.5401814096850672 0.62583219972616344 1.0336258195900681 0.81113530502874642 -1.4954668089202148 -0.31203049259228233 -0.73600918548417193 -0.45860217192716451;-1.6839837368642285 -0.053297263471335607 -0.55122923571425841 0.082444004715599109 0.25659938596153925 1.2242674546051315 -0.68677731161423139 -0.80729496770968401 0.34078519160243081 -0.057193854160376485 -0.61917564548773985 -0.64157822034481238 0.56051295455671757 0.46879076630011896 -0.19134370122094591;0.11857686438562941 -1.0491865524094584 0.1215215678787695 0.85923426061219976 -0.3458234534655355 0.59350543239466635 -0.67781820427498352 0.47384982728983804 1.8082525062212469 0.062424274574206434 -1.8088143129018455 -0.77847965191721735 0.73256630048688642 0.14461978881596554 0.37438645491457312;-2.1317310078237335 -2.600710249819314 0.95239176195825137 -0.56682068885887071 0.52671160041373266 0.74141257499424251 1.5519417605320083 0.4407624675763131 -0.069595259359066186 0.15415778597608176 1.2795124849518231 0.7310191951814452 1.1158152089964954 0.29647316317800149 -0.57825779347150297;-0.74941255005142504 0.082763886971777445 -1.9313845382645483 -0.84506952444531247 -0.4430186283641705 -0.46142226677003706 0.0031222729950858667 -0.29462953802336123 0.93078481091645004 -1.0336153838296489 0.11616631910839835 -0.98312587201124291 0.10986675125357218 -0.11334365018369148 -1.5513169079040181;-0.70610042634078296 0.59563067412422677 -0.1346364185391471 0.96286980392580912 0.78219560286865786 -0.22131167970118953 0.43746712834405699 -0.087559575077710394 1.5949978223359831 -0.87589699867985671 0.2010869939004403 1.5735320194765972 0.44273010832646653 1.0039345530664936 -0.23906477717731323];

% Layer 3
b3 = -0.79782317175277839;
LW3_2 = [-0.65597731834661543 -1.7513759995369709 -1.2897605538466226 -0.91033683913414321 1.9952036888711737 -0.5569659295259709 0.04800435430507069 -0.67350644627461964 -0.36800720209028603 0.28700010015688215 0.73972884454478016 -0.16573969127061197 0.22524341955605828 0.40334398880066485 -0.82291600299802459];

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