% Carregar a imagem
img = imread('Imagens/Libras.bmp');

% Definir o retângulo de corte [x, y, largura, altura]
retanguloCorte = [100, 100, 200, 200]; % Ajuste os valores conforme necessário

% Realizar o corte da imagem
imgCortada = imcrop(img, retanguloCorte);

% Exibir a imagem original e a cortada lado a lado
figure;

subplot(1, 2, 1);
imshow(img);
title('Imagem Original');

subplot(1, 2, 2);
imshow(imgCortada);
title('Imagem Cortada');