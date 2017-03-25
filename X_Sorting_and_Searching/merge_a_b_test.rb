require_relative 'merge_a_b'
require 'test/unit'
require 'pry'
 
class MergeSortedArraysTest < Test::Unit::TestCase
  def test_merge_sorted_arrays
    a = [4, 7, 8, 12, 16, 100000, 100000, 100000, 100000]
    b = [0, 2, 3, 11]
    merge_sorted_arrays(a, b, 5)
    assert_equal([0, 2, 3, 4, 7, 8, 11, 12, 16], a)
  end
end
