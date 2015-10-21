module FarMar
  class Sale < FarMar_Base
    attr_reader :id, :amount, :purchase_time, :vendor_id, :product_id
    FILENAME = './support/sales.csv'

    def initialize(sale_hash)
      super(sale_hash)
    end

    def self.convert_to_hash(sale_array)
      sale_hash = {}
      sale_hash[:id] = sale_array[0].to_i
      sale_hash[:amount] = sale_array[1].to_i
      sale_hash[:purchase_time] = DateTime.parse(sale_array[2])
      sale_hash[:vendor_id] = sale_array[3].to_i
      sale_hash[:product_id] = sale_array[4].to_i
      return sale_hash
    end

    # returns all of the sales with the given product id
    def self.by_product(product_id)
      
    end
  end
end
