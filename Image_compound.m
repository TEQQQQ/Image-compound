res = imread('indir.jpg');
res = imresize(res, [256,256]);
dizi = [5 15 14 2 3 16 12 9 4 11 7 13 6 10 1 8];
sayac = 1;
for i = 1: size(res,1)/4:size(res,1);
    for j = 1:size(res,1)/4:size(res,1);
        yamalar{sayac}=res(i:i+size(res,1)/4-1,j:j+size(res,1)/4-1,:);
        sayac = sayac+1;
    end
end

yres=zeros(256,256,3);
%%karıştırma
sayac = 1;
for i = 1 : size(res,1)/4:size(res,1)
    for j = 1: size(res,1)/4:size(res,1)
        yres(i:i+size(res,1)/4-1,j:j+size(res,1)/4-1,:) = yamalar{dizi(sayac)};
        sayac = sayac+1;
    end
end
figure,imshow(res)
figure,imshow(uint8(yres))