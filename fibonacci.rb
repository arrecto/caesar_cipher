#fibbonaci method

def fibs(i)
  fib_array = [0, 1]
  for x in 1..i-1 do
    fib_array.append(fib_array[-1]+fib_array[-2])
  end
  fib_array
end

def fibs_rec(i, n=2, fib_array=[0,1])
  if i>n
    fib_array.append(fib_array[-1]+fib_array[-2])
    fibs_rec(i, n=n+1, fib_array)
  end
  fib_array
end
print(fibs_rec(8))
