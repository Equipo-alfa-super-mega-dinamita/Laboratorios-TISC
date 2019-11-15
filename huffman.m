function binary = huffman(vector)
  matrix = [];
  auxVector = vector;
  for i = 1:length(vector) -1
    auxVector = sort(auxVector);
    newNum = auxVector(1) + auxVector(2);
    tupla = [auxVector(1),auxVector(2)];
    matrix = [matrix; tupla];
    auxVector = subVector(auxVector, newNum);
  endfor
  matrix