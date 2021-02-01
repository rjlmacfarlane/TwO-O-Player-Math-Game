# This assignment was pair-programmed with Mahsa Arabameri & Luke Berzins

require_relative 'players'
require_relative 'questions'

@turn = 0
begin
  puts "-----NEW TURN-----" 
  if @turn % 2 == 0
    question = Questions.new
    puts "Player 1: #{question.prompt}"
    user_answer = $stdin.gets.chomp.to_i
    if user_answer == question.answer
      puts "YES! You are correct"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    else
      P1.incorrect
      puts "Player 1: Seriously? No!"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    end
  else
    question = Questions.new
    puts "Player 2: #{question.prompt}"
    user_answer = $stdin.gets.chomp.to_i
    if user_answer == question.answer
      puts "YES! You are correct"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    else
      P2.incorrect
      puts "Player 2: Seriously? No!"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    end
  end
end until P1.life == 0 || P2.life == 0
puts "-----GAME OVER-----"

if P1.life > 0
  puts "#{P1.name} wins with a score of #{P1.life}/3"
end

if P2.life > 0
  puts "#{P2.name} wins with a score of #{P2.life}/3"
end

puts "Good-Bye!"