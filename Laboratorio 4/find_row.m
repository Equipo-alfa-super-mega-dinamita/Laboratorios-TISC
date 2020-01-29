function index = find_row(matrix,row)
  m_index = [];
  len = length(matrix);
  for i = 1:len
    %Agrega un arreglo binario de la misma longitud. Pone 1 si la posici�n tiene el mismo valor
    m_index(end+1,:) = eq(matrix(i,:), row);
  end
  %Cuenta el n�mero de coincidencias
  total = sum(m_index,2);
  %Si es igual -> Ser� el mayor
  max = max(total);
  %No se puede afirmar lo contrario. Por tanto se valida
  if max == len
    index = find(total==max);
  else
    error("Row not found");
  endif
end