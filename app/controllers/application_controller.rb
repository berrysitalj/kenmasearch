class ApplicationController < ActionController::Base
	before_action :owner_logged_in?

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

end
