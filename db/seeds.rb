puts "Deleting all seeds"

Book.destroy_all && Event.destroy_all && Illustrator.destroy_all &&
Blog.destroy_all && Fanart.destroy_all && Goodie.destroy_all && BasketItem.destroy_all && Basket.destroy_all && User.destroy_all if Rails.env.development?

puts "Creating all seeds"

Book.create!(title: "The Boy and the Toad", description: "When a young boy walking along a canal, befriends a toad, magic intervenes as we follow their epic adventures in the underwater Kingdom of Canalia: a place where ingenious inhabitants recycle bikes dumped into the canal into energy to power their Kingdom.\nA story of bravery, friendship and adventure, Sal Hendrie wrote the tale in Leiden, a charming Dutch town boasting many canals. It is illustrated by Nguyen Thanh Vu, a talented Vietnamese illustrator from Là Studio, Saigon, Vietnam.", size: "15 x 20 x 10", color: "Purple, Yellow and White", age: "5+", material: "Paper", pages: 22, year: 2019, price: 15.99, category: "signed")
Book.create!(title: "The Boy and the Toad", description: "When a young boy walking along a canal, befriends a toad, magic intervenes as we follow their epic adventures in the underwater Kingdom of Canalia: a place where ingenious inhabitants recycle bikes dumped into the canal into energy to power their Kingdom.\nA story of bravery, friendship and adventure, Sal Hendrie wrote the tale in Leiden, a charming Dutch town boasting many canals. It is illustrated by Nguyen Thanh Vu, a talented Vietnamese illustrator from Là Studio, Saigon, Vietnam.", size: "15 x 20 x 10", color: "Purple, Yellow and White", age: "5+", material: "Paper", pages: 22, year: 2019, price: 15.99, category: "unsigned")

Blog.create!(title: "Welcome to Sal Hendrie's website!", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates ea obcaecati illum cumque! Natus accusamus unde quasi consequuntur. Recusandae facere est nulla autem quae sit magnam, a at? Temporibus, quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, modi, odit. Enim consequuntur alias nulla accusantium, quod deserunt impedit dicta sapiente, sequi magnam ut aliquam soluta culpa at repudiandae rerum!")

Blog.create!(title: "Poem", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates ea obcaecati illum cumque! Natus accusamus unde quasi consequuntur. Recusandae facere est nulla autem quae sit magnam, a at? Temporibus, quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, modi, odit. Enim consequuntur alias nulla accusantium, quod deserunt impedit dicta sapiente, sequi magnam ut aliquam soluta culpa at repudiandae rerum!")

Illustrator.create!(name: "Nguyen Thanh Vu", description: "Nguyen Thanh Vu is an illustrator at Lá, a small studio located in Saigon (Vietnam). His hobby consists in searching for fun things to do rather than focusing on his on-going job. He has the amazing talent of distraction. He is currently learning to become an amateur carpenter.")

Event.create!(time: DateTime.new(2019, 10, 03, 8, 0), description: "Great event to attend you should definitely come at this time and date in Paris")

Event.create!(time: DateTime.new(2020, 05, 06, 12, 0), description: "Great event to attend you should definitely come at this time and date in Berlin")

Event.create!(time: DateTime.new(2020, 03, 24, 15, 30), description: "Great event to attend you should definitely come at this time and date in Budapest")

fanart1 = Fanart.new(author: "Le Thu")
fanart_photo_1 = File.open(Rails.root + "app/assets/images/Fan Art/Pencil.jpg")
fanart1.photo.attach(io: fanart_photo_1, filename: 'Le_Thu.jpg', content_type: 'image/jpg')
fanart1.save

fanart2 = Fanart.new(author: "Hà Nam Huong")
fanart_photo_2 = File.open(Rails.root + "app/assets/images/Fan Art/Street.jpg")
fanart2.photo.attach(io: fanart_photo_2, filename: 'Ha_Nam_Huong.jpg', content_type: 'image/jpg')
fanart2.save

fanart3 = Fanart.new(author: "Bicycle")
fanart_photo_3 = File.open(Rails.root + "app/assets/images/Fan Art/Bicycle.jpg")
fanart3.photo.attach(io: fanart_photo_3, filename: 'Bicycle.jpg', content_type: 'image/jpg')
fanart3.save

goodie1 = Goodie.new(title: "Set of 4 Postcards", price: 5.99, description: "Get your set of 4 magnificient postcards right here to dive into the wonderful world of The Boy and the Toad")
goodie1_photo = File.open(Rails.root + "app/assets/images/Goodies/Postcards.jpg")
goodie1.photos.attach(io: goodie1_photo, filename: 'Postcards.jpg', content_type: 'image/jpg')
goodie1.save

goodie2 = Goodie.new(title: "Set of 6 Postcards", price: 7.99, description: "Get your set of 6 magnificient postcards right here to dive into the wonderful world of The Boy and the Toad")
goodie2_photo = File.open(Rails.root + "app/assets/images/Goodies/Postcards.jpg")
goodie2.photos.attach(io: goodie2_photo, filename: 'Postcards.jpg', content_type: 'image/jpg')
goodie2.save

goodie3 = Goodie.new(title: "Set of 8 Postcards", price: 9.99, description: "Get your set of 8 magnificient postcards right here to dive into the wonderful world of The Boy and the Toad")
goodie3_photo = File.open(Rails.root + "app/assets/images/Goodies/Postcards.jpg")
goodie3.photos.attach(io: goodie3_photo, filename: 'Postcards.jpg', content_type: 'image/jpg')
goodie3.save

goodie4 = Goodie.new(title: "Set of 10 Postcards", price: 12.99, description: "Get your set of 10 magnificient postcards right here to dive into the wonderful world of The Boy and the Toad")
goodie4_photo = File.open(Rails.root + "app/assets/images/Goodies/Postcards.jpg")
goodie4.photos.attach(io: goodie4_photo, filename: 'Postcards.jpg', content_type: 'image/jpg')
goodie4.save

User.create!(email: 'james@brown.com', password: 'abcdef', password_confirmation: 'abcdef') if Rails.env.development?
