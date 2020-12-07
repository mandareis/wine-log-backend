class WinesController < ApplicationController
  def index
    # GET /wines
    # GET /wines?liked_by=123
    if params[:liked_by]
      loved_wines = Love.includes(:wine).where("user_id = ?", params[:liked_by]).paginate(page: params[:page], per_page: 10).reverse_order
      render json: loved_wines.map { |l| l.wine }
    else
      render json: Wine.paginate(page: params[:page], per_page: 10).reverse_order
    end
  end

  def show
    render json: Wine.find(params[:id])
  end

  def create
    wine = Wine.create({
      "name" => params[:name],
      "year" => params[:year],
      "kind" => params[:kind],
      "cost" => params[:cost],
      "region" => params[:region],
      "img_url" => params[:img_url],
    })
    Love.create(user_id: params[:user_id], wine_id: wine.id)
    render json: wine
  end

  def update
    render json: Wine.where("id = ?", params[:id]).update(get_params)
  end

  def destroy
    wine = Wine.find(params[:id])
    wine.destroy
    render json: wine
  end

  private

  def get_params
    params.require(:wine).permit(:name, :year, :kind, :cost, :region, :img_url)
  end
end
