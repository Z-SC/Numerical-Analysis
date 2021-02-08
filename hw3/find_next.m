function y=find_next(x)
% b=find_next(a)
% find the smallest number y such that y>x
% in:
%   x   size (1,1), double
% out:
%   y  size(1,1), double
y = x;

for i = -1074:1
    y = y + 2^i;
    if x ~= y
        break;
    end
end
end
