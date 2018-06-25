def bubble_sort(arr)
  n = arr.length

  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort_by(arr)
  n = arr.length
  while n > 1
    (n - 1).times do |i|
      res = yield(arr[i], arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if res > 0
    end
    n -= 1
  end
  arr
end

p bubble_sort([9, 8, 4, 1, 3, 2])
bubble_sort_by(%w[hi hey hello]) do |left, right|
  left.length - right.length
end
