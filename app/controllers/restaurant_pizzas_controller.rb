class RestaurantPizzasController < ApplicationController
    def create
      restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  
      if restaurant_pizza.save
        render json: restaurant_pizza.pizza, only: [:id, :name, :ingredients]
      else
        render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      restaurantpizza = RestaurantPizza.find(params[:id])
      restaurantpizza.destroy
      render json: restaurantpizza, status: :ok
    end

    def index 
      restaurantpizza = RestaurantPizza.all
      render json: restaurantpizza
  end

  def show
    restaurantpizza = RestaurantPizza.find_by(id: params[:id])
    if restaurantpizza
      render json: restaurantpizza
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end
  
    private
  
    def restaurant_pizza_params
      params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end
  end
  