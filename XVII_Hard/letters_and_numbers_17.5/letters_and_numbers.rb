def differences_table(input)
  diff = []
  diff[0] = 1
  start_type = input.first.class

  i = 0 
  while i < input.length-1
    if start_type == input[i+1].class
      diff[i+1] = diff[i]+1
    else
      diff[i+1] = diff[i]-1
    end
      i += 1
  end
  diff
end

def letters_and_numbers(input)
  diff_hash = {}
  diff = differences_table(input)
  i = 0

  while i < diff.size-1
    if diff_hash[diff[i]]
      diff_hash[diff[i]][:end] = i
      diff_hash[diff[i]][:diff] = diff_hash[diff[i]][:end] - diff_hash[diff[i]][:start]
    else
      diff_hash[diff[i]] = { start: i, end: nil, diff: 0 }
    end
    i += 1
  end
  max_diff = diff_hash.values.max_by { |ele|  ele[:diff] }
  [max_diff[:start]+1, max_diff[:end]]
end
