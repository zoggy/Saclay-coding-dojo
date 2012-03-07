# Calc the fibonacci sequence
# f(0) = 0 , f(1) = 1
# f(n) = f(n-1) + f(n-2)

def fib(number)
  return number if number.zero? or number == 1

  fib(number-1) + fib(number-2)
end