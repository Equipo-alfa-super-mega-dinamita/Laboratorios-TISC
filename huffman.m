function binary = huffman(vector)
  matrix = [];
  auxVector = vector;
  auxVector = sort(auxVector);
  matrix = [matrix; auxVector];
  for i = 1:length(vector) -2
    newNum = auxVector(1) + auxVector(2);
    tupla = [auxVector(1),auxVector(2)];
    auxVector = subVector(auxVector, newNum);
    auxVector = sort(auxVector);
    matrix = [matrix; auxVector];
  endfor
  matrix
  