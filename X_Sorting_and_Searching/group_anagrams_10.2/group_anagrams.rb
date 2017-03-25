def sorted_string(string)
  string.chars.sort.join
end

def group_anagrams(input)
  groups = {}

  input.each do |ele|
    groups[sorted_string(ele)] ||= []
    groups[sorted_string(ele)].push(ele)
  end

  i = 0
  groups.each do |k, v|
    v.each do |ele| 
      input[i] = ele
      i += 1
    end
  end
  input
end
