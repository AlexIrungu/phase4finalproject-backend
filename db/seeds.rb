# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "💁🙆Seeding users...🧑‍🦳🙍"

10.times do
   

    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.free_email,
        password_digest: "@abc123ABC",
        # phone_number: 123456789,
        # avatar_url: Faker::Avatar.image,
        # is_admin: boolean_value.sample
    )
end

# puts "Seeding categories"

# 10.times do
#     Category.create(
#         genre: Faker::Book.genre,

#         description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: true),
#         # age_category: %w[YoungAdult Children Adult].sample
#     )
# end



puts "Seeding orders"

# 50.times do
#     Order.create(
#         quantity: rand(1..20),
#         total_price: rand(20..100).round(2),
#         user_id: rand(1..10),
#         book_id: rand(1..100)
#     )
# end





puts '📚📚Seeding Books🔖📚'

 require 'rest-client'
require 'json'

firstBatch = RestClient.get 'https://www.googleapis.com/books/v1/users/102281797701392507828/bookshelves/0/volumes?maxResults=40'
secondBatch = RestClient.get 'https://www.googleapis.com/books/v1/users/102281797701392507828/bookshelves/3/volumes?maxResults=40'

firstJSON = JSON.parse(firstBatch)
secondJSON = JSON.parse(secondBatch)

firstArray = firstJSON["items"]
secondArray = secondJSON["items"]

firstArray.each do |book|
    100.times do
        date = Faker::Date.between(from: '1950-01-01', to: '2023-03-29')
        year = date.year
    Book.create(
        
    title: book["volumeInfo"]["title"],
    publisher: Faker::Book.publisher,
    price: 10.12,
    
    category_id: rand(1..10),
    author: book["volumeInfo"]["authors"].join(", "),
    description: book["volumeInfo"]["description"],
    imageURL: book["volumeInfo"]["imageLinks"]["thumbnail"],
    
    publication_date: book["volumeInfo"]["publication_date"],
    )
    end
end

secondArray.each do |book|
    100.times do
        date = Faker::Date.between(from: '1950-01-01', to: '2023-03-29')
        year = date.year

    Book.create(
        category_id: rand(1..10),
        publisher: Faker::Book.publisher,
        price: 10.12,
    title: book["volumeInfo"]["title"],
    author: book["volumeInfo"]["authors"].join(", "),
    description: book["volumeInfo"]["description"],
    imageURL: book["volumeInfo"]["imageLinks"]["thumbnail"],
 
    publication_date: book["volumeInfo"]["publication_date"],
    )
    end
end



    # Book.create(
    #     title: Faker::Book.title,
    #     author: Faker::Book.author,
    #     description: Faker::Lorem.paragraph_by_chars(number: 100),
      
    #     year_of_publication: "12-12-2015",
       
    #     image_url: Faker::LoremFlickr.image,
    #     isbn: "123456789012345678",
         
    # )
# end


puts 'done📑'