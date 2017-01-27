class Map
	attr_reader :map

	def initialize
		@map = []
	end

	def assign(key, value)
		if map.any? { |el| el[0] == key }
			map.each { |el| el[1] = value if el[0] == key }
		else
			map << [key, value]
		end
	end

	def lookup(key)
		map.each {|el| return el[1] if el[0] == key}
	end

	def remove(key)
		map.delete_if { |el| el[0] == key }
	end

	def show
		map
	end
end