% Carregar a imagem original
img = imread('Imagens/Libras.bmp');

% Adicionar ruído gaussiano padrão
img_gauss = imnoise(img, 'gaussian');

% Adicionar ruído gaussiano com média 0 e variância 0.003
img_gauss_custom = imnoise(img, 'gaussian', 0, 0.003);

% Adicionar ruído Sal e Pimenta padrão
img_saltpepper = imnoise(img, 'salt & pepper');

% Adicionar ruído Sal e Pimenta com densidade 0.05
img_saltpepper_custom = imnoise(img, 'salt & pepper', 0.05);

% Exibir todas as imagens em uma única figura
figure;

subplot(2, 3, 1);
imshow(img);
title('Imagem Original');

subplot(2, 3, 2);
imshow(img_gauss);
title('Ruído Gaussiano Padrão');

subplot(2, 3, 3);
imshow(img_gauss_custom);
title('Ruído Gaussiano (m=0, v=0.003)');

subplot(2, 3, 4);
imshow(img_saltpepper);
title('Ruído Sal e Pimenta Padrão');

subplot(2, 3, 5);
imshow(img_saltpepper_custom);
title('Ruído Sal e Pimenta (densidade=0.05)');