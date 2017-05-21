require_relative 'shortest_supersequence'
require 'test/unit'
require 'pry'
 
class ShortestSupersequenceTest < Test::Unit::TestCase
  def test_shortest_supersequence
    array = [7, 5, 9, 0, 2, 1, 3, 5, 7, 9, 1, 1, 5, 8, 9, 7]
    shorter_array = [1, 5, 9]
    output = [9, 12]
    assert_equal(output, shortest_supersequence(array, shorter_array))
  end
end
