def add_paren(parens_list, left_rem, right_rem, ele, index)
  return if (left_rem < 0 || right_rem < left_rem)

  if left_rem == 0 && right_rem == 0
    parens_list.push(ele.dup)
  else
    ele[index] = '('
    add_paren(parens_list, left_rem-1, right_rem, ele, index+1)

    ele[index] = ')'
    add_paren(parens_list, left_rem, right_rem-1, ele, index+1)
  end
end

def parens(n)
  parens_list = []
  ele = ''
  add_paren(parens_list, n, n, ele, 0)
  parens_list
end
