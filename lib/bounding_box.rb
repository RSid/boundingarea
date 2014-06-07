class BoundingBox
  attr_reader :width,:height,:x_pos,:y_pos

  def initialize(x_pos,y_pos,width,height)
    @width = width
    @height = height
    @x_pos = x_pos
    @y_pos = y_pos

  end

  def left
    @x_pos

  end

  def right
    @x_pos + width
  end

  def top
    @y_pos + height
  end

  def bottom
    @y_pos
  end

  def contains_point?(x,y)
    if (x <= (@x_pos + width) && x >= @x_pos) && (y <= (@y_pos + height) && y >= @y_pos)
      true
    else
      false
    end
  end

end
