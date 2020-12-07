class LovesController < ApplicationController
  def index
    if params[:wine_id] and params[:user_id]
      loves = Love.where("wine_id = ? AND user_id = ?", params[:wine_id], params[:user_id])
    elsif params[:user_id]
      loves = Love.where("user_id = ?", params[:user_id])
    end

    render json: loves
  end

  def show
    Love.find(params[:id])
  end

  def create
    love = Love.create({
      "user_id" => params[:user_id],
      "wine_id" => params[:wine_id],
    })
    render json: love
  end

  def destroy
    love = Love.find(params[:id])
    love.destroy
    render json: love
  end
end
