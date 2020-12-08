class CommentsController < ApplicationController
  def index
    render json: Comment.includes(:user).where("wine_id = ?", params[:wine_id]).paginate(page: 1, per_page: 5).reverse_order.as_json(include: :user)
  end

  def show
    render json: Comment.find(get_params)
  end

  def create
    render json: Comment.create({
      "comment" => params[:comment],
      "user_id" => params[:user_id],
      "wine_id" => params[:wine_id],
    })
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end
end
