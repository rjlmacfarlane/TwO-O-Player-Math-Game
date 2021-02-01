# This assignment was pair-programmed with Mahsa Arabameri & Luke Berzins

class Player
  attr_accessor :name, :life
  def initialize(name)
    @name = name
    @life = 3
  end

  def incorrect
    @life -= 1
  end
end

puts "Welcome to Two-O-Player Math Game!"
  P1 = Player.new('Player1')

puts "Change the name of first player:"
  P1.name = gets.chomp
  P2 = Player.new('Player2')

puts "Change the name of second player:"
  P2.name = gets.chomp

puts "#{P1.name} vs #{P2.name}"
puts "Current Score:"
puts "#{P1.name}: #{P1.life}/3 vs #{P2.name}: #{P2.life}/3"