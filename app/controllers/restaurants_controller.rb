class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

def index
	@restaurants = Restaurant.all
end

def show
	@opinion = Opinion.new
end

def new
	@restaurant = Restaurant.new
end

def edit
end

def create
	@restaurant = Restaurant.new(restaurant_params)

	respond_to do |format|
		if @restaurant.save
			format.html {redirect_to @restaurant, notice: 'Restaurant was successfully created.'}
		else
			format.html {render action: 'new'}
		end
	end
end

def update
	respond_to do |format|
		if @restaurant.update(restaurant_params)
			format.html {redirect_to @restaurant, notice: 'Restaurant was successfully updated.'}
		else
			format.html {render action: 'edit'}
		end
	end
end

def destroy
	@restaurant.destroy
	respond_to do |format|
		format.html {redirect_to restaurants_url}
	end
end

private

def set_restaurant
	@restaurant = Restaurant.find(params[:id])
end

def restaurant_params
	params.require(:restaurant).permit(:title, :category, :price, :phone, :address, :city, :state, :hours, :rating, :menu)
end

end
