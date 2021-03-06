class UsersController < ApplicationController
  before_action :correct_user?, only: [:edit, :update, :destroy]
	def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
  	if @user.save
			sign_in(@user)
      redirect_to users_url, notice: 'User was successfully created.'
    else 
			render action: :new
    end
  end

	def edit
    @user = User.find(params[:id]) 
  end
  
  def update
    @user = User.find(params[:id]) 
    if @user.update_attributes(user_params)
      redirect_to users_path, notice: 'User was successfully updated.'
    else
      render action: :edit
    end
  end
  
  def destroy
    @user = User.find(params[:id]) 
    @user.destroy
    sign_out
    redirect_to root_path,  notice: 'User was successfully destroyed.'
  end

  def show
    @user = User.find(params[:id ])
  end

	private
	def user_params
		params.require(:user).permit(:nome, :email, :password, :password_confirmation)
	end
end