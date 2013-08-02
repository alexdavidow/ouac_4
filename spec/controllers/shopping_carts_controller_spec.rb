describe 'ShoppingCartController' do
describe 'basic cart functions' do
 # A user must be able to add items to their shopping cart
 it 'should add items to itself' do
  # User will click a button
  @product = Product.
  @cart = ShoppingCart.create(user_id: "#{user.id}")
  @product_order = ProductOrder.create(shopping_cart_id: "#{@cart.id}", product_id: "#{@product.id}")
  @cart.push(item)
 end
 # A user must be able to update the quantity of items in their shopping cart
 it 'should update the quantity of items within itself' do
  pending
 end
  # A user must be able to delete items from their shopping cart
  it 'should remove items from itself' do
   pending
  end
 end
# A shopping cart must correctly total its quantity of its items
# A shopping cart must correctly total the price of all items within it

 ########------ AFTER STRIPE IS IMPLEMENTED--------#####
# A shopping cart must empty itself out after a successful purchase
# A shopping cart must add a successful order to the user's order history
end
