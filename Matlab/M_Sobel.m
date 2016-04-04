function [ sobelImg ] = M_Sobel( img )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    tmp = double(img);
    [height, width] = size(img);
    sobX = [[-1,-2,-1]', [0,0,0]', [1,2,1]'];
    sobY = [[-1,0,1]', [-2,0,2]', [-1,0,1]'];
    
    imageX = double(zeros(size(img)));
    imageY = double(zeros(size(img)));
    
    for i = 2:height-1
        for j = 2:width-1
            value = sobX(1,1)*tmp(i-1,j-1) + sobX(1,2)*tmp(i-1,j) + sobX(1,3)*tmp(i-1,j+1) + sobX(2,1)*tmp(i,j-1) + sobX(2,2)*tmp(i,j) + sobX(2,3)*tmp(i,j+1) + sobX(3,1)*tmp(i+1,j-1) + sobX(3,2)*tmp(i+1,j) + sobX(3,3)*tmp(i+1,j+1);
            imageX(i,j) = abs(value);
        end
    end
    
    for i = 2:height-1
       for j = 2:width-1
           value = sobY(1,1)*tmp(i-1,j-1) + sobY(1,2)*tmp(i-1,j) + sobY(1,3)*tmp(i-1,j+1) + sobY(2,1)*tmp(i,j-1) + sobY(2,2)*tmp(i,j) + sobY(2,3)*tmp(i,j+1) + sobY(3,1)*tmp(i+1,j-1) + sobY(3,2)*tmp(i+1,j) + sobY(3,3)*tmp(i+1,j+1);
           imageY(i,j) = abs(value);
       end
    end    
    sobelImg = (imageX + imageY)/2;
    sobelImg = uint8(sobelImg);
end

