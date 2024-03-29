class PrefecturesController < ApplicationController
	skip_before_action :owner_logged_in?
	skip_before_action :user_logged_in?

	before_action :set_chubu, only: [:aichi, :gifu]
	before_action :set_kanto, only: [:tokyo, :chiba, :gunma, :kanagawa, :saitama, :tochigi, :ibaraki]
	before_action :set_kansai, only: [:osaka, :kyoto, :nara, :mie, :wakayama]
	before_action :set_shops

	def aichi
		@prefecture = "愛知県"
		set_shops
	end

	def tokyo
		@prefecture = "東京都"
		set_shops
	end

	def osaka
		@prefecture = "大阪府"
		set_shops
	end

	private
  
  def set_chubu
  	@area = "中部"
  end

  def set_kanto
  	@area = "関東"
  end

  def set_kansai
  	@area = "関西"
  end

  def set_shops
		@shops = Shop.search(@prefecture).order(updated_at: :desc).page(params[:page]).per(5)
		@pickup_select_shops = Shop.where(paidicon4: 1, addres1: @prefecture).order("RANDOM()").limit(6)
  end

end
