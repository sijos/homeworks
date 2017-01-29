class Map

	def initialize
		@map = []
	end

	def assign(key, value)
		if map.any? { |el| el[0] == key }
			map.each { |el| el[1] = value if el[0] == key }
		else
			map << [key, value]
		end
		[key, value]
	end

	def lookup(key)
		map.each {|el| return el[1] if el[0] == key}
	end

	def remove(key)
		map.delete_if { |el| el[0] == key }
	end

	def show
		map.dup
	end

	private
	attr_reader :map
end