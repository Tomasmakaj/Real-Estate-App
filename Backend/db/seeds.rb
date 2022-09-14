Apartment.destroy_all
House.destroy_all
Owner.destroy_all

Apartment.create(price: 683638, detail: 2122, location: "New York City", image: "https://images.pexels.com/photos/303059/pexels-photo-303059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
Apartment.create(price: 635431, detail: 2122, location: "Florida", image: "https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(price: 93654, detail: 3522, location: "California", image: "https://images.pexels.com/photos/323705/pexels-photo-323705.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(price: 463452, detail: 2723, location: "Chicago", image: "https://images.pexels.com/photos/3663530/pexels-photo-3663530.jpeg?auto=compress&cs=tinysrgb&w=400")
Apartment.create(price: 732562, detail: 4892, location: "Maine", image: "https://images.pexels.com/photos/1031593/pexels-photo-1031593.jpeg?auto=compress&cs=tinysrgb&w=400")

House.create(price: 563485, detail: 8255, location: "New York City", image: "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(price: 747424, detail: 6475, location: "Florida", image: "https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(price: 566746, detail: 6465, location: "California", image: "https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(price: 1639078, detail: 7485, location: "Chicago", image: "https://images.pexels.com/photos/209296/pexels-photo-209296.jpeg?auto=compress&cs=tinysrgb&w=400")
House.create(price: 4233333, detail: 9365, location: "Maine", image: "https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg?auto=compress&cs=tinysrgb&w=400")

Owner.create(name: "Tommy")
Owner.create(name: "Thiery")
Owner.create(name: "Rachel")
Owner.create(name: "Mike")
Owner.create(name: "Amanda")

Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)
Portfolio.create(like: "❤️", owner_id:Owner.all.sample.id, house_id:House.all.sample.id, apartment_id:Apartment.all.sample.id)