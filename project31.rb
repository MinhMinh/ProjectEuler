def number_of_ways
  x = Array.new(8)

  total = 0
  for x[0] in 0..1 do
    break if x[0] * 200 > 200 
    for x[1] in 0..2 do 
      break if x[0] * 200 + x[1] * 100 > 200
      for x[2] in 0..4 do
        break if x[0] * 200 + x[1] * 100 + x[2] * 50 > 200
        for x[3] in 0..10 do
          break if x[0] * 200 + x[1] * 100 + x[2] * 50 + x[3] * 20 > 200
          for x[4] in 0..20 do
            break if x[0] * 200 + x[1] * 100 + x[2] * 50 + x[3] * 20 + x[4] * 10 > 200
            for x[5] in 0..40 do
              break if x[0] * 200 + x[1] * 100 + x[2] * 50 + x[3] * 20 + x[4] * 10 + x[5] * 5 > 200
              for x[6] in 0..100 do
                break if x[0] * 200 + x[1] * 100 + x[2] * 50 + x[3] * 20 + x[4] * 10 + x[5] * 5 + x[6] * 2 > 200
                x[7] = 200 - (x[0] * 200 + x[1] * 100 + x[2] * 50 + x[3] * 20 + x[4] * 10 + x[5] * 5 + x[6] * 2)
                total += 1

                # for i in 0..7 do 
                #   print x[7-i].to_s + " "
                # end
                # puts "\n"
              end 
            end
          end
        end
      end
    end
  end
  total
end

@coins = [1, 2, 5, 10, 20, 50, 100, 200]

def ways(target, avc)
  return 1 if avc <= 1 
  res = 0
  while target >= 0 do
    res += ways(target, avc - 1)
    target -= @coins[avc]
  end
  res
end

puts ways(200, 7)