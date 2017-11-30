class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    redirect_to root_url if @user.nil?
  end

  def new
    @user = User.new
  end
end
