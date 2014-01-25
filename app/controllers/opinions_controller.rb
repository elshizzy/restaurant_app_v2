class OpinionsController < ApplicationController
before_action :set_opinion, only: [:show, :edit, :update, :destroy]

def index
	@opinions = Opinion.all
end

def show
end

def edit
end

def create
	@restaurant = Restaurant.find(params[:restaurant_id])
	@opinion = Opinion.new(opinion_params)
	@restaurant.opinions << @opinion
	if @restaurant.save
		redirect_to @restaurant, notice: 'Opinion was successfully created.'
	else
		render action: 'new'
	end
end

def destroy
	@opinion = Opinion.find(params[:id])
	@opinion.destroy
	respond_to do |format|
		format.html {redirect_to opinions_url}
	end
end

private

def set_opinion
	@opinion = Opinion.find(params[:id])
end

def opinion_params
	params.require(:opinion).permit(:content, :email)
end

end
