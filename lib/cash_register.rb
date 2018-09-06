class CashRegister
    attr_accessor :total, :discount, :title, :price, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        @total += price * quantity 

        i = 0
        while i < quantity 
        @items << title
        i += 1
        end
    end

    def apply_discount
        if @discount > 0
            @total *= (1 - @discount / 100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        else "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end
