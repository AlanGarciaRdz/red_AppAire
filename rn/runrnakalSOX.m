% Código para SOXrrer todas las redes neuronales
% PronóstiSOXs de SOx en 10 estaciones

clear; clc;
% Buscar número de semana a partir de la fecha
now = csvread('/root/rn/now.csv');       %archivo SOXn la fecha actual
mes=now(1); dia=now(2); hora=now(3);
fechas = csvread('/root/rn/fechas.csv'); %archivo SOXn índices de semanas
for j=1:size(fechas,1)
    if mes==fechas(j,2)&& dia==fechas(j,4)
        semana=fechas(j,3);
    end
end

% Lectura de archivo CSV de entradas
% inlets = csvread('/root/rn/inletcsv03.csv');
%A = importdata('tabla15_06_01_pm.csv');


%strout = strcat('SOXpron',strftime ("%d_%m_%H_%p", localtime (time ())),'.csv');

filetxt = strcat('tabla',strftime ("%d_%m_%I_%p", localtime (time ())),'.csv');


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

% Generación de vectores de entradas para cada parámetro
% SOX
inletSOXAguilas=[semana;hora;inlets(3,1);inlets(2,1);inlets(1,1);...
    inlets(5,1);inlets(7,1);inlets(4,1);inlets(6,1);inlets(8,1);...
    inlets(9,3);inlets(4,9);inlets(4,5)];
inletSOXAtemajac=[semana;hora;inlets(3,2);inlets(2,2);inlets(1,2);...
    inlets(5,2);inlets(7,2);inlets(4,2);inlets(6,2);inlets(8,2);...
    inlets(9,2);inlets(4,9)];
inletSOXCentro=[semana;hora;inlets(2,3);inlets(1,3);inlets(5,3);...
    inlets(7,3);inlets(4,3);inlets(8,3);inlets(9,3);inlets(4,10);...
    inlets(4,7)];
inletSOXLasPintas=[semana;hora;inlets(2,9);inlets(1,9);inlets(7,9);...
    inlets(4,9);inlets(6,9);inlets(8,9);inlets(9,9);inlets(4,2);...
    inlets(4,3);inlets(4,7);inlets(4,8)];
inletSOXLomaDorada=[semana;hora;inlets(2,4);inlets(1,4);inlets(5,4);...
    inlets(7,4);inlets(4,4);inlets(6,4);inlets(9,4);inlets(4,5);...
    inlets(4,7)];
inletSOXMiravalle=[semana;hora;inlets(7,5);inlets(4,5);inlets(6,5);...
    inlets(8,5);inlets(4,2);inlets(4,3);inlets(4,6);inlets(4,7)];
inletSOXOblatos=[semana;hora;inlets(3,6);inlets(1,6);inlets(5,6);...
    inlets(7,6);inlets(4,6);inlets(6,6);inlets(8,6);inlets(9,6);...
    inlets(4,9)];
inletSOXSantaFe=[semana;hora;inlets(3,10);inlets(2,10);inlets(1,10);...
    inlets(5,10);inlets(4,10);inlets(8,10);inlets(9,10);inlets(4,1);...
    inlets(4,2);inlets(4,9);inlets(4,4);inlets(4,6);inlets(4,8)];
inletSOXTlaquepaque=[semana;hora;inlets(3,7);inlets(2,7);inlets(1,7);...
    inlets(5,7);inlets(7,7);inlets(4,7);inlets(6,7);inlets(8,7);...
    inlets(9,7);inlets(4,1);inlets(4,6);inlets(4,10);inlets(4,8)];
