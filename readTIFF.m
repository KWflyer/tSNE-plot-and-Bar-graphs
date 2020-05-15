IM = 'S2B_MSIL2A_20180522T093029_7_34';
PATH = ['E:\\bigearthsamples\\' IM '\\'];
IM = [IM '_'];


clear t1 imageData;
t1 = Tiff([PATH IM 'B01.tif'],'r');
imageData(:,:,1) = read(t1);
imageData = uint8(rescale(imageData,0,255));
imshow(imageData(:,:,1));
imwrite(imageData,[PATH '1.png']);

t1 = Tiff([PATH IM 'B09.tif'],'r');
imageData(:,:,1) = read(t1);
imageData = uint8(rescale(imageData,0,255));
imshow(imageData(:,:,1));
imwrite(imageData,[PATH '9.png'])

clear t1 t2 t3 imageData;
t1 = Tiff([PATH IM 'B02.tif'],'r');
t2 = Tiff([PATH IM 'B03.tif'],'r');
t3 = Tiff([PATH IM 'B04.tif'],'r');
imageData(:,:,1) = read(t3);
imageData(:,:,2) = read(t2);
imageData(:,:,3) = read(t1);
imageData = uint8(rescale(imageData,0,255));
imshow(imageData);
imwrite(imageData,[PATH '234.png'])

clear t1 t2 t3 imageData;
t1 = Tiff([PATH IM 'B05.tif'],'r');
t2 = Tiff([PATH IM 'B06.tif'],'r');
t3 = Tiff([PATH IM 'B07.tif'],'r');
imageData(:,:,1) = read(t2);
imageData(:,:,2) = read(t3);
imageData(:,:,3) = read(t1);
imageData = uint8(rescale(imageData,0,255));
imshow(imageData);
imwrite(imageData,[PATH '567.png'])
