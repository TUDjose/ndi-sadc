%% Dynamics of spacecraft

clc;
clear;

% spacecraft/orbit specifications
h = 700000;

R_E = 6371000;
mu_E = 3.986e14;
t_orbit = 2 * pi * sqrt((h + R_E)^3 / mu_E);
n = 2 * pi / t_orbit;

J = [[124.531, 0, 0];
     [0, 124.586, 0];
     [0, 0, 0.704]];

Td = [0.0001, 0.0001, 0.0001]';

dt = 0.1;

t_meas = 1500;


% dynamics
