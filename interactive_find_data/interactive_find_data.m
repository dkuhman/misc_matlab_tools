function [selected_locs_data] = interactive_find_data(x_data,y_data)
%This function allows a user to interactively delete data by selecting the
%data from a figure.
%REQUIRES FUNCTION mycallback.m
%Inputs: x and y data
%Outputs: an Nx2 matrix (N = number of points selected) where column 1 is
%the x index and column 2 is the y index of each selected point. 
%Author: Daniel Kuhman
%Contact: danielkuhman@gmail.com
%Date created: 7/24/2019

% Create data
x = x_data;
y = y_data;

% Create figure with points
myfig = figure();
n = plot(x, y, 's');
brush on;
uicontrol('Parent', myfig, ...
          'Style', 'pushbutton',...
          'String', 'Index the selected points',...
          'Position', [5, 5, 200, 30],...
          'Units', 'pixels',...
          'Callback', {@callback, n} ...
           );
% ---> Now the user should select the points and click the button 'Get
% selected points index'
waitfor(myfig);

%Assign data to the selected coordinates
selectedPoints_locs = find(selectedPoints); %Indices of selected data
selectedPoints_data = y(selectedPoints_locs); %Values of selected data
selected_locs_data = [selectedPoints_locs',selectedPoints_data']; %Indices and values

end

