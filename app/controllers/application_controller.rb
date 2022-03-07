class ApplicationController < ActionController::Base
	before_action :owner_logged_in?
  before_action :user_logged_in?

  #herokuapp.comから独自ドメインへリダイレクト
  before_action :ensure_domain
  FQDN = 'www.mahjong-search.com'

  # redirect correct server from herokuapp domain for SEO
  def ensure_domain
  return unless /\.herokuapp.com/ =~ request.host

  # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める 
  port = ":#{request.port}" unless [80, 443].include?(request.port)
  redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end

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
