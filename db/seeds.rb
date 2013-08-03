
Cupcake.delete_all
Cookie.delete_all
Topping.delete_all
Frosting.delete_all
IceCream.delete_all
Product.delete_all
ProductOrder.delete_all
ShoppingCart.delete_all
User.delete_all

cc1 = Cupcake.create(name: 'Mint Chocolate Chip', current_score: 0, image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
cc2 = Cupcake.create(name: 'Salted Caramel', current_score: 1, image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
cc3 = Cupcake.create(name: 'Bellini', current_score: 2, image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
cc4 = Cupcake.create(name: 'Arnold Palmer', current_score: 0, image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")

ck1 = Cookie.create(name: 'green tea shortbread', color: 'green', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ck2 = Cookie.create(name: 'graham cracker', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ck3 = Cookie.create(name: 'chocolate chip cookie', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ck4 = Cookie.create(name: 'sugar cookie', color: 'beige', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")

t1 = Topping.create(name: 'strawberry drizzle', color: 'red', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
t2 = Topping.create(name: 'chocolate syrup', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
t3 = Topping.create(name: 'peanut butter cups', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
t4 = Topping.create(name: 'chocolate shavings', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")

f1 = Frosting.create(name: 'fluff', color: 'white', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
f2 = Frosting.create(name: 'mixed berry whipped cream', color: 'purple', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
f3 = Frosting.create(name: 'tea whipped cream', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
f4 = Frosting.create(name: 'chocolate whipped cream', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")

ic1 = IceCream.create(name: 'raspberry sorbet', color: 'pink', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ic2 = IceCream.create(name: 'coffee', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ic3 = IceCream.create(name: 'toasted marshmallow', color: 'white', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")
ic4 = IceCream.create(name: 'chocolate', color: 'brown', image: "https://www.dropbox.com/sh/f8bj10tfye3rhcr/MEWXChzOBA#f:IMG_0805.JPG")

icc1 = Product.create(name: 'Cookies and Cream', price: '$25', quantity: '10')
icc2 = Product.create(name: 'Rice Krispy Treat', price: '$25', quantity: '10')

u1 = User.create(name: 'alex', email: 'Example@Example.com', password: '12345678', password_confirmation: '12345678')
alex = User.create(name: 'alex', email: 'alex.davidow@gmail', password: 'password', password_confirmation: 'password', admin: true)

sc1 = ShoppingCart.create(user_id: "#{u1.id}", user: u1 )
