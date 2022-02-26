require_relative('./module')
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    puts
    @list.each do |i|
      yield i
    end
    nil
  end
  # rubocop:enable Style/ExplicitBlockArgument
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

# Test #any?
puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

# Test #filter
puts(list.filter(&:even?))
# => [2, 4]
puts(list.each { |i| puts i * 2 })
# =>
# 2
# 4
# 6
# 8
