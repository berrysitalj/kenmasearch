class ShopsController < ApplicationController
  protect_from_forgery
  before_action :owner_logged_in?, only: [:index, :new, :create, :edit, :update, :destroy]
  skip_before_action :user_logged_in?

  def index
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
  end

  def create
  end

  def edit
  end
  
  def update
  end

  def destroy
  end
end