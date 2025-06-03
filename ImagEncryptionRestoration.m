function [outputArg1] = ImagEncryptionRestoration(I,u,x,t1,t2)
[m,n]=size(I);
l1=ChCh(u,x,m*n*8);
l2=CuCu(u,x,m*n*8);
l3=CuCu(x,u,m*n*8);
%D1-D8为不同编码组
for i =1:m*n
    tmp=l1((i-1)*8+1:8*i);
    [~,tmp]=sort(tmp);
    D1(i)=tmp(t1);
end
%Y1-Y4为不同运算组
for i =1:m*n
    tmp=l2((i-1)*4+1:4*i);
    [~,tmp]=sort(tmp);
    Y1(i)=tmp(t2)-1;
end
%
M=l2(1:m*n);
M=mod(floor(M*10^6),256);
MD=sum(M(1:m*n/2));
MD2=sum(M(m*n/2+1:m*n));
MD=mod(MD,8)+1;
MD2=mod(MD2,8)+1;
%
I2=I(:);
%%
for i=1:m*n
    tmp2=DNA_yunsuan2(DNA_bian(I2(i),MD2),DNA_bian(M(i),MD),Y1(i));
    H1(i)=DNA_jie(tmp2,D1(i));
end
outputArg1=uint8(reshape(H1,[512,512]));