% Carregar a imagem Lena
img = imread('Imagens/lena.bmp');

% Criar a imagem negativa
img_negativo = imcomplement(img);

% Exibir a imagem original e a imagem negativa lado a lado
figure;

subplot(1, 2, 1);
imshow(img);
title('Imagem Original');

subplot(1, 2, 2);
imshow(img_negativo);
title('Imagem Negativa');