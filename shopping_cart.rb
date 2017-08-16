require "./product.rb"
class Shopping_cart

  def initialize
    @@add_product_to_cart = []
  end

  def add_items(name,base_price,tax_rate)
    product = Product.new(name,base_price,tax_rate)
    @@add_product_to_cart << product
    product
  end

  def remove_items(remove_item)
    @@add_product_to_cart.delete(remove_item)
  end

  def total_cost_bftax
    total = 0
    @@add_product_to_cart.each do |product|
      total += product.base_price
    end
    total
  end

  def total_cost_aftax
    total = 0
    @@add_product_to_cart.each do |product|
      total += product.total_price
    end
    total
  end

    def items
    @@add_product_to_cart
  end

end

cart1 = Shopping_cart.new
p1= cart1.add_items("iphone",999,0.10)
p2= cart1.add_items("mi",100,0.10)
p cart1.items
cart1.remove_items(p1)
p cart1.items

p cart1.total_cost_bftax
p cart1.total_cost_aftax
