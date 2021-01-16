class OwnerController < ApplicationController
  def index
  end

  def new
  	
  end

  def create
  	@owner = Owner.new(name:params[:name], pass:params[:pass])
  	@owner.save
  	redirect_to("/owner/index")
  end
end
