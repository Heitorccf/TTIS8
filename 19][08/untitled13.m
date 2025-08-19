clear all;
close all;
clc;

imgOriginal = imread('Imagens/...');

[M, N] = size(imgOriginal);

c = double(imgOriginal);

% ---------- Função Quick-Sort ----------
function sortedArray = quickSort(array)
    if length(array) <= 1
        sortedArray = array;
    else
        pivot = array(end);                  % Último elemento como pivô
        left = array(array < pivot);         % Menores que o pivô
        equal = array(array == pivot);       % Iguais ao pivô (mantém repetidos)
        right = array(array > pivot);        % Maiores que o pivô
        sortedArray = [quickSort(left), equal, quickSort(right)];
    end
end
% --------------------------------------

for i = 2:M-1
    for j = 2:N-1
        % Vizinhança 3x3
        neighborhood = [
            c(i-1, j-1), c(i-1, j), c(i-1, j+1), ...
            c(i, j-1),   c(i, j),   c(i, j+1), ...
            c(i+1, j-1), c(i+1, j), c(i+1, j+1)
        ];
        
        sortedNeighborhood = quickSort(neighborhood);
        
        % Mediana (5º elemento em 9)
        c(i, j) = sortedNeighborhood(5);
    end
end

imgFiltered = uint8(c);

imshow(imgOriginal), title('Original');
figure, imshow(imgFiltered), title('Filtrada (Mediana via QuickSort)');