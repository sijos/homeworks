arr = ["2", "4", "6", "8"]

# idx = 0
# while idx < arr.length
#   p arr[idx]
#   idx += 1
# end
# s = "abcde"
arr.each do |el| 
   el.to_i
   el *= 2
   p el
end
