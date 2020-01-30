function data = MD_decoder(data_r)
  ini_data;
  code = mod((data_all*generator_matrix),2);
  len = length(code);
  con = [];
  for i = 1:len
    con(end+1,:) = eq(code(i,:), data_r);
  end
  anti_distances = sum(con,2);
  distances = n - anti_distances;
  min_value = min(distances);
  index = find(distances==min_value);
  if length(index) >1
    error("There are more than one option");
  else
    data = data_all(index,:);
end