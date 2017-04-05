require_relative 'max_number'
require 'test/unit'
require 'pry'
 
class MaxNumber < Test::Unit::TestCase
  def test_max_number
    a = 17
    b = 212
    assert_equal(b, max_number(a, b))

    a = 134
    b = 24523
    assert_equal(b, max_number(a, b))

    a = 65432
    b = 654321
    assert_equal(b, max_number(a, b))

    a = 1
    b = 2
    assert_equal(b, max_number(a, b))

    a = 9999
    b = 10000
    assert_equal(b, max_number(a, b))

    a = -3
    b = -2
    assert_equal(b, max_number(a, b))
  end
end
