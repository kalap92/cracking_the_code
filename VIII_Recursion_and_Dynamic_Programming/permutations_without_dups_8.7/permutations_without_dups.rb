def string_permutations(input, permutations_set, n, perm)
  if input.size == 0
    permutations_set.add(perm)
  else
    for i in 0..input.size-1
      string_permutations(input.delete(input[i]), permutations_set, n, perm + input[i])
    end
  end
end
