=begin
Create a function that determines whether a shopping order is eligible for free shipping. An order is eligible for free shipping if the total cost of items purchased exceeds $50.00.

Examples

free_shipping({ "Shampoo" => 5.99, "Rubber Ducks" => 15.99 }) ➞ false

free_shipping({ "Flatscreen TV" => 399.99 }) ➞ true

free_shipping({ "Monopoly" => 11.99, "Secret Hitler" => 35.99, "Bananagrams" => 13.99 }) ➞ true
Notes
Ignore tax or additional fees when calculating the total order cost

Algorithm:
1. We have list of items and it's price.
2. We take the first item's price and add it the remaining item's price. then we get the total price of all items. 
3. If the total price is greater than $50 then it is eligible for free shipping. 
=end
def free_shipping(hash)
  total = 0
  hash.each do |element, value|
    total += value
  end
  total > 50 
end 
print free_shipping({ "Shampoo" => 5.99, "Rubber Ducks" => 15.99 })
puts ""
print free_shipping({ "Flatscreen TV" => 399.99 })
puts ""
print free_shipping({ "Monopoly" => 11.99, "Secret Hitler" => 35.99,"Bananagrams" => 13.99 })

