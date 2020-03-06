close all;
clear all;
clc;

%% zabezpecienie LB (7,3)
p = [0 1 1];
G = [1 0 0 1 1 1 0; 0 1 0 0 1 1 1; 0 0 1 1 0 1 1];
f = mod(p*G,2);

%% dekodovanie LB (7,4)
F = [1 1 0 1 1 1 0; 1 1 1 0 1 0 1; 1 0 0 1 0 1 1];
G = [1 0 0 0 1 0 1; 0 1 0 0 0 1 1; 0 0 1 0 1 1 1; 0 0 0 1 1 1 0];

H=[];
[k,N]=size(G);
Ht = [G(:,k+1:N);eye(N-k)]
disp('syndrom');
mod(F*Ht,2)

