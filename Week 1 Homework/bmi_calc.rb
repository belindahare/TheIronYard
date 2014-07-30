#BMI = ( Weight in Pounds / ( Height in inches x Height in inches ) ) x 703
puts "Please enter your weight in pounds: "
weight=gets.to_f
puts "Please enter your height in inches: "
height= gets.to_f
bmi = (weight/ (height*height)) * 703
puts "Your BMI is #{bmi}"

