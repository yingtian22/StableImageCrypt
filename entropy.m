function [ entropy_value ] = entropy(f)  %fΪ��ͼ
%************************************************************%
%  Calculating the Entropy Image,    pixel_levelΪ256��                  %
%************************************************************%
pixel_level=256;
f = double(f);
xh = hist( f(:), pixel_level);
xh = xh / sum(xh(:));
i = find(xh); %�ҵ�xh���������в�Ϊ0������

entropy_value = - sum(xh(i).*log2(xh(i)));