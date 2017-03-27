def swap(vars)
  vars[0] = vars[0]^vars[1]
  vars[1] = vars[0]^vars[1]
  vars[0] = vars[0]^vars[1]
end
