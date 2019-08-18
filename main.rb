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

# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"

# Set the attribute of @shipment in order 1207 to shipment 334668

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"



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

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"

# Shovel the products "sandals" and "fish oil" into Hamled's @products array

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"

# What is the data type of Hamled's @products attribute?
# How do we read the names of every product that Hamled has?

# Optional: Can we refactor that?
