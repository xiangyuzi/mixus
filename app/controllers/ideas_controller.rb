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

  def show
    @idea = Idea.find(params[:id])
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      redirect_to idea_path
    else
      render :edit
    end
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy
    redirect_to root_path
  end

  private
  def idea_params
    params.require(:idea).permit(:catchphrase, :detail, :category_id, :image).merge(user_id: current_user.id)
  end
end
