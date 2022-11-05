class RidersController < ApplicationController
    def index
        riders = Rider.all
        render json: riders, except: [:created_at, :updated_at]
    end
end
