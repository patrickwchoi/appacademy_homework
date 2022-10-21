class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
end

# We will need the following instance methods: enqueue(el), dequeue, and peek.

class Queue
    def initialize
      @queue = []
    end

    def enqueue(el)
      @queue << el
    end

    def dequeue
      @queue.shift
    end

    def peek
      @queue[0]
    end
end

# my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: 
# set(key, value), get(key), delete(key), show. Note that the 
# set method can be used to either create a new key-value pair
#  or update the value for a pre-existing key. It's 
#  up to you to check whether a key currently exists!
class Map
    def initialize
        @map = []
    end

    def set(key, val)
        included = false
        (0...@map.length).each do |i|
            if @map[i][0] == key
                @map[i][1] = val 
                included = true
            end
        end
        @map << [key, val] if !included 
    end
    
    def get(key)
        (0...@map.length).each do |i|
            return @map[i][1] if @map[i][0]==key
        end
        return nil
    end

    def delete(key)
        del_index = nil
        (0...@map.length).each do |i|
            del_index = i if @map[i][0] == key
        end
        @map.delete_at(del_index) if del_index
    end
    
    def show
        (0...@map.length-1).each do |i|
            print "#{@map[i]}, "
        end
        print @map[-1]
    end
end

m = Map.new
m.set('k1', 'v1')
m.set('k2', 'v2')
m.set('k1', 'v3')
m.show