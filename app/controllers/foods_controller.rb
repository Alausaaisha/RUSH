class FoodsController < ApplicationController
    def index
        if params[:restaurant_id]
            restaurant = Restaurant.find_by(params[:restaurant_id])
            foods = restaurant.foods
        else
            foods = Food.all
        end
        render json: foods, except: [:created_at, :updated_at], include: [restaurant: { except: [:created_at, :updated_at]}]
    end

    def show
        food = Food.find_by(id: params[:id])
        if food
            render json: food, except: [:created_at, :updated_at], include: :restaurant
        else
            render json: {error: "Food not found"}, status: :not_found
        end
    end
end
