class ApplicationController < ActionController::Base
	before_action :owner_logged_in?
  before_action :set_current_user
  
  def owner_logged_in?
    if session[:id]
      begin
        @current_owner = Owner.find_by(id: session[:id])
      rescue ActiveRecord::RecordNotFound
        reset_owner_session
      end
    end
    return if @current_owner
    # @current_ownerが取得できなかった場合はログイン画面にリダイレクト
    flash[:referer] = request.fullpath
    redirect_to("/login")
  end
  
  def reset_owner_session
    session[:id] = nil
    @current_owner = nil
  end

  def set_current_user
    @current_user = Shop.find_by(id: session[:id])
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/user_login")
    end
  end

end
