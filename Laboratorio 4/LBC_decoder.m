%r = [0 1 0 1 1 1]
function data = LBC_decoder(data_r)
  ini_data;
  H_transpose = [P'; I];
  code = mod((data_all*generator_matrix),2);
  hamming_weight = sum(code,2);
  hamming_weight(1) = 10000;
  dmin = min(hamming_weight);
  syndrome = mod((data_r*H_transpose),2);
  c = data_r;
  if sum(syndrome,2) != 0
    error_index = find_row(H_transpose,syndrome);
    c(error_index) = mod(data_r(error_index) + 1,2);
  endif
  index = find_row(code,c);
  data = data_all(index,:);   
end