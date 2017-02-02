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

def clever_octopus(fish)
	biggest_fish = ""
	fish.each {|fish| biggest_fish = fish if fish.length > biggest_fish.length}
	biggest_fish
end

puts "Clever Octopus returns:"
puts clever_octopus(FISH)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)
	tiles.each_with_index { |tile, i| return i if tile == dir}
end

puts "Slow Dance checks:"
puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)

#tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
