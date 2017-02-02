FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish)
	biggest_fish = ""
	0.upto(fish.size - 2).each do |i|
		1.upto(fish.size - 1).each do |j|
			big_fish = (fish[i].length > fish[j].size ? fish[i] : fish[j])
			biggest_fish = big_fish if big_fish.length > biggest_fish.length
		end
	end
	biggest_fish
end

puts sluggish_octopus(FISH)
