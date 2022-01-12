class ShopsController < ApplicationController
  protect_from_forgery
  before_action :owner_logged_in?, only: [:index, :new, :create, :destroy]
  # before_action :user_logged_in?, only: [:edit, :update]
  skip_before_action :user_logged_in?

  def index
  	@shops = Shop.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
  	@shop = Shop.find_by(userid: params[:id])
    @shops_new_top = Shop.where(paidmember: 0, addres1: @shop.addres1).order(created_at: :desc)
    @shops_random = Shop.where(paidmember: 1, addres1: @shop.addres1).order("RANDOM()").limit(6)
    # 有料会員がひとつもなければ無料会員を表示する
    if @shops_random.present?
      @shops_random_top = @shops_random
    else
      @shops_random_top = Shop.where(paidicon4: 1, addres1: @shop.addres1).order("RANDOM()").limit(6)
    end    
  end

  def new
  	@shop = Shop.new
  end

  def create
  	@shop = Shop.new(userid: params[:userid])
    @shop.pass = params[:pass]
    @shop.shopname = params[:shopname]
    @shop.shoptel = params[:shoptel]
    @shop.addres1 = params[:addres1]
    @shop.addres2 = params[:addres2]
    @shop.area = params[:area]
    @shop.station = params[:station]
    @shop.topphoto = params[:topphoto]
    @shop.freeicon1 = params[:freeicon1]
    @shop.freeicon2 = params[:freeicon2]
    @shop.freeicon11 = params[:freeicon11]
    @shop.freeicon12 = params[:freeicon12]
    @shop.freeicon13 = params[:freeicon13]
    @shop.freeicon14 = params[:freeicon14]
    if @shop.save
      flash[:notice] = "新規登録が完了しました"
      redirect_to("/shops/index")
     else
       render("shops/new")
    end
  end

  def edit
  	@shop = Shop.find_by(userid: params[:id])
  end
  
  def update
  	@shop = Shop.find_by(userid: params[:id])
  	@shop.shopname = params[:shopname]
    

    
    if @shop.save
      redirect_to("/user_home")
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