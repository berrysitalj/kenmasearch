class StoresController < ApplicationController
	skip_before_action :user_logged_in?

  def index
  	@shop = Shop.all.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
  	
  end

  def new
  	@shop = Shop.new
  end

  def create
  	@shop = Shop.new(userid:params[:userid], 
                         pass:params[:pass],
                         shopname:params[:shopname],
                         shoptel:params[:shoptel],
                         addres1:params[:addres1],
                         addres2:params[:addres2],
                         area:params[:area],
                         station:params[:station],
                         freeicon1:params[:freeicon1],
                         freeicon2:params[:freeicon2],
                         freeicon3:params[:freeicon3],
                         freeicon11:params[:freeicon11],
                         freeicon12:params[:freeicon12],
                         freeicon13:params[:freeicon13],
                         freeicon14:params[:freeicon14]
                         )
    if @shop.save
      redirect_to("/stores/index")
    else
      render("stores/new")
    end
  end

  def edit
  	@shop = Shop.find_by(userid: params[:id])
  end

  def update
  	@shop = Shop.find_by(userid:params[:id])
    @shop.pass = params[:pass]
    @shop.shopname = params[:shopname]
    @shop.shoptel = params[:shoptel]
    @shop.addres1 = params[:addres1]
    @shop.addres2 = params[:addres2]
    @shop.area = params[:area]
    @shop.station = params[:station]
    @shop.freeicon1 = params[:freeicon1]
    @shop.freeicon2 = params[:freeicon2]
    @shop.freeicon3 = params[:freeicon3]
    @shop.freeicon11 = params[:freeicon11]
    @shop.freeicon12 = params[:freeicon12]
    @shop.freeicon13 = params[:freeicon13]
    @shop.freeicon14 = params[:freeicon14]

    if @shop.save
      redirect_to("/stores/index")
    else
      render("stores/update")
    end
  end

  def destroy
  	@shop = Shop.find_by(id: params[:id])
    @shop.destroy
    flash[:notice] = "削除しました"
    redirect_to("/stores/index")
  end
end
