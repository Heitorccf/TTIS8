% -------------------------------------------------------------------
% Exercício 2: Manipulação de Bandas de Cor
% -------------------------------------------------------------------

clear all;
close all;
clc;

imgOriginal = imread('Imagens/fotoIF.jpg');

% --- Separa as bandas originais (R, G, B) ---
bandaR = imgOriginal(:,:,1);
bandaG = imgOriginal(:,:,2);
bandaB = imgOriginal(:,:,3);

bandaR_clara = bandaR + 100;
bandaG_clara = bandaG + 100;
bandaB_clara = bandaB + 100;

% --- Cria as 4 novas imagens coloridas ---
% 1. Imagem com TODAS as bandas clareadas
imgRGB_Nova = cat(3, bandaR_clara, bandaG_clara, bandaB_clara);

% 2. Imagem com APENAS a banda R clareada
imgRGB_R_Alterado = cat(3, bandaR_clara, bandaG, bandaB);

% 3. Imagem com APENAS a banda G clareada
imgRGB_G_Alterado = cat(3, bandaR, bandaG_clara, bandaB);

% 4. Imagem com APENAS a banda B clareada
imgRGB_B_Alterado = cat(3, bandaR, bandaG, bandaB_clara);


% --- Apresenta todas as imagens na tela em uma grade 3x4 ---
figure('Name', 'Resultados Completos - Exercício 2');

% Primeira linha
subplot(3,4,1); imshow(imgOriginal); title('Imagem Original');
subplot(3,4,2); imshow(bandaR); title('Imagem R');
subplot(3,4,3); imshow(bandaG); title('Imagem G');
subplot(3,4,4); imshow(bandaB); title('Imagem B');

% Segunda linha
subplot(3,4,5); imshow(bandaR_clara); title('Imagem R Clara');
subplot(3,4,6); imshow(bandaG_clara); title('Imagem G Clara');
subplot(3,4,7); imshow(bandaB_clara); title('Imagem B Clara');
subplot(3,4,8); imshow(imgRGB_Nova); title('Imagem RGB Nova');

% Terceira linha
subplot(3,4,9); imshow(imgRGB_R_Alterado); title('Imagem RGB R Alterado');
subplot(3,4,10); imshow(imgRGB_G_Alterado); title('Imagem RGB G Alterado');
subplot(3,4,11); imshow(imgRGB_B_Alterado); title('Imagem RGB B Alterado');