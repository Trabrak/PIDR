function [ imageL, imageR ] = cutZEDPNG( imagePNG )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    tmp = imread(imagePNG);
    [height, width, colors] = size(tmp);
    imageL = zeros(height, width/2, colors);
    imageR = zeros(height, width/2, colors);
    for j = 1:width/2
       imageL(:,j,:) = tmp(:,j,:);
    end
    for j = 1:width/2
       imageR(:,j,:) = tmp(:,j+(width/2),:);
    end
    
    imageL = uint8(imageL);
    imageR = uint8(imageR); 
    
    figure(1)
    imshow(imageL);
    figure(2)
    imshow(imageR);

end

