module Enumerable
  def all?
    list_items = self.instance_variable_get(:@list)
    result = true
    i=0
    while i < list_items.length do
      if yield(list_items[i])==false
        result=false
      end
      i+=1
    end
      puts result
  end

  def filter
    list_items = self.instance_variable_get(:@list)
    result = []
    i=0
    while i < list_items.length do
      if yield(list_items[i])==true
        result << list_items[i]
      end
      i+=1
    end
    puts result
  end

end

class MyList 
  include Enumerable
  def initialize(list)
    @list=list
  end
end

list = MyList.new([1,2,3,4])
list.all?{|n| n ==2}
list.filter{|n| n < 4 }

