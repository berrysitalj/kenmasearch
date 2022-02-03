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
    @shop = Shop.find_by(userid: params[:id])
  end





  def user_update
    @shop = Shop.find_by(userid:params[:id])
    
    @shop.topcomment = params[:topcomment]
    @shop.comment = params[:comment]
    @shop.name = params[:name]
    @shop.tel = params[:tel]
    @shop.mail = params[:mail]
    @shop.station = params[:station]
    @shop.onfoot = params[:onfoot]
    @shop.businessday = params[:businessday]
    @shop.businesstime1 = params[:businesstime1]
    @shop.pricelist = params[:pricelist]
    @shop.homepage1 = params[:homepage1]
    @shop.homepage2 = params[:homepage2]
    @shop.homepage3 = params[:homepage3]
    @shop.homepage4 = params[:homepage4]
    @shop.agegroup = params[:agegroup]
    @shop.reservation = params[:reservation]
    @shop.tablenum = params[:tablenum]
    @shop.tabletype = params[:tabletype]
    @shop.service = params[:service]
    @shop.system = params[:system]
    @shop.ratio = params[:ratio]
    @shop.rule = params[:rule]
    @shop.timeup = params[:timeup]
    @shop.opening = params[:opening]
    @shop.freeicon11 = params[:freeicon11]
    @shop.freeicon12 = params[:freeicon12]
    @shop.freeicon13 = params[:freeicon13]
    @shop.freeicon14 = params[:freeicon14]
    @shop.freeicon15 = params[:freeicon15]
    @shop.freeicon21 = params[:freeicon21]
    @shop.freeicon22 = params[:freeicon22]
    @shop.freeicon24 = params[:freeicon24]
    @shop.freeicon25 = params[:freeicon25]
    @shop.freeicon26 = params[:freeicon26]


    if @shop.save
      flash[:notice] = "保存しました"
      redirect_to("/user_home")
    else
      flash.now[:error] = '項目に不備があります'
      render("users/user_edit")
    end

  end



  
end
