def merge_sorted_arrays(array_a, array_b, array_a_size)
  a_index = array_a_size-1
  a_end = array_a.size-1
  b_index = array_b.size-1

  while a_index > 0 || b_index > 0
    if array_a[a_index] > array_b[b_index]
      array_a[a_end] = array_a[a_index]   
      a_index -= 1
    else
      array_a[a_end] = array_b[b_index]   
      b_index -= 1
    end
    a_end -= 1

    if a_index == -1
      while b_index != -1
        array_a[a_end] = array_b[b_index]   
        b_index -= 1
        a_end -= 1
      end
    end

    if b_index == -1
      while a_index != -1
        array_a[a_end] = array_a[a_index]   
        a_index -= 1
        a_end -= 1
      end
    end
  end
end
