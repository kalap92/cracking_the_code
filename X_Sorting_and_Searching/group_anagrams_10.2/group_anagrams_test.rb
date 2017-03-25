require_relative 'group_anagrams'
require 'test/unit'
require 'pry'
 
class GroupAnagramsTest < Test::Unit::TestCase
  def test_group_anagrams
    input = [
      'kebab',
      'supcio',
      'eabkb',
      'monitor',
      'oicpus',
      'asdf',
      'tormoni',
      'upcios' ]

    output = [
      'kebab',
      'eabkb',
      'supcio',
      'oicpus',
      'upcios',
      'monitor',
      'tormoni',
      'asdf'
    ]
    
    group_anagrams(input)
    assert_equal(input, output)
  end
end
