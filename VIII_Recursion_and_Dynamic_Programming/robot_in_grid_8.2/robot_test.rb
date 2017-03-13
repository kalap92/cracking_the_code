require_relative 'robot_reqursive'
require 'test/unit'
require 'pry'
 
class RobotTest < Test::Unit::TestCase

  def setup
    @map = 
      [
        [0, 1, 1, 1, 1, 1, 1, 1, 1,],
        [0, 0, 0, 0, 0, 0, 0, 0, 0,],
        [0, 1, 0, 0, 0, 0, 0, 0, 0,],
        [0, 1, 0, 0, 0, 0, 0, 0, 0,],
        [1, 1, 1, 1, 1, 1, 0, 1, 0,],
        [0, 0, 0, 0, 0, 0, 0, 1, 0,],
        [0, 0, 0, 0, 0, 0, 0, 1, 0,],
        [0, 0, 0, 0, 0, 0, 0, 1, 1,],
        [0, 0, 0, 0, 0, 0, 0, 0, 0,]
      ]
  end

  def only_zeros_in_path(path, map)
    path.inject(0) { |sum, ele| sum + map[ele.x][ele.y] } == 0
  end

  # tests
  #
  def test_robot
    path = []
    robot(@map, 8, 8, path)

    assert_equal(true, only_zeros_in_path(path, @map))
  end
end
