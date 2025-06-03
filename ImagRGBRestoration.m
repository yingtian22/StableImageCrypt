function [outputArg1] = ImagRGBRestoration(I)
[m,n]=size(I);
I=I(:);
for i=1:512*512
    I1(i)=I(i);
    I2(i)=I(i+m*(n/3));
    I3(i)=I(i+m*(n/3)*2);
end
I1=reshape(I1,[m,(n/3)]);
I2=reshape(I2,[m,(n/3)]);
I3=reshape(I3,[m,(n/3)]);
I4(:,:,1)=I1;
I4(:,:,2)=I2;
I4(:,:,3)=I3;
outputArg1=I4;