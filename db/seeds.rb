puts "Creating shoppers..."
shopper1 = Shopper.create(name: "Grace")
shopper2 = Shopper.create(name: "Gloria")
shopper3 = Shopper.create(name: "Pauline")

puts "Creating supermarkets..."
sm1 = Supermarket.create(name: "Carrefour")
sm2 = Supermarket.create(name: "Niavs")
sm3 = Supermarket.create(name: "Tuskys")


puts "Creating reviews..."
rev1 = Review.create(comment: "best supermarket out there", shopper_id: 1, supermarket_id: 1)
rev2 = Review.create(comment: "abit pricey", shopper_id: 3, supermarket_id: 2)
rev3 = Review.create(comment: "doesn't have all I needed", shopper_id: 1, supermarket_id: 3)
rev4 = Review.create(comment: "The lines are too long at the counter especially end month", shopper_id:2, supermarket_id:1)



puts "Seeding done!"