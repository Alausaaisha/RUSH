class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants, except: [:created_at, :updated_at]
    end

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant, except: [:created_at, :updated_at], include: :riders
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end
end
