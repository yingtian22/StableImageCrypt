%x^2 Test，测量与理想均匀直方图的偏离程度，达标值在250左右,且值越小越好。
function [ d ] =test_x_square_uniform( f)   %f为密图
%f=imread('encryption.tif');
[m,n]=size(f);
f = double(f); 
xh = hist( f(:),256);  %相同灰度值的个数
p=(m*n)/256;      %代表图像直方图绝对均匀时的，理想灰度值所占个数
d=0;
for i=1:256
    t=((xh(i)-p)^2)/p;      %测量与均匀直方图的偏离程度
    d=d+t;
end