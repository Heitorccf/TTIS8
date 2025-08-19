clear all;
close all;
clc;

imgOriginal = imread('Imagens/imgRuido.png');

[M, N] = size(imgOriginal);

c = double(imgOriginal);

for i = 2:M-1
    for j = 2:N-1
        
        % (3x3)
        c(i, j) = (1/9) * ( ...
                    c(i-1, j-1) + c(i-1, j) + c(i-1, j+1) + ...
                    c(i, j-1)   + c(i, j)   + c(i, j+1)   + ...
                    c(i+1, j-1) + c(i+1, j) + c(i+1, j+1) );
    end
end

imgProcessed = uint8(c);

figure;
subplot(1, 2, 1), imshow(imgOriginal), title('Imagem com ruído');
subplot(1, 2, 2), imshow(imgProcessed), title('Imagem processada');