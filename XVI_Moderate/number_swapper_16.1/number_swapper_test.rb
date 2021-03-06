require_relative 'number_swapper'
require 'test/unit'
require 'pry'
 
class NumberSwapperTest < Test::Unit::TestCase
  def test_number_swapper
    a = 1234
    b = 87659
    vars = [a, b]

    swap(vars)
    assert_equal(vars[0], 87659)
    assert_equal(vars[1], 1234)
  end
end
