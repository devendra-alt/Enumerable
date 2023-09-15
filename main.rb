require_relative 'enumerable'

class MyList
  include Enumerable
  def initialize(*list)
    @list = list
  end

  def each
    for i in 0..@list.length do
      yield(@list[i])
      i+=1  
    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
list.each { |e| print "#{e} " }
