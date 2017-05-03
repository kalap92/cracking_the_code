require_relative 'pairs_with_sum'
require 'test/unit'
require 'pry'
 
class ParisWithSum < Test::Unit::TestCase
  def test_pairs_with_sum
    input = [1, 6, 123 ,5, 13, 8, 9 ,13, 0]
    sum = 6
    assert_equal([[1, 5], [6, 0]], pairs_with_sum(input, sum))
  end
end
