stop = false
for a in 1..300 do 
  for b in a..500 do
    c = 1000 - a - b
    if a * a + b * b == c * c
      puts a * b * c
      stop = true
      break
    end
  end
  break if stop
end