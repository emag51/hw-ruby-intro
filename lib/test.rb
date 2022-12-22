class BookInStock
    # YOUR CODE HERE
    attr_reader :isbn,:price
    attr_writer :isbn,:price
    
    def initialize(isbn, price)
      @isbn = isbn
      @price = price
    
      if isbn.length == 0 || price <= 0
        return raise ArgumentError
      end
    end
    
    def price_as_string
      n = '%.2f' % @price
      return "$#{n}"
    end
    end