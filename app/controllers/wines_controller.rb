class WinesController < ApplicationController
  def index
    render json: Wine.all
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
      "region" => params[:reg],
    })
    render json: wine
  end

  def update
  end

  def destroy
  end
end
