class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    if @user.nil?
      render file: "public/404.html", layout: false
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t (".Welcome")
      redirect_to @user
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
