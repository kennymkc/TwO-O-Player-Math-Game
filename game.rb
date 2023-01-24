class Game
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  
  def start

    while player1.alive? && player2.alive? do
      game_question = Question.new
      game_question.new_question(@current_player)
      if !player1.alive? || !player2.alive?
        change_player
        puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      else
      scoreboard
      puts "----- NEW TURN -----"
      change_player
      end
      
    end

  end

  def change_player
    if @current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def scoreboard
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

end