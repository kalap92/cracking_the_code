require_relative 'smallest_difference'
require 'test/unit'
require 'pry'
 
class SmallestDifference < Test::Unit::TestCase
  def test_smallest_difference
    a = [1, 3, 15, 11, 5, 2, 234]
    b = [23, 127, 235, 19, 8]

    assert_equal([234, 235], smallest_difference(a,b))
  end
end
