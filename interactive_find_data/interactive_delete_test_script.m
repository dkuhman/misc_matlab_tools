%This script tests the function interactive_delete, which allows the user 
%to manually select data from a figure and return the selected data coordinates 
%and values. 
clear all; clc

% Create data
x = 1:100; 
y = 101:200; 

%This function plots x,y and turns brush on, allowing user to select data
%points. After selecting, press the button at the bottom left corner of the
%figure and then close the figure. The variable "selected_locs_data"
%provides the index and value of selected data points.
[selected_locs_data] = interactive_find_data(x,y);