start = Time.new.sec 
@alive = true

  #def timePassing
    while @alive
    timeElapsed = Time.now.sec - start
      if timeElapsed % 1000000 == 0
        puts "tick"
      elsif timeElapsed % 500000 == 0
      	puts "tock"
      
      end
    break if timeElapsed > 1

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
