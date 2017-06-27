function [Y,Xf,Af] = O3tlaquepaque16(X,~,~)
%O3TLAQUEPAQUE16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:52.
% 
% [Y] = O3tlaquepaque16(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.171659085057077;3.03490136570561;14.7058823529412;15.3846153846154;10.752688172043;10.4712041884817;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.7675947289051384;-1.4830447156536279;-2.0022217309155614;3.029184715485961;0.62571400507815145;-0.28125594959308781;0.48151983285211108;1.2451181304726893;0.40847469411579684;1.1221730651210093;0.9055965942401123;-1.1186548383042709;2.0285725196729127;-1.2070573429332456;-0.98351949970076047];
  IW1_1 = [-2.5071304458123276 3.5855404095525971 -0.85685777965155463 -0.70086290192395173 0.90091898660770897 0.21635316177839883 0.57924220884696298 0.24352534132822404 -0.011801987446008435 0.9207908986259552 0.56609396522860467 -0.25977309293418666 -2.0642506928026392;-0.62673294858120276 -0.347429766696913 -0.53576866467879436 1.2715218279966456 -0.20912189358134342 -0.61796210870631407 -0.064068333501018315 0.36650631626346808 -0.71168038454009908 -0.27507807374704962 0.53076453457295369 -0.31536507770312694 0.95196199838029716;0.18504523051773888 0.518957093048247 -0.11551818631044283 -0.83284529738106439 0.49847598031327933 0.20614726220893936 -0.78029718199379261 -0.41080694987387339 -0.44027496678643391 0.012866274534462922 0.59076771044194487 0.28816863872879117 -0.82483201539403461;-0.2517452813556359 2.3719001132252147 -0.0052345600001494769 1.2998280258275465 -1.0261784881432452 0.064571859177179447 1.2061803490188496 -0.44506490062655485 0.68475990633762884 -0.42455914452694599 0.033058247881104938 -0.090089013052619168 1.935465501824293;-2.95829972538098 -0.29188955100853464 -0.59094914006822652 -0.20478503394915709 0.0078527138108527607 -0.041353235871781344 -0.23808678693096333 -0.108489783629253 0.21650648965107738 -0.075074020705638483 -0.053412225329858967 0.05115877974067827 -0.17444441349875028;-2.006334105904847 -0.13407704800597461 -1.4928427875393557 -0.066389697181331614 -0.81611159574842729 -0.46752638105693506 -0.0084052788042987547 0.47117818603999428 0.36192420629117833 -1.4665574378351867 -0.46733141189809951 -0.7239639486300411 0.93910383466486325;0.17965543313829452 -1.4535316074809372 0.073510266890141882 -0.51631306589157866 0.39579473502110152 -0.015135532086230785 0.15913193426868497 -0.13724091378618902 0.35183391385755081 1.2834850820805623 -0.15159034505850363 0.36938364506419163 -0.93816844789599196;1.9548224468090194 1.1626897366923097 -0.17200580205549468 -0.36682914496746477 0.090086154937690427 0.17182112204624117 0.31571372414891097 -0.80974506231391319 0.51570968304296383 1.0436416919169895 -0.18664140303306792 -0.039710174735260388 -0.52942065061573162;-0.73631043945893038 0.070245830600449671 1.1158553428536926 0.032861847023466034 -0.70086644826061906 0.99240155344170544 0.44008959745665238 -0.43106099400850623 0.65839211758643812 0.96604720435377811 3.2691793655008876 0.57564939893611655 0.67387918525454382;1.8985684250792108 -0.5195162408574584 -0.030722102633513198 -0.15690150051744911 0.043291020764195637 0.13152040907001278 -0.46591713594496165 -0.19696632677304649 -0.095878547526119962 -0.058416424298381675 -0.1107539032171017 0.063657133730897555 0.54485507772939601;0.021667387542939467 -2.2675705996261892 -0.082382704850272229 -0.14994132433971211 1.222838767663212 0.24762289389304021 -1.9878835653152769 0.57702939738116998 -0.76995581604663299 0.45469403960487442 0.21243383402013019 0.25979049134607418 -0.51580169948392429;0.091522390830700323 -0.43543764449922367 -0.036823461022530535 -0.11159487797898597 0.69798243263434145 0.038556889185636808 0.54127127521599694 0.12936483942400129 -0.036590197364903196 0.60089299505068494 -0.29523588209042473 -0.042896179492764322 0.093501996379025745;1.4547403784380946 1.5356735048909838 0.25120837128108792 0.16066033727399551 0.24743767610210615 0.12978775833255438 0.6132646187436448 -0.97729339486152778 0.084459863852229866 0.32539928864440815 -0.47896594758109656 0.081394692870324151 -0.38965488284880334;-1.2858966579826818 1.1011583328295471 0.98177231191394132 0.027227922844377184 0.5266773666517367 -1.1918028723875542 1.1232641238920662 0.14361683603736997 0.7692744174214583 -0.44189723691689609 -0.40033715774489032 -0.35755513192231186 0.77585577548915885;-1.5562770514902327 -0.7502503892352993 0.37452738483289849 0.46396005321940215 -0.20722399069887953 -0.018114946599484781 -0.18007213818665418 0.44704550216999039 0.30707317692861136 0.033945550570321593 0.46126892998011926 0.17592514820406885 0.69541746477667499];
  
  % Layer 2
  b2 = [-1.9058690012176562;-1.7403537132890017;-1.3125497570593074;0.61421709453766493;0.63328687621405921;-0.14143955989431889;0.50813504683586774;0.049852076461801613;0.019471249221107587;-0.91535843396992622;-0.024867516728904554;-1.1917289870875907;1.0950350972372671;1.8040601727459162;-2.1112960197162103];
  LW2_1 = [0.56183407285781251 0.92750858518387791 0.53222395439476844 0.66379271005967655 -1.1715549270580623 0.10136075251666024 0.59834642488325906 -0.107652678050287 -0.3741521517246455 -0.22343868323834604 -0.88589907650115485 0.11135546110395654 0.51651791721691398 0.31649415537897141 0.083752180743857554;0.85484846145879922 0.2989160494623595 -1.4308900802161311 -0.10167364501289437 0.7695507673701466 -0.56304179385506359 0.11746207390857638 -1.9573140748697584 0.73043766340553085 0.27981075788959509 0.23499316550326388 0.3163780402427176 1.8957452920251172 0.94701353564148383 0.25388506713668491;0.24373021307643206 0.096753123121882445 -0.68127742936128377 -0.052435805870958932 -0.17949351923369847 -0.80890902169142598 -0.32943574559501521 0.56766845454872139 -0.11745681964901369 -2.0872993021105812 0.9294440257597163 -0.65984766554449747 1.0360276654201865 -0.37333204683339405 0.41391545751434294;-0.063232298069052187 0.012377346858526246 -0.065218926384086551 0.1991787977540096 0.067077126237840165 -0.62149231400920457 -0.18442792663947524 -0.34555751070921292 0.046795071706235897 -2.2224364072373417 0.52894537537658304 0.13059790253851347 1.2856436212574405 -0.18303735608844379 -0.19635421319380633;0.1547909183336163 -0.48708670240294211 -1.036843111307987 0.53826315393193935 -0.17661386746279309 -1.055906157591642 0.026795986814156868 0.8227873588902288 0.5854769655137072 1.09180207151449 0.95661918749516395 -0.12246832941433573 -0.12000334761455235 -0.89050679040347025 -0.44284589924989154;0.16627905288499012 -0.017287270235616679 -0.35642452460649077 -0.7028453671443281 -0.22835584198600029 -0.84946074614742062 -0.31826002561392885 1.6153118318043096 0.88014765478615353 -0.090813406224240445 -0.95725155206860491 0.92937819544509392 -0.06148774144766174 0.83098224756110217 0.036904291887035923;0.18749984275279888 -0.18824757973243395 -0.56263005958963852 -1.7629522434692875 -1.4492950474495752 -1.2717547926115123 -1.547651969960119 -1.8749308385450036 -0.64001926310352608 -1.3207431747608191 -0.1143747327072524 -0.84288240861154218 0.66044473583619745 0.40386823492410096 1.443079936970638;-0.046236753945279957 -1.1148996008298098 0.41908644637239256 -0.14295604833174697 0.6960154959714544 0.61385312915140799 0.078841489307704737 -1.8563783131864542 0.096209761498477361 2.0179040583437309 -0.69206423794933414 -0.71324749553614142 0.20049188899592146 1.5981049794522137 -0.09713874209500345;-0.82840730975099808 1.1221289767640652 0.82240894932378994 1.0205284483661994 -0.059850827219634695 1.260226279875404 0.28113296740465654 0.21196276644581735 -1.9195530566517442 1.7629251538879092 1.5750341583853278 0.052213314960499774 0.23804093812163632 0.6116395122639986 0.014126654082843623;0.24320321553088425 -0.59312263889001537 -0.18739081840829069 0.85542411788954231 0.1942906771102817 0.82955074056984257 0.3436523574786467 0.50456416721759578 0.14629256617413189 1.6720787831407871 1.3516122867252567 0.88297757835147384 0.4032081543184699 0.25378752150834361 -0.88790215839511466;-0.39157636897034231 -0.36846561948926548 0.44442236217874964 -0.054735174123076241 -0.93166268420348697 0.38172803231473901 0.26468638399103861 0.62154080008310808 -0.15685604897557062 1.1149308419546256 -0.61329516759448488 -0.84354676088551872 -1.3640729717710138 -0.24341551391000657 -0.4767957296008048;-0.0027125364766735528 0.53693993027175568 0.49497786513402348 -0.32064987597901434 -0.81987598237737092 -0.57908096086303806 0.19323462505124259 0.20571555914917194 0.062716421246603704 0.42147032166237758 1.3267588084974915 -0.44588443903610181 -0.018053505735559458 0.75919855477100862 0.61706122143700592;-0.1607402624511928 0.62152155361735018 -0.73864753375412939 0.45505381522044092 1.3633277381674904 -0.3883795703384873 -0.91474268673251502 0.7285134755001621 -0.3275002597395047 1.2552691848842366 0.87509510704255478 -0.40894906318519231 -0.40716915414761506 -0.38465091285453612 1.2504608651989353;2.1930079070658115 -0.17627154320511562 -1.0385318851266279 -1.8697392757842668 0.45960869686348976 1.8476752704072341 0.51235750084313247 0.077734779470589738 0.7977681014579856 0.53520308832589847 0.5970758590853511 -0.12951415681591832 -0.10127079495644448 -1.0967173883469954 -0.14421856128550214;0.75412106241080412 0.21541374878442901 -1.4136417337557821 0.37623782265406891 -0.62503448530195549 -0.62150478558787625 0.34080321504705618 -0.63029229340388149 -0.51227994876276273 -0.84870714701522343 0.60678204669836455 -0.30526346525723347 1.0291300787070823 0.47417567408935152 0.97802389628682729];
  
  % Layer 3
  b3 = 0.35956012167575002;
  LW3_2 = [1.5973349829060528 -2.4127567709775541 -1.8019554795485915 -0.33875369345850515 -2.3287071866722666 -1.7473117082681302 1.1255950198861482 -1.1589536083857337 -0.91050230476494431 2.4067442394664522 -1.9844184123563349 0.646758488892616 2.3378600604416095 -0.81156668491617057 1.8011752569192296];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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