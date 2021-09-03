class CreationsController < ApplicationController
  def create
    @creation = Creation.new(creation_params)
    if @creation.save
      redirect_to idea_path(@creation.idea.id)
    else
      @idea = @creation.idea
      render "ideas/show"
    end
  end

  private
  def creation_params
    params.require(:creation).permit(:comment, :day, :image).merge(user_id: current_user.id, idea_id: params[:idea_id])
  end
end
