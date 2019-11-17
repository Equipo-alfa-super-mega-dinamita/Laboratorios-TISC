function binaryArray = auxHuffman(vector,index)
  vector = sort(vector);
  len = length(vector)-1;
  for i =1: len
     if length(vector) == 2
      binaryArray(end+1) = getNextValue(vector,index);
     else
      #tamaño es mayor que 2
      num = vector(index); #Numero con el que estamos tratando
      nextValue = getNextValue(vector,index); #1, 0 o -1. -1 si no es uno de los dos menoress
      nextNum = vector(1)+vector(2); #Los numeros que se combinan
      vector = subVector(vector, nextNum); #el vector recortado
      vector = sort(vector); #Ordenar
      preIndex = index-1;
     if nextValue == -1 
      index = find(vector==num); #Busca el numero en el vector recortado para el index. Dado que num no era de los menores      
     else
      binaryArray(end+1) = nextValue ;  #Es uno de los dos menores. Es decir que se agrega 1 o 0
      index = find(vector==nextNum); #Como era uno de los dos menores, no se encontrará en el siguiente vector.
     endif
     #En el caso de que hay numeros repetidos
     if length(index)>1
       if find(index == preIndex) 
       #En el caso en que el numero ya estaba
       index = preIndex;
       else
        index = index(1);
       endif
     endif
     
  endif
  endfor
  binaryArray = fliplr(binaryArray);
 endfunction

    