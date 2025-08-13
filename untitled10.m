% Carregar a imagem
img = imread('Imagens/fotoIF.jpg');

% Separar as bandas R, G e B
R = img(:,:,1); % Canal vermelho
G = img(:,:,2); % Canal verde
B = img(:,:,3); % Canal azul

% Mostrar a imagem original e as bandas separadas em uma única tela
figure;
subplot(2, 2, 1);
imshow(img);
title('Imagem Original');

subplot(2, 2, 2);
imshow(R);
title('Banda R (Vermelho)');

subplot(2, 2, 3);
imshow(G);
title('Banda G (Verde)');

subplot(2, 2, 4);
imshow(B);
title('Banda B (Azul)');

% Reconstituir a imagem juntando as três bandas
img_reconstituida = cat(3, R, G, B);

% Mostrar a imagem reconstruída em outra figura
figure;
imshow(img_reconstituida);
title('Imagem Reconstituída a partir das 3 Bandas');