% C�digo para PM10rrer todas las redes neuronales
% Pron�stiPM10s de 5 par�metros en 10 estaciones

clear; clc;
addpath ("/root/rn/")

tm_struct = localtime (time ())
mes = localtime (time ()).mon
mes = mes+1
dia = localtime (time ()).mday
hora = localtime (time ()).hour

fechas = csvread('/root/rn/fechas.csv'); %archivo PM10n �ndices de semanas

for j=1:size(fechas,1)
    if mes==fechas(j,2)&& dia==fechas(j,4)
        semana=fechas(j,3);
    end
end



% Lectura de archivo CSV de entradas
% inlets = csvread('/root/rn/inletcsv03.csv');


%strout = strcat('COpron',strftime ("%d_%m_%H_%p", localtime (time ())),'.csv');

filetxt = strcat('tabla',strftime ("%d_%m_%I_%p", localtime (time ())),'.csv');

%filetxt = "tabla12_09_01_am.csv"  %file of testing

sprintf(strcat('/var/www/html/kml/Data/', tolower(filetxt)))

A = importdata(strcat('/var/www/html/kml/Data/', tolower(filetxt)));



inlets=[];
for i=1:9
    A{i+1}=strrep(A{i+1},'"','');
    A{i+1}=strrep(A{i+1},' ','');
    A{i+1}=strrep(A{i+1},'ND','0');
    B = A{i+1};
    C=str2num(B);
    inlets=[inlets;C];
end
clear A B C

% Valores de CO al tiempo cero
COzero=[inlets(3,1),inlets(3,2),inlets(3,3),inlets(3,9),inlets(3,4),...
    inlets(3,5),inlets(3,6),inlets(3,10),inlets(3,7),inlets(3,8)];

% Generaci�n de vectores de entradas para cada par�metro
% CO
inletCOAguilas=[semana;hora;inlets(3,1);inlets(2,1);inlets(5,1);...
    inlets(7,1);inlets(4,1);inlets(6,1);inlets(8,1);inlets(9,1);...
    inlets(3,3);inlets(3,5)];
inletCOAtemajac=[semana;hora;inlets(3,2);inlets(1,2);inlets(5,2);...
    inlets(7,2);inlets(4,2);inlets(6,2);inlets(8,2);inlets(9,2)];
inletCOCentro=[semana;hora;inlets(3,3);inlets(1,3);inlets(5,3);...
    inlets(7,3);inlets(8,3);inlets(9,3);inlets(3,1);inlets(3,9)];
inletCOLasPintas=[semana;hora;inlets(3,9);inlets(1,9);inlets(7,9);...
    inlets(6,9);inlets(8,9);inlets(9,9)];
inletCOLomaDorada=[semana;hora;inlets(3,4);inlets(1,4);inlets(5,4);...
    inlets(7,4);inlets(6,4)];
inletCOMiravalle=[semana;hora;inlets(3,5);inlets(1,5);inlets(7,5);...
    inlets(6,5);inlets(8,5);inlets(9,5)];
inletCOOblatos=[semana;hora;inlets(3,6);inlets(1,6);inlets(5,6);...
    inlets(7,6);inlets(4,6);inlets(6,6);inlets(8,6);inlets(9,6)];
inletCOSantaFe=[semana;hora;inlets(3,10);inlets(2,10);inlets(1,10);...
    inlets(5,10);inlets(4,10);inlets(8,10);inlets(9,10);...
    inlets(3,1);inlets(4,2);inlets(4,9)];
inletCOTlaquepaque=[semana;hora;inlets(3,7);inlets(1,7);inlets(7,7);...
    inlets(4,7);inlets(6,7);inlets(8,7);inlets(9,7);inlets(3,1)];
inletCOVallarta=[semana;hora;inlets(3,8);inlets(2,8);inlets(4,8);...
    inlets(6,8);inlets(8,8);inlets(9,8);inlets(3,2);inlets(3,3);...
    inlets(3,4);inlets(3,5);inlets(3,6);inlets(3,8);inlets(3,7);];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redes para CO
