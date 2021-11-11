class Pieces
  attr_reader :symbol
  
  def initialize(color, symbol)
    @color = color
    @symbol = symbol
  end
end

class Pawn < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2659" : "\u265f"
    super(color, symbol)
  end
end

class Rook < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2656" : "\u265c"
    super(color, symbol)
  end
end

class Knight < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2658" : "\u265e"
    super(color, symbol)
  end
end

class Bishop < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2657" : "\u265d"
    super(color, symbol)
  end
end

class Queen < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2655" : "\u265b"
    super(color, symbol)
  end
end

class King < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2654" : "\u265a"
    super(color, symbol)
  end
end

