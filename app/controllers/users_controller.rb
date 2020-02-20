# frozen_string_literal: true

class UsersController < ApplicationController
  # before_action :authenticate_admin!, except: [:show]
  # index show create new edit update delete

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email)
  end
end
