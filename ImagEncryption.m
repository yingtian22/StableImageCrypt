function [outputArg1] = ImagEncryption(I,u,x)
[m,n]=size(I);
l1=ChCh(u,x,m*n*8);
l2=CuCu(u,x,m*n*8);
l3=CuCu(x,u,m*n*8);
%D1-D8为不同编码组
for i =1:m*n
    tmp=l1((i-1)*8+1:8*i);
    [~,tmp]=sort(tmp);
    D1(i)=tmp(1);
    D2(i)=tmp(2);
    D3(i)=tmp(3);
    D4(i)=tmp(4);
    D5(i)=tmp(5);
    D6(i)=tmp(6);
    D7(i)=tmp(7);
    D8(i)=tmp(8);
end
%Y1-Y4为不同运算组
for i =1:m*n
    tmp=l2((i-1)*4+1:4*i);
    [~,tmp]=sort(tmp);
    Y1(i)=tmp(1)-1;
    Y2(i)=tmp(2)-1;
    Y3(i)=tmp(3)-1;
    Y4(i)=tmp(4)-1;
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
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D1(i)),DNA_bian(M(i),MD),Y1(i));
    E1(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D2(i)),DNA_bian(M(i),MD),Y1(i));
    E2(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D3(i)),DNA_bian(M(i),MD),Y1(i));
    E3(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D4(i)),DNA_bian(M(i),MD),Y1(i));
    E4(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D5(i)),DNA_bian(M(i),MD),Y1(i));
    E5(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D6(i)),DNA_bian(M(i),MD),Y1(i));
    E6(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D7(i)),DNA_bian(M(i),MD),Y1(i));
    E7(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D8(i)),DNA_bian(M(i),MD),Y1(i));
    E8(i)=DNA_jie(tmp2,MD2);
end
%%
%%
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D1(i)),DNA_bian(M(i),MD),Y2(i));
    E9(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D2(i)),DNA_bian(M(i),MD),Y2(i));
    E10(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D3(i)),DNA_bian(M(i),MD),Y2(i));
    E11(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D4(i)),DNA_bian(M(i),MD),Y2(i));
    E12(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D5(i)),DNA_bian(M(i),MD),Y2(i));
    E13(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D6(i)),DNA_bian(M(i),MD),Y2(i));
    E14(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D7(i)),DNA_bian(M(i),MD),Y2(i));
    E15(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D8(i)),DNA_bian(M(i),MD),Y2(i));
    E16(i)=DNA_jie(tmp2,MD2);
end
%%
%%
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D1(i)),DNA_bian(M(i),MD),Y3(i));
    E17(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D2(i)),DNA_bian(M(i),MD),Y3(i));
    E18(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D3(i)),DNA_bian(M(i),MD),Y3(i));
    E19(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D4(i)),DNA_bian(M(i),MD),Y3(i));
    E20(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D5(i)),DNA_bian(M(i),MD),Y3(i));
    E21(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D6(i)),DNA_bian(M(i),MD),Y3(i));
    E22(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D7(i)),DNA_bian(M(i),MD),Y3(i));
    E23(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D8(i)),DNA_bian(M(i),MD),Y3(i));
    E24(i)=DNA_jie(tmp2,MD2);
end
%%
%%
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D1(i)),DNA_bian(M(i),MD),Y4(i));
    E25(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D2(i)),DNA_bian(M(i),MD),Y4(i));
    E26(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D3(i)),DNA_bian(M(i),MD),Y4(i));
    E27(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D4(i)),DNA_bian(M(i),MD),Y4(i));
    E28(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D5(i)),DNA_bian(M(i),MD),Y4(i));
    E29(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D6(i)),DNA_bian(M(i),MD),Y4(i));
    E30(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D7(i)),DNA_bian(M(i),MD),Y4(i));
    E31(i)=DNA_jie(tmp2,MD2);
end
for i=1:m*n
    tmp2=DNA_yunsuan(DNA_bian(I2(i),D8(i)),DNA_bian(M(i),MD),Y4(i));
    E32(i)=DNA_jie(tmp2,MD2);
end
%%
E1=uint8(reshape(E1,[m,n]));
E2=uint8(reshape(E2,[m,n]));
E3=uint8(reshape(E3,[m,n]));
E4=uint8(reshape(E4,[m,n]));
E5=uint8(reshape(E5,[m,n]));
E6=uint8(reshape(E6,[m,n]));
E7=uint8(reshape(E7,[m,n]));
E8=uint8(reshape(E8,[m,n]));
E9=uint8(reshape(E9,[m,n]));
E10=uint8(reshape(E10,[m,n]));
E11=uint8(reshape(E11,[m,n]));
E12=uint8(reshape(E12,[m,n]));
E13=uint8(reshape(E13,[m,n]));
E14=uint8(reshape(E14,[m,n]));
E15=uint8(reshape(E15,[m,n]));
E16=uint8(reshape(E16,[m,n]));
E17=uint8(reshape(E17,[m,n]));
E18=uint8(reshape(E18,[m,n]));
E19=uint8(reshape(E19,[m,n]));
E20=uint8(reshape(E20,[m,n]));
E21=uint8(reshape(E21,[m,n]));
E22=uint8(reshape(E22,[m,n]));
E23=uint8(reshape(E23,[m,n]));
E24=uint8(reshape(E24,[m,n]));
E25=uint8(reshape(E25,[m,n]));
E26=uint8(reshape(E26,[m,n]));
E27=uint8(reshape(E27,[m,n]));
E28=uint8(reshape(E28,[m,n]));
E29=uint8(reshape(E29,[m,n]));
E30=uint8(reshape(E30,[m,n]));
E31=uint8(reshape(E31,[m,n]));
E32=uint8(reshape(E32,[m,n]));
%
outputArg1(:,:,1)=E1;
outputArg1(:,:,2)=E2;
outputArg1(:,:,3)=E3;
outputArg1(:,:,4)=E4;
outputArg1(:,:,5)=E5;
outputArg1(:,:,6)=E6;
outputArg1(:,:,7)=E7;
outputArg1(:,:,8)=E8;
outputArg1(:,:,9)=E9;
outputArg1(:,:,10)=E10;
outputArg1(:,:,11)=E11;
outputArg1(:,:,12)=E12;
outputArg1(:,:,13)=E13;
outputArg1(:,:,14)=E14;
outputArg1(:,:,15)=E15;
outputArg1(:,:,16)=E16;
outputArg1(:,:,17)=E17;
outputArg1(:,:,18)=E18;
outputArg1(:,:,19)=E19;
outputArg1(:,:,20)=E20;
outputArg1(:,:,21)=E21;
outputArg1(:,:,22)=E22;
outputArg1(:,:,23)=E23;
outputArg1(:,:,24)=E24;
outputArg1(:,:,25)=E25;
outputArg1(:,:,26)=E26;
outputArg1(:,:,27)=E27;
outputArg1(:,:,28)=E28;
outputArg1(:,:,29)=E29;
outputArg1(:,:,30)=E30;
outputArg1(:,:,31)=E31;
outputArg1(:,:,32)=E32;