# question 1
class Cat

	attr_accessor :name, :preferred_food, :meal_time

# question 2
def initialize (name, preferred_food, meal_time)
	@name = name
	@preferred_food = preferred_food
	@meal_time = meal_time

end
#question 4
def eats_at 

	if meal_time < 12
		puts "#{meal_time}AM"
		
	else
		puts "#{meal_time-12}PM"
	end
end
#question 5
def meow
	return "My name is #{name} and I eat #{preferred_food} at #{meal_time}."

end
end

#puts "What time does #{name} eat?"
#x = gets.chomp

# question 3
roxxy = Cat.new('Roxxy', 'Salmon', 8)
ruxx = Cat.new('Ruxx', 'Tuna', 12)

puts roxxy.inspect
puts ""
puts ruxx.inspect
puts ""
puts roxxy.eats_at
#question 6
puts ruxx.meow


