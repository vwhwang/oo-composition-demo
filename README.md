# Object Composition in Ruby: Demo & Live-Code

## Learning Goals

- Have concrete examples and strategies of Ruby syntax to model one-to-one relationships
- Have concrete examples and strategies of Ruby syntax to model one-to-many relationships

## What's in this Repo

- `main.rb`
    - This is a file that loads all of the other files. It contains recommended comments and puts statements about what to cover and how, though instructors should feel empowered to use or change whatever feels most appropriate
- `order.rb`
    - Defines the class `Order` and the attributes `id` and `shipment`
- `shipment.rb`
    - Defines the class `Shipment` and the attributes `tracking_number`
- `merchant.rb`
    - Defines the class `Merchant` and the attributes `name` and `products`
- `product.rb`
    - Defines the class `Product` and the attribute `name`

### Instructors

You should be modifying your code on a new branch that is your class name, ie `leaves`, `branches`, `sockets`, `ports`, etc.

## One to One Relationships

![one-to-one relationship of order and shipment](images/one-to-one.png)

One to one relationships should be tracked using _instance variables_, named appropriately and singular, and _assigning values to them._

To summarize:

- To _read_ one-to-one relationships, we _read_ instance variables using the dot syntax
- To _set_ one-to-one relationships, we should be assigning values to instance variables

### Questions for during or after the Demo

Note the `attr_accessor` in the `Order` class. What attribute is attached to `attr_accessor`? Why couldn't it be `attr_reader`?

Optional: What alternative syntax could we use?

## One to Many Relationships

![one-to-many relationship of merchant and product](images/one-to-many.png)

One to many relationships should be tracked using _instance variables_, named appropriately and plural, and _creating an empty array and modifying the array._

To summarize:

- To _read_ one-to-many relationships, we _read_ instance variables using the dot syntax and get back an array
- To _set_ one-to-one relationships, we should be assigning values to instance variables, or pushing/modifying existing instance variables

### Questions for during or after the Demo

Note the `attr_reader` in the `Merchant` class. What attributes are attached to `attr_reader`? Why do we not need `attr_accessor`?