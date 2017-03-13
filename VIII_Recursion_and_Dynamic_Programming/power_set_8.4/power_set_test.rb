require_relative 'power_set_recursive'
require 'test/unit'
require 'pry'
 
class PowerSetTest < Test::Unit::TestCase
  def setup
    @set = ['a', 'b', 'c']
    @set2 = ['a', 'b', 'c', 'd']
    @outcome = [
      [],
      ['a'], ['b'], ['c'],
      ['a', 'b'], ['a', 'c'], ['b', 'c'],
      ['a', 'b', 'c']
    ]
  end

  def test_power_test
    outcome = []
    power_set_recursive(@set, outcome, [], @set.size-1, 0)
    assert_equal(@outcome.sort, outcome.sort)

    outcome = []
    power_set_recursive(@set2, outcome, [], @set2.size-1, 0)
    assert_equal(outcome.size, 16)
    assert_equal(outcome.size, outcome.uniq.size)
  end
end
