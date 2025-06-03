function [outputArg1] = ImagRGB(I)
[m,n]=size(I);
I1=I(:,:,1);
I2=I(:,:,2);
I3=I(:,:,3);
I1=I1(:);
I2=I2(:);
I3=I3(:);
for i=1:m*(n/3)
    I4(i)=I1(i);
    I4(i+m*(n/3))=I2(i);
    I4(i+m*(n/3)*2)=I3(i);
end
I4=reshape(I4,[m,(n/3)*3]);
outputArg1=I4;