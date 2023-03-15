class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize (length1, length2, length3)
    @side1 = length1
    @side2 = length2
    @side3 = length3
  end

  def kind
    if @side1 == 0 || @side2 == 0 || @side3 == 0 || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      begin
        raise TriangleError
        puts error.message    
      end
    elsif @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

end
