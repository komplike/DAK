close all;
clear all;
clc;

%% zabezpecienie LB (7,3)
p = [0 1 1];
G = [1 0 0 1 1 1 0; 0 1 0 0 1 1 1; 0 0 1 1 0 1 1];
f = mod(p*G,2);

%% dekodovanie LB (7,4)
N = 7;
k = 4;

F = [1 1 0 1 1 1 0; 1 1 1 0 1 0 1; 1 0 0 1 0 1 1];
G = [1 0 0 0 1 0 1; 0 1 0 0 0 1 1; 0 0 1 0 1 1 1; 0 0 0 1 1 1 0];

H=[];
r=N-k;
[fin,x]=size(G);
for n=1:fin
    H = [H; G(n,k+1) G(n,k+2) G(n,k+3)];
end



