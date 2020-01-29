function ans = LBC(data_m)
  P = [1 0 1; 1 1 1; 1 1 0];
  I = eye(3);
  generator_matrix = [I P'];
  data_a = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];
  code = mul_binary_matrix(data_a,generator_matrix);
  hamming_weight = sum(code,2);
end