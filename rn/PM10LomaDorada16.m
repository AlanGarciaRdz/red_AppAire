function [Y,Xf,Af] = PM10LomaDorada16(X,~,~)
%PM10LOMADORADA16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:12.
% 
% [Y] = PM10LomaDorada16(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.5320776382667662;-2.836731296740183;0.11194401395046158;-2.2679214368812062;-2.6122652891156899;-1.2944864941306637;-1.0283018184691821;-2.8418059642558577;-0.64751442919098512;0.20791970344074295;-2.1788826105726082;0.90178159047712791;1.1967275751930204;-1.9093097293514814;-1.1274443343782214];
IW1_1 = [-2.6736108754963226 -0.50914387309936215 -0.34869326604451817 -0.37393861612736623 -0.19662236156754873 -0.23021065970320564 0.51783368683868813;1.1811198716046514 -4.7035342927376593 1.6312847577557315 0.71436141483202797 -0.98597127365176562 0.065734473777613545 -0.33403350242139573;-1.7828425719183396 -0.4151127362030142 -1.0128283292853049 1.1907663936811517 -0.71657890594649154 -1.3628074172844264 -0.58546617750982521;0.43191901803583077 3.1221793476077484 0.055908164733462606 -0.91193003124522654 0.78912587399860856 0.71403702637088251 -0.87390496194377909;0.93099663203787764 -0.34325286011401895 -3.683160598870415 0.92973958959782244 0.74762634854502608 0.021282703092851324 -0.7292774013163893;-1.7467740959802946 0.75253897880737597 0.83452095353515643 -0.48014449173610685 -0.61052057969647433 -2.6544955727098545 -1.097713103979991;0.4367855815921598 2.3985534679563303 0.1269709942940499 -0.54633575228868336 1.0567407350899385 -0.037944102683849804 2.515791660296081;2.0904987787457712 -0.0071557783611129692 -2.7607681496128134 1.3727439464900977 0.82261051127434748 -0.09096332632584736 -0.61140812195633265;1.5431501765039031 -0.20267183586709347 2.0019634815227962 -0.39847001320346614 -1.6175753827868458 -0.66195859770702925 -0.94934518534253309;-4.0672176347805697 -0.087882580561501042 1.0749595043223659 -1.9107840586685694 -0.0021419581702546604 3.5987164431203484 1.2881905535251081;-1.8375720450358635 1.0296982667324142 -1.1043889650617484 0.90813239982639971 -0.11711599387320899 -2.0956722056842754 2.0924729012336578;0.6091204264456761 3.0487994866812582 0.15070056575949176 0.14845685638028189 -0.52221388436421623 -0.93955506109867093 -0.81415434043623724;0.54432897117268153 -0.30862197026362537 -1.1769470088412186 0.63838196913576983 -0.40287670477257082 -0.88134085778404148 -1.1121856197109079;-2.0706997590720047 0.25471247830040689 0.32777611636898624 0.10275731447883774 -0.37766294000924455 -0.83018347974555706 -0.77223451606859461;-1.7071708227464248 -0.87906191843355963 0.30759135940329885 0.20944199788214068 -0.28730481147582543 -0.61304884069767274 -0.27679679540365915];

