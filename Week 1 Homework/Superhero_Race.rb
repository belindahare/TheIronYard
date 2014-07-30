
#class organizes information
puts "There's crime in progress downtown!"
puts "Which superhero will make it to the scene first and save the day"
puts "Let's find out!"
puts "Name your Superhero please!"
@gameon = true
#######################################################################
class Hero
  @@justiceleague = []
  attr_accessor :name
  attr_accessor :position
  

  def initialize
    #puts "A new Superhero joined the Justice League
    self.name = nil
    self.position = 0  
  end
  
  def moving_forward
   self.position += rand(1..5)
  end

  def self.add_hero(*hero_attributes)
    hero = Hero.new
    hero.name = hero_attributes[0]
    hero.position = hero_attributes[1]
    @@justiceleague.push hero
    hero
  end

  def self.who_is_racing
    @@justiceleague
  end
  #def track
    #track = self.position.times{print "-"}
  #end

  #def cheat_code
    #self.position += rand(6..10)
  #end
end

##########################################################################
class Game
attr_accessor :names
attr_accessor :position

  def initialize
    self.names = " "
    self.position = 0
  end
game = Game.new


  def movement
    self.position += rand(1..5)
  end 

  def league
    Hero.get_hero
  end
end
#moving forward function
#position function







###########################################################################
  
user_input = gets.chomp!
Hero.add_hero("Batman", 0)
Hero.add_hero("Flash", 0)
Hero.add_hero("Superman", 0)
Hero.add_hero("#{user_input}", 0)
#puts Hero.who_is_racing
######################################################################






while @gameon == true
  gets

  Hero.who_is_racing.each do |racing_hero|
    racing_hero.moving_forward
    print "-" * racing_hero.position
    puts "#{racing_hero.name}"

    #if gets.chomp == "They're getting away!"
      #game.league[3].cheat_code
    #end
    if racing_hero.position > 30
      puts "#{racing_hero.name} wins!"
      @gameon = false
    end

    if @gameon == false
      break
    end
  end
end




  #Hero.who_is_racing.each do |racing_hero|
      #racing_hero.moving_forward
      #print "-" * racing_hero.position
      #puts "#{racing_hero.name}"



