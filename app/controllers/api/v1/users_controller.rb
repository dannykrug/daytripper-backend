class Api::V1::UsersController < ApplicationController

  def index
   @users = User.all
   render json: @users.map {|user| user.formatted_json}
 end

 def show
   @user = User.find(params[:id])
   render json: @user.formatted_json
 end

 def create
	  @user = User.find_or_create_by(user_params)
    render json: @user.formatted_json
	end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
