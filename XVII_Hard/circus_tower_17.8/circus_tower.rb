def fits(solution_a, solution_b)
  solution_a.last[:height] < solution_b.first[:height]
end

def cirrus_tower(athletes)
  athletes = athletes.sort_by { |athlete| athlete[:weight] }
  solutions = athletes.dup.map { |ele| [ele] }
  
  i = 0
  j = 0

  global_maximum = solutions.first
  while i < athletes.size
    j = i
    max_solution = solutions[i]
    while j >= 0
      new_solution = solutions[j] + solutions[i]
      if (fits(solutions[j], solutions[i]) and
          max_solution.size < new_solution.size)
        max_solution = new_solution
      end
      j -= 1
    end
    solutions[i] = max_solution
    global_maximum = max_solution if max_solution.size > global_maximum.size
    i += 1
  end
  global_maximum
end
