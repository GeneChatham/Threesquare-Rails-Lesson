class LocationsController < ApplicationController

	def show
		@location = Location.find_by_id(params[:id])
	end

	def index
		@locations = Location.all
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@location.save
		redirect_to root_path
	end

	def edit
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])
		@location.update(location_params)
		redirect_to root_path
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy
		redirect_to root_path
	end


	private
	def location_params
	  params.require(:location).permit(:name, :picture_url, :review)
	end


end