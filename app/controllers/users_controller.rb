class UsersController < ApplicationController
  before_action :load_user, except: %i(new create)
  before_action :correct_user, only: %i(edit update)
  
  def index; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t ".success"
      redirect_to @user
    else
      flash[:danger] = t ".create_failed"
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @user.update user_params
      flash[:success] = t ".update_profile"
      redirect_to @user
    else
      render :edit
    end
  end
  
  def destroy; end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation, 
    :address, :phone
  end

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to root_url unless current_user? @user
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    redirect_to root_url
    flash[:danger] = t ".no_such"
  end
end
