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

# b=BoundingBox.new(5.0, 10.0, 25.0, 50.0)
# print b.left
# print b.right
# print b.top
# print b.bottom
# print b.contains_point?(20.0, 20.0)
# print b.contains_point?(5.0, 10.0)
# print b.contains_point?(30.0, 60.0)
# print b.contains_point?(0.0, 0.0)
# print b.contains_point?(20.0, 100.0)
# print b.contains_point?(50.0, 20.0)
