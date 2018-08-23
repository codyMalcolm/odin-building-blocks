def bubble_sort arr
  flag = false
  until flag
    flag = true
    0.upto(arr.length-2) do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        flag = false
      end
    end
  end
  return arr
end

p bubble_sort([4,3,78,2,0,2])

def bubble_sort_by arr
  flag = false
  until flag
    flag = true
    0.upto(arr.length-2) do |i|
      value = yield(arr[i], arr[i+1])
      if value > 0
        arr[i], arr[i+1] = arr[i+1], arr[i]
        flag = false
      end
    end
  end
  return arr
end

p bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}
