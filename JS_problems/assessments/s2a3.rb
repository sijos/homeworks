# The fibonacci sequence is defined as follows:
#
# n  : 0  1  2  3  4  5  6  7   8   9   10 ...
# fib: 0  1  1  2  3  5  8  13  21  34  55 ...
#
# Write a method fib_sum(n) that returns the sum of the first n
# fibonacci numbers.

def fib_sum(n)
  return 0 if n <= 0
  return 1 if n == 1
  fibs = [1,1]
  fibs << (fibs[-1] + fibs[-2]) until fibs.length == n
  fibs.reduce(:+)
end


puts "_________fib_sum___________"
puts fib_sum(0) == 0
puts fib_sum(2) == 2
puts fib_sum(5) == 12
puts fib_sum(22) == 46367
puts fib_sum(60) == 4052739537880



# Write a method - five_ws, that takes one or more sentences and
# returns them as questions if they contain the words: why, what, where,
# who,  when.

def five_ws(string)

end


puts "_________five_ws____________"
puts five_ws("Where can I find new shoes. I'm missing my favorite pair.") == "Where can I find new shoes? I'm missing my favorite pair."
puts five_ws("Who is at the door.") == "Who is at the door?"
puts five_ws("Whenever you are ready I'll meet you at the shop.") == "Whenever you are ready I'll meet you at the shop."
puts five_ws("Who. What. Where. When.") == "Who? What? Where? When?"


# write a method longest_pause(string) that takes a string and counts the
# longest "ummmm". For example:
# longest_pause("ummmmmmm") => 8



def longest_pause(sentence)

end

puts "_______longest_pause________"
puts longest_pause("ummmmmmm") == 8
puts longest_pause("Hi there, I'm um here for the interview") == 2
puts longest_pause("um, I'm umm not sure.") == 3
puts longest_pause("ummmmm, I'm umm not sure.") == 6


# write a method cat_pairs(cat_names, cat_price) that iterates over the
# array of cat names and finds the cheapest pair of cats one can buy.
# Return an array of the cat's names in the order in which they appear
# in the original array. Beware: cat_names may contain cats that are no
# longer for sale.
#
# Example:
# cat_names_1 = ["jeff", "muenster", "currie", "breakfast"]
# cat_price_1 = {"jeff" => 24, "muenster" => 100, "currie" => 30, "breakfast" => 50}
# cat_pairs(cat_names_1, cat_price_1) => ["jeff", "currie"]


def cat_pairs(cat_names, cat_price)

end

puts "_________cat_pairs__________"

cat_names_1 = ["jeff", "muenster", "currie", "breakfast"]
cat_names_2 = ["muenster", "currie", "breakfast"]
cat_names_3 = ["callie", "jeff", "macy", "fitz"]
cat_names_4 = ["callie", "jeff", "macy", "breakfast"]
cat_price_1 = {"jeff" => 24, "muenster" => 100, "currie" => 30, "breakfast" => 50}
cat_price_2 = {"callie" => 24, "fitz" => 100, "jefferson" => 30, "macy" => 50}

puts cat_pairs(cat_names_1, cat_price_1) == ["jeff", "currie"]
puts cat_pairs(cat_names_2, cat_price_1) == ["currie", "breakfast"]
puts cat_pairs(cat_names_3, cat_price_2) == ["callie", "macy"]
puts cat_pairs(cat_names_4, cat_price_1) == ["jeff", "breakfast"]