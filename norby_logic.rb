Puts "What would you like to call your dragon?"
name = gets.chomp
pet = Dragon.new name
puts "Is it a he or a she?"
sex = gets.chomp


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

    if @sex = 'he'
      @person = his
      else
      @person = 'her'
    end
    puts "#{@name} is born!"
  end

  def timePassing

  while @alive

    timeElapsed =   Time.now - @birthday

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

    puts "#{@name} curls up into a ball depressed!"
  end

  if @belly < 0

    puts "#{@name} couldn't find anything to eat, so #{@sex} ate you!"
  end

  if @energy > 0

    @energy -= 1
  else
    puts "#{@name} cant keep #{@person} eyes open! #{@sex}'s exhausted!"
  end

  if @intestine >= 8 || @belly <= 3 || @mood <= 2 || @energy < 1
  puts "#{@name} is screaming! What are you going to do?"
  else
  puts "What would you like to do?\n Feed | Play | Put to Bed | Walk"
  end

  @action = gets.chomp.downcase
  pet.@action
  end





  def feed

  if @belly <= 10

  puts "#{@name} swallows what you give #{@person} whole?"

  @belly += 5

  else

  puts "#{@name} is too full #{@person} might explode?"

  end

  def


  def play

  @type = rand(0..3)

  if @type == 1

  puts "You tickle #{@name}, #{@sex} giggles and rolls around on the floor."

  @mood +=5

  elsif @type == 2

  puts "You play catch with #{@name}, #{@sex}'s not very good but has a great time."

  @mood +=5

  elsif @type == 3

  puts "You play hide and seek with #{@name}, #{@sex}'s never finds you."

  @mood +=5

  end


  def walk

  puts "#{@name} was desperate #{@sex} does #{@person} on a lamp post."

  @intestine = 0

  end

def put to Bed

#need something clever here using @awake = false and saying until energy is > something it's still asleep adding += 1 to the energy

































def feed

puts "You feed #{@name}."

@stuff_in_belly = 10

passage_of_time

end

def walk

puts "You walk #{@name}."

@stuff_in_intestine = 0

passage_of_time

end

def put_to_bed

puts "You put #{@name} to bed."

@asleep = true

3.times do

if @asleep

passage_of_time

end

if @asleep

puts "#{@name} snores, filling the room with smoke."



end

end

if @asleep

@asleep = false

puts "#{@name} wakes up slowly."

end

end

def toss

puts "You toss #{@name} up into the air."

puts 'He giggles, which singes your eyebrows.'

passage_of_time

end

def rock

puts "You rock #{@name} gently."

@asleep = true

puts 'He briefly dozes off...'

passage_of_time

if @asleep

@asleep = false

puts '...but wakes when you stop.'

end

end

private


# "private" means that the methods defined here are

# methods internal to the object. (You can feed your

# dragon, but you can't ask him whether he's hungry.)

def hungry?

# Method names can end with "?".

# Usually, we do this only if the method

# returns true or false, like this:

@stuff_in_belly <= 2

end

def poopy?

@stuff_in_intestine >= 8

end

def passage_of_time

if @stuff_in_belly > 0

# Move food from belly to intestine.

@stuff_in_belly = @stuff_in_belly - 1

@stuff_in_intestine = @stuff_in_intestine + 1

else # Our dragon is starving!

if @asleep

@asleep = false

puts 'He wakes up suddenly!'

end

puts "#{@name} is starving! In desperation, he ate YOU!"

exit # This quits the program.

end


if @stuff_in_intestine >= 10

@stuff_in_intestine = 0

puts "Whoops! #{@name} had an accident..."

end

if hungry?

if @asleep

@asleep = false

puts 'He wakes up suddenly!'

end

puts "#{@name}'s stomach grumbles..."

end

if poopy?

if @asleep

@asleep = false

puts 'He wakes up suddenly!'

end

puts "#{@name} does the potty dance..."

end

end

end