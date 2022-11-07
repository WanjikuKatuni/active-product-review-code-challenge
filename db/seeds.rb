# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: 'Mutoria Wanyaga')
user2 = User.create(name: 'Wathuti Muthoni')
user3 = User.create(name: 'Thayu Maina')
user4 = User.create(name: 'Wachania Wanyaga')
user5 = User.create(name: 'Wanjiku Mwangi')


puts "Creating products..."
p1 = Product.create(name: "Stapler", price: 10)
p2 = Product.create(name: "Whiteboard", price: 15)
p3 = Product.create(name: "Dry Erase Markers", price: 5)
p4 = Product.create(name: "Ballpoint Pens", price: 2)
p5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

Review.create(star_rating: 5, comment: 'Amazing', product_id: p1.id, user_id:user1.id)
Review.create(star_rating: 5, comment: 'Awesome', product_id: p4.id, user_id:user2.id)
Review.create(star_rating: 4, comment: 'Great', product_id: p5.id, user_id:user1.id)
Review.create(star_rating: 1, comment: 'Could be better', product_id: p2.id, user_id:user5.id)
Review.create(star_rating: 3, comment: 'Not bad', product_id: p1.id, user_id:user2.id)
Review.create(star_rating: 5, comment: 'Good work', product_id: p3.id, user_id:user1.id)
Review.create(star_rating: 5, comment: 'Amazing experience', product_id: p1.id, user_id:user3.id)
Review.create(star_rating: 2, comment: 'Expected better', product_id: p3.id, user_id:user4.id)
Review.create(star_rating: 1, comment: 'Just bad', product_id: p4.id, user_id:user3.id)
Review.create(star_rating: 5, comment: 'Will come back', product_id: p2.id, user_id:user5.id)







puts "Seeding done!"