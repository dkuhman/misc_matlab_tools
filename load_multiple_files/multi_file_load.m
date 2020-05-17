%This script provides a simple template for loading in mulitple files to 
%facilitate batch processing. 
%Created by: Daniel Kuhman
%Github: https://github.com/dkuhman
%Last updated: 2020-05-17

%Clear workspace
clear all
clc

%Allow user to navigate to and select multiple files
%File type filter can be specified by replacing '.xlsx'
[file_list, path_n] = uigetfile('.', 'Grab the files you want to process','MultiSelect', 'on');

if iscell(file_list) == 0
    file_list = {file_list};
end

for i = 1:length(file_list)
    %Specify name of file(i)
    filename = file_list{i};
    
    %Load data from file(i)
    data_in = xlsread([path_n filename]);
    
    %Analysis for File(i)
    %As an example, this will just print each filename
    disp(filename)
end