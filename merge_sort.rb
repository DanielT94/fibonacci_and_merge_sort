def merge_sort(array)
  # base case
  return array if array.length < 2
  # sort left
  left = merge_sort(array[0...array.length / 2])
  #sort right
  right = merge_sort(array[array.length / 2 ...array.length])

  sorted = []
  # compare until one half is empty
  until left.empty? || right.empty?
    # one pointer in each half comparing their current values
    # smaller values pushed to the sorted array
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end

  sorted + left + right
end

arr = []
rand(20).times do
  arr << rand(20)
end

p arr
p merge_sort(arr)

