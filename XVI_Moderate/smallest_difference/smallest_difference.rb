INFINITY = 1000000

def smallest_difference(a, b)
  a.sort
  b.sort

  a_index = 0
  b_index = 0
  diff = 0
  min_diff = INFINITY
  output = []

  while a_index < a.size-1 || b_index < b.size-1
    a_value = a[a_index]
    b_value = b[b_index]

    diff = (a_value - b_value).abs
    if diff < min_diff
      min_diff = diff 
      output = [a_value, b_value]
    end
    
    if a_index == a.size-1
      a_value = a[a_index]
      while b_index < b.size-1
        b_value = b[b_index]
        diff = (a_value - b_value).abs
        if diff < min_diff
          min_diff = diff 
          output = [a_value, b_value]
        end
        b_index += 1
      end
    end

    if b_index == b.size-1
      b_value = b[b_index]
      while a_index < a.size-1
        a_value = a[a_index]
        diff = (a_value - b_value).abs
        if diff < min_diff
          min_diff = diff 
          output = [a_value, b_value]
        end
        a_index += 1
      end
    end

    if b_value > a_value
      a_index += 1 
    else
      b_index += 1 
    end
  end
  output
end
