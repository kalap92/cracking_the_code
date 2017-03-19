require_relative 'parens'
require 'test/unit'
require 'pry'
 
class ParensTest < Test::Unit::TestCase
  def test_parens
    n = 3
    output = [ '((()))', '(()())', '(())()', '()(())', '()()()']
    parens_list = parens(n)
    assert_equal(output.sort, parens_list.sort)
  end
end
