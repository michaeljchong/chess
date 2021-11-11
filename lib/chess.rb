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
    print "#{@current_player} Enter the current position of the piece you would like to move (ex. c2): "
    move_from = gets.chomp
    print 'Enter the position you would like to move to (ex. c4): '
    move_to = gets.chomp
  #   until valid move
  #     receive current player's move
  #       select piece to move
  #       select position to move to
    
  end

  def switch_player
    @current_player = @current_player == 'white' ? 'black' : 'white'
  end

  def game_over?

  end
end

Game.new.play
