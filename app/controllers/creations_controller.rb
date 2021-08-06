class CreationsController < ApplicationController
  def create
    @creation = Creation.new(creation_params)
    if @creaion.save
      redirect_to idea_path(params[:idea_id])
    else
      @idea = @creation.idea
      @creations = @idea.creations #コメント一覧表示のeachエラーにならないよう必要
      render "idea/show"
    end
  end

  private
  def creation_params
   params.require(:creation).permit(:deadline_id, :comment).merge(order_id: params[:order_id])
  end
end
