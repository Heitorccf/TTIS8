% Ler as imagens
lena = imread('Imagens/lenaMenor.bmp');
cameraman = imread('Imagens/cameraman.bmp');

% Redimensionar as imagens para altura de 256 pixels mantendo a proporção
lena_redimensionada = imresize(lena, [256 NaN]);
cameraman_redimensionada = imresize(cameraman, [256 NaN]);

% Criar uma nova imagem concatenando as duas horizontalmente
imagem_combinada = [lena_redimensionada, cameraman_redimensionada];

% Salvar a nova imagem
imwrite(imagem_combinada, 'imagem_combinada.png');