class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y  
  end

  def to_s
    "(#@x,#@y)"
  end

  def +(other)
    raise TypeError, "Point argument expected" unless other.is_a? Point
    Point.new(@x + other.x, @y + other.y)
  end

  def -@
    Point.new(-@x, -@y)
  end

  def *(scalar)
    Point.new(@x * scalar, @y * scalar)
  end
end

p1 = Point.new(1, 1)
p2 = Point.new(2, 2)
p3 = p1 + p2
puts p1
puts p2
puts p3
