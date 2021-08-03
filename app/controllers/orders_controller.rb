class OrdersController < ApplicationController
  def index
    @idea = Idea.find(params[:idea_id])
    @order = Order.new
  end

  def create
    @idea = Idea.find(params[:idea_id])
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

end
