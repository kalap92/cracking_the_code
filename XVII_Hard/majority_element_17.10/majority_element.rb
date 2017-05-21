def majority_element(input)
  count = 0
  majority = 0
  input.each do |ele|
    majority = ele if count == 0 

    if ele == majority
      count += 1
    else
      count -= 1
    end
  end
  majority if validate(majority, input)
end

def validate(majority, input)
  count = 0
  input.each { |ele| count += 1 if ele == majority }
  count > input.size.to_f/2
end
