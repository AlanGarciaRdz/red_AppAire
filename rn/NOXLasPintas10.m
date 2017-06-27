function [Y,Xf,Af] = NOXLasPintas10(X,~,~)
%NOXLASPINTAS10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:48.
% 
% [Y] = NOXLasPintas10(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.96825396825397;18.6915887850467;0.0175284837861525;0.0546448087431694;0.00640204865556978;0.138888888888889];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.7328597358204694;-0.72098197545417053;-2.2877686765663454;0.47498743530826415;0.39063489452541589;2.0042004201169732;0.19469513515069156;-0.53696031091662699;0.0060394091402915726;0.79581974849633663;1.5395544412569928;0.35636034054661919;0.37411249359373216;3.801309176776456;-1.4491149487022086];
IW1_1 = [-0.93434825315597525 -0.36266992455937025 -1.3313505006097193 0.11699901132878815 0.21691326600922273 1.5192164345872947 1.6196911063790842 -1.5774051824610391;0.83514929549305728 0.87774609020013428 -0.032535341685177993 0.7312910424368575 -0.26570100430322691 -1.0506482006504909 0.20980535708228956 -0.032008209078883638;1.6110562643133619 -1.2052645729719882 1.1130135136848882 -0.06932012831791684 -2.3561287909731314 0.3791015007980757 0.37096249973124507 -0.26881534766299242;0.34749260892843964 3.2995493253992909 0.22605016316725157 -0.29547417372916718 0.032114964647112401 -0.013600550661709673 0.50190989342828307 0.44875672034512026;-0.60365903265458754 1.2302663878657734 0.21918292984319651 0.73434253239266889 -0.99843869176525268 -2.2551362456264203 1.4163676751656824 0.93602150179032328;-2.3415266361606606 0.32195430827810495 -0.14871113926441348 0.040763229674933323 -0.38588139367734919 0.56722668106720642 0.59237020486269831 0.86231628284041961;0.54568538714829273 -1.0249432022467153 1.8447332981749136 1.2381700581657133 -2.3340884879889869 -1.0359889608204311 0.21654510567060442 -0.20935618433762174;-1.5875927875681584 0.021993015523408523 0.51078531929758508 1.3909620082040783 0.042787941264396209 1.4603238387841904 0.53851996514800393 -0.061899729958589063;-0.82271859741436248 -3.2050389379096362 -0.40931920144281236 0.022482904049035746 -1.0764878067813535 -1.5495244769461878 -0.60969219983570488 -0.19526041739630512;-0.55530733576078761 1.2673710127962325 -0.10018334519432009 0.55012803760141071 -0.21539774721541757 -0.63846379296590539 -0.32541828327008088 -0.058901114545402103;1.835547600263068 -0.51428238998950204 0.80896572298364489 -2.0725394759212694 -0.26765070413274067 -2.8611587156399341 0.67041221131293594 -0.025026178577401269;0.5499693605713778 -2.5762952705071829 -0.79286962429355134 -1.1619801074891749 1.4498776785377341 2.7591778531826332 -0.18181383925963163 -0.34766991149924176;0.13155432660005767 0.59337902584287705 -0.53314187100715171 -0.31072983446026192 0.74030660871415621 -0.25211370620241397 -0.54666329638571065 -0.36387148105685979;0.68760396434819726 -0.80460944046693916 -0.09708877752347872 1.0867524866125899 0.21366272926614729 -0.44343840638333748 1.5563843891877915 -0.02333438618060479;-2.8619315768516733 -0.020218318467069434 0.43345827042902296 1.1819188328181942 -1.5733671950724686 -0.8538353635840803 -0.46584763364509058 -0.37485620840099926];

