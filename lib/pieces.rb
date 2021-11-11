class Pieces
  def initialize(color)
    @color = color
  end
end

class Pawn < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2659" : "\u265f"
  end
end

class Rook < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2656" : "\u265c"
  end
end

class Knight < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2658" : "\u265e"
  end
end

class Bishop < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2657" : "\u265d"
  end
end

class Queen < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2655" : "\u265b"
  end
end

class King < Pieces
  def initialize(color)
    super(color)
    @symbol = color == 'white' ? "\u2654" : "\u265a"
  end
end

