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

  



end
