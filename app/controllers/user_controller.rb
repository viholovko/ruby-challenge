class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.create
    redirect_to edit_user_path(@user.id)
  end

  def edit
    @user = User.find_by(id: params[:id])
    @user.valid? if @user.created_at != @user.updated_at
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :middle_name, :email, :country, :other_country_name, :social_security)
  end
end
