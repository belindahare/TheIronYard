
questions = [["Which automobile maker introduced the 'Karmann Ghia'? 
a: Oldsmobile,
b: Porche,
c: Volkswagen,
d: BMW", "c"],
["Finish the sentance: Karmann Ghias are Volkwagens...
a: incognito,
b: perfected,
c: sport-ified,
d: on steroids", "a"],                                  
["In which movie did actress Molly Ringwald drive a Karmann Ghia?
a: The Breakfast Club,
b: Sixteen Candles,
c: Pretty In Pink,
d: I don't know, these are dorky movies and I wouldn't be caught dead watching them!", "c"],
["What options are available on a Karmann Ghia?
a: hard top,
b: ragtop,
c: convertible,
d: all of the above
", "d"],
["Where is the engine located on a Karmann Ghia?
a: front,
b: back", "b"],
["Why did Belinda buy a broken down Karmann Ghia?
a: because they're easy to work on,
b: because the parts are cheap and easy to come by,
c: ...she didn't,
d: because she found an amazing deal on ebay", "d"], 
["How many people will a Karmann Ghia seat?
a: 2,
b: 4,
c: 5", "b"], 
["What part is most difficult to find when restoring a Karmann Ghia to it's original condition?
a: bumpers,
b: windshield,
c: emblems,
d: steering wheel", "a"], 
["During which period did Volkswagen produce the Karmann Ghia model?
a: 1943-1954,
b: 1956-1974,
c: 1961-1972,
d: 1969-1976", "b"], 
["What was the approximate original selling price for a Karmann Ghia?
a: $1,500,
b: $3,000,
c: $5,000,
d: $7,000", "b"]
]

score = 0
questions.each do |question|
puts question[0]

user_input = gets.chomp!
if user_input == question[1]
score += 1
puts "correct!"
else
	score += 0
	puts "incorrect"
end
end
puts "You scored #{score} out of 10!"