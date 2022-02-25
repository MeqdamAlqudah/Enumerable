require('./module.rb')
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end
end

cl = MyList.new(1, 2, 3, 4, 5, 6, 8)
puts cl.any?{|e| e == 10}

