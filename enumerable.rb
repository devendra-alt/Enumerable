module Enumerable
  def all?
    list_items = instance_variable_get(:@list)
    result = true
    i = 0
    while i < list_items.length
      result = false if yield(list_items[i]) == false
      i += 1
    end
    puts result
  end

  def filter
    list_items = instance_variable_get(:@list)
    result = []
    i = 0
    while i < list_items.length
      result << list_items[i] if yield(list_items[i]) == true
      i += 1
    end
    puts result
  end

  def any?
    list_items = instance_variable_get(:@list)
    result = false
    i = 0
    while i < list_items.length
      result = true if yield(list_items[i]) == true
      i += 1
    end
    puts result
  end
end
