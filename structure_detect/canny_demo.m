clear;
close all;
dbstop if error;
file_name = '../../opencv/samples/data/lena.jpg';
image = imread(file_name);
low_thresh = 0.05;
high_thresh = 0.15;
kernel_sz = 5;
sigma = 1.2;
[ edges ] = canny(image, kernel_sz, sigma, low_thresh, high_thresh);
figure('name','canny edge detect');
subplot(2,2,1);
imshow(image);
title('orige');
subplot(2,2,2);
imshow(edges);
title('edge');
gray_image = rgb2gray(image);
edge_matlab = edge(gray_image, 'canny');
subplot(2,2,3);
imshow(edge_matlab);
title('edge_matlab');