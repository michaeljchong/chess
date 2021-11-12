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

  def player_move
    piece = choose_piece
    move = choose_move
  #   until valid move
  #     receive current player's move
  #       select piece to move
  #       select position to move to
  end

  def choose_piece

  end

  def choose_move

  end

  def switch_player
    @current_player = @current_player == 'white' ? 'black' : 'white'
  end

  def game_over?

  end
end

Game.new.play
