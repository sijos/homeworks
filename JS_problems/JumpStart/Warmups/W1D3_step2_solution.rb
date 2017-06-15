# Muni Routes
# ----------------------------------------
# You are at a busy intersection and need to get to brunch ASAP. There
# are multiple Muni buses that go by, but you don't know which to take.
# Given a hash of routes (with route number as the key and next stop on the
# route as the value) return the number of the first route in the hash that
# could get you to your brunch spot. If none exist, return nil.

def muni_routes(routes, destination)
    routes.keys.each do |route|
        return route if routes[route] == destination
    end
    
    nil
end


## Discussion topics:
#   * How are the {} braces on line 8 different from a do ... end block?
#     * When do we prefer one style over the other?
#   * Can you think of a way to do this in one line?



# -----------------



# Largest Factor
# ----------------------------------------
# Write a method, #largest_factor, that accepts an integer as an argument and returns
# the largest factor of that integer

def largest_factor(n)
  (n - 1).downto(1) do |possible_factor|
    return possible_factor if n % possible_factor == 0
  end
end

## Discussion topics:
#   * Why do we start at (n - 1) instead of n?
#   * What does the downto method do?
#   * How does the modulo operator ( % ) help us determine factors?
