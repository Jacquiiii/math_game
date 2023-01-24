# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './player'
require './game'
require './question'

# Initiates players and game
player_one = Player.new("Jacqui")
player_two = Player.new("Callie")

# Generates question
q = Question.new

# Starts game
game = Game.new(player_one, player_two)

game.start_game # Start game statement

while (player_one.lives > 0 && player_two.lives > 0)
  q.generate_question

  puts "Player 1: #{q.question}"
  answer = gets.chomp.to_i

  if answer == q.answer
    puts "Congratulations!"
  else
    player_one.remove_life
    puts "Wrong answer. You just lost a life."
  end

  puts "P1: #{player_one.lives}/3, P2: #{player_two.lives}/3"

  if player_one.lives == 0 
    puts "Player 2 wins with a score of #{player_two.lives}/3"
    game.game_over # Game over statement
    break
  elsif player_two.lives == 0
    puts "Player 1 wins with a score of #{player_one.lives}/3"
    game.game_over # Game over statement
    break
  end

  game.new_turn # New turn statement

  q.generate_question

  puts "Player 2: #{q.question}"
  answer = gets.chomp.to_i

  if answer == q.answer
    puts "Congratulations!"
  else
    player_two.remove_life
    puts "Wrong answer. You just lost a life."
  end

  puts "P1: #{player_one.lives}/3, P2: #{player_two.lives}/3"

  if player_one.lives == 0 
    puts "Player 2 wins with a score of #{player_two.lives}/3"
    game.game_over # Game over statement
    break
  elsif player_two.lives == 0
    puts "Player 1 wins with a score of #{player_one.lives}/3"
    game.game_over # Game over statement
    break
  end

  game.new_turn # New turn statement
end