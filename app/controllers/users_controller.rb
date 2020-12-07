class UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.find_or_create_by(name: params[:name])
    session[:user_id] = user.id
    render json: user
  end
end
