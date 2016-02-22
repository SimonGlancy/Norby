class Dragon

  def initialize name, sex
    @name = name
    @sex = sex
    @asleep = false
    @mood = 5
    @belly = 10
    @intestine = 0
    @energy = 10
    @alive = true
    @birthday = Time.new

    if @sex == 'he'
      @person = 'his'
    elsif @sex == 'her'
      @person == 'her'
    end
    puts "#{@name} is born!"
  end

  def timePassing
    while @alive
    timeElapsed = Time.now - @birthday
      if timeElapsed % 5 == 0
        one_hour_passes
      end
    end
  end

  def one_hour_passes
    if @intestine < 10
      @intestine += 1
      @belly -= 1
    else
      puts "#{@name} pooped on the carpet!"
    end

    if @mood > 0
      @mood -= 1
    else
      puts "#{@name} curls up into a ball of depression!"
    end

    if @belly < 0
      puts "#{@name} couldn't find anything to eat, so #{@sex} ate you!"
      exit #right?
    end

    if @energy > 0
      @energy -= 1
    else
      puts "#{@name} cant keep #{@person} eyes open! #{@sex.capitalize}'s exhausted!"
    end

    if @intestine >= 8 || @belly <= 3 || @mood <= 2 || @energy < 1
      puts "#{@name} is screaming! What are you going to do?"

    # @action = gets.chomp.downcase # Needs more conditionals, @action will after all be a string
    # pet.@action
    end
  end


  def feed
    if @belly <= 10
      puts "#{@name} swallows what you give #{@person} whole!"
      @belly += 5
    else
      puts "#{@name} is too full, #{@sex} might explode!"
    end
  end


  def play
    @type = rand(1..3)

    if @type == 1
      puts "You tickle #{@name}, #{@sex} giggles and rolls around on the floor."
      @mood +=5
      @energy -= 2
    elsif @type == 2
      puts "You play catch with #{@name}, #{@sex}'s not very good but has a great time."
      @mood +=5
      @energy -= 2
    elsif @type == 3
      puts "You play hide and seek with #{@name}, but #{@sex} never finds you."
      @mood +=5
      @energy -= 2
  end


  def walk
    puts "#{@name} was desperate, #{@sex} does #{@person} thing on a lamp post."
    @intestine = 0
  end

  def put_to_bed
  #need something clever here using @awake = false and saying until energy is > something it's still asleep adding += 1 to the energy
  end
end
end

puts "What would you like to call your dragon?"
name = gets.chomp
puts "Is it a he or a she?"
sex = gets.chomp.downcase
pet = Dragon.new name, sex


puts "What would you like to do?\n Feed | Play | Put to Bed | Walk"
  command = gets.chomp.downcase
  while command != "exit"
    if command == "feed"
    pet.feed
     command = gets.chomp.downcase
    elsif command == "walk"
      pet.walk
       command = gets.chomp.downcase
    elsif command == 'play'
      pet.play
       command = gets.chomp.downcase
    elsif command == 'put to bed'
      pet.put_to_bed
       command = gets.chomp.downcase
    elsif command == 'rock'
      pet.rock
       command = gets.chomp.downcase
    else
      kputs "You can't do that. You can feed, walk, play, put to bed #{name} or 'exit' the program."
       command = gets.chomp.downcase
    end
  end