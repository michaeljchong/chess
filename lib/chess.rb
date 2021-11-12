require_relative 'board'

class Game
  def initialize
    @board = Board.new
    @current_player = 'white'
  end

  def play
    # until game_over?
      @board.display
      move = player_move
      @board.update(move)
      switch_player
    # end
  end

  def game_over?

  end
end

Game.new.play
