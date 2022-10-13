# return an array of fibonacci sequence up to n

def fibs(n)
  array = []
  0.upto(n) do |i|
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else
      fib = array[i - 1] + array[i - 2]
      array << fib
    end
  end
  array
end

p fibs(8)

def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1
  
  array = fibs_rec(n - 1)
  array << array[-2] + array[-1]
end

p fibs_rec(8)