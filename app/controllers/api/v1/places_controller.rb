class Api::V1::PlacesController < ApplicationController

  def index
   @places = Place.all
   render json: @places
 end

 def show
   @place = Place.find(params[:id])
   render json: @place
 end


 private

 def place_params
   params.permit(:name, :address, :description)
 end

 def find_place
   @place = Place.find(params[:id])
 end

end
