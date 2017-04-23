require 'set'

def words_set(file)
  words = Set.new
  puts 'start'
  File.readlines(file).each do |word|
    word.delete!("\n")
    words.add(word)
  end
  puts 'finish'
  words
end

def digit_to_letters(digit)
  keypad = { 2 => 'abc', 3 => 'def', 4 => 'ghi', 5 => 'jkl',
    6 => 'mno', 7 => 'pqrs', 8 => 'tuv', 9 => 'wxyz' }
  keypad[digit]
end

def t9(numbers)
  results = []
  t9_req(numbers, 0, '', words_set('words'), results)
  results
end

def t9_req(numbers, index, prefix, words, results)
  if index == numbers.size
    results.push(prefix) if words.include?(prefix)
    return
  end
  digit = numbers[index].to_i
  letters = digit_to_letters(digit)

  unless letters.nil?
    letters.each_char do |char| 
      t9_req(numbers, index+1, prefix+char, words, results)
    end
  end
end
