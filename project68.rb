def find_u
  for i in 1..9 do
    if @avail[i] 
      @u[0] = i
      @avail[i] = false
      
      t = @sum - @u[0] - @u[1]
      if 0 < t && t < 10 && @avail[t]
        @u[2] = t
        @avail[t] = false
        
        s = @sum - @u[2] - @x[1]
        if 0 < s && s < 10 && @avail[s]
          @v = Array.new(3)
          @v[0] = s
          @v[1] = @u[2]
          @v[2] = @x[1]
    
          pentagon = [@x, @y, @z, @u, @v]
          
          index = 0
          for j in 0..4 do
            index = j if pentagon[j][0] < pentagon[index][0]
          end
          
          num = ""
          for j in 0..4 do
            for k in 0..2 do
              num << pentagon[(index + j) % 5][k].to_s
            end
          end
          @biggest_number = num if @biggest_number.casecmp(num) == -1
                   
          puts "Vectors"
          puts "SUM = #{@sum}"
          puts @x.inspect
          puts @y.inspect
          puts @z.inspect
          puts @u.inspect
          puts @v.inspect
          puts num
          puts "#######"
          puts ""
        end
        
        @avail[t] = true
      end
      
      @avail[i] = true
    end
  end
end

def find_z
  for i in 1..9 do
    if @avail[i] 
      @z[0] = i
      @avail[i] = false
      
      t = @sum - @z[0] - @z[1]
      if 0 < t && t < 10 && @avail[t]
        @z[2] = t
        @avail[t] = false
        @u = Array.new(3)
        @u[1] = @z[2]
        
        find_u()
        @avail[t] = true
      end
      
      @avail[i] = true
    end
  end
end

def find_y
  for i in 1..9 do
    if @avail[i] 
      @y[0] = i
      @avail[i] = false
      
      t = @sum - @y[0] - @y[1]
      if 0 < t && t < 10 && @avail[t]
        @y[2] = t
        @avail[t] = false
        @z = Array.new(3)
        @z[1] = @y[2]
        
        find_z()
        @avail[t] = true
      end
      
      @avail[i] = true
    end
  end
end

def find_x
  for i in 1..9 do
    if @avail[i] 
      @x[1] = i
      @avail[i] = false
      for j in 1..9 do
        if @avail[j] 
          @x[2] = j
          @avail[j] = false
          @y = Array.new(3)
          @y[1] = @x[2]
          
          @sum = @x[0] + @x[1] + @x[2]
          
          find_y()
          @avail[j] = true
        end
      end
      @avail[i] = true
    end
  end
end

@biggest_number = ""

@avail = Array.new(10) { true }

@x = Array.new(3)
@x[0] = 10

find_x()

puts "Biggest Number: #{@biggest_number}"
