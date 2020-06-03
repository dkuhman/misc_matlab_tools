%This script serves as an example implimentation of interp_mat.m function
%Created by: Daniel Kuhman
%Last updated: 2020-06-02
%Github: https://github.com/dkuhman

%Clear the workspace
clear all; clc

data_in = [rand(10,1), rand(10,1), rand(10,1)];
start_val = 0;
end_val = 99;
method = 'linear';

[data_interp] = interp_mat(data_in, start_val, end_val, method);

%Plot to ensure that both signals are the same shape but contain different
%lengths
figure
subplot(2,1,1)
plot(data_in,'LineWidth',3)
subplot(2,1,2)
plot(data_interp,'LineWidth',0.5)