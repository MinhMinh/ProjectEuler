@cache = Hash.new(0)

def count(number)
  return @cache[number] if @cache[number] != 0
  
  return @cache[number] = 1 if number == 1
  
  if number % 2 == 0
    next_number = number / 2
  else
    next_number = number * 3 + 1
  end
  @cache[number] = count(next_number) + 1
  
end

# puts count(13)

best = 1
max = 1
for i in 1..1000000 do
  # puts i
  r = count(i)
  if r > max 
    max = r
    best = i
  end
end

puts "Number: #{best}" 
puts "Size: #{count(best)}"