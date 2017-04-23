require_relative 'pond_size'
require 'test/unit'
require 'pry'
 
class PondSize < Test::Unit::TestCase
  def test_pond_size
    pond = [
      [0, 2, 1, 0],
      [0, 1, 0, 1],
      [1, 1, 0, 1],
      [0, 1, 0, 1]
    ]

    assert_equal([1, 2, 4], ponds_size(pond, 4, 4))
  end
end
