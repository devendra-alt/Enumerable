require 'enumerable.rb'
class MyList 
  include Enumerable
  def initialize(list)
    @list=list
  end
end

list = MyList.new([1,2,3,4])
list.all?{|n| n ==2}
list.filter{|n| n < 4 }

