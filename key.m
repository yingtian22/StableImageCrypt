%lena哈希
I=imread('C:\Users\86182\Desktop\EI\图像分组加密\Image\lena.tif');
[m,n]=size(I);
I2=[];
for i=1:m
    for j=1:n
        I2=[I2,num2str(I(i,j))];
    end
end
fid = fopen('C:\Users\86182\Desktop\EI\图像分组加密\Image\lena.txt', 'w');
fprintf(fid,'%c',I2);
fclose(fid);
lena_sha256='e6fc4f08bb7f5b3741360d248f00bd5a470d8e35624a491dbd12fd51435a5baf';
lena_miyao=0;
for i=1:32
    tmp=[lena_sha256(i),lena_sha256(i+32)];
    lena_miyao=lena_miyao+hex2dec(tmp);
end
%
