class Shipment

  attr_reader :tracking_number

  def initialize(tracking_number)
    @tracking_number = tracking_number
  end

end