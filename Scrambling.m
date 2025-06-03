function [outputArg1] = Scrambling(I,u,x)
[m,n]=size(I);
l1=ChCh(u,x,m*n);
l2=CuCu(u,x,m*n);
l3=zeros(1,m*n);
for i=1:m*n
    if l1(i)>l2(i)
        l3(i)=l1(i);
    else
        l3(i)=l2(i);
    end
end
I2=I(:);
[~,l3]=sort(l3);
for i=1:m*n
    I4(i)=I2(l3(i));
end
I5=reshape(I4,[m,n]);
outputArg1=I5;