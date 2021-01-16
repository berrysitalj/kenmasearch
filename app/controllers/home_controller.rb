class HomeController < ApplicationController
  
  before_action :set_shop, only: [:top, :hokkaido, :tohoku, :kanto, :chubu, :kansai, :shikoku, :tyugoku, :kyushu]
   
  def top
  	
  end

  def search
  	@shops = Shop.search(params[:search]).order(updated_at: :desc).page(params[:page]).per(5)
  	@keyword = params[:search]
  end

  def list
  	@shops = Shop.all.order(created_at: :desc).page(params[:page]).per(5)
  end
  
  def details
  end

  def hokkaido
  end

  def tohoku
  end

  def kanto
  end

  def chubu

  end

  def kansai
  end

  def shikoku
  end

  def tyugoku
  end

  def kyushu
  end

  private

  def set_shop
    @shops = Shop.all.order(created_at: :desc)
  end

  def login_form
    
  end

  def login
    
  end

  def owner_new
    @owner = Owner.new
  end

  def owner_create
    @owner = Owner.new(name: params[:name])
    @owner.pass = params[:pass]

    if @owner.save
      flash[:notice] = "新規登録が完了しました"
      redirect_to("/")
     else
       render("owner_new")
    end

  end



end
