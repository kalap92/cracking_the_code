require_relative 'robot_dynamic'
require_relative 'robot_recursive'
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
  def test_robot_recursive
    path = []
    robot_recursive(@map, 8, 8, path)
    assert_equal(true, only_zeros_in_path(path, @map))
  end

  def test_robot_dynamic
    path = []
    robot_recursive(@map, 8, 8, path)
    assert_equal(true, only_zeros_in_path(path, @map))
  end
end
