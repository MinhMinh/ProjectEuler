def sum_of_diagonals(number)
  number = (number + 1) / 2
  r = 0
  for i in 2..number do
    k = 2 * i - 1
    r += 4 * k * k - 6 * (k - 1)
  end
  r + 1
end

puts sum_of_diagonals(1001)
puts sum_of_diagonals(5)
puts sum_of_diagonals(3)
