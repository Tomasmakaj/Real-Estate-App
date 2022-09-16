class ApplicationController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/houses' do
        houses = House.all.order(:price)
        houses.to_json
    end

    get'/apartments' do
        apartments = Apartment.all.order(:price)
        apartments.to_json
    end

    post '/houses' do
        house = House.create(
            price: params[:price],
            detail: params[:detail],
            location: params[:location],
            image: params[:image]
        )
        house.to_json
    end
        
        post '/apartments' do
            apartment = Apartment.create(
                price: params[:price],
                detail: params[:detail],
                location: params[:location],
                image: params[:image]
            )
            apartment.to_json
        end

        patch '/houses/:id' do
            house = House.find(params[:id])
            house.update(
                like: params[:liked]
            )
            house.to_json
        end

        patch '/apartments/:id' do
            apartment = Apartment.find(params[:id])
            apartment.update(
                like: params[:liked]
            )
            apartment.to_json
        end

        delete '/houses/:id' do
            house = House.find(params[:id])
            house.destroy
            house.to_json
        end

        delete '/apartments/:id' do
        apartment = Apartment.find(params[:id])
        apartment.destroy
        apartment.to_json
    end

    post '/login' do
        if Owner.all.exists?(email: params[:email])
            if Owner.find_by_email(params[:email]).password == params[:password]
                owner == Owner.find_by_email(params[:email])
                owner.to_json
            else
                "In Correct Password"
            end
        else
            "In Correct Email"
        end
    end
end