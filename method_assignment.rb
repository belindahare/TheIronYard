#STRINGS

method1 = "I don't know how to capitalize properly."
method1.downcase!
puts "#{method1}"

method2 = "This string is going to yell at you!"
method2.upcase!
puts "#{method2}"

method3 = "Karate chop!!"
method3.chop!
puts "#{method3}"

method4 = "what the?!"
method4.reverse!
puts "#{method4}"


method5 = "ta-da!"
method5.replace "hooray"
puts "#{method5}"


 

#INTEGERS

puts 6.even?

puts 7.odd?

puts 8.next

puts 9.to_r

10.downto(5) { |n| print n, ".." \n\}


#FLOATS
method11 = 4.12
puts "#{method11.zero?}"

puts 1.99.round



method13 = 13.08
puts "#{method13.finite?}"

puts 1.5.denominator

puts (-15.5).abs


#BOOLEANS
puts 1 || 2
puts 3 && 4
puts 1 <= 2
puts 1 == 5

if 10> 5
	puts "10 is greater than 5"
else puts "you must be in wonderland!"
end
