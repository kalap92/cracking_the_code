require 'set'

class Point
  attr_accessor :x, :y  

  def initialize(x, y)
    @x = x
    @y = y
  end
end

def robot_dynamic(map, r, c, path)
  failedPoints = Set.new
  robot(map, r, c, path, failedPoints)
end

def robot(map, r, c, path, failedPoints)
  return false if r < 0 || c < 0 || map[r][c] == 1

  is_at_origin = r == 0 && c == 0
  point = Point.new(r, c)

  return false if failedPoints.include?(point)
  
  if (is_at_origin || 
     robot(map, r-1, c, path, failedPoints) ||
     robot(map, r, c-1, path, failedPoints))
    path.push(point)
    return true
  end

  failedPoints.add(point)
  return false
end
