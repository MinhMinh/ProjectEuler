def number_of_dividers(number)
  r = 0
  m = Math.sqrt(number).to_i
  for i in 1..m do 
    r += 2 if number % i == 0 
  end
  r = r - 1 if m * m == number
  r
end

def number_in_sequence(index)
  index * (index + 1) / 2
end

def find_triangle_number
  index = 1
  while number_of_dividers(number_in_sequence(index)) < 500 do
    index += 1
  end
  number_in_sequence(index)
end

puts find_triangle_number()