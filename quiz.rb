score = 0

question_1 = [
{
question: "Which automobile maker introduced the 'Karmann Ghia' ", 
answer: "c",
answer_choices: {
a: "Oldsmobile",
b: "Porche",
c: "Volkswagen",
d: "BMW"
}
}
]

question_1.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
if user_input == "c"
	score += 1
	puts "Score: #{score}"
else 
	score += 0
	puts "Score: #{score}"
end
end



question_2 = [
{
question: "Finish the sentance: Karmann Ghias are Volkwagens...", 
answer: "a",
answer_choices: {
a: "incognito",
b: "perfected",
c: "sport-ified",
d: "on steroids"
}
}
]

question_2.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "a"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end

question_3 = [
{
question: "In which movie did actress Molly Ringwald drive a Karmann Ghia?", 
answer: "c",
answer_choices: {
a: "The Breakfast Club",
b: "Sixteen Candles",
c: "Pretty In Pink",
d: "I don't know, these are dorky movies and I wouldn't be caught dead watching them!"
}
}
]

question_3.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "c"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end


question_4 = [
{
question: "What options are available on a Karmann Ghia?", 
answer: "d",
answer_choices: {
a: "hard top",
b: "ragtop",
c: "convertible",
d: "all of the above"
}
}
]

question_4.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "d"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end


question_5 = [
{
question: "Where is the engine located on a Karmann Ghia?", 
answer: "b",
answer_choices: {
a: "front",
b: "back"
}
}
]

question_5.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "b"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end

question_6 = [
{
question: "Why did Belinda buy a broken down Karmann Ghia?", 
answer: "d",
answer_choices: {
a: "because they're easy to work on",
b: "because the parts are cheap and easy to come by",
c: "...she didn't",
d: "because she found an amazing deal on ebay"
}
}
]

question_6.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "d"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end

question_7 = [
{
question: "How many people will a Karmann Ghia seat?", 
answer: "b",
answer_choices: {
a: "2",
b: "4",
c: "5",
}
}
]

question_7.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "b"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end


question_8 = [
{
question: "What part is most difficult to find when restoring a Karmann Ghia to it's original condition?", 
answer: "a",
answer_choices: {
a: "bumpers",
b: "windshield",
c: "emblems",
d: "steering wheel"
}
}
]

question_8.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "a"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end


question_9 = [
{
question: "During which period did Volkswagen produce the Karmann Ghia model?",
answer: "b",
answer_choices: {
a: "1943-1954",
b: "1956-1974",
c: "1961-1972",
d: "1969-1976"
}
}
]

question_9.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "b"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 	puts "Score: #{score}"

 end
end


question_10 = [
{
question: "What was the approximate original selling price for a Karmann Ghia?", 
answer: "b",
answer_choices: {
a: "$1,500",
b: "$3,000",
c: "$5,000",
d: "$7,000"
}
}
]

question_10.each do |q| 
	puts "#{q[:question]}"
	puts "#{q[:answer_choices]}" 
	user_input = gets.chomp!
 if user_input == "b"
 	score += 1
 	puts "Score: #{score}"
 else
 	score += 0
 end
 puts "Your score was : #{score} out of 10!"
end








