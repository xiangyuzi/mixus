class CreationsController < ApplicationController
  def create
    @idea = Idea.find(params[:id])
    @creation = Creation.new(creation_params)

  end

  private
  def creation_params
   params.require(:creation).permit(:deadline_id, :comment, :creation_image).merge(user_id: current_user.id, order_id: params[:order_id], idea_id: params[:idea_id])
  end
end