% Las �guilas
pronCOAguilas=[COAguilas1(inletCOAguilas);COAguilas2(inletCOAguilas);
COAguilas3(inletCOAguilas);COAguilas4(inletCOAguilas);COAguilas5(inletCOAguilas);
COAguilas6(inletCOAguilas);COAguilas7(inletCOAguilas);COAguilas8(inletCOAguilas);
COAguilas9(inletCOAguilas);COAguilas10(inletCOAguilas);COAguilas11(inletCOAguilas);
COAguilas12(inletCOAguilas);COAguilas13(inletCOAguilas);COAguilas14(inletCOAguilas);
COAguilas15(inletCOAguilas);COAguilas16(inletCOAguilas);COAguilas17(inletCOAguilas);
COAguilas18(inletCOAguilas);COAguilas19(inletCOAguilas);COAguilas20(inletCOAguilas);
COAguilas21(inletCOAguilas);COAguilas22(inletCOAguilas);COAguilas23(inletCOAguilas);
COAguilas24(inletCOAguilas);COAguilas48(inletCOAguilas)];
% Atemajac
pronCOAtemajac=[COAtemajac1(inletCOAtemajac);COAtemajac2(inletCOAtemajac);
COAtemajac3(inletCOAtemajac);COAtemajac4(inletCOAtemajac);COAtemajac5(inletCOAtemajac);
COAtemajac6(inletCOAtemajac);COAtemajac7(inletCOAtemajac);COAtemajac8(inletCOAtemajac);
COAtemajac9(inletCOAtemajac);COAtemajac10(inletCOAtemajac);COAtemajac11(inletCOAtemajac);
COAtemajac12(inletCOAtemajac);COAtemajac13(inletCOAtemajac);COAtemajac14(inletCOAtemajac);
COAtemajac15(inletCOAtemajac);COAtemajac16(inletCOAtemajac);COAtemajac17(inletCOAtemajac);
COAtemajac18(inletCOAtemajac);COAtemajac19(inletCOAtemajac);COAtemajac20(inletCOAtemajac);
COAtemajac21(inletCOAtemajac);COAtemajac22(inletCOAtemajac);COAtemajac23(inletCOAtemajac);
COAtemajac24(inletCOAtemajac);COAtemajac48(inletCOAtemajac)];
% Centro
pronCOCentro=[COCentro1(inletCOCentro);COCentro2(inletCOCentro);
COCentro3(inletCOCentro);COCentro4(inletCOCentro);COCentro5(inletCOCentro);
COCentro6(inletCOCentro);COCentro7(inletCOCentro);COCentro8(inletCOCentro);
COCentro9(inletCOCentro);COCentro10(inletCOCentro);COCentro11(inletCOCentro);
COCentro12(inletCOCentro);COCentro13(inletCOCentro);COCentro14(inletCOCentro);
COCentro15(inletCOCentro);COCentro16(inletCOCentro);COCentro17(inletCOCentro);
COCentro18(inletCOCentro);COCentro19(inletCOCentro);COCentro20(inletCOCentro);
COCentro21(inletCOCentro);COCentro22(inletCOCentro);COCentro23(inletCOCentro);
COCentro24(inletCOCentro);COCentro48(inletCOCentro)];
% Las Pintas
pronCOLasPintas=[COLasPintas1(inletCOLasPintas);COLasPintas2(inletCOLasPintas);
COLasPintas3(inletCOLasPintas);COLasPintas4(inletCOLasPintas);COLasPintas5(inletCOLasPintas);
COLasPintas6(inletCOLasPintas);COLasPintas7(inletCOLasPintas);COLasPintas8(inletCOLasPintas);
COLasPintas9(inletCOLasPintas);COLasPintas10(inletCOLasPintas);COLasPintas11(inletCOLasPintas);
COLasPintas12(inletCOLasPintas);COLasPintas13(inletCOLasPintas);COLasPintas14(inletCOLasPintas);
COLasPintas15(inletCOLasPintas);COLasPintas16(inletCOLasPintas);COLasPintas17(inletCOLasPintas);
COLasPintas18(inletCOLasPintas);COLasPintas19(inletCOLasPintas);COLasPintas20(inletCOLasPintas);
COLasPintas21(inletCOLasPintas);COLasPintas22(inletCOLasPintas);COLasPintas23(inletCOLasPintas);
COLasPintas24(inletCOLasPintas);COLasPintas48(inletCOLasPintas)];
% Loma Dorada
pronCOLomaDorada=[COLomaDorada1(inletCOLomaDorada);COLomaDorada2(inletCOLomaDorada);
COLomaDorada3(inletCOLomaDorada);COLomaDorada4(inletCOLomaDorada);COLomaDorada5(inletCOLomaDorada);
COLomaDorada6(inletCOLomaDorada);COLomaDorada7(inletCOLomaDorada);COLomaDorada8(inletCOLomaDorada);
COLomaDorada9(inletCOLomaDorada);COLomaDorada10(inletCOLomaDorada);COLomaDorada11(inletCOLomaDorada);
COLomaDorada12(inletCOLomaDorada);COLomaDorada13(inletCOLomaDorada);COLomaDorada14(inletCOLomaDorada);
COLomaDorada15(inletCOLomaDorada);COLomaDorada16(inletCOLomaDorada);COLomaDorada17(inletCOLomaDorada);
COLomaDorada18(inletCOLomaDorada);COLomaDorada19(inletCOLomaDorada);COLomaDorada20(inletCOLomaDorada);
COLomaDorada21(inletCOLomaDorada);COLomaDorada22(inletCOLomaDorada);COLomaDorada23(inletCOLomaDorada);
COLomaDorada24(inletCOLomaDorada);COLomaDorada48(inletCOLomaDorada)];
% Miravalle
pronCOMiravalle=[COMiravalle1(inletCOMiravalle);COMiravalle2(inletCOMiravalle);
COMiravalle3(inletCOMiravalle);COMiravalle4(inletCOMiravalle);COMiravalle5(inletCOMiravalle);
COMiravalle6(inletCOMiravalle);COMiravalle7(inletCOMiravalle);COMiravalle8(inletCOMiravalle);
COMiravalle9(inletCOMiravalle);COMiravalle10(inletCOMiravalle);COMiravalle11(inletCOMiravalle);
COMiravalle12(inletCOMiravalle);COMiravalle13(inletCOMiravalle);COMiravalle14(inletCOMiravalle);
COMiravalle15(inletCOMiravalle);COMiravalle16(inletCOMiravalle);COMiravalle17(inletCOMiravalle);
COMiravalle18(inletCOMiravalle);COMiravalle19(inletCOMiravalle);COMiravalle20(inletCOMiravalle);
COMiravalle21(inletCOMiravalle);COMiravalle22(inletCOMiravalle);COMiravalle23(inletCOMiravalle);
COMiravalle24(inletCOMiravalle);COMiravalle48(inletCOMiravalle)];
% Oblatos
pronCOOblatos=[COOblatos1(inletCOOblatos);COOblatos2(inletCOOblatos);
COOblatos3(inletCOOblatos);COOblatos4(inletCOOblatos);COOblatos5(inletCOOblatos);
COOblatos6(inletCOOblatos);COOblatos7(inletCOOblatos);COOblatos8(inletCOOblatos);
COOblatos9(inletCOOblatos);COOblatos10(inletCOOblatos);COOblatos11(inletCOOblatos);
COOblatos12(inletCOOblatos);COOblatos13(inletCOOblatos);COOblatos14(inletCOOblatos);
COOblatos15(inletCOOblatos);COOblatos16(inletCOOblatos);COOblatos17(inletCOOblatos);
COOblatos18(inletCOOblatos);COOblatos19(inletCOOblatos);COOblatos20(inletCOOblatos);
COOblatos21(inletCOOblatos);COOblatos22(inletCOOblatos);COOblatos23(inletCOOblatos);
COOblatos24(inletCOOblatos);COOblatos48(inletCOOblatos)];
% Santa F�
pronCOSantaFe=[COSantaFe1(inletCOSantaFe);COSantaFe2(inletCOSantaFe);
COSantaFe3(inletCOSantaFe);COSantaFe4(inletCOSantaFe);COSantaFe5(inletCOSantaFe);
COSantaFe6(inletCOSantaFe);COSantaFe7(inletCOSantaFe);COSantaFe8(inletCOSantaFe);
COSantaFe9(inletCOSantaFe);COSantaFe10(inletCOSantaFe);COSantaFe11(inletCOSantaFe);
COSantaFe12(inletCOSantaFe);COSantaFe13(inletCOSantaFe);COSantaFe14(inletCOSantaFe);
COSantaFe15(inletCOSantaFe);COSantaFe16(inletCOSantaFe);COSantaFe17(inletCOSantaFe);
COSantaFe18(inletCOSantaFe);COSantaFe19(inletCOSantaFe);COSantaFe20(inletCOSantaFe);
COSantaFe21(inletCOSantaFe);COSantaFe22(inletCOSantaFe);COSantaFe23(inletCOSantaFe);
COSantaFe24(inletCOSantaFe);COSantaFe48(inletCOSantaFe)];
% Tlaquepaque
pronCOTlaquepaque=[COTlaquepaque1(inletCOTlaquepaque);COTlaquepaque2(inletCOTlaquepaque);
COTlaquepaque3(inletCOTlaquepaque);COTlaquepaque4(inletCOTlaquepaque);COTlaquepaque5(inletCOTlaquepaque);
COTlaquepaque6(inletCOTlaquepaque);COTlaquepaque7(inletCOTlaquepaque);COTlaquepaque8(inletCOTlaquepaque);
COTlaquepaque9(inletCOTlaquepaque);COTlaquepaque10(inletCOTlaquepaque);COTlaquepaque11(inletCOTlaquepaque);
COTlaquepaque12(inletCOTlaquepaque);COTlaquepaque13(inletCOTlaquepaque);COTlaquepaque14(inletCOTlaquepaque);
COTlaquepaque15(inletCOTlaquepaque);COTlaquepaque16(inletCOTlaquepaque);COTlaquepaque17(inletCOTlaquepaque);
COTlaquepaque18(inletCOTlaquepaque);COTlaquepaque19(inletCOTlaquepaque);COTlaquepaque20(inletCOTlaquepaque);
COTlaquepaque21(inletCOTlaquepaque);COTlaquepaque22(inletCOTlaquepaque);COTlaquepaque23(inletCOTlaquepaque);
COTlaquepaque24(inletCOTlaquepaque);COTlaquepaque48(inletCOTlaquepaque)];
% Vallarta
pronCOVallarta=[COVallarta1(inletCOVallarta);COVallarta2(inletCOVallarta);
COVallarta3(inletCOVallarta);COVallarta4(inletCOVallarta);COVallarta5(inletCOVallarta);
COVallarta6(inletCOVallarta);COVallarta7(inletCOVallarta);COVallarta8(inletCOVallarta);
COVallarta9(inletCOVallarta);COVallarta10(inletCOVallarta);COVallarta11(inletCOVallarta);
COVallarta12(inletCOVallarta);COVallarta13(inletCOVallarta);COVallarta14(inletCOVallarta);
COVallarta15(inletCOVallarta);COVallarta16(inletCOVallarta);COVallarta17(inletCOVallarta);
COVallarta18(inletCOVallarta);COVallarta19(inletCOVallarta);COVallarta20(inletCOVallarta);
COVallarta21(inletCOVallarta);COVallarta22(inletCOVallarta);COVallarta23(inletCOVallarta);
COVallarta24(inletCOVallarta);COVallarta48(inletCOVallarta)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Correcci�n con filtro de Kalman
%Las �guilas
% QRPX.Q = csvread('/root/rn/QCOagu.csv'); QRPX.R = csvread('/root/rn/RCOagu.csv');       
% QRPX.P = csvread('/root/rn/PCOagu.csv'); QRPX.X = csvread('/root/rn/XCOagu.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,1),pronCOAguilas,QRPX);
% csvwrite('PCOagu.csv',PCO); csvwrite('XCOagu.csv',XCO);
% COfinal(:,1)=[COzero(1);pronCOKal(1:3);pronCOAguilas(4:24)]; %c/kalman
COfinal(:,1)=[COzero(1);pronCOAguilas(1:24)];    %s/kalman

%Atemajac
% QRPX.Q = csvread('/root/rn/QCOatm.csv'); QRPX.R = csvread('/root/rn/RCOatm.csv');       
% QRPX.P = csvread('/root/rn/PCOatm.csv'); QRPX.X = csvread('/root/rn/XCOatm.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,2),pronCOAtemajac,QRPX);
% csvwrite('PCOatm.csv',PCO); csvwrite('XCOatm.csv',XCO);
% COfinal(:,2)=[COzero(2);pronCOKal(1:3);pronCOAtemajac(4:24)]; %c/kalman
COfinal(:,2)=[COzero(2);pronCOAtemajac(1:24)];   %s/kalman

%Centro
% QRPX.Q = csvread('/root/rn/QCOcen.csv'); QRPX.R = csvread('/root/rn/RCOcen.csv');       
% QRPX.P = csvread('PCOcen.csv'); QRPX.X = csvread('XCOcen.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,3),pronCOCentro,QRPX);
% csvwrite('PCOcen.csv',PCO); csvwrite('XCOcen.csv',XCO);
% COfinal(:,3)=[COzero(3);pronCOKal(1:3);pronCOCentro(4:24)];   %c/kalman
COfinal(:,3)=[COzero(3);pronCOCentro(1:24)]; %s/kalman

%Las Pintas
% QRPX.Q = csvread('/root/rn/QCOlpin.csv'); QRPX.R = csvread('/root/rn/RCOlpin.csv');       
% QRPX.P = csvread('/root/rn/PCOlpin.csv'); QRPX.X = csvread('/root/rn/XCOlpin.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,9),pronCOLasPintas,QRPX);
% csvwrite('PCOlpin.csv',PCO); csvwrite('XCOlpin.csv',XCO);
% COfinal(:,4)=[COzero(4);pronCOKal(1:3);pronCOLasPintas(4:24)]; %c/kalman
COfinal(:,4)=[COzero(4);pronCOLasPintas(1:24)];  %s/kalman

%Loma Dorada
% QRPX.Q = csvread('/root/rn/QCOldo.csv'); QRPX.R = csvread('/root/rn/RCOldo.csv');       
% QRPX.P = csvread('/root/rn/PCOldo.csv'); QRPX.X = csvread('/root/rn/XCOldo.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,4),pronCOLomaDorada,QRPX);
% csvwrite('PCOldo.csv',PCO); csvwrite('XCOldo.csv',XCO);
% COfinal(:,5)=[COzero(5);pronCOKal(1:3);pronCOLomaDorada(4:24)]; %c/kalman
COfinal(:,5)=[COzero(5);pronCOLomaDorada(1:24)]; %s/kalman

%Miravalle
% QRPX.Q = csvread('/root/rn/QCOmir.csv'); QRPX.R = csvread('/root/rn/RCOmir.csv');       
% QRPX.P = csvread('/root/rn/PCOmir.csv'); QRPX.X = csvread('/root/rn/XCOmir.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,5),pronCOMiravalle,QRPX);
% csvwrite('PCOmir.csv',PCO); csvwrite('XCOmir.csv',XCO);
% COfinal(:,6)=[COzero(6);pronCOKal(1:3);pronCOMiravalle(4:24)]; %c/kalman
COfinal(:,6)=[COzero(6);pronCOMiravalle(1:24)];  %s/kalman

%Oblatos
% QRPX.Q = csvread('/root/rn/QCOobl.csv'); QRPX.R = csvread('/root/rn/RCOobl.csv');       
% QRPX.P = csvread('/root/rn/PCOobl.csv'); QRPX.X = csvread('/root/rn/XCOobl.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,6),pronCOOblatos,QRPX);
% csvwrite('PCOobl.csv',PCO); csvwrite('XCOobl.csv',XCO);
% COfinal(:,7)=[COzero(7);pronCOKal(1:3);pronCOOblatos(4:24)]; %c/kalman
COfinal(:,7)=[COzero(7);pronCOOblatos(1:24)];  %s/kalman

%Santa F�
% QRPX.Q = csvread('/root/rn/QCOsfe.csv'); QRPX.R = csvread('/root/rn/RCOsfe.csv');       
% QRPX.P = csvread('/root/rn/PCOsfe.csv'); QRPX.X = csvread('/root/rn/XCOsfe.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,10),pronCOSantaFe,QRPX);
% csvwrite('PCOsfe.csv',PCO); csvwrite('XCOsfe.csv',XCO);
% COfinal(:,8)=[COzero(8);pronCOKal(1:3);pronCOSantaFe(4:24)]; %c/kalman
COfinal(:,8)=[COzero(8);pronCOSantaFe(1:24)];   %s/kalman

%Tlaquepaque
% QRPX.Q = csvread('/root/rn/QCOtla.csv'); QRPX.R = csvread('/root/rn/RCOtla.csv');       
% QRPX.P = csvread('/root/rn/PCOtla.csv'); QRPX.X = csvread('/root/rn/XCOtla.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,7),pronCOTlaquepaque,QRPX);
% csvwrite('PCOtla.csv',PCO); csvwrite('XCOtla.csv',XCO);
% COfinal(:,9)=[COzero(9);pronCOKal(1:3);pronCOTlaquepaque(4:24)]; %c/kalman
COfinal(:,9)=[COzero(9);pronCOTlaquepaque(1:24)];  %s/kalman

%Vallarta
% QRPX.Q = csvread('/root/rn/QCOval.csv'); QRPX.R = csvread('/root/rn/RCOval.csv');       
% QRPX.P = csvread('/root/rn/PCOval.csv'); QRPX.X = csvread('/root/rn/XCOval.csv');      
% [pronCOKal,PCO,XCO]=kalman(inlets(3,8),pronCOVallarta,QRPX);
% csvwrite('PCOval.csv',PCO); csvwrite('XCOval.csv',XCO);
% COfinal(:,10)=[COzero(10);pronCOKal(1:3);pronCOVallarta(4:24)]; %c/kalman
COfinal(:,10)=[COzero(10);pronCOVallarta(1:24)];  %s/kalman

%Archivo de Salida
%csvwrite('COpron.csv',COfinal);

strout = strcat('COpron',strftime ("%d_%m_%Y_%H_%p", localtime (time ())),'.csv');
csvwrite(strcat('/var/www/html/kml/resultrn/',strout),COfinal);

