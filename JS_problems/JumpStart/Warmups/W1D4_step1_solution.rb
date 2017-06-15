# Vowel Censor
# ----------------------------------------
# Write the function vowel_censor that takes in a string and replaces
# any vowels in it with an "X". Do not modify the original string.

# Without regex
def vowel_censor(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  new_string = ""

  string.each_char do |c|
    if vowels.include?(c)
      new_string << "X"
    else
      new_string << c
    end
  end

  new_string
end

## Discussion Topics
#   * What does the #each_char method do?
#   * What is the name of this operator '<<' and what string method does it perform?




# -----------------



# Largest Factor
# ----------------------------------------
# Write a method, #largest_factor, that accepts an integer as an argument and returns
# the largest factor of that integer

def largest_factor(n)
  possible_factor = n - 1

  while possible_factor > 0
    return possible_factor if n % possible_factor == 0
    possible_factor -= 1
  end
end

## Discussion topics:
#   * Why do we start at (n - 1) instead of n?
#   * Why are we counting down instead of up?
