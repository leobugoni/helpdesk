class SessionsController < ApplicationController
   def create  
    @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:session][:password])
        sign_in(@user)
        redirect_to current_user
      else
        redirect_to root_url, notice: 'Incorrect e-mail or password.'
      end
    end
  def destroy
    sign_out
    redirect_to root_url
  end
end