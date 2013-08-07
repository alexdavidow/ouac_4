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

icc1 = Product.create(name: 'Cookies and Cream', price: 25, quantity: 10, description: "Crumbled Oreo base\n cookies and cream ice cream\n whipped cream\n crumbled Oreos.", image: "/pearl_mini.jpg")
icc2 = Product.create(name: 'Rice Krispy Treat', price: 25, quantity: 10, description: "Rice krispy treat base, vanilla bean ice cream, marshmallow fluff and rice krispy treat cluster.", image: "/pearl_mini.jpg")
icc3 = Product.create(name: 'Chocolate Raspberry (GF/DF)', price: 25, quantity: 10, description: "Flourless chocolate cake base, chocolate raspberry sorbet, chocolate soy whipped cream and raspberry jam.", image: "/pearl_mini.jpg")
icc4 = Product.create(name: 'Fro-Yo Parfait', price: 25, quantity: 10, description: "granola base, vanilla frozen yogurt, mixed berry whipped cream and granola.", image: "/pearl_mini.jpg")
icc5 = Product.create(name: 'Mint Chocolate Chip', price: 25, quantity: 10, description: "Flourless chocolate cake base, mint chocolate chip ice cream, whipped cream and chocolate shavings.", image: "/pearl_mini.jpg")
icc6 = Product.create(name: 'Elvis Fluffernutter', price: 25, quantity: 10, description: "Banana bread base, peanut butter banana ice cream, marshmallow fluff and peanut butter cream drizzle.", image: "/pearl_mini.jpg")
icc7 = Product.create(name: 'Strawberry Shortcake', price: 25, quantity: 10, description: "Angel food cake base, strawberry ice cream, whipped cream and strawberry coulis drizzle.", image: "/pearl_mini.jpg")
icc8 = Product.create(name: 'Chocolate Chip Cookie', price: 25, quantity: 10, description: "Chocolate chip cookie base, vanilla bean ice cream, whipped cream and chocolate chips.", image: "/pearl_mini.jpg")
icc9 = Product.create(name: 'Tiramisu', price: 25, quantity: 10, description: "Ladyfinger base, coffee ice cream, mascarpone whipped cream and chocolate and coffee bean shavings.", image: "/pearl_mini.jpg")
icc10 = Product.create(name: 'Chocolate Peanut Butter (GF/DF)', price: 25, quantity: 10, description: "Peanut butter cookie base, chocolate sorbet, chocolate peanut butter soy whipped cream and homemade peanut butter cup piece.", image: "/pearl_mini.jpg")
icc11 = Product.create(name: 'Salted Caramel', price: 25, quantity: 10, description: "Graham cracker base, salted caramel ice cream with pink Himalayan sea salt, whipped cream and salted caramel drizzle.", image: "/pearl_mini.jpg")
icc12 = Product.create(name: "S'Mores", price: 25, quantity: 10, description: "Graham cracker base, toasted marshmallow ice cream, chocolate fluff, graham cracker crumbs and choclate shavings", image: "/pearl_mini.jpg")
icc13 = Product.create(name: "Basil Lemonade (DF only)", price: 25, quantity: 10, description: "Olive oil cake, basil lemon sorbet, lemon scented whipped cream and candied basil.", image: "/pearl_mini.jpg")
icc13 = Product.create(name: 'Green Tea Latte', price: 25, quantity: 10, description: "Green tea shortbread cookie, green tea ice cream, whipped cream and matcha powder dusting", image: "/pearl_mini.jpg")
icc14 = Product.create(name: 'Bellini', price: 25, quantity: 10, description: "Peach pound cake, champagne sorbet, whipped cream and peach puree drizzle.", image: "/pearl_mini.jpg")
icc15 = Product.create(name: 'Arnold Palmer', price: 25, quantity: 10, description: "Lemon pound cake, black tea sorbet, tea-infused whipped cream and candied lemon peel", image: "/pearl_mini.jpg")
icc16 = Product.create(name: 'Watermelon Mergarita', price: 25, quantity: 10, description: "Watermelon cake, watermelon lime sorbet, whipped cream and candied lime peel", image: "/pearl_mini.jpg")

u1 = User.create(name: 'alex', email: 'Example@Example.com', password: '12345678', password_confirmation: '12345678')
alex = User.create(name: 'alex davidow', email: 'alex.davidow@gmail.com', password: 'password', password_confirmation: 'password', phone: 2032737374, address: "383 grand st., apt. m1604 New York, NY 10002", admin: true)

sc1 = ShoppingCart.create(user_id: "#{u1.id}", user: u1 )
