require_relative 'sparse_search'
require 'test/unit'
require 'pry'
 
class SparseSearchTest < Test::Unit::TestCase
  def test_sparse_search
    input = ['at', '', '', '', 'ball', '', '', 'car', '', '', 'dad', '', '']
    word = 'ball'
    assert_equal(sparse_search(input, word), 4)
  end
end
