class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ideas = @user.ideas
    @creations = @user.creations
  end
end
