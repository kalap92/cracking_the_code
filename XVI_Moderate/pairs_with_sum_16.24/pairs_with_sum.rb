def pairs_with_sum(array, sum)
  hash = {}
  output = []

  array.each { |ele| hash[sum-ele] = true }
  array.each do |ele| 
    if hash[ele]
      output.push([ele, sum-ele])  
      hash[sum-ele] = false  
    end
  end
  output
end
