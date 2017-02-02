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

puts "Sluggish Octopus returns:"
puts sluggish_octopus(FISH)

def dominant_octopus(fish, &prc)
	return fish if fish.length < 2

	mid = fish.length / 2
	left = dominant_octopus(fish.take(mid), &prc)
	right = dominant_octopus(fish.drop(mid) & prc)
	merge(left, right, &prc)
end

def merge(left, right, &prc)
	prc ||= Proc.new { |n1, n2| n1 <=> n2 }
	merged = []
	until left.empty? || right.empty?
		case prc.call(left.first, right.first)
		when -1
			merged << left.shift
		when 0
			merged << left.shift
		when 1
			merged << right.shift
		end
	end
	merged
end

puts "Dominant Octopus returns:"
puts sluggish_octopus(FISH) { |fish1, fish2| fish2.length <=> fish1.length}
