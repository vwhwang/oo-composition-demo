require "awesome_print"

require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
# Make an instance of Order with ID 1392
# Make an instance of Shipment with a tracking no. of 34668
# Make an instance of Shipment with a tracking no. of 66243

dees_order = Order.new(1207)
jareds_order = Order.new(1392)
dees_shipment = Shipment.new(34668)
jareds_shipment = Shipment.new(66243)

# Just like how I can go "dees_order, please give me your id"
puts "Dee's order has an id and I can access it with dot syntax: #{dees_order.id}"

# ... I want to be able to ALSO get the SHIPMENT INSTANCE that Dee's order has using dot syntax
# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"

puts "#{dees_order.shipment}"

# Set the attribute of @shipment in order 1207 to shipment 334668

dees_order.shipment = dees_shipment

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"

puts "#{dees_order.shipment}"

puts "By the way, dees_shipment is:"

puts "#{dees_shipment}"

# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
# Make an instance of Merchant with name "tildeee"
# Make an instance of Product with name "Sandals"
# Make an instance of Product with name "Fish Oil"
# Make an instance of Product with name "Bath Salts"
# Make an instance of Product with name "Almond Flour"

hamled = Merchant.new("Hamled")
tildeee = Merchant.new("tildeee")
sandals = Product.new("sandals")
fish_oil = Product.new("fish oil")
bath_salts = Product.new("bath salts")
almond_flour = Product.new("almond_flour")

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @products on the Merchant instance and get an empty array (which prints as empty string)"

puts hamled.products

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
hamled.products << sandals
hamled.products.push(fish_oil)

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"

ap hamled.products

# What is the data type of Hamled's @products attribute?
# Answer: It's an array!
# How do we read the names of every product that Hamled has?
puts "\n\n\n************************"
puts "Let's read the name of every product that Hamled has!"

hamled.products.each do |product|
  puts product.name
end

# Optional: Can we refactor that?


puts "\n\n\n************************"
puts "\n\n\n************************"
puts "\n\n\n************************"
puts "\n\n\n************************"
puts "\n\n\n************************"


puts dees_order.object_id
puts dees_shipment.object_id
puts hamled.products.object_id
hamled.products.each do |product|
  puts product.object_id
end