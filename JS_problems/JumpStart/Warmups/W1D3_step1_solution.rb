# Rubyify
# ----------------------------------------
# Define a method that turns regular sentences into (really bad and
# super long) ruby method names.

def rubyify(sentence)
  sentence.downcase.gsub(" ", "_")
end

## Discussion Topics
#   * What does the gsub method do? What are it's parameters?
#   * What does the argument ".?" tell the delete method to do?



# -----------------



# Find Factors
# ----------------------------------------
# Define a method, #find_factors(n, possible_factors), that accepts two arguments:
# an integer, n, and an array of integers, possible_factors. Find all the elements
# in possible_factors that are factors of n.

def find_factors(n, possible_factors)
  factors = []

  possible_factors.each do |possible_factor|
    factors << possible_factor if n % possible_factor == 0
  end

  factors
end

## Discussion Topics
#   * What is the difference between the variables 'possible_factors' and
#     'possible_factor'? What types of objects are they and why is one pluralized?
#   * How are vertical spaces used in this method to separate logic?
#   * How would you re-write this using a multi-line if statement? Which looks cleaner?
