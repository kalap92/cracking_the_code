require_relative 'permutations_without_dups'
require 'test/unit'
require 'set'
require 'pry'
 
class PermutationsWithoutDebtsTest < Test::Unit::TestCase
  def setup
    @input_string = 'abc'
  end

  def test_permutations
    permutations_set = Set.new
    string_permutations(
      @input_string, 
      permutations_set,
      @input_string.size,
      '')
    assert_equal(6, permutations_set.size)
  end
end
