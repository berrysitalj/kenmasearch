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
  	
  end

  def update
  	
  end

  def destroy
  	
  end
end
