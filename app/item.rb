class Item
  attr_accessor :name, :price

  @@itmes = []

  def initialize(name,price)
    @name = name
    @price = price
    @@items << self
  end

  def self.find_by_name(name)
    @@items.select {|item| item.name == item}
  end


end
