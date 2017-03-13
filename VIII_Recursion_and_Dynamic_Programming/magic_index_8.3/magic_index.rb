def magic_index(array)
  l = 0
  h = array.size-1

  while l<h
    mid = (h+l)/2

    return mid if array[mid] == mid
    if array[mid] < mid
      l = mid+1
    else
      h = mid-1
    end
  end
  false
end
