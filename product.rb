class Product

  def initialize(name,base_price,tax_rate)
   @name = name
   @base_price = base_price
   @tax_rate = tax_rate
  end

  def total_price
    @total_price = @base_price * ( 1 + @tax_rate )
  end
end

product1 = Product.new("iphone1",999,0.13)

puts product1.inspect

puts product1.total_price
