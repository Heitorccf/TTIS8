clear all;
close all;
clc;

pastaImagens = 'Imagens';
addpath(pastaImagens);

imgLena = imread('Lena128.bmp');
imgCameraman = imread('cameraman.bmp');

imagemCombinada = [imgLena; imgCameraman];

figure;
imshow(imagemCombinada);
title('Resultado do Exercício 1');