module MyEnumerable
    def all?
      @list.each do |single|
        return false unless yield single
      end
    end
  
    def any?
      @list.each do |single|
        if yield single
           return true 
        end
      end
      return false
    end
  
    def filter
      filtered_array = []
      @list.each do |single|
        filtered_array.push(single) if yield single
      end
      filtered_array
    end
  end