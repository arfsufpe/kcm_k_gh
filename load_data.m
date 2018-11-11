clear; close all; clc
data = dlmread("segmentationModified.test",',');
data = data(:,2:20);
shape = data(:,1:9);
rgb = data(:,10:19);
size(shape);
size(rgb);
