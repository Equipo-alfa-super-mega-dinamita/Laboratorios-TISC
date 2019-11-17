function binaryMatrix = huffman(vector)
  #M = [0.3 0.25 0.2 0.12 0.08 0.05] prueba
  len = length(vector);
  for i = 1:len
    value.p = vector(i);
    value.b = auxHuffman(vector,i);
    binaryMatrix(end+1) = value;
  endfor
  