% Layer 2
b2 = [-2.1330331445938984;1.3393939544304263;2.0921628556249572;-0.47062659886412206;0.7611026630178962;0.36125207862060693;-0.15206775387321891;-0.41181987778364876;0.39670760248352788;-0.42571522667499545;-1.0910974157005893;-1.3211111720307438;0.34876158084792946;1.8812983617191879;-2.3090525971494635];
LW2_1 = [0.014188553210678041 0.18896380587114681 0.44829307238592037 0.18752948182051921 -0.020913649722574139 0.24315799812990885 -0.69845752670905881 0.59295096488000976 0.3808756908334241 1.13487369595954 0.57414879137848551 -0.4371734423880595 -0.50742269483615432 0.64003329000064446 1.3803518765098457;-0.18088412154934719 0.31740440228895989 -1.0151014529425408 0.10495905330365807 -0.28627724072202787 0.63657415602359779 0.72763855334995731 0.8397141441945547 -0.22991195331177858 0.64858236275258829 -0.0016129755611444842 -0.83676426348652155 0.032816353985083833 -0.31296825454192739 -1.117137546585947;-0.093295898063532001 0.21265695440561694 1.4163006417132278 -0.22704435779206666 0.46673531512462418 -0.58287225104881657 -0.67323136088305802 0.61136828470274029 0.38593039378825211 -0.93721782328563774 0.041239451793300193 -0.31750301601825182 0.50276001462299258 -0.05124146117193866 0.87016280692791415;-2.5014493700015183e-05 -1.1183358933272944 0.97316343409187056 -0.69286219880138333 0.33526578223206499 0.21418651411475148 -0.56065044496414307 -0.16453655695317276 0.046077985244584549 -0.39426835038331937 1.3433082871967321 0.519996337396609 -0.92954752839943577 -4.1650357350120819 -0.64904445962730151;-0.30072009539125522 0.56868381344852392 -0.83008855159651418 0.099509514490019491 1.4524808018080924 -0.79680518730176575 -0.22627819424550427 -0.22992767015832916 -0.0096802318574339338 2.1890113735523848 1.3897096564426337 2.0656212128558429 -0.50600521021941314 0.32475020739527849 -1.3785032330274547;-0.52017771863085271 -1.1260451640648721 -1.8863522869263807 -0.053121077911287562 -0.94953386678989149 -1.2040067721690009 1.2291016119301832 -0.49756971025568458 -0.22030400752268914 0.88837371651723107 -0.08770051761377147 -1.0192443461706922 0.30685081202357617 -0.35026828389685799 -0.73240529380222363;0.27484647306163124 1.179464559736733 0.014983268003731481 1.1847022575191426 -1.2505741336231149 1.3747878917999294 0.19231887827815167 0.89804467024191703 1.3962993415942428 0.45862013643735677 -0.062035540262857541 -1.0642572960283894 0.12294881292591547 0.58896520010908537 -0.95807330155677584;1.1957131671742065 -0.75841614289734327 0.33808245473059734 -0.76915037308230483 1.3107232065891155 -1.30113969350633 -0.10865096451637668 -0.53066647361414998 -0.87925945425034213 -0.49987672274791628 0.14768805852943684 0.66805480666011863 0.42866392497125555 -0.73201664101173747 0.68911992168248337;0.038514202908604869 -2.0009566769859881 -0.81534287744943845 0.75478079994761904 0.052219743806726671 0.63093967891255442 0.65739050453126557 -1.0487087085860662 0.14497702156772632 -0.61017368163691932 -0.41603756176578582 -0.34409487931592764 0.16621915978229274 -1.6694794157302266 -1.1006315749506224;-0.011520235962430438 1.3383907985163983 -1.5425798691250152 -1.1627344348159798 0.91954854260180396 -0.86304390751217719 0.92172788859154742 0.77681318591572202 -0.31609295634884621 -1.1914747049125074 -0.17974641182420881 -0.61380223786754406 1.7785804042509725 1.6195416678204635 0.7158642710470996;-0.53288535442435014 1.1929833628144282 1.0503386881666723 -0.066316220770894913 1.4525303212799234 1.2849998749288054 -0.74668940788478722 0.70080768822129114 -0.16477345116531666 -0.40257268628087473 0.79691614164318336 1.5005583985671747 -0.029602245482434245 0.52441555042182642 0.55576595755409286;-0.41492559188794398 -0.98476316473697678 0.67617933826149068 0.048677821882979339 0.76195422717087669 0.30126803581824035 -0.12849701819626064 1.117095816336054 -0.8462255062529872 -1.0123284787913809 0.93902422884926429 1.0793648213542812 -0.29706041769311431 -0.56639779936723056 1.1253044547888438;-0.13591554338973344 1.7219923807352087 0.054062519861152139 -0.49405938904150642 -0.11175022428825172 -0.67339130000488179 -0.44753646401682701 1.648872822736646 0.6772490263423262 0.92585044596496069 0.59460338034369931 0.45824029864338406 -0.28345483548485029 0.22684944041551458 0.35332399040491502;0.89169637394930201 1.6789119113161046 0.6812681407857859 0.16211941565574359 0.053434379604113347 0.20226064412459291 0.083651501146909293 -0.73612584847288087 -0.36570192146558345 -1.3488210342780773 -0.59893186297944989 0.15576460937386918 1.0714385669320425 0.88367316258888506 -0.085863363645480806;-1.1400942414999469 0.992175345914864 -0.2855106398353745 -0.61146602376784776 0.44339618101757899 -0.65043052520516076 -0.72499334040316643 -0.7439486302797349 0.75244698175281677 0.92971410802590371 0.78702281249497075 1.0111687924200297 -0.63387507816256772 -0.044443419698652981 -0.053415016510566384];

% Layer 3
b3 = 0.34473399271759375;
LW3_2 = [1.0313807868505758 -1.711435878801109 -2.142160714182185 1.31863890160109 -0.57308546717540132 -1.238926101503429 1.8357742102693064 1.8778715761303313 1.8581101446218378 0.5737623553434078 -0.88469894015658157 1.0504639217158569 1.5149234418547175 1.7633823586504651 -1.0689937431183256];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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
