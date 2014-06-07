class BoundingArea

  def initialize (boxes)
    @boxes = boxes
  end


  def contains_point?(x,y)
    result = false
    @boxes.each do |box|
      if box.contains_point?(x,y)
        result = true
      end
    end
    result
  end

end
