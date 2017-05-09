require_relative 'letters_and_numbers'
require 'test/unit'
require 'pry'
 
class LettersAndNumbersTest < Test::Unit::TestCase
  def letters_and_numbers_array(*args)
    i = 0
    out = []

    while i < args.length
      if i.even?
        out += ['a']*args[i] 
      else
        out += [1]*args[i] 
      end
      i += 1
    end
    out
  end

  def test_letters_and_numbers
    input = letters_and_numbers_array(4, 2, 1, 2, 2, 1, 2, 1, 5)
    assert_equal([3, 14], letters_and_numbers(input))
  end
end
