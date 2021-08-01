class IdeasController < ApplicationController
  def index
    @ideas = Idea.includes(:user).order(id: 'DESC')
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def idea_params
    params.require(:idea).permit(:catchphrase, :detail, :category_id, :image).merge(user_id: current_user.id)
  end
end
