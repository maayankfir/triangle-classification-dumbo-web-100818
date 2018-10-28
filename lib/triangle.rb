class Triangle

  # write code here
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x < 0 || @y < 0 || @z < 0
      raise TriangleError
    elsif @x == 0 || @y == 0 || @z == 0
      raise TriangleError
    elsif @x + @y <= @z || @x + @z <= @y || @y + @z <= @x
      raise TriangleError
    elsif @x == @y && @y == @z
       :equilateral
    elsif @x == @y || @x == @z || @y == @z
       :isosceles
    elsif @x + @y > @z || @x + @z > @y || @y + @z > @x
       :scalene


    else
      raise TriangleError

    end
  end

  class TriangleError < StandardError
   # triangle error code
 end
end
