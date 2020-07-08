require './lib/product'

class ShoppingCart
  attr_reader :name, :capacity, :products, :is_full

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @is_full = false

  end

  def quantity
     @products.sum{|product| product.quantity}
  end

  def add_product(product)
    @products << product
  end

  def details
    {name:@name, capacity:@capacity}
  end

  def is_full?
    return true if quantity > 30
    return false if quantity < 30
  end

end
