class UsersController < ApplicationController

	skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?
  def user_home
  	@shop = Shop.find_by(id: session[:user_id])
  end

  def user_login_form
  end

  def user_login
  	@user = Shop.find_by(userid: params[:userid],
  		                   pass: params[:pass])
  	if @user
  		session[:user_id] = @user.id
  		flash[:notice] = "ログインしました"
  		redirect_to("/user_home")
  	else
  		@error_message = "店舗IDまたはパスワードが間違っています"
  		@name = params[:userid]
  		render("users/user_login_form")
  	end
  end

  def user_logout
  	session[:user_id] = nil
  	flash[:notice] = "ログアウトしました"
  	redirect_to("/user_login")
  end

  def user_edit
  	@shop = Shop.find_by(id: session[:user_id])
  end

  def user_update
  	@shop = Shop.find_by(id: session[:user_id])
  end

  
end
