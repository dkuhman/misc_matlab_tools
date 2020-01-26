function mycallback(~, ~, lineseries)
% Ignore the first 2 function inputs: handle of invoking object & event
% data
assignin('caller', 'selectedPoints', get(lineseries,'BrushData'));
end

