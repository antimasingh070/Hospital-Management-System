class UsersController < ApplicationController
  before_action :set_user, only: [:edit]
  before_action :require_user, except: [:create, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy, :new, :create]

  def show
    
  end
  def show
    @hospital = Hospital.find(params[:id])
  end
  def index
      @users = User.all
  end
  def new
    @user = User.new
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to the Hospital Management System #{@user.username}, you have successfully signed up"
      redirect_to departments_path
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil if @user == current_user
    flash[:notice] = "Account and all associated articles successfully deleted"
    redirect_to departments_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_same_user
    if !current_user.set_administrator?
      flash[:alert] = "You can only edit or delete your own account"
      redirect_to @user
    end
  end
end