inletSOXVallarta=[semana;hora;inlets(3,8);inlets(1,8);inlets(5,8);...
    inlets(7,8);inlets(4,8);inlets(6,8);inlets(8,8);inlets(4,5)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redes para SOX
% Las Águilas
pronSOXAguilas=[SOXAguilas1(inletSOXAguilas);SOXAguilas2(inletSOXAguilas);
SOXAguilas3(inletSOXAguilas);SOXAguilas4(inletSOXAguilas);SOXAguilas5(inletSOXAguilas);
SOXAguilas6(inletSOXAguilas);SOXAguilas7(inletSOXAguilas);SOXAguilas8(inletSOXAguilas);
SOXAguilas9(inletSOXAguilas);SOXAguilas10(inletSOXAguilas);SOXAguilas11(inletSOXAguilas);
SOXAguilas12(inletSOXAguilas);SOXAguilas13(inletSOXAguilas);SOXAguilas14(inletSOXAguilas);
SOXAguilas15(inletSOXAguilas);SOXAguilas16(inletSOXAguilas);SOXAguilas17(inletSOXAguilas);
SOXAguilas18(inletSOXAguilas);SOXAguilas19(inletSOXAguilas);SOXAguilas20(inletSOXAguilas);
SOXAguilas21(inletSOXAguilas);SOXAguilas22(inletSOXAguilas);SOXAguilas23(inletSOXAguilas);
SOXAguilas24(inletSOXAguilas);SOXAguilas48(inletSOXAguilas)];
% Atemajac
pronSOXAtemajac=[SOXAtemajac1(inletSOXAtemajac);SOXAtemajac2(inletSOXAtemajac);
SOXAtemajac3(inletSOXAtemajac);SOXAtemajac4(inletSOXAtemajac);SOXAtemajac5(inletSOXAtemajac);
SOXAtemajac6(inletSOXAtemajac);SOXAtemajac7(inletSOXAtemajac);SOXAtemajac8(inletSOXAtemajac);
SOXAtemajac9(inletSOXAtemajac);SOXAtemajac10(inletSOXAtemajac);SOXAtemajac11(inletSOXAtemajac);
SOXAtemajac12(inletSOXAtemajac);SOXAtemajac13(inletSOXAtemajac);SOXAtemajac14(inletSOXAtemajac);
SOXAtemajac15(inletSOXAtemajac);SOXAtemajac16(inletSOXAtemajac);SOXAtemajac17(inletSOXAtemajac);
SOXAtemajac18(inletSOXAtemajac);SOXAtemajac19(inletSOXAtemajac);SOXAtemajac20(inletSOXAtemajac);
SOXAtemajac21(inletSOXAtemajac);SOXAtemajac22(inletSOXAtemajac);SOXAtemajac23(inletSOXAtemajac);
SOXAtemajac24(inletSOXAtemajac);SOXAtemajac48(inletSOXAtemajac)];
% Centro
pronSOXCentro=[SOXCentro1(inletSOXCentro);SOXCentro2(inletSOXCentro);
SOXCentro3(inletSOXCentro);SOXCentro4(inletSOXCentro);SOXCentro5(inletSOXCentro);
SOXCentro6(inletSOXCentro);SOXCentro7(inletSOXCentro);SOXCentro8(inletSOXCentro);
SOXCentro9(inletSOXCentro);SOXCentro10(inletSOXCentro);SOXCentro11(inletSOXCentro);
SOXCentro12(inletSOXCentro);SOXCentro13(inletSOXCentro);SOXCentro14(inletSOXCentro);
SOXCentro15(inletSOXCentro);SOXCentro16(inletSOXCentro);SOXCentro17(inletSOXCentro);
SOXCentro18(inletSOXCentro);SOXCentro19(inletSOXCentro);SOXCentro20(inletSOXCentro);
SOXCentro21(inletSOXCentro);SOXCentro22(inletSOXCentro);SOXCentro23(inletSOXCentro);
SOXCentro24(inletSOXCentro);SOXCentro48(inletSOXCentro)];
% Las Pintas
pronSOXLasPintas=[SOXLasPintas1(inletSOXLasPintas);SOXLasPintas2(inletSOXLasPintas);
SOXLasPintas3(inletSOXLasPintas);SOXLasPintas4(inletSOXLasPintas);SOXLasPintas5(inletSOXLasPintas);
SOXLasPintas6(inletSOXLasPintas);SOXLasPintas7(inletSOXLasPintas);SOXLasPintas8(inletSOXLasPintas);
SOXLasPintas9(inletSOXLasPintas);SOXLasPintas10(inletSOXLasPintas);SOXLasPintas11(inletSOXLasPintas);
SOXLasPintas12(inletSOXLasPintas);SOXLasPintas13(inletSOXLasPintas);SOXLasPintas14(inletSOXLasPintas);
SOXLasPintas15(inletSOXLasPintas);SOXLasPintas16(inletSOXLasPintas);SOXLasPintas17(inletSOXLasPintas);
SOXLasPintas18(inletSOXLasPintas);SOXLasPintas19(inletSOXLasPintas);SOXLasPintas20(inletSOXLasPintas);
SOXLasPintas21(inletSOXLasPintas);SOXLasPintas22(inletSOXLasPintas);SOXLasPintas23(inletSOXLasPintas);
SOXLasPintas24(inletSOXLasPintas);SOXLasPintas48(inletSOXLasPintas)];
% Loma Dorada
pronSOXLomaDorada=[SOXLomaDorada1(inletSOXLomaDorada);SOXLomaDorada2(inletSOXLomaDorada);
SOXLomaDorada3(inletSOXLomaDorada);SOXLomaDorada4(inletSOXLomaDorada);SOXLomaDorada5(inletSOXLomaDorada);
SOXLomaDorada6(inletSOXLomaDorada);SOXLomaDorada7(inletSOXLomaDorada);SOXLomaDorada8(inletSOXLomaDorada);
SOXLomaDorada9(inletSOXLomaDorada);SOXLomaDorada10(inletSOXLomaDorada);SOXLomaDorada11(inletSOXLomaDorada);
SOXLomaDorada12(inletSOXLomaDorada);SOXLomaDorada13(inletSOXLomaDorada);SOXLomaDorada14(inletSOXLomaDorada);
SOXLomaDorada15(inletSOXLomaDorada);SOXLomaDorada16(inletSOXLomaDorada);SOXLomaDorada17(inletSOXLomaDorada);
SOXLomaDorada18(inletSOXLomaDorada);SOXLomaDorada19(inletSOXLomaDorada);SOXLomaDorada20(inletSOXLomaDorada);
SOXLomaDorada21(inletSOXLomaDorada);SOXLomaDorada22(inletSOXLomaDorada);SOXLomaDorada23(inletSOXLomaDorada);
SOXLomaDorada24(inletSOXLomaDorada);SOXLomaDorada48(inletSOXLomaDorada)];
% Miravalle
pronSOXMiravalle=[SOXMiravalle1(inletSOXMiravalle);SOXMiravalle2(inletSOXMiravalle);
SOXMiravalle3(inletSOXMiravalle);SOXMiravalle4(inletSOXMiravalle);SOXMiravalle5(inletSOXMiravalle);
SOXMiravalle6(inletSOXMiravalle);SOXMiravalle7(inletSOXMiravalle);SOXMiravalle8(inletSOXMiravalle);
SOXMiravalle9(inletSOXMiravalle);SOXMiravalle10(inletSOXMiravalle);SOXMiravalle11(inletSOXMiravalle);
SOXMiravalle12(inletSOXMiravalle);SOXMiravalle13(inletSOXMiravalle);SOXMiravalle14(inletSOXMiravalle);
SOXMiravalle15(inletSOXMiravalle);SOXMiravalle16(inletSOXMiravalle);SOXMiravalle17(inletSOXMiravalle);
SOXMiravalle18(inletSOXMiravalle);SOXMiravalle19(inletSOXMiravalle);SOXMiravalle20(inletSOXMiravalle);
SOXMiravalle21(inletSOXMiravalle);SOXMiravalle22(inletSOXMiravalle);SOXMiravalle23(inletSOXMiravalle);
SOXMiravalle24(inletSOXMiravalle);SOXMiravalle48(inletSOXMiravalle)];
% Oblatos
pronSOXOblatos=[SOXOblatos1(inletSOXOblatos);SOXOblatos2(inletSOXOblatos);
SOXOblatos3(inletSOXOblatos);SOXOblatos4(inletSOXOblatos);SOXOblatos5(inletSOXOblatos);
SOXOblatos6(inletSOXOblatos);SOXOblatos7(inletSOXOblatos);SOXOblatos8(inletSOXOblatos);
SOXOblatos9(inletSOXOblatos);SOXOblatos10(inletSOXOblatos);SOXOblatos11(inletSOXOblatos);
SOXOblatos12(inletSOXOblatos);SOXOblatos13(inletSOXOblatos);SOXOblatos14(inletSOXOblatos);
SOXOblatos15(inletSOXOblatos);SOXOblatos16(inletSOXOblatos);SOXOblatos17(inletSOXOblatos);
SOXOblatos18(inletSOXOblatos);SOXOblatos19(inletSOXOblatos);SOXOblatos20(inletSOXOblatos);
SOXOblatos21(inletSOXOblatos);SOXOblatos22(inletSOXOblatos);SOXOblatos23(inletSOXOblatos);
SOXOblatos24(inletSOXOblatos);SOXOblatos48(inletSOXOblatos)];
% Santa Fé
pronSOXSantaFe=[SOXSantaFe1(inletSOXSantaFe);SOXSantaFe2(inletSOXSantaFe);
SOXSantaFe3(inletSOXSantaFe);SOXSantaFe4(inletSOXSantaFe);SOXSantaFe5(inletSOXSantaFe);
SOXSantaFe6(inletSOXSantaFe);SOXSantaFe7(inletSOXSantaFe);SOXSantaFe8(inletSOXSantaFe);
SOXSantaFe9(inletSOXSantaFe);SOXSantaFe10(inletSOXSantaFe);SOXSantaFe11(inletSOXSantaFe);
SOXSantaFe12(inletSOXSantaFe);SOXSantaFe13(inletSOXSantaFe);SOXSantaFe14(inletSOXSantaFe);
SOXSantaFe15(inletSOXSantaFe);SOXSantaFe16(inletSOXSantaFe);SOXSantaFe17(inletSOXSantaFe);
SOXSantaFe18(inletSOXSantaFe);SOXSantaFe19(inletSOXSantaFe);SOXSantaFe20(inletSOXSantaFe);
SOXSantaFe21(inletSOXSantaFe);SOXSantaFe22(inletSOXSantaFe);SOXSantaFe23(inletSOXSantaFe);
SOXSantaFe24(inletSOXSantaFe);SOXSantaFe48(inletSOXSantaFe)];
% Tlaquepaque
pronSOXTlaquepaque=[SOXTlaquepaque1(inletSOXTlaquepaque);SOXTlaquepaque2(inletSOXTlaquepaque);
SOXTlaquepaque3(inletSOXTlaquepaque);SOXTlaquepaque4(inletSOXTlaquepaque);SOXTlaquepaque5(inletSOXTlaquepaque);
SOXTlaquepaque6(inletSOXTlaquepaque);SOXTlaquepaque7(inletSOXTlaquepaque);SOXTlaquepaque8(inletSOXTlaquepaque);
SOXTlaquepaque9(inletSOXTlaquepaque);SOXTlaquepaque10(inletSOXTlaquepaque);SOXTlaquepaque11(inletSOXTlaquepaque);
SOXTlaquepaque12(inletSOXTlaquepaque);SOXTlaquepaque13(inletSOXTlaquepaque);SOXTlaquepaque14(inletSOXTlaquepaque);
SOXTlaquepaque15(inletSOXTlaquepaque);SOXTlaquepaque16(inletSOXTlaquepaque);SOXTlaquepaque17(inletSOXTlaquepaque);
SOXTlaquepaque18(inletSOXTlaquepaque);SOXTlaquepaque19(inletSOXTlaquepaque);SOXTlaquepaque20(inletSOXTlaquepaque);
SOXTlaquepaque21(inletSOXTlaquepaque);SOXTlaquepaque22(inletSOXTlaquepaque);SOXTlaquepaque23(inletSOXTlaquepaque);
SOXTlaquepaque24(inletSOXTlaquepaque);SOXTlaquepaque48(inletSOXTlaquepaque)];
% Vallarta
pronSOXVallarta=[SOXVallarta1(inletSOXVallarta);SOXVallarta2(inletSOXVallarta);
SOXVallarta3(inletSOXVallarta);SOXVallarta4(inletSOXVallarta);SOXVallarta5(inletSOXVallarta);
SOXVallarta6(inletSOXVallarta);SOXVallarta7(inletSOXVallarta);SOXVallarta8(inletSOXVallarta);
SOXVallarta9(inletSOXVallarta);SOXVallarta10(inletSOXVallarta);SOXVallarta11(inletSOXVallarta);
SOXVallarta12(inletSOXVallarta);SOXVallarta13(inletSOXVallarta);SOXVallarta14(inletSOXVallarta);
SOXVallarta15(inletSOXVallarta);SOXVallarta16(inletSOXVallarta);SOXVallarta17(inletSOXVallarta);
SOXVallarta18(inletSOXVallarta);SOXVallarta19(inletSOXVallarta);SOXVallarta20(inletSOXVallarta);
SOXVallarta21(inletSOXVallarta);SOXVallarta22(inletSOXVallarta);SOXVallarta23(inletSOXVallarta);
SOXVallarta24(inletSOXVallarta);SOXVallarta48(inletSOXVallarta)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOXrrección SOXn filtro de Kalman
%Las Águilas
QRPX.Q = csvread('/root/rn/QSOXagu.csv'); QRPX.R = csvread('/root/rn/RSOXagu.csv');       
QRPX.P = csvread('/root/rn/PSOXagu.csv'); QRPX.X = csvread('/root/rn/XSOXagu.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,1),pronSOXAguilas,QRPX);
csvwrite('PSOXagu.csv',PSOX); csvwrite('XSOXagu.csv',XSOX);
SOXfinal(:,1)=pronSOXKal;
%Atemajac
QRPX.Q = csvread('/root/rn/QSOXatm.csv'); QRPX.R = csvread('/root/rn/RSOXatm.csv');       
QRPX.P = csvread('/root/rn/PSOXatm.csv'); QRPX.X = csvread('/root/rn/XSOXatm.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,2),pronSOXAtemajac,QRPX);
csvwrite('PSOXatm.csv',PSOX); csvwrite('XSOXatm.csv',XSOX);
SOXfinal(:,2)=pronSOXKal;
%Centro
QRPX.Q = csvread('/root/rn/QSOXcen.csv'); QRPX.R = csvread('/root/rn/RSOXcen.csv');       
QRPX.P = csvread('/root/rn/PSOXcen.csv'); QRPX.X = csvread('/root/rn/XSOXcen.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,3),pronSOXAtemajac,QRPX);
csvwrite('PSOXcen.csv',PSOX); csvwrite('XSOXcen.csv',XSOX);
SOXfinal(:,3)=pronSOXKal;
%Las Pintas
QRPX.Q = csvread('/root/rn/QSOXlpin.csv'); QRPX.R = csvread('/root/rn/RSOXlpin.csv');       
QRPX.P = csvread('/root/rn/PSOXlpin.csv'); QRPX.X = csvread('/root/rn/XSOXlpin.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,9),pronSOXAtemajac,QRPX);
csvwrite('PSOXlpin.csv',PSOX); csvwrite('XSOXlpin.csv',XSOX);
SOXfinal(:,4)=pronSOXKal;
%Loma Dorada
QRPX.Q = csvread('/root/rn/QSOXldo.csv'); QRPX.R = csvread('/root/rn/RSOXldo.csv');       
QRPX.P = csvread('/root/rn/PSOXldo.csv'); QRPX.X = csvread('/root/rn/XSOXldo.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,4),pronSOXAtemajac,QRPX);
csvwrite('PSOXldo.csv',PSOX); csvwrite('XSOXldo.csv',XSOX);
SOXfinal(:,5)=pronSOXKal;
%Miravalle
QRPX.Q = csvread('/root/rn/QSOXmir.csv'); QRPX.R = csvread('/root/rn/RSOXmir.csv');       
QRPX.P = csvread('/root/rn/PSOXmir.csv'); QRPX.X = csvread('/root/rn/XSOXmir.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,5),pronSOXAtemajac,QRPX);
csvwrite('PSOXmir.csv',PSOX); csvwrite('XSOXmir.csv',XSOX);
SOXfinal(:,6)=pronSOXKal;
%Oblatos
QRPX.Q = csvread('/root/rn/QSOXobl.csv'); QRPX.R = csvread('/root/rn/RSOXobl.csv');       
QRPX.P = csvread('/root/rn/PSOXobl.csv'); QRPX.X = csvread('/root/rn/XSOXobl.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,6),pronSOXAtemajac,QRPX);
csvwrite('PSOXobl.csv',PSOX); csvwrite('XSOXobl.csv',XSOX);
SOXfinal(:,7)=pronSOXKal;
%Santa Fé
QRPX.Q = csvread('/root/rn/QSOXsfe.csv'); QRPX.R = csvread('/root/rn/RSOXsfe.csv');       
QRPX.P = csvread('/root/rn/PSOXsfe.csv'); QRPX.X = csvread('/root/rn/XSOXsfe.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,10),pronSOXAtemajac,QRPX);
csvwrite('PSOXsfe.csv',PSOX); csvwrite('XSOXsfe.csv',XSOX);
SOXfinal(:,8)=pronSOXKal;
%Tlaquepaque
QRPX.Q = csvread('/root/rn/QSOXtla.csv'); QRPX.R = csvread('/root/rn/RSOXtla.csv');       
QRPX.P = csvread('/root/rn/PSOXtla.csv'); QRPX.X = csvread('/root/rn/XSOXtla.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,7),pronSOXAtemajac,QRPX);
csvwrite('PSOXtla.csv',PSOX); csvwrite('XSOXtla.csv',XSOX);
SOXfinal(:,9)=pronSOXKal;
%Vallarta
QRPX.Q = csvread('/root/rn/QSOXval.csv'); QRPX.R = csvread('/root/rn/RSOXval.csv');       
QRPX.P = csvread('/root/rn/PSOXval.csv'); QRPX.X = csvread('/root/rn/XSOXval.csv');      
[pronSOXKal,PSOX,XSOX]=kalman(inlets(4,8),pronSOXAtemajac,QRPX);
csvwrite('PSOXval.csv',PSOX); csvwrite('XSOXval.csv',XSOX);
SOXfinal(:,10)=pronSOXKal;

%Archivo de Salida
csvwrite('SOXpron.csv',SOXfinal);


strout = strcat('SOXpron',strftime ("%d_%m_%Y_%H_%p", localtime (time ())),'.csv');
csvwrite(strcat('/var/www/html/kml/resultrn/',strout),SOXfinal);

