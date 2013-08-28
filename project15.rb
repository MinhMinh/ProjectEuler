def number_of_paths(row, col)
  if row == 0 || col == 0 
    @d[row][col] = 1
  elsif @d[row][col] == 0
    @d[row][col] = number_of_paths(row - 1, col) + number_of_paths(row, col - 1)
  end
  
  @d[row][col]
end

@d = Array.new(30) { Array.new(30) { 0 } }

puts number_of_paths(20, 20)

