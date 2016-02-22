start = Time.new 
@alive = true

  #def timePassing
    while @alive
    timeElapsed = Time.new - start
      if timeElapsed % 10 == 0
        puts "one day passes"
      elsif timeElapsed % 3 == 0 
      	puts timeElapsed
      
      end
    break if timeElapsed > 100

    end
puts start
puts timeElapsed 

  #end



#sum = 1
#10000000.times do  
#	sum = sum + sum**2
#end






#fin = Time.now.sec 

#puts sum
#puts start 
#puts fin 
#duration =  (fin - start).to_f
#puts "Duration = #{duration}"
