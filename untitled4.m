% Ler a imagem original
imagemOriginal = imread('Imagens/if.jpg');

% Converter a imagem para tons de cinza
imagemCinza = rgb2gray(imagemOriginal);

% Redimensionar a imagem para 70% do tamanho original
imagemRedimensionada = imresize(imagemOriginal, 0.7);
imagemCinzaRedimensionada = imresize(imagemCinza, 0.7);

% Exibir as imagens com títulos
figure;

% Exibir as imagens
subplot(2, 2, 1);
imshow(imagemOriginal);
title('Imagem Original');

subplot(2, 2, 2);
imshow(imagemCinza);
title('Imagem em Tons de Cinza');

subplot(2, 2, 3);
imshow(imagemRedimensionada);
title('Imagem Redimensionada (70%)');

subplot(2, 2, 4);
imshow(imagemCinzaRedimensionada);
title('Imagem Redimensionada em Tons de Cinza (70%)');