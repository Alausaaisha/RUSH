class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, except: [:created_at, :updated_at], status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, except: [:created_at, :updated_at]
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(user_params)
            render json: user
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user
            user.destroy
            head :no_content
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end

    private

    def user_params
        params.permit(:name, :address, :phone_number, :email_address, :province, :password, :password_confirmation)
    end
end
