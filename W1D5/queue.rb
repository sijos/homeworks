class Queue

	def initialize
		@queue = []
	end

	def enqueue(el)
		queue.unshift(el)
		el
	end

	def dequeue
		queue.pop
	end

	def show
		queue.dup
	end

	private
	attr_reader :queue
end