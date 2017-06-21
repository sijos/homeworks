def insertionSort(ar) 
  new_el = ar.pop
  idx = ar.length - 1
  while idx >= 0
    if ar[idx] > new_el
      ar[idx + 1] = ar[idx]
      p ar
    else
      ar[idx + 1] = new_el
      p ar
      break
    end
    idx -= 1
  end
  if ar[0] > new_el
    ar[0] = new_el 
    p ar
  end
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )