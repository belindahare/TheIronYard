
#class organizes information
puts "There's crime in progress downtown!"
puts "Which superhero will make it to the scene first and save the day"
puts "Let's find out!"
puts "Name your Superhero please!"
@gameon = true
class Hero
  @@justiceleague = []
  attr_accessor :name
  attr_accessor :speed
  attr_accessor :position
  

  def initialize
    #puts "A new Superhero joined the Justice League
    self.name = nil
    self.speed = nil
    self.position = nil  

    #@@justiceleague.push(self)
  end
  
  def moving_forward
    self.speed += rand(1..5)
  end

  def show_movement
    self.show_movement = @self.speed.times{print "-"}
  end

  #def self.display_hero
   #@@justiceleague
  #end

  def self.add_hero(*hero_attributes)
    hero = Hero.new
    hero.name = hero_attributes[0]
    hero.speed = hero_attributes[1]
    @@justiceleague.push(hero.name, hero.speed)
  end

  def who_is_racing
    @@justiceleague
  end
end

user_input = gets.chomp!
Hero.add_hero("Batman")
Hero.add_hero("Flash")
Hero.add_hero("Superman")
Hero.add_hero("#{user_input}")
puts Hero.who_is_racing

while @gameon 
  gets
  Hero.who_is_racing.each do |racing_hero|
    p Hero.who_is_racing
    if Hero.moving_forward > 30
      puts "#{racing_hero} wins!"
      @gameon = false
    end

    if @gameon == false
      break
    end
    end
end

