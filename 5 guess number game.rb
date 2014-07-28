puts "Think of a number between 1 and 100."
puts "The computer gets 5 chances to guess your number"
puts " "
numbers = rand(1..100)
@count = 0
@gameon = true
	def check_win
		if @count >= 6
			puts "I couldn't guess it that round, but let's play again!"
			abort
		end
	end
puts "#{numbers}"
puts "Is that right?"
puts "type: higher, lower, or yes"
 
while @gameon = true
user_input = gets.chomp!
	if user_input.downcase == "higher"
		puts numbers +=6
		puts @count += 1
		check_win 
	elsif user_input.downcase == "lower"
		puts numbers -= 4
		puts @count += 1
		check_win
	elsif user_input.downcase == "yes"
		puts "Woo hoo! I got it!"
		abort
		if @gameon = false
		break
		puts "I couldn't guess it that round, but let's play again!"
	end
	end
end