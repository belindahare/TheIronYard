puts "I'm thinking of a number between 1 and 10.  Can you guess it?"
#@numbers.each do |num|
numbers = rand(1..100)
gameon = true

while gameon
	user_input = gets.chomp!
	if gameon == false
		"you got it!"
		break
	end
if user_input < "#{numbers}"
	puts "Too low, try again!"
elsif user_input > "#{numbers}"
	puts "Too high, try again!"
elsif user_input == "#{numbers}"
	puts "you got it!"
	gameon = false
end	
	
end
