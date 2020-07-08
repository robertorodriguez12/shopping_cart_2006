require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

class ShoppingCartTest < MiniTest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_attributes
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 'King Soopers', cart.name

    assert_equal [], cart.products

  end

  def test_can_add_products_to_cart
    cart = ShoppingCart.new("King Soopers", "30items")

    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    cart.add_product(product2)

    cart.products

  end

  def test_cart_has_details
    cart = ShoppingCart.new("King Soopers", "30items")

    cart.details
  end

end
