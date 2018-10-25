class Api::V1::UserPlacesController < ApplicationController

  def index
   @userplaces = UserPlace.all
   render json: @userplaces.map { |userplace| userplace.formatted_json}
 end

 def show
   @userplace = UserPlace.find(params[:id])
   render json: @userplace.formatted_json
 end

 def create
	  @userplace = UserPlace.new(userplace_params)
	  @userplace.save
    render json: @userplace.formatted_json
	end

  def destroy
    @userplace = UserPlace.find(params[:id])
    @userplace.destroy
  end

  private

  def userplace_params
    params.require(:user_place).permit(:user_id, :place_id)
  end


end
