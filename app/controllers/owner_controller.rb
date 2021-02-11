class OwnerController < ApplicationController
	skip_before_action :owner_logged_in?
  def index
  end

  def new
  	
  end

  def create
  	@owner = Owner.new(name:params[:name], pass:params[:pass])
  	@owner.save
  	redirect_to("/owner/index")
  end

  def login_form
  	
  end

  def login
  	@owner = Owner.find_by(name: params[:name],
  		                   pass: params[:pass])
  	if @owner
  		session[:id] = @owner.id
  		flash[:notice] = "ログインしました"
  		redirect_to("/")
  	else
  		@error_message = "nameまたはpassが間違っています"
  		@name = params[:name]
  		render("owner/login_form") #render("owner/login_form")
  	end
  end

  def logout
  	session[:id] = nil
  	flash[:notice] = "ログアウトしました"
  	redirect_to("/login")
  end
end
