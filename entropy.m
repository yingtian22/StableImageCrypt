function [ entropy_value ] = entropy(f)  %f为密图
%************************************************************%
%  Calculating the Entropy Image,    pixel_level为256；                  %
%************************************************************%
pixel_level=256;
f = double(f);
xh = hist( f(:), pixel_level);
xh = xh / sum(xh(:));
i = find(xh); %找到xh数组数组中不为0的索引

entropy_value = - sum(xh(i).*log2(xh(i)));