class UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.create(name: params[:name])
    session[:user_id] = user.id
    render json: user
  end

  #   def me
  #     if !session[:user_id]
  #       render json: {
  #         "is_logged_in" => false,
  #         "user" => nil,
  #       }
  #     else
  #       render json: {
  #                "is_logged_in" => true,
  #                "user" => User.find(session[:user_id]),
  #              }
  #     end
  #   end
end
