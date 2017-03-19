require_relative 'coins'
require 'test/unit'
require 'pry'
 
class CoinsTest < Test::Unit::TestCase
  def test_coins
    assert_equal(9, coins(10))
  end
end
