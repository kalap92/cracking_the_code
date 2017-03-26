def sparse_search(input, word)
  left = 0
  right = input.size-1

  while left < right
    mid = (left+right) / 2
    
    if input[mid] == ''
      mid_left = mid
      mid_right = mid

      mid_left -= 1 while input[mid_left] == '' 
      mid_right += 1 while input[mid_left] == '' 

      return mid_left if input[mid_left] == word
      return mid_right if input[mid_right] == word

      if input[mid_left] < word
        right = mid_left-1
      else
        left = mid_right+1
      end
    else
      return mid if inpunt[mid] == word

      if input[mid] < word
        right = mid-1
      else
        left = mid+1
      end
    end
  end
end
