# Pizza Slices
# ----------------------------------------
# You are cutting a gigantic pizza. Given the circumference of the pizza
# and the length of the crust of each slice, return the exact number
# (i.e. potentially including a partial slice up to three decimal places)
# of slices you can cut from that pizza.

def pizza_slices(circumference, crust_length)
  (circumference.to_f / crust_length).round(3)
end

## Discussion topics:
#   * What does the #to_f method do?
#   * How is an integer different from a float?
#   * What is 100 / 3 in ruby?


# -----------------


# Identify This
# ----------------------------------------
# Define a method, #identify_this(obj), that accepts any object as an argument!
# Your method should return a string that identifies the type of object in the
# following format:
#   "This ruby object is a _______!"
# Hint, use the #class method to identify objects. Test this method in the repl!

def identify_this_1(obj)
  type = obj.class
  "This ruby object is a #{type}!"
end

def identify_this_2(obj)
  type = obj.class
  "This ruby object is a " + type.to_s + "!"
end

## Discussion topics:
#   * Which of the above solutions uses concatenation? Which uses interpolation?
#   * Which approach is easier to read?
