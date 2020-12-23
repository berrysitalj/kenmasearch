class ShopsController < ApplicationController
  def index
  	@shops = Shop.all.order(created_at: :desc)
  end

  def show
  	@shop = Shop.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @icon = Icon.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
  end

  def new
  	@shop = Shop.new
    @user = User.new
    @icon = Icon.new
    @member = Member.new
  end

  def create
  	@shop = Shop.new(userid: params[:userid])
    if @shop.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/shops/index")
    else
      render("shops/new")
    end
  end

  def edit
  	@shop = Shop.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    @icon = Icon.find_by(id: params[:id])
    @member = Member.find_by(id: params[:id])
  end
  
  def update
  	@shop = Shop.find_by(id: params[:id])
  	@shop.userid = params[:userid]
  	@shop.pass = params[:pass]
  	@shop.shopname = params[:shopname]
  	@shop.shoptel = params[:shoptel]
  	@shop.yomi = params[:yomi]
  	@shop.addres1 = params[:addres1]
  	@shop.addres2 = params[:addres2]
  	@shop.area = params[:area]
  	@shop.paidmember = params[:paidmember]

    @user = User.find_by(id: params[:id])
  	@user.mail = params[:mail]
    @user.name = params[:name]
    @user.tel = params[:tel]
    @user.station = params[:station]
    @user.onfoot = params[:onfoot]
    @user.businessday = params[:businessday]
    @user.businesstime1 = params[:businesstime1]
    @user.businesstime2 = params[:businesstime2]
    @user.pricelist = params[:pricelist]
    @user.topphoto = params[:topphoto]
    @user.agegroup = params[:agegroup]
    @user.reservation = params[:reservation]

    @icon = Icon.find_by(id: params[:id])
    @icon.userid = params[:userid]
    @icon.freeicon1 = params[:freeicon1]
    @icon.freeicon2 = params[:freeicon2]
    @icon.freeicon3 = params[:freeicon3]
    @icon.freeicon4 = params[:freeicon4]
    @icon.freeicon5 = params[:freeicon5]
    @icon.freeicon6 = params[:freeicon6]
    @icon.freeicon11 = params[:freeicon11]
    @icon.freeicon12 = params[:freeicon12]
    @icon.freeicon13 = params[:freeicon13]
    @icon.freeicon14 = params[:freeicon14]
    @icon.freeicon15 = params[:freeicon15]
    @icon.freeicon16 = params[:freeicon16]
    @icon.freeicon21 = params[:freeicon21]
    @icon.freeicon22 = params[:freeicon22]
    @icon.freeicon23 = params[:freeicon23]
    @icon.freeicon24 = params[:freeicon24]
    @icon.freeicon25 = params[:freeicon25]
    @icon.freeicon26 = params[:freeicon26]
    @icon.freeicon27 = params[:freeicon27]
    @icon.paidicon1 = params[:paidicon1]
    @icon.paidicon2 = params[:paidicon2]
    @icon.paidicon3 = params[:paidicon3]
  	@icon.paidicon4 = params[:paidicon4]

    @member = Member.find_by(id: params[:id])
    @member.userid = params[:userid]
    @member.topcomment = params[:topcomment]
    @member.comment = params[:comment]
    @member.photo1 = params[:photo1]
    @member.photo2 = params[:photo2]
    @member.tablenum = params[:tablenum]
    @member.tabletype = params[:tabletype]
    @member.service = params[:service]
    @member.system = params[:system]
    @member.ratio = params[:ratio]
    @member.rule = params[:rule]
    @member.timeup = params[:timeup]
    @member.homepage1 = params[:homepage1]
    @member.homepage2 = params[:homepage2]
    @member.homepage3 = params[:homepage3]
    @member.homepage4 = params[:homepage4]
    @member.opening = params[:opening]


    if @shop.save
      else
    	 render("shops/edit")
    end

    if @user.save
      else
       render("shops/edit")
    end

    if @icon.save
      else
       render("shops/edit")
    end


    if @member.save
      flash[:notice] = "投稿を編集しました"
        redirect_to("/shops/index")
      else
       render("shops/edit")
    end
    
  

  end

  def destroy
    @shop = Shop.find_by(id: params[:id])
    @shop.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/shops/index")
  end
end