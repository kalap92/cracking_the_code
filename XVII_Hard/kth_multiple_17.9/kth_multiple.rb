def min(a, b, c)
  return a if a <= b and a <= c
  return b if b <= a and b <= c
  return c if c <= a and c <= b
end

def kth_multiple(k)
  output = [1, 3, 5, 7]
  three = 1
  five = 1
  seven = 1

  while output.size != k
    multiple_three = 3 * output[three]  
    multiple_five = 5 * output[five]
    multiple_seven = 7 * output[seven]
    min_multiple = min(multiple_three, multiple_five, multiple_seven)

    if multiple_three == min_multiple
      output << multiple_three if multiple_three > output.last 
      three += 1
    end

    if multiple_five == min_multiple
      output << multiple_five if multiple_five > output.last 
      five += 1
    end

    if multiple_seven == min_multiple
      output << multiple_seven if multiple_seven > output.last 
      seven += 1
    end
  end
  output.last
end
