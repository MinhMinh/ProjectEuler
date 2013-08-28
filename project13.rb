def number_of_paths(row, col)
  if row == 0 || col == 0
    # d[row, col] = 0
    return 1
  end
  # d[row, col] = number_of_paths(row - 1, col) + number_of_paths(row, col - 1)
  number_of_paths(row - 1, col) + number_of_paths(row, col - 1)
end

puts number_of_paths(10, 10)