class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time <= 12
      puts "#{@meal_time}AM"
    else
      puts "#{@meal_time - 12}PM"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("Tom", "chicken", 19)
cat2 = Cat.new("Jerry", "fish", 16)

cat1.meow
cat2.meow
cat1.eats_at
cat2.eats_at
