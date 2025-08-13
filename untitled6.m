% Ler as imagens
lena = imread('Imagens/lenaMenor.bmp');
cameraman = imread('Imagens/cameraman.bmp');

% Obter dimensões das imagens originais
[h1, w1, c1] = size(lena);
[h2, w2, c2] = size(cameraman);

% Definir altura da nova imagem
alturaNova = 256;

% Calcular largura proporcional para manter aspecto de cada imagem
larguraNova1 = round(w1 * (alturaNova / h1));
larguraNova2 = round(w2 * (alturaNova / h2));

% Criar terceira imagem vazia
numCanais = max(c1, c2);
larguraCombinada = larguraNova1 + larguraNova2;
imagemCombinada = zeros(alturaNova, larguraCombinada, numCanais, 'uint8');

% Preencher a primeira parte com pixels da primeira imagem (redimensionando manualmente)
for i = 1:alturaNova
    for j = 1:larguraNova1
        orig_i = round(i * (h1 / alturaNova));
        orig_j = round(j * (w1 / larguraNova1));
        if orig_i < 1, orig_i = 1; end
        if orig_j < 1, orig_j = 1; end
        for k = 1:c1
            imagemCombinada(i,j,k) = lena(orig_i, orig_j, k);
        end
    end
end

% Preencher a segunda parte com pixels da segunda imagem (redimensionando manualmente)
for i = 1:alturaNova
    for j = 1:larguraNova2
        orig_i = round(i * (h2 / alturaNova));
        orig_j = round(j * (w2 / larguraNova2));
        if orig_i < 1, orig_i = 1; end
        if orig_j < 1, orig_j = 1; end
        for k = 1:c2
            imagemCombinada(i, j + larguraNova1, k) = cameraman(orig_i, orig_j, k);
        end
    end
end

% Exibir a imagem combinada
figure;
imshow(imagemCombinada);
title('Imagem Combinada - Redimensionamento Manual');