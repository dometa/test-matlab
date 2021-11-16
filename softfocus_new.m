im = im2double(imread('portrait.jpg'));

%Step1: Duplicate
im2 = im;
% figure,imshow([im,im2])

%Step2: Gaussian Blur
imblur = imgaussfilt(im2,13.5);
%figure,imshow([imblur,imblur6])
%clear im2;
%Step 3: Change Opacity of Blurred Image (0-100) via imblend.m (imblend.m needs imcast.m to run properly)
output = imblend(imblur, im, 0.5, 'normal');

imshow(output)
