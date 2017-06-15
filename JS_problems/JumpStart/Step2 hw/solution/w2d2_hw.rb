# Pet Types
# ------------------------------------------------------------------------------
# Define a method, #pet_types, that accepts a hash as an argument. The hash uses people's
# names as keys, and the values are arrays of pet types that the person owns.

# Example input:
# {
#   "yi" => ["dog", "cat"],
#   "cai" => ["dog", "cat", "mouse"],
#   "venus" => ["mouse", "pterodactyl", "chinchilla", "cat"]
# }

# The method should return a hash that uses the pet types as keys and the values should
# be a list of the people that own that pet type. The names in the output hash should
# be sorted alphabetically

# Example output:

# output_3 = {
#   "dog" => ["cai", "yi"],
#   "cat" => ["cai", "venus", "yi"],  --->  (sorted alphabetically!)
#   "mouse" => ["cai", "venus"],
#   "pterodactyl" => ["venus"],
#   "chinchilla" => ["venus"]
# }

def pet_types(owners_hash)
  pets = Hash.new { |hash, key| hash[key] = [] }
  owners = owners_hash.keys.sort

  owners.each do |owner|
    owners_hash[owner].each do |pet|
      pets[pet] << owner
    end
  end

  pets
end

puts "-------Pet Types-------"

owners_1 = {
  "yi" => ["cat"]
}
output_1 = {
  "cat" => ["yi"]
}

owners_2 = {
  "yi" => ["cat", "dog"]
}
output_2 = {
  "cat" => ["yi"],
  "dog" => ["yi"]
}

owners_3 = {
  "yi" => ["dog", "cat"],
  "cai" => ["dog", "cat", "mouse"],
  "venus" => ["mouse", "pterodactyl", "chinchilla", "cat"]
}
output_3 = {
  "dog" => ["cai", "yi"],
  "cat" => ["cai", "venus", "yi"],
  "mouse" => ["cai", "venus"],
  "pterodactyl" => ["venus"],
  "chinchilla" => ["venus"]
}

puts pet_types(owners_1) == output_1
puts pet_types(owners_2) == output_2
puts pet_types(owners_3) == output_3
