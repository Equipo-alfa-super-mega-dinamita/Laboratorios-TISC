function matrix = mul_binary_matrix(A,B)
  [Ar Ac] = size(A);
  [Br Bc] = size(B);
  matrix = zeros(Ar,Bc);
  for i = 1:Ar
    for j = 1:Bc
      for k =1:Ac
         matrix(i,j) = mod((matrix(i,j) + (A(i,k)*B(k,j))),2); 
        end
        end
        end