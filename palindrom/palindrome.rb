def palindrome(input)
  start = 0
  finish = input.size-1

  while start < finish
    return false if input[start] != input[finish]
    start += 1
    finish -= 1
  end

  true
end
