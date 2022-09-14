class ApplicationController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/houses' do
        houses = House.all.order(:price)
        houses.to_json
    end

    get'/apartments' do
        apartments = Apartments.all.order(:price)
        apartments.to_json
    end

    post '/houses' do
        house = House.create(
            price: paramas[:price],
            detail: params[:detail],
            location: params[:location],
            image: params[:image]
        )
        house.to_json
    end
        
        post '/apartments' do
            apartment = Apartment.create(
                price: paramas[:price],
                detail: params[:detail],
                location: params[:location],
                image: params[:image]
            )
            apartment.to_json
        end

        patch '/houses/:id' do
            house = House.find(params[:id])
            house.update(
                price: paramas[:price],
                detail: params[:detail],
                location: params[:location],
                image: params[:image]
            )
            house.to_json
        end

        patch '/apartments/:id' do
            apartment = Apartment.find(params[:id])
            apartment.update(
                price: paramas[:price],
                detail: params[:detail],
                location: params[:location],
                image: params[:image]
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

    
end