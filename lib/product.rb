class Product
  attr_reader :category, :name, :price, :amount

  def initialize(category, name, price, amount)
    @category = category
    @name = name
    @price = price
    @amount = amount

  end


end
