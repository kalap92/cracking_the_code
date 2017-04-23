require_relative 'sum_swap'
require 'test/unit'
require 'pry'
 
class SumSwapTest < Test::Unit::TestCase
  def test_sum_swap
    a = [4, 1, 2, 1, 1, 2]
    b = [3, 6, 3, 3]
    output = sum_swap(a,b)
    a_sum = a.reduce(:+)
    b_sum = b.reduce(:+)
    assert_equal(true,  a.include?(output[0]))
    assert_equal(true,  b.include?(output[1]))
    assert_equal(output[0], (a_sum - b_sum)/2 + output[1])

    a = [4, 4, 2, 5, 2]
    b = [3, 6, 3, 3]
    output = sum_swap(a,b)
    a_sum = a.reduce(:+)
    b_sum = b.reduce(:+)
    assert_equal(true,  a.include?(output[0]))
    assert_equal(true,  b.include?(output[1]))
    assert_equal(output[0], (a_sum - b_sum)/2 + output[1])
  end
end
