% Ler a imagem
img = imread('Imagens/Libras.bmp');

% Exibir a imagem original
figure;
imshow(img);
title('Imagem Original');

% Calcular e exibir o histograma da imagem original
figure;
imhist(img);
title('Histograma da Imagem Original');

% Equalizar a imagem
img_eq = histeq(img);

% Exibir a imagem equalizada
figure;
imshow(img_eq);
title('Imagem Equalizada');

% Calcular e exibir o histograma da imagem equalizada
figure;
imhist(img_eq);
title('Histograma da Imagem Equalizada');