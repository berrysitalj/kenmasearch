class HomeController < ApplicationController

  def top
  	@shops = Shop.all.order(created_at: :desc)
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

end
