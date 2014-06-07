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

  # def contains_point?(x,y)
  #   if (x < (@x_pos + width) && x > @x_pos) && (y < (@y_pos + height) && y > @y_pos)
  #     true
  #   else
  #     false
  #   end
  # end

# left returns the left edge of the box.
# right returns the right edge of the box.
# top returns the top edge of the box.
# bottom returns the bottom edge of the box.
# contains_point?(x, y)

end

# b=BoundingBox.new(5.0, 10.0, 25.0, 50.0)
# print b.left
# print b.right
# print b.top
# print b.bottom