% Layer 2
b2 = [-1.2028661652197541;-2.498036676210821;0.50660793865919918;0.30597242756984327;0.6357442415656438;-0.33466776687745819;0.30035598159332677;-0.11561915768723516;0.16756075149856517;-1.4942129215490543;0.81382580343227873;0.91979860166798144;-1.1750875290183258;-1.93282890820372;1.6105893692480191];
LW2_1 = [0.85012951704013162 -2.1051106698612334 0.15859954544140062 0.7178857583652859 3.0010334003892973 -1.6316927694541961 -0.88034412922769245 -1.0738542420689199 0.1663401673952202 0.85491416172016566 0.41429848799159341 0.37261486908102293 0.50838914151287662 0.640310840689709 0.13993320073038479;0.2515467011350464 0.35641367759075837 1.378763544292428 -0.38137415160701466 0.92383791868839304 -0.72067847841349764 1.0390159034934896 -0.94229197112506102 0.2355960580290806 -1.1359521615463704 -0.22679340770055179 -0.05885958097969525 -0.26836530777007889 1.4327474433295226 -2.0076648590424799;-1.0605382056037442 -0.012982015293053588 1.6327876469837237 0.89196421744392629 -0.35552647538760318 0.058167047179280722 0.4361895501027761 -0.59168885516298397 1.2853087437429187 1.225256207693606 -0.98355593378285178 0.022096615150843327 -1.30631225464065 0.19353830226005658 -0.48293135942764992;-0.093788757144987231 0.6579250782074646 1.6431245271816199 1.4185973961115359 0.080422471239391002 0.47530505934235828 -0.66906514280272478 3.2796418870990136 0.37442997613583479 -0.56933904360902532 1.3829202105912906 -0.60607165749632486 1.1931982281645443 0.97061953532019685 0.42138716825527422;-1.3892002723450279 0.42433824463364661 0.28998866497631648 1.6705921305619351 1.0017880560207937 0.060113008649500303 -0.51158009801034454 -0.92293205794298672 0.14623843304255263 -0.81152378911749623 -1.5583247363056509 -1.9009142328897797 0.2958667039160594 0.90865682040597862 0.43290994613421191;0.07113763123682551 0.88997753595521523 0.25713534828189927 0.5158652756793094 -1.6964794364764171 -0.84241211128966953 -0.51410001778542058 -0.50549210592396043 -1.2890338046022012 -0.52714661241250105 0.13515574917261899 1.1125264926700429 -0.13213923986463974 1.2275629247278967 -1.1128736969202804;0.75577355241683442 0.22767411994868164 -0.69430742538253809 -0.41262992526332049 1.9686966412289717 -1.3587358619620546 -0.39515209023432379 -0.74494554009645753 -0.79634919508615798 0.48450526381004522 0.035786289474979915 -0.00042927281652296173 0.27693857099899954 0.69374889113235083 -1.2794041509609191;-0.18875578354188674 -0.0083484633935933979 -0.11643381388408237 0.26791257735693852 -1.7559949741316265 0.25257611643491351 0.0053632117067617512 1.5431853683462202 0.35203145465405161 0.95509085693090734 -1.2037515064844406 -0.26007066253482353 0.072996671935642993 0.70683638636756774 -1.034374493893879;0.69838552134956111 0.60278669295881682 -0.49190381347984158 0.43678961010650036 -0.91864396256072134 -0.52379972661015728 -0.077482858193898912 -0.23004932980356416 -0.85111721972189303 -0.12572153682633058 0.18006106854368498 0.82852118010822706 0.081421683388604837 0.96779132085110853 -1.0231865566365748;-1.2225521407681348 -0.6165665617042464 -1.0866993794147983 -0.56032974903520705 -1.3009392798290635 0.45019715812665778 0.33617164989720799 0.10478765413020258 -2.1936692099245119 -2.1537258190187729 1.973813050147657 -0.83830228729596334 -0.38161431387277178 1.7359873105079722 2.3757269067704434;1.1016348544310357 -0.66992210461225943 0.36088498529544866 -0.10068158922466905 -1.1213699096168213 0.11769719735941177 -0.50689541732138998 -0.68975275998689156 -0.075955541595017481 -0.97511424258671409 -0.70273157402095243 -0.60790877693501766 0.5617131088202364 -0.56157111976295693 -0.19583123636316013;0.12625926402221666 -0.74182501210237606 0.70383133335565529 0.021838632983835482 0.56253208637582641 0.85143431000220149 -0.86872211775981367 0.062931715940317795 0.54924297867768535 -0.56897655933785529 -0.76824387305320085 0.73607542782532587 -0.52908842486036367 -0.67300487015172183 -0.014383384643700321;-0.15219985952309148 -0.48780975329488735 0.54938072154271345 -0.92853661840104573 0.21577900661855681 0.671059979445219 -0.3845989121231787 0.57096863072336068 0.97476673277656356 0.91201065134206682 -1.1247484556972793 -0.84196334695380592 0.049742745579681003 0.24979238940434689 -0.40168631512284914;-1.6230037927881997 -0.91437850797957909 -0.45159602310560937 -0.96926032226519665 1.5752862003649233 0.50422513709790184 -1.178746335334814 -1.2321688905022625 0.56931549519355917 0.34163545195392608 -0.2264311707203886 0.12008234553705993 -0.74588702231996495 0.61299819811422418 -0.29134081891422825;-0.25024373216647688 0.52220567614454583 -0.8486224052478526 0.69032162106403072 2.049014103115153 -0.16747413431798816 -1.0211342656751101 -1.3689144112316354 -0.13380977492434584 -0.40917851559381513 -0.01723513500674527 0.14871643723897179 -0.067325247267085636 1.3204086378598374 -0.59687845182473576];

% Layer 3
b3 = -0.48519955223545708;
LW3_2 = [0.21452937168349143 0.44920104443221259 -0.36476344843191255 -0.20530716946453731 -0.21074986497064951 0.31898755443979421 -0.28028381744405673 0.45710071975340338 -0.92925919153646641 -0.16287223950676297 -0.15338943785693232 -0.62453256457864481 -0.32597955991429706 -0.61870098052315825 0.19458619123161958];

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