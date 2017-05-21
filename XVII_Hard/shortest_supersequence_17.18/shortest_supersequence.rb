def shortest_supersequence(array, shorter_array)
  occourences = {}
  shorter_array.each { |ele| occourences[ele] = -1 }

  solution = [0, 0]
  array.each_with_index do |ele, index|
    unless occourences[ele].nil?
      prev_value = occourences[ele]
      prev_dist = distance(occourences) 
      occourences[ele] = index
      next if prev_dist.nil?
      if prev_dist > distance(occourences)
        solution = [occourences.values.min, occourences.values.max]
      end
    end
  end
  solution
end

def distance(occourences)
  occourences.values.each { |ele| return nil if ele == -1 }
  occourences.values.max - occourences.values.min
end
