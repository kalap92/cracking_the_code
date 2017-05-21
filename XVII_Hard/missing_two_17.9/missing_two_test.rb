require_relative 'missing_two'
require 'test/unit'
require 'pry'
 
class MissingTwoTest < Test::Unit::TestCase
  def test_missing_two
    input = [5, 1, 3, 4, 7, 9, 2]
    output = [6, 8]
    assert_equal(output, missing_two(input, 9))
  end
end
