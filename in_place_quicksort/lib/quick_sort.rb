require 'Byebug'

class QuickSort
  # Quick sort has average case time complexity O(nlogn), but worst
  # case O(n**2).

  # Not in-place. Uses O(n) memory.
  def self.sort1(array)
    return array if array.length < 2

    pivot = array[0]
    left = array[1..-1].select {|el| el < pivot}
    right = array[1..-1].select {|el| el >= pivot}

    sort1(left) + [pivot] + sort1(right)
  end

  # In-place.
  def self.sort2!(array, start = 0, length = array.length, &prc)
    return array if length - start <= 1

    pivot_idx = QuickSort.partition(array, start, length, &prc)
    QuickSort.sort2!(array, 0, pivot_idx, &prc)
    QuickSort.sort2!(array, pivot_idx + 1, length - (pivot_idx + 1), &prc)

    array
  end

  def self.partition(array, start, length, &prc)
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    pivot = array[start]
    barrier = start + 1
    i = start + 1
    while i < start + length
      if prc.call(array[i], pivot) <= 0
        if i > barrier
          array[barrier], array[i] = array[i], array[barrier]
        end
        barrier += 1
      end
      i += 1
    end
    array[start], array[barrier - 1] = array[barrier - 1], array[start]
    barrier - 1
  end
end
