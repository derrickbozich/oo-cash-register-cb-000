class CashRegister
  attr_accessor :total, :discount, :items



  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @purchases = {}
  end


  def add_item(title, price, quantity = 1)


    self.items.push(title)
    self.total += (price * quantity)


  end

  def apply_discount
    if self.discount != nil
    self.total -= self.discount
    "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end



  def void_last_transaction
  

  end
end

# cash = CashRegister.new(20)
# cashh = CashRegister.new()
#
# purchases = {}
# purchases["tomatoes"] = 0
# purchases["cucumber"] = 2
#
# cash_register_with_discount = CashRegister.new(200)
#
# cash_register_with_discount.add_item("macbook air", 1000)
# cash_register_with_discount.items
#
# cash_register_with_discount.apply_discount
# expect(cash_register_with_discount.total).to eq(800)
