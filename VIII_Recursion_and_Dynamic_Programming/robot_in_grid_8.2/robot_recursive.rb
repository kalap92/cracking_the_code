class Point
  attr_accessor :x, :y  

  def initialize(x, y)
    @x = x
    @y = y
  end
end

def robot_recursive(map, r, c, path)
  return false if r < 0 || c < 0 || map[r][c] == 1
  is_at_origin = r == 0 && c == 0
  
  if is_at_origin || robot_recursive(map, r-1, c, path) || robot_recursive(map, r, c-1, path)
    path.push(Point.new(r,c))
    return true
  end

  return false
end
