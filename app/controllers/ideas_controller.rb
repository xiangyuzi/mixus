class IdeasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_idea, only: [:show, :edit, :update, :destroy]
  
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
    @creation = Creation.new
    @creations = @idea.creation
  end

  def edit
  end

  def update
    if @idea.update(idea_params)
      redirect_to idea_path
    else
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to root_path
  end

  private
  def idea_params
    params.require(:idea).permit(:catchphrase, :detail, :category_id, :image).merge(user_id: current_user.id)
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end
