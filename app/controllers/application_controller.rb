class ApplicationController < ActionController::Base
	before_action :owner_logged_in?
  before_action :user_logged_in?
  
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



  def user_logged_in?
    if session[:user_id]
      begin
        @current_owner = Shop.find_by(id: session[:user_id])
      rescue ActiveRecord::RecordNotFound
        reset_user_session
      end
    end
    return if @current_user
    # @current_userが取得できなかった場合はログイン画面にリダイレクト
    flash[:referer] = request.fullpath
    redirect_to("/user_login")
  end
  
  def reset_user_session
    session[:user_id] = nil
    @current_user = nil
  end

end
