function miniVector = subVector(vector, num)
 miniVector(end+1) = num;
 for i = 3: length(vector)
   miniVector(end+1) = vector(i);
 endfor
 miniVector(end+1) = 1;
 