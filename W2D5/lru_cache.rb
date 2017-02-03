  class LRUCache
    def initialize(size)
      @size = size
      @cache = []
    end

    def count
      cache.size
    end

    def add(el)
      if cache.include?(el)
        cache.insert(@size - 1, cache.delete_at(cache.index(el)))
      elsif cache.count >= @size
        cache.shift
        cache.push(el)
      else
        cache.push(el)
      end
    end

    def show
      p cache
      nil
    end

    private
    attr_reader :cache # helper methods go here!
  end
