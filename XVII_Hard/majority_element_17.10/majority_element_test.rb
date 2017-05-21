require_relative 'majority_element'
require 'test/unit'
require 'pry'
 
class MajorityElementTest < Test::Unit::TestCase
  def test_majority_element
    input = [1, 2, 5, 9, 5, 9, 5, 5, 5]
    assert_equal(5, majority_element(input))
  end
end
