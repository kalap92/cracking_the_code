require_relative 'magic_index'
require 'test/unit'
require 'pry'
 
class MagicIndex < Test::Unit::TestCase
  def setup
    @array_one = [-1, 1, 3, 5, 6, 8, 9, 10]
    @array_two = [-123, -23, -2, -1, 0, 1, 6, 10, 11]
    @array_three = [-123, -23, -2, -1, 0, 1, 5, 10, 11]
    @array_not_distinct = [5, 5, 5, 5, 5, 5, 5, 5, 11]
  end

  def test_magic_index_distinct
    assert_equal(1, magic_index(@array_one)) 
    assert_equal(6, magic_index(@array_two)) 
    assert_equal(false, magic_index(@array_three)) 
  end
end
