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
    puts result.to_s
  end

  def any?
    list_items = self.instance_variable_get(:@list)
    result = false
    i=0
    while i < list_items.length do
      if yield(list_items[i])==true
        result=true
      end
      i+=1
    end
      puts result
  end
end