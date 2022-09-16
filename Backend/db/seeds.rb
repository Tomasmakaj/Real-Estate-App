Apartment.destroy_all
House.destroy_all
Owner.destroy_all

Apartment.create(is_house: false, price: 683638, detail: 2122, location: "New York", like: false, image: "https://images.pexels.com/photos/303059/pexels-photo-303059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
Apartment.create(is_house: false, price: 635431, detail: 2122, location: "Florida", like: false, image: "https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(is_house: false, price: 93654, detail: 3522, location: "California", like: false, image: "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(is_house: false, price: 463452, detail: 2723, location: "Chicago", like: false, image: "https://images.pexels.com/photos/3663530/pexels-photo-3663530.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(is_house: false, price: 732562, detail: 4892, location: "Maine", like: false, image: "https://images.pexels.com/photos/1031593/pexels-photo-1031593.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(is_house: false, price: 7894325, detail: 6200,location: "Kansas", like: false, image:"https://images.pexels.com/photos/404173/pexels-photo-404173.jpeg?auto=compress&cs=tinysrgb&w=600")
Apartment.create(is_house: false, price: 8764321, detail: 6200, location: "Missouri", like: false, image:"https://images.pexels.com/photos/3639542/pexels-photo-3639542.jpeg?auto=compress&cs=tinysrgb&w=600")
Apartment.create(is_house: false, price: 4318873, detail: 6200, location: "Tennessee", like: false, image:"https://images.pexels.com/photos/144632/pexels-photo-144632.jpeg?auto=compress&cs=tinysrgb&w=600")
Apartment.create(is_house: false, price: 1432352, detail: 6200, location: "Oklahoma", like: false, image:"https://images.pexels.com/photos/448605/pexels-photo-448605.jpeg?auto=compress&cs=tinysrgb&w=600")
Apartment.create(is_house: false, price: 2000000, detail: 6200, location: "Nebraska", like: false, image:"https://images.pexels.com/photos/2376620/pexels-photo-2376620.jpeg?auto=compress&cs=tinysrgb&w=600")

House.create(is_house: true, price: 563485, detail: 8255, location: "New York", like: false, image: "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(is_house: true, price: 747424, detail: 6475, location: "Florida", like: false, image: "https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(is_house: true, price: 566746, detail: 6465, location: "California", like: false, image: "https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(is_house: true, price: 1639078, detail: 7485, location: "Chicago", like: false, image: "https://images.pexels.com/photos/209296/pexels-photo-209296.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(is_house: true, price: 4233333, detail: 9365, location: "Maine", like: false, image: "https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(is_house: true, price: 7953741, detail: 6200, location: "Kansas", like: false, image:"https://images.pexels.com/photos/1438832/pexels-photo-1438832.jpeg?auto=compress&cs=tinysrgb&w=1600")
House.create(is_house: true, price: 1045862, detail: 6200, location: "Missouri", like: false, image:"https://images.pexels.com/photos/3221215/pexels-photo-3221215.jpeg?auto=compress&cs=tinysrgb&w=600")
House.create(is_house: true, price: 7564288, detail: 6200, location: "Tennessee", like: false, image:"https://images.pexels.com/photos/280229/pexels-photo-280229.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
House.create(is_house: true, price: 3459671, detail: 6200, location: "Oklahoma", like: false, image:"https://images.pexels.com/photos/8369529/pexels-photo-8369529.jpeg?auto=compress&cs=tinysrgb&w=600")
House.create(is_house: true, price: 5879099, detail: 6200, location: "Nebraska", like: false, image:"https://images.pexels.com/photos/8325292/pexels-photo-8325292.jpeg?auto=compress&cs=tinysrgb&w=600")

Owner.create(name: "Tommy", email: "1", password: "")
Owner.create(name: "Thiery", email: "2", password: "")
Owner.create(name: "Rachel", email: "3", password: "")
Owner.create(name: "Mike", email: "4", password: "")
Owner.create(name: "Amanda", email: "5", password: "")

Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)