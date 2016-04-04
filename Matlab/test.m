imageRRed = imageR(:,:,1);
imageRGreen = imageR(:,:,2);
imageRBlue = imageR(:,:,3);

a = zeros(size(imageR, 1), size(imageR, 2));

just_red = cat(3, imageRRed, a, a);
just_green = cat(3, a, imageRGreen, a);
just_blue = cat(3, a, a, imageRBlue);

figure, imshow(just_red), title('Red channel')
figure, imshow(just_green), title('Green channel')
figure, imshow(just_blue), title('Blue channel')