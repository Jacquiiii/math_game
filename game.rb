class Game
  attr_accessor :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def start_game
    puts "--- Let the games begin! ---"
  end

  def new_turn
    puts "--- New turn ---"
  end

  def game_over
    puts "--- Game over ---"
    puts "Good bye!"
  end
end