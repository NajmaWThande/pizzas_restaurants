class RestaurantsController < ApplicationController
  def index 
      restaurant = Restaurant.all
      render json: restaurant
  end
  
  def show
      restaurant = Restaurant.find_by(id: params[:id])
      render json: restaurant
    end
  
    def create
      restaurant = Restaurant.new(restaurant_params)
      if restaurant.save
        render json: restaurant, status: :created
      else
        render json: { errors: restaurant.errors.messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    private
    
    def restaurant_params
      params.permit(:name, :address)
    end
  end