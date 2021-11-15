require_relative 'board'

class Game
  def initialize
    @board = Board.new
    @current_player = 'white'
  end

  def play
    until game_over?
      @board.display
      move = player_move
      @board.update(move)
      switch_player
    end
  end

  def player_move
    from = choose_from
    to = choose_to(from)
  end

  def choose_from
    print "Player #{@current_player} - Enter the current position of the piece you would like to move (ex. c2): "
    from = gets.chomp
    until valid_input?(from) && valid_position?(from) && moves_avilable?(from)
      print 'Invalid position, enter the current position of the piece you would like to move (ex. c2): '
      from = gets.chomp
    end
    from
  end

  def choose_to(from)
    print "Player #{@current_player} - Enter the position you would like to move to (ex. c4): "
    to = gets.chomp
    until valid_input?(to) && valid_position?(to, false) && valid_movement?(from, to)
      print 'Invalid move, enter the position you would like to move to (ex. c4): '
      to = gets.chomp
    end
    to
  end

  def valid_input?(position)
    position.length == 2 && ('a'..'h').include?(position[0]) && ('1'..'8').include?(position[1])
  end

  def translate_position(position)
    letters = %w[a b c d e f g h]
    row = 8 - position[1].to_i
    col = letters.index position[0]
    [row, col]
  end

  def valid_position?(position, choosing_piece = true)
    row, col = translate_position(position)
    if choosing_piece
      @board.position(row, col) ? @board.position(row, col).color == @current_player : false
    else
      @board.position(row, col) ? @board.position(row, col).color != @current_player : true
    end
  end

  def moves_available?(position)

  end

  def valid_movement?(start_pos, end_pos)
    start_row, start_col = translate_position(start_pos)
    end_row, end_col = translate_position(end_pos)
    from = @board.position(start_row, start_col)
    from.valid_move?(start_row, start_col, end_row, end_col, @board)
  end

  def switch_player
    @current_player = @current_player == 'white' ? 'black' : 'white'
  end

  def game_over?

  end
end

# Game.new.play
