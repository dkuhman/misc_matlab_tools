function [data_out] = interp_mat(data_in, start_val, end_val, method)
%Created by: Daniel Kuhman
%Last update: 2020-06-02
%Github: https://github.com/dkuhman

%Error handling for method
%methods contains a cell array of all methods available to interp1()
methods = {'linear'; 'nearest'; 'next'; 'previous'; 'pchip'; 'cubic'; 'v5cubic';
    'makima'; 'spline'};
if any(strcmp(methods, method)) == 0
    error_msg = 'Interpolation method not available.';
    error(error_msg)
    return
end

%Initialize output variable
data_interp = [];

%If data_in is an array
if size(data_in,2) == 1
    data_space = linspace(start_val, end_val, length(data_in));
    data_interp = interp1(data_space, data_in, start_val:1:end_val, method);
    data_out(:,1) = data_interp;
else
    for i = 1:size(data_in,2)
        data = data_in(:,i);
        data_space = linspace(start_val, end_val, length(data));
        data_interp = interp1(data_space, data, start_val:1:end_val, method);
        data_out(1:100,i) = data_interp;
    end
end

end

