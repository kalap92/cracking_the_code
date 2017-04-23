require_relative 't9'
require_relative 't9_with_dict'
require 'test/unit'
require 'pry'
 
class T9 < Test::Unit::TestCase
 # def test_t9
 #   assert_equal(['tree', 'tref', 'urde', 'used', 'usee'], t9('8733'))
 # end

  def test_t9_with_dict
    assert_equal(['tree', 'tref', 'urde', 'used', 'usee'], t9_with_dict('8733'))
  end
end
