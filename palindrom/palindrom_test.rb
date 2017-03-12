require_relative 'palindrome'
require "test/unit"

class TestPalindrome < Test::Unit::TestCase
  def test_palindrome
    input = 'tacocat'
    assert_equal(palindrome(input), true)
  end
end
