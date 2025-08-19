img = imread('Imagens/fotoIF.jpg'); % Lê a imagem
img_gray = rgb2gray(img); % Converte a imagem para escala de cinza
imshow(img_gray); % Mostra a imagem em escala de cinza
title('Logo'); % Define o título da imagem