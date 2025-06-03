function [miyao] = KeyGeneration(I)
[m,n]=size(I);
%%生成密钥
I2=[];
for i=1:m
    for j=1:n
        I2=[I2,num2str(I(i,j))];
    end
end
%
k1 = hash(I2,'SHA-256');
k2 = hash(I2,'SHA-512');
%
miyao1=0;
for i=1:32
    tmp=[k1(i),k1(i+32)];
    miyao1=miyao1+hex2dec(tmp);
end
%
miyao2=0;
for i=1:64
    tmp=[k2(i),k2(i+32)];
    miyao2=miyao2+hex2dec(tmp);
end
%
while(miyao1>1)
    miyao1=miyao1/10;
end
while(miyao2>1)
    miyao2=miyao2/10;
end
miyao(1)=miyao1;
miyao(2)=miyao2;