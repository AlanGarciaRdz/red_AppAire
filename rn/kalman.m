function [pronfil,P,X]=kalman(actualval,predictions,QRPX)
% Programa para filtro de kalman
%Matrices de Kalman
Q=QRPX.Q;
R=QRPX.R;
P=QRPX.P;
X=QRPX.X;

% Constantes
% A=eye(25);                % matriz de transición de estados
% H=eye(25);                % matriz de transición de la predicción
% B=zeros(25);              % matriz de control
% u=zeros(25,1);            % entrada de control del sistema
A=1;                        % matriz de transición de estados
H=1;                        % matriz de transición de la predicción
B=0;                        % matriz de control
u=0;                        % entrada de control del sistema
pronfil=zeros(25,1);

for i=1:25
    if i==1
        vartmenos1=actualval;
    else
        vartmenos1=pronfil(i-1);
    end
    %cálculo del error a filtrar
    % errestk1=ones(25,1)*actualval-predictions;          %z kalman
    errestk1=vartmenos1-predictions(i);          %z kalman

    % etapa de estimación de Kalman
    xest= A*X(i) + B*u;
    Pest= A*P(i,i)*A' + Q(i,i);

    % etapa de corrección
    K=Pest*H'*(H*Pest*H'+R(i,i))^(-1);
    X(i) = xest + K*(errestk1-H*xest);
    P(i,i)=(1-K*H)*Pest;
    pronfil(i)=actualval-X(i);
end
end
