require_relative 'eight_queens'
require 'test/unit'
require 'pry'
 
class EightQueens < Test::Unit::TestCase
  def test_eight_queens
    results = []
    place_queens(0, [], results)
    assert_equal(results.size, results.uniq.size)

    results.each do |result|
      assert_equal(result.uniq.size, result.size)
      
      i = 0
      while i < 7
        j = i
        while j < 7
          j = j+1
          
          col1 = i
          col2 = j
          row1 = result[col1]
          row2 = result[col2]
          assert_equal(false, (col1 - col2).abs == (row1 - row2).abs)
        end
        i = i+1
      end
    end

    assert_equal(92, results.uniq.size)
  end
end
