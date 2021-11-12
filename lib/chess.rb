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
  end

  def choose_piece
    print "Player #{@current_player} - Enter the current position of the piece you would like to move (ex. c2): "
    piece = gets.chomp
    until valid_input?(piece) && correct_position?(piece)
      print 'Invalid piece, enter the current position of the piece you would like to move (ex. c2): '
      piece = gets.chomp
    end
    piece
  end

  def valid_input?(position)
    position.length == 2 && ('a'..'h').include?(position[0]) && ('1'..'8').include?(position[1])
  end

  def correct_position?(position, choosing_piece = true)
    letters = %w[a b c d e f g h]
    col = letters.index position[0]
    row = 8 - position[1].to_i
    if choosing_piece
      @board.position(row, col) ? @board.position(row, col).color == @current_player : false
    else
      @board.position(row, col) ? @board.position(row, col).color != @current_player : true
    end
  end

  def choose_move
    print "Player #{@current_player} - Enter the position you would like to move to (ex. c4): "
    move = gets.chomp
    until valid_input?(move) && correct_position?(move, false)
      print 'Invalid move, enter the position you would like to move to (ex. c4): '
      move = gets.chomp
    end
    move
  end

  def switch_player
    @current_player = @current_player == 'white' ? 'black' : 'white'
  end

  def game_over?

  end
end

Game.new.play
