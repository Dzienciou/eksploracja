ImageRaw = multibandread('/pio/scratch/2/ED2015/APEX/APEX_OSD_Package_1.0/APEX_OSD_Package_1.0/APEX_OSD_V1_calibr_cube',[1500,1000,285], 'int16', 0, 'bsq', 'ieee-le');
ImageRaw = reshape(ImageRaw, size(ImageRaw, 1)*size(ImageRaw, 2), size(ImageRaw, 3));


labels = kmeans(ImageRaw', 3);

colors = [255,0,0; 0,255,0; 0,0,255];

Image = colors(labels,:);
Image = reshape(Image, 1500, 1000, size(Image,2));

imwrite(Image, 'zdjecie.jpg', 'jpg');
