% d = [1 0 1]
function code = LBC_encoder(data_d)
  ini_data;
  code = mod((data_d*generator_matrix),2);
end