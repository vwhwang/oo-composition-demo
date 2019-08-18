class Merchant

  attr_reader :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

end