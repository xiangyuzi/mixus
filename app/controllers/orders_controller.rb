class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_idea_id, only: [:index, :create]

  def index
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:deadline_id, :email).merge(user_id: current_user.id, idea_id: params[:idea_id])
  end

  def set_idea_id
    @idea = Idea.find(params[:idea_id])
  end
end